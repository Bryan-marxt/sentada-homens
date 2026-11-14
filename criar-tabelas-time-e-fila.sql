-- O time de ofertas como trabalhadores (Igor, 14/11): cada agente tem 5 vidas; perde uma quando a revisão reprova,
-- quando o erro que o validador pegou continua depois de refazer, quando o dono recusa a entrega e quando passa um
-- dia sem entregar o estudo. Com 0 vidas é demitido e entra outra pessoa no mesmo cargo, que herda as lições do cargo.
-- Tudo fica no histórico (eventos), que é o que o sistema usa para aprender com ele mesmo.

create table if not exists public.ofertas_time_membros (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  chave text not null,              -- o cargo (estrategia, copy, criativos…), igual à etapa da esteira
  nome text not null,
  geracao int not null default 1,   -- 1 = o primeiro no cargo; sobe a cada substituição
  vidas int not null default 5 check (vidas >= 0 and vidas <= 5),
  ativo boolean not null default true,
  contratado_em timestamptz not null default now(),
  demitido_em timestamptz,
  motivo_demissao text
);
create unique index if not exists ofertas_time_membros_um_ativo on public.ofertas_time_membros (user_id, chave) where ativo;
create index if not exists ofertas_time_membros_user on public.ofertas_time_membros (user_id, chave, geracao desc);

create table if not exists public.ofertas_time_eventos (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  membro_id uuid references public.ofertas_time_membros(id) on delete set null,
  chave text not null,
  -- entrega · correcao (o validador pegou) · perdeu_vida · licao · estudo · sem_estudo · pedido_do_dono · demitido · contratado
  tipo text not null,
  oferta_id uuid,
  texto text not null default '',
  dados jsonb not null default '{}'::jsonb,
  vidas_depois int,
  dia date not null default ((now() at time zone 'America/Sao_Paulo')::date),
  criado_em timestamptz not null default now()
);
create index if not exists ofertas_time_eventos_user on public.ofertas_time_eventos (user_id, criado_em desc);
create index if not exists ofertas_time_eventos_chave on public.ofertas_time_eventos (user_id, chave, tipo, criado_em desc);
create index if not exists ofertas_time_eventos_dia on public.ofertas_time_eventos (user_id, dia, tipo);

alter table public.ofertas_time_membros enable row level security;
alter table public.ofertas_time_eventos enable row level security;

-- o dono lê o próprio time (o painel); quem escreve é a esteira (service role)
drop policy if exists "dono lê o time" on public.ofertas_time_membros;
create policy "dono lê o time" on public.ofertas_time_membros for select to authenticated using (user_id = auth.uid());
drop policy if exists "dono lê o histórico do time" on public.ofertas_time_eventos;
create policy "dono lê o histórico do time" on public.ofertas_time_eventos for select to authenticated using (user_id = auth.uid());

revoke insert, update, delete on public.ofertas_time_membros from anon, authenticated;
revoke insert, update, delete on public.ofertas_time_eventos from anon, authenticated;
-- Os agentes sem API paga (Igor, 14/11: "dá para rodar aqui no terminal? não quero acesso de API, é caro").
-- Cada chamada de IA da esteira vira um item nesta fila; um trabalhador (sessão do Claude Code, de 2 em 2 minutos)
-- pega o item, escreve a resposta no formato pedido e devolve. A esteira refaz a etapa reaproveitando a resposta
-- guardada (mesma rodada, mesma ordem de chamada) e segue: validador, revisão, vidas.

create table if not exists public.esteira_fila_ia (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  oferta_id uuid,
  -- etapa (anuncios, copy…), revisao_<etapa>, estudo_<cargo>, buscas
  alvo text not null,
  rodada text not null,             -- a rodada da etapa (a mesma enquanto ela espera a fila)
  seq int not null default 1,       -- a ordem da chamada dentro da rodada (1 = primeira versão, 2 = refeita…)
  sistema text not null,
  pedido text not null,
  schema jsonb not null,
  estado text not null default 'pendente' check (estado in ('pendente', 'pegou', 'pronto', 'erro')),
  resultado jsonb,
  erro text,
  quem text,                        -- qual trabalhador pegou
  criado_em timestamptz not null default now(),
  pego_em timestamptz,
  concluido_em timestamptz,
  unique (user_id, alvo, rodada, seq)
);
create index if not exists esteira_fila_ia_pendente on public.esteira_fila_ia (estado, criado_em);
create index if not exists esteira_fila_ia_oferta on public.esteira_fila_ia (oferta_id, alvo, rodada);

alter table public.esteira_fila_ia enable row level security;
drop policy if exists "dono lê a fila" on public.esteira_fila_ia;
create policy "dono lê a fila" on public.esteira_fila_ia for select to authenticated using (user_id = auth.uid());
revoke insert, update, delete on public.esteira_fila_ia from anon, authenticated;
