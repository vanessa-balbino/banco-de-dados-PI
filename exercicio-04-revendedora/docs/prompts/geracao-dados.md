# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic) — via chat.

## Prompt
```text
Estou desenvolvendo um exercício acadêmico de banco de dados MySQL chamado
REVENDEDORA_CARROS, com as tabelas AUTOMOVEL (PK renavam), CLIENTE (PK
codigo_cliente), VENDEDOR (PK codigo_vendedor) e NEGOCIO (PK substituta
id_negocio, com FKs para as três tabelas anteriores; renavam_automovel é
UNIQUE, pois cada carro só pode ser vendido uma vez nesta base).

Gere dados 100% fictícios e retorne comandos INSERT INTO compatíveis com
MySQL, nas seguintes quantidades:
- 40 automóveis fictícios (RENAVAM e placa únicos, várias marcas, modelos,
  anos, cores e faixas de preço);
- 30 clientes fictícios (nomes, telefones e endereços inventados);
- 8 vendedores fictícios (nomes, telefones, endereços, datas de admissão e
  salários inventados);
- 25 negócios fictícios (cada um vinculado a um automóvel diferente, a um
  cliente e a um vendedor existentes, com datas e preços pagos variados).

Regras:
- respeite PK, FK, UNIQUE, NOT NULL e CHECK (preços positivos);
- não utilize RENAVAM, placa, telefone, endereço, CPF ou nome de pessoa real;
- garanta diversidade de marcas, modelos, cidades e faixas de preço;
- não crie nem altere a estrutura das tabelas;
- retorne os INSERTs na ordem correta das dependências (AUTOMOVEL, CLIENTE e
  VENDEDOR antes de NEGOCIO).

[colado aqui o DDL do exercício]
```

## Validações realizadas
- [x] PK duplicadas — nenhum RENAVAM, código de cliente/vendedor ou id_negocio
  se repete.
- [x] FK inválidas — todo `codigo_cliente`, `codigo_vendedor` e
  `renavam_automovel` em NEGOCIO existe nas tabelas pai.
- [x] Campos UNIQUE — `automovel.placa` e `negocio.renavam_automovel`
  conferidos sem duplicidade (cada carro vendido só uma vez).
- [x] NULL indevidos — nenhum campo obrigatório ficou nulo.
- [x] Tipos de dados — datas no formato `AAAA-MM-DD`, preços com 2 casas decimais.
- [x] Dados fictícios — RENAVAM, placas, telefones e endereços totalmente
  inventados, sem relação com pessoas ou veículos reais.

## Ajustes manuais realizados
- Conferência manual de que os 25 negócios apontam para 25 automóveis
  diferentes (respeitando a regra de venda única por veículo).
