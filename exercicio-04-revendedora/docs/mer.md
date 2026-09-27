# MER — Modelo Entidade-Relacionamento

```mermaid
erDiagram
    CLIENTE   ||--o{ NEGOCIO : "realiza (compra)"
    VENDEDOR  ||--o{ NEGOCIO : "realiza (venda)"
    AUTOMOVEL ||--o| NEGOCIO : "e objeto de"

    AUTOMOVEL {
        string renavam PK
        string placa
        string marca
        string modelo
        int    ano_fabricacao
        int    ano_modelo
        string cor
        string motor
        int    numero_portas
        string tipo_combustivel
        decimal preco
    }
    CLIENTE {
        int    codigo_cliente PK
        string nome
        string sobrenome
        string telefone
        string cidade
        string estado
    }
    VENDEDOR {
        int    codigo_vendedor PK
        string nome
        string sobrenome
        date   data_admissao
        decimal salario
    }
    NEGOCIO {
        int    id_negocio PK
        date   data_negocio
        decimal preco_pago
        int    codigo_cliente FK
        int    codigo_vendedor FK
        string renavam_automovel FK
    }
```

## Entidades
- AUTOMOVEL, CLIENTE, VENDEDOR, NEGOCIO (associativa)

## Relacionamentos
- CLIENTE → NEGOCIO (1:N)
- VENDEDOR → NEGOCIO (1:N)
- AUTOMOVEL → NEGOCIO (1:1, cada automóvel vendido no máximo uma vez)

## Cardinalidades
- CLIENTE (1) : (N) NEGOCIO
- VENDEDOR (1) : (N) NEGOCIO
- AUTOMOVEL (1) : (0..1) NEGOCIO
