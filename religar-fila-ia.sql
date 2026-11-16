-- Religa o trabalhador da fila de IA do time (esteira_fila_ia) pela máquina 24h.
-- Rode no Supabase: projeto ahliaembcalfrpmauwpk > SQL Editor > cole tudo > Run.
-- Cada pedido novo da fila vira uma tarefa da máquina (tipo fila_ia); a resposta volta sozinha para a fila
-- e o orquestrador continua a etapa da oferta.

alter table public.maquina_tarefas drop constraint if exists maquina_tarefas_tipo_check;
alter table public.maquina_tarefas add constraint maquina_tarefas_tipo_check
  check (tipo = any (array['estudo_formato'::text, 'dissecar_produto'::text, 'fila_ia'::text]));

create or replace function public.fila_ia_para_maquina() returns trigger
language plpgsql security definer set search_path to 'public' as $$
begin
  if new.estado <> 'pendente' then return new; end if;
  if exists (select 1 from maquina_tarefas where tipo = 'fila_ia' and pedido->>'fila_id' = new.id::text) then return new; end if;
  insert into maquina_tarefas (user_id, tipo, titulo, prioridade, pedido)
  values (new.user_id, 'fila_ia', 'Fila de IA: ' || coalesce(new.alvo, ''), 80,
    jsonb_build_object('fila_id', new.id, 'alvo', new.alvo, 'oferta_id', new.oferta_id, 'sistema', new.sistema, 'pedido', new.pedido, 'schema', new.schema));
  return new;
end $$;

drop trigger if exists esteira_fila_ia_para_maquina on public.esteira_fila_ia;
create trigger esteira_fila_ia_para_maquina after insert on public.esteira_fila_ia
  for each row execute function public.fila_ia_para_maquina();

create or replace function public.maquina_tarefa_concluida()
 returns trigger language plpgsql security definer set search_path to 'public' as $function$
declare d jsonb;
begin
  if new.estado <> 'pronto' or (tg_op='UPDATE' and old.estado = 'pronto') or new.resultado is null then return new; end if;
  begin
    if new.tipo = 'estudo_formato' then
      perform formatos_gravar(new.user_id, new.resultado->'estudos_formato', 'maquina', new.id);
    elsif new.tipo = 'dissecar_produto' then
      for d in select * from jsonb_array_elements(case when jsonb_typeof(new.resultado->'dissecacoes')='array' then new.resultado->'dissecacoes' else jsonb_build_array(new.resultado) end) loop
        insert into produtos_dissecacao (user_id, page_id, anunciante, nicho, produto, ficha, prints, tarefa_id)
        values (new.user_id, coalesce(d->>'page_id', new.pedido->>'page_id'), coalesce(d->>'anunciante', new.pedido->>'anunciante'), coalesce(d->>'nicho', new.pedido->>'nicho'), d->>'produto', d,
          coalesce((select array_agg(x) from jsonb_array_elements_text(case when jsonb_typeof(d->'prints')='array' then d->'prints' else '[]'::jsonb end) x), '{}'), new.id);
      end loop;
    elsif new.tipo = 'fila_ia' then
      update esteira_fila_ia set resultado = coalesce(new.resultado->'resposta', new.resultado), estado = 'pronto',
        quem = 'máquina 24h (Claude Code)', concluido_em = now(), pego_em = coalesce(pego_em, now())
      where id = (new.pedido->>'fila_id')::uuid and estado <> 'pronto';
    end if;
  exception when others then null;
  end;
  return new;
end $function$;

-- o que já está pendente vai para a máquina
insert into maquina_tarefas (user_id, tipo, titulo, prioridade, pedido)
select f.user_id, 'fila_ia', 'Fila de IA: ' || coalesce(f.alvo, ''), 80,
  jsonb_build_object('fila_id', f.id, 'alvo', f.alvo, 'oferta_id', f.oferta_id, 'sistema', f.sistema, 'pedido', f.pedido, 'schema', f.schema)
from esteira_fila_ia f
where f.estado = 'pendente' and not exists (select 1 from maquina_tarefas t where t.tipo = 'fila_ia' and t.pedido->>'fila_id' = f.id::text);

-- conferência: deve voltar gatilho = true
select exists(select 1 from pg_trigger where tgname='esteira_fila_ia_para_maquina') as gatilho,
  (select count(*) from maquina_tarefas where tipo='fila_ia') as tarefas_fila;
