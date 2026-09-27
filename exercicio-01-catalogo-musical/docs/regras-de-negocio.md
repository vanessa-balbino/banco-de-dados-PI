# Regras de Negócio

- RN01 — Toda música pertence a exatamente um CD e é interpretada por exatamente um cantor.
- RN02 — O número da faixa (`numero_musica`) só precisa ser único **dentro do mesmo CD**;
  pode se repetir em CDs diferentes (ex.: faixa "2" existe em vários CDs).
- RN03 — Não é permitido excluir um CD ou cantor que ainda possua músicas vinculadas
  (`ON DELETE RESTRICT`).
- RN04 — A duração da música (`tempo_segundos`) deve ser um valor positivo.
- RN05 — Os registros-base fornecidos no enunciado (4 CDs, 5 cantores, 16 músicas) não
  podem ser alterados nem removidos pelos comandos de UPDATE/DELETE de teste.

## Restrições de integridade
- PK composta em `musica (cod_cd, numero_musica)`.
- PK auto-incremento em `cd.cod_cd` e `cantor.cod_cantor`.
- FK obrigatórias (NOT NULL): `musica.cod_cd`, `musica.cod_cantor`.
- CHECK: `musica.tempo_segundos > 0`.

## Decisões tomadas
- Uso de chave primária composta em MÚSICA em vez de um código substituto (surrogate
  key), respeitando a observação do enunciado de que o número da faixa se repete
  entre CDs.
- `genero` mantido como `VARCHAR` livre em MÚSICA, sem tabela de domínio à parte.
