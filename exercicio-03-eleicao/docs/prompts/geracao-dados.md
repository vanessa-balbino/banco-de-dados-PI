# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic) — via chat.

## Prompt
```text
Estou desenvolvendo um exercício acadêmico de banco de dados MySQL chamado
ELEICAO, sobre um processo eleitoral TOTALMENTE FICTÍCIO (não usar nenhum
partido, sigla, número, candidato ou eleitor real). As tabelas são CARGO,
PARTIDO, CANDIDATO, ELEITOR e VOTO (esta última com PK composta
titulo_eleitor + numero_candidato).

Gere dados 100% fictícios e retorne comandos INSERT INTO compatíveis com
MySQL, nas seguintes quantidades:
- 4 cargos fictícios (nomes diferentes de "Prefeito" e "Vereador",
  numero_vagas único por cargo);
- 8 partidos fictícios (sigla, nome e número únicos, tudo inventado);
- 30 candidatos fictícios (número e nome únicos, distribuídos entre os
  4 cargos e os 8 partidos);
- 100 eleitores fictícios (título de eleitor único, várias zonas e seções);
- registros de voto suficientes para permitir agrupamentos e comparações
  (cada eleitor podendo votar em mais de um candidato, nunca duas vezes no
  mesmo candidato).

Regras:
- respeite PK, FK, UNIQUE e NOT NULL;
- não utilize nomes, siglas, números ou dados de partidos/políticos reais;
- garanta diversidade de cargos, partidos, zonas e seções eleitorais;
- não crie nem altere a estrutura das tabelas;
- retorne os INSERTs na ordem correta das dependências (CARGO e PARTIDO antes
  de CANDIDATO; ELEITOR e CANDIDATO antes de VOTO).

[colado aqui o DDL do exercício]
```

## Validações realizadas
- [x] PK duplicadas — nenhum código de cargo/partido, número de candidato,
  título de eleitor ou par (eleitor, candidato) se repete.
- [x] FK inválidas — todo `codigo_cargo`/`codigo_partido` em CANDIDATO, e todo
  `titulo_eleitor`/`numero_candidato` em VOTO, existe nas tabelas pai.
- [x] Campos UNIQUE — sigla, nome e número de partido; nome e número de
  candidato; nome e número de vagas de cargo — todos conferidos.
- [x] NULL indevidos — nenhum campo obrigatório ficou nulo.
- [x] Dados fictícios — nenhum nome de político, partido ou sigla real foi usado.

## Ajustes manuais realizados
- Revisão manual dos nomes de cargo para garantir que fossem claramente
  diferentes de "Prefeito" e "Vereador".
- Ajuste da distribuição de votos para garantir que ao menos um candidato
  ficasse sem nenhum voto (necessário para testar a QUERY 05).
