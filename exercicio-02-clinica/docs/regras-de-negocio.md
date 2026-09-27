# Regras de Negócio

- RN01 — `Numero_Sala` deve ser maior que 1 e menor que 50.
- RN02 — `Andar` deve ser menor que 12 e é único (não pode haver duas salas
  cadastradas no mesmo andar, conforme literalmente pedido no enunciado).
- RN03 — `Idade` do médico deve ser maior que 23.
- RN04 — `Especialidade` do médico tem valor padrão `Ortopedia` quando não informado.
- RN05 — `Cidade` do paciente tem valor padrão `Itabuna`.
- RN06 — `Plano_Saude` do paciente tem valor padrão `SUS`.
- RN07 — `Cargo` do funcionário tem valor padrão `Assistente Médico`.
- RN08 — `Salario` do funcionário tem valor padrão `510.00`.
- RN09 — Toda consulta deve referenciar um médico e um paciente existentes.
- RN10 — Não é permitido excluir uma sala, médico ou paciente que ainda possua
  vínculos ativos (médicos na sala, ou consultas registradas).

## Restrições de integridade
- `sala.numero_sala` — PK, CHECK (numero_sala > 1 AND numero_sala < 50).
- `sala.andar` — UNIQUE, NOT NULL, CHECK (andar < 12).
- `medicos.crm` — PK. `medicos.cpf` — UNIQUE, NOT NULL. `medicos.idade` — CHECK (idade > 23).
- `medicos.numero_sala` — FK NOT NULL → `sala.numero_sala`.
- `pacientes.rg` — PK.
- `funcionarios.matricula` — PK.
- `consultas.codigo_consulta` — PK. `consultas.crm_medico` e `consultas.rg_paciente` — FK NOT NULL.

## Decisões tomadas
- FUNCIONARIOS permanece uma tabela independente, sem FK, pois o material-base
  não descreve nenhum relacionamento para essa entidade.
- Uso de identificadores naturais (CRM, RG, Matrícula) como chave primária em vez
  de IDs substitutos, pois o próprio enunciado já os define como únicos e não nulos.
