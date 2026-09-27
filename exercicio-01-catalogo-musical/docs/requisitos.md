# Levantamento de Requisitos

## Contexto
Catálogo musical simples com três entidades: **CD**, **CANTOR** e **MÚSICA**. Um CD
reúne várias músicas (faixas); cada música é interpretada por um cantor. O número da
faixa (`numero_musica`) não é um identificador global — ele se repete em CDs
diferentes (ex.: a faixa "2" existe tanto no CD 1 quanto no CD 3) — por isso a
música só é identificada de forma única pela combinação **CD + número da faixa**.

## Entidades identificadas
- CD
- CANTOR
- MÚSICA (entidade associativa/fraca, dependente de CD)

## Atributos identificados
- CD: código, nome, gravadora, data de lançamento.
- CANTOR: código, nome, biografia.
- MÚSICA: código do CD (parte da PK), número da faixa (parte da PK), título,
  cantor (FK), tempo em segundos, gênero.

## Relacionamentos identificados
- CD **contém** MÚSICA (1:N) — uma música pertence a exatamente um CD.
- CANTOR **interpreta** MÚSICA (1:N) — uma música tem um único cantor/intérprete;
  um cantor pode interpretar várias músicas, inclusive em CDs diferentes.

## Requisitos funcionais
- RF01 — Cadastrar CDs, cantores e músicas.
- RF02 — Listar CDs por data de lançamento.
- RF03 — Listar músicas por duração.
- RF04 — Relacionar música, cantor e CD em uma única consulta.
- RF05 — Contar músicas por CD e calcular estatísticas por gênero.

## Requisitos não funcionais
- RNF01 — Banco `CATALOGO_MUSICAL` implementado em MySQL.
- RNF02 — Integridade referencial garantida por FKs (MÚSICA → CD, MÚSICA → CANTOR).

## Dúvidas / hipóteses de modelagem
- **MÚSICA não tem um código próprio no enunciado.** Como `numero_musica` se repete
  entre CDs diferentes, ele não pode ser PK sozinho. Decisão: usar chave primária
  **composta** `(cod_cd, numero_musica)`, já que a faixa só existe no contexto de um CD
  (entidade fracamente identificada por CD — dependência de existência).
- O atributo `genero` foi mantido como texto livre em MÚSICA (não foi criada uma
  tabela `GENERO` à parte), pois o enunciado não pediu essa normalização.
