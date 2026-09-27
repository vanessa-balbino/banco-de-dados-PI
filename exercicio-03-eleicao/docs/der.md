# DER — Diagrama Entidade-Relacionamento

```mermaid
erDiagram
    CARGO {
        int     codigo_cargo PK
        varchar nome_cargo UK
        decimal salario
        int     numero_vagas UK
    }
    PARTIDO {
        int     codigo_partido PK
        char    sigla UK
        varchar nome UK
        int     numero UK
    }
    CANDIDATO {
        int     numero_candidato PK
        varchar nome UK
        int     codigo_cargo FK
        int     codigo_partido FK
    }
    ELEITOR {
        varchar titulo_eleitor PK
        char    zona_eleitoral
        char    sessao_eleitoral
        varchar nome
    }
    VOTO {
        varchar titulo_eleitor PK "FK -> ELEITOR"
        int     numero_candidato PK "FK -> CANDIDATO"
    }
    CARGO     ||--o{ CANDIDATO : codigo_cargo
    PARTIDO   ||--o{ CANDIDATO : codigo_partido
    ELEITOR   ||--o{ VOTO      : titulo_eleitor
    CANDIDATO ||--o{ VOTO      : numero_candidato
```

## Chaves primárias
- `cargo.codigo_cargo`
- `partido.codigo_partido`
- `candidato.numero_candidato`
- `eleitor.titulo_eleitor`
- `voto.(titulo_eleitor, numero_candidato)` — **chave composta**

## Chaves estrangeiras
- `candidato.codigo_cargo` → `cargo.codigo_cargo`
- `candidato.codigo_partido` → `partido.codigo_partido`
- `voto.titulo_eleitor` → `eleitor.titulo_eleitor`
- `voto.numero_candidato` → `candidato.numero_candidato`

## Constraints relevantes
- `cargo.nome_cargo`, `cargo.numero_vagas` — UNIQUE
- `partido.sigla`, `partido.nome`, `partido.numero` — UNIQUE
- `candidato.nome` — UNIQUE
- FKs com `ON UPDATE CASCADE ON DELETE RESTRICT`
- PK composta em `voto` impede voto duplicado do mesmo eleitor no mesmo candidato
