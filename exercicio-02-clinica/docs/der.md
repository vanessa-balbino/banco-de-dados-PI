# DER — Diagrama Entidade-Relacionamento

```mermaid
erDiagram
    SALA {
        int numero_sala PK
        int andar UK
    }
    MEDICOS {
        varchar crm PK
        varchar nome
        int     idade
        char    especialidade
        varchar cpf UK
        date    data_admissao
        int     numero_sala FK
    }
    PACIENTES {
        varchar rg PK
        varchar nome
        date    data_nascimento
        char    cidade
        varchar doenca
        varchar plano_saude
    }
    FUNCIONARIOS {
        varchar matricula PK
        varchar nome
        date    data_nascimento
        date    data_admissao
        varchar cargo
        decimal salario
    }
    CONSULTAS {
        int      codigo_consulta PK
        datetime data_horario
        varchar  crm_medico FK
        varchar  rg_paciente FK
    }
    SALA      ||--o{ MEDICOS   : numero_sala
    MEDICOS   ||--o{ CONSULTAS : crm_medico
    PACIENTES ||--o{ CONSULTAS : rg_paciente
```

## Chaves primárias
- `sala.numero_sala`
- `medicos.crm`
- `pacientes.rg`
- `funcionarios.matricula`
- `consultas.codigo_consulta`

## Chaves estrangeiras
- `medicos.numero_sala` → `sala.numero_sala`
- `consultas.crm_medico` → `medicos.crm`
- `consultas.rg_paciente` → `pacientes.rg`

## Constraints relevantes
- `sala.numero_sala` — CHECK (> 1 AND < 50)
- `sala.andar` — UNIQUE, CHECK (< 12)
- `medicos.cpf` — UNIQUE
- `medicos.idade` — CHECK (> 23)
- `medicos.especialidade` — DEFAULT 'Ortopedia'
- `pacientes.cidade` — DEFAULT 'Itabuna'
- `pacientes.plano_saude` — DEFAULT 'SUS'
- `funcionarios.cargo` — DEFAULT 'Assistente Médico'
- `funcionarios.salario` — DEFAULT 510.00
- FKs com `ON UPDATE CASCADE ON DELETE RESTRICT`
