# Regras de Negócio

- RN01 — O nome do cargo deve ser único e diferente de "Prefeito" e "Vereador".
- RN02 — `Numero_Vagas` de cada cargo é único (conforme literalmente pedido no
  enunciado).
- RN03 — Sigla, nome e número de cada partido são únicos.
- RN04 — Número e nome de cada candidato são únicos.
- RN05 — Todo candidato deve estar vinculado a um cargo e a um partido existentes.
- RN06 — Todo voto deve referenciar um eleitor e um candidato existentes (FK
  obrigatórias) — não é possível registrar voto "órfão".
- RN07 — Um mesmo eleitor não pode registrar mais de um voto para o mesmo
  candidato (garantido pela PK composta de VOTO).
- RN08 — Não é permitido excluir cargo, partido, candidato ou eleitor que ainda
  possua candidatos ou votos vinculados.

## Restrições de integridade
- `cargo.codigo_cargo` — PK. `cargo.nome_cargo` — UNIQUE. `cargo.numero_vagas` — UNIQUE.
- `partido.codigo_partido` — PK. `sigla`, `nome`, `numero` — UNIQUE.
- `candidato.numero_candidato` — PK. `nome` — UNIQUE. `codigo_cargo` e
  `codigo_partido` — FK NOT NULL.
- `eleitor.titulo_eleitor` — PK.
- `voto` — PK composta `(titulo_eleitor, numero_candidato)`; ambos também FK NOT NULL.

## Decisões tomadas
- Uso de chave composta em VOTO em vez de um ID substituto, pois a combinação
  eleitor+candidato já expressa exatamente a regra de unicidade que queremos
  impor (não permitir voto duplicado no mesmo candidato).
