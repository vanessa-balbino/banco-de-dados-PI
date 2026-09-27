# MER — Modelo Entidade-Relacionamento

```mermaid
erDiagram
    CARGO     ||--o{ CANDIDATO : "e disputado por"
    PARTIDO   ||--o{ CANDIDATO : "possui"
    ELEITOR   ||--o{ VOTO      : "registra"
    CANDIDATO ||--o{ VOTO      : "recebe"

    CARGO {
        int    codigo_cargo PK
        string nome_cargo
        decimal salario
        int    numero_vagas
    }
    PARTIDO {
        int    codigo_partido PK
        string sigla
        string nome
        int    numero
    }
    CANDIDATO {
        int    numero_candidato PK
        string nome
        int    codigo_cargo FK
        int    codigo_partido FK
    }
    ELEITOR {
        string titulo_eleitor PK
        string zona_eleitoral
        string sessao_eleitoral
        string nome
    }
    VOTO {
        string titulo_eleitor PK, FK
        int    numero_candidato PK, FK
    }
```

## Entidades
- CARGO, PARTIDO, CANDIDATO, ELEITOR, VOTO (associativa)

## Relacionamentos
- CARGO → CANDIDATO (1:N)
- PARTIDO → CANDIDATO (1:N)
- ELEITOR → VOTO (1:N)
- CANDIDATO → VOTO (1:N)

## Cardinalidades
- CARGO (1) : (N) CANDIDATO
- PARTIDO (1) : (N) CANDIDATO
- ELEITOR (1) : (N) VOTO
- CANDIDATO (1) : (N) VOTO
- (ELEITOR N : N CANDIDATO, resolvida pela entidade associativa VOTO)
