# Levantamento de Requisitos

## Contexto
Uma revendedora de carros usados precisa informatizar o cadastro de automóveis,
clientes, vendedores e o histórico de negócios (vendas) realizados.

## Entidades identificadas
- AUTOMOVEL
- CLIENTE
- VENDEDOR
- NEGOCIO (entidade associativa entre CLIENTE, VENDEDOR e AUTOMOVEL)

## Atributos identificados
- AUTOMOVEL: RENAVAM, placa, marca, modelo, ano de fabricação, ano do modelo,
  cor, motor, número de portas, tipo de combustível, preço.
- CLIENTE: código, nome, sobrenome, telefone, rua, número, complemento, bairro,
  cidade, estado, CEP.
- VENDEDOR: código, nome, sobrenome, telefone, rua, número, complemento, bairro,
  cidade, estado, CEP, data de admissão, salário fixo.
- NEGOCIO: identificador do negócio, data, preço pago, cliente (comprador),
  vendedor, automóvel vendido.

## Relacionamentos identificados
- CLIENTE **realiza** NEGOCIO (1:N) — um cliente pode comprar vários carros ao
  longo do tempo.
- VENDEDOR **realiza** NEGOCIO (1:N) — um vendedor pode fechar vários negócios.
- AUTOMOVEL **é objeto de** NEGOCIO (1:1, nesta modelagem) — ver decisão abaixo.

## Requisitos funcionais
- RF01 — Cadastrar automóveis, clientes, vendedores e negócios.
- RF02 — Listar automóveis por faixa de preço.
- RF03 — Listar clientes por cidade.
- RF04 — Relacionar cada negócio com automóvel, cliente e vendedor.
- RF05 — Calcular total vendido por vendedor e ticket médio por marca.

## Requisitos não funcionais
- RNF01 — Banco `REVENDEDORA_CARROS` implementado em MySQL.
- RNF02 — RENAVAM, placa, CPF, telefone e endereços devem ser fictícios.

## Dúvidas / hipóteses de modelagem
- **Chave de NEGOCIO**: o enunciado não define um identificador para essa
  entidade. Decisão: criar uma chave substituta `id_negocio` (AUTO_INCREMENT),
  pois um negócio não possui nenhum atributo natural que o identifique sozinho
  (data + preço poderiam se repetir entre negócios diferentes).
- **Relação AUTOMOVEL–NEGOCIO**: foi adotada a regra de que **cada automóvel só
  é vendido uma vez** nesta base (revenda de usados sem controle de recompra),
  garantida por uma constraint `UNIQUE` na FK do automóvel em `NEGOCIO`. Essa é
  uma decisão de modelagem, registrada aqui por não estar explícita no
  enunciado.
