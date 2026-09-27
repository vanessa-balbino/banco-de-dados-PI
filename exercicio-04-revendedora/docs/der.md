# DER — Diagrama Entidade-Relacionamento

```mermaid
erDiagram
    AUTOMOVEL {
        varchar renavam PK
        varchar placa UK
        varchar marca
        varchar modelo
        smallint ano_fabricacao
        smallint ano_modelo
        varchar cor
        varchar motor
        tinyint numero_portas
        varchar tipo_combustivel
        decimal preco
    }
    CLIENTE {
        int     codigo_cliente PK
        varchar nome
        varchar sobrenome
        varchar telefone
        varchar rua
        varchar numero
        varchar complemento
        varchar bairro
        varchar cidade
        char    estado
        varchar cep
    }
    VENDEDOR {
        int     codigo_vendedor PK
        varchar nome
        varchar sobrenome
        varchar telefone
        varchar rua
        varchar numero
        varchar complemento
        varchar bairro
        varchar cidade
        char    estado
        varchar cep
        date    data_admissao
        decimal salario
    }
    NEGOCIO {
        int     id_negocio PK
        date    data_negocio
        decimal preco_pago
        int     codigo_cliente FK
        int     codigo_vendedor FK
        varchar renavam_automovel FK, UK
    }
    CLIENTE   ||--o{ NEGOCIO : codigo_cliente
    VENDEDOR  ||--o{ NEGOCIO : codigo_vendedor
    AUTOMOVEL ||--o| NEGOCIO : renavam_automovel
```

## Chaves primárias
- `automovel.renavam`
- `cliente.codigo_cliente` (substituta)
- `vendedor.codigo_vendedor` (substituta)
- `negocio.id_negocio` (substituta)

## Chaves estrangeiras
- `negocio.codigo_cliente` → `cliente.codigo_cliente`
- `negocio.codigo_vendedor` → `vendedor.codigo_vendedor`
- `negocio.renavam_automovel` → `automovel.renavam`

## Constraints relevantes
- `automovel.placa` — UNIQUE
- `automovel.preco` — CHECK (> 0)
- `negocio.renavam_automovel` — UNIQUE (cada automóvel vendido uma única vez)
- `negocio.preco_pago` — CHECK (> 0)
- FKs com `ON UPDATE CASCADE ON DELETE RESTRICT`
