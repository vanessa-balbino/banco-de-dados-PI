# MER — Modelo Entidade-Relacionamento

```mermaid
erDiagram
    SALA     ||--o{ MEDICOS   : "atende"
    MEDICOS  ||--o{ CONSULTAS : "realiza"
    PACIENTES ||--o{ CONSULTAS : "faz"

    SALA {
        int numero_sala PK
        int andar
    }
    MEDICOS {
        string crm PK
        string nome
        int    idade
        string especialidade
        string cpf
        date   data_admissao
        int    numero_sala FK
    }
    PACIENTES {
        string rg PK
        string nome
        date   data_nascimento
        string cidade
        string doenca
        string plano_saude
    }
    CONSULTAS {
        int    codigo_consulta PK
        datetime data_horario
        string crm_medico FK
        string rg_paciente FK
    }
    FUNCIONARIOS {
        string matricula PK
        string nome
        date   data_nascimento
        date   data_admissao
        string cargo
        decimal salario
    }
```

> `FUNCIONARIOS` é mantida sem relacionamento, pois o material-base não define
> nenhum vínculo para essa entidade (ver `docs/requisitos.md`).

## Entidades
- SALA, MEDICOS, PACIENTES, FUNCIONARIOS, CONSULTAS

## Relacionamentos
- SALA → MEDICOS: "atende" (1:N — uma sala pode ter vários médicos atendendo nela)
- MEDICOS → CONSULTAS: "realiza" (1:N)
- PACIENTES → CONSULTAS: "faz" (1:N)

## Cardinalidades
- SALA (1) : (N) MEDICOS
- MEDICOS (1) : (N) CONSULTAS
- PACIENTES (1) : (N) CONSULTAS
- FUNCIONARIOS — entidade isolada, sem relacionamento no modelo.
