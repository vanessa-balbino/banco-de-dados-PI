# Regras de Negócio

- RN01 — Cada automóvel é identificado unicamente pelo RENAVAM.
- RN02 — A placa de cada automóvel é única.
- RN03 — Cada negócio deve referenciar um cliente, um vendedor e um automóvel
  existentes (FKs obrigatórias).
- RN04 — Cada automóvel só pode aparecer em, no máximo, um negócio (venda única
  por veículo nesta base — ver decisão de modelagem em `docs/requisitos.md`).
- RN05 — Não é permitido excluir cliente, vendedor ou automóvel que já possua
  negócio vinculado.
- RN06 — O preço do automóvel e o preço pago no negócio devem ser valores
  positivos.

## Restrições de integridade
- `automovel.renavam` — PK. `automovel.placa` — UNIQUE. `automovel.preco` — CHECK (> 0).
- `cliente.codigo_cliente` — PK (substituta, AUTO_INCREMENT).
- `vendedor.codigo_vendedor` — PK (substituta, AUTO_INCREMENT).
- `negocio.id_negocio` — PK (substituta, AUTO_INCREMENT).
- `negocio.renavam_automovel` — FK + UNIQUE (garante venda única por automóvel).
- `negocio.codigo_cliente`, `negocio.codigo_vendedor` — FK NOT NULL.
- `negocio.preco_pago` — CHECK (> 0).

## Decisões tomadas
- Uso de chave substituta (`id_negocio`) para NEGOCIO, `codigo_cliente` para
  CLIENTE e `codigo_vendedor` para VENDEDOR, já que o enunciado só pede
  "identificado por um código numérico", sem especificar um atributo natural.
- RENAVAM foi mantido como PK de AUTOMOVEL, conforme explicitamente indicado no
  enunciado ("cada automóvel é identificado pelo RENAVAM").
