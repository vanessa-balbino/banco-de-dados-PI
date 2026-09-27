# Levantamento de Requisitos

## Contexto
Uma clínica precisa controlar suas salas de atendimento, seu corpo médico, os
pacientes atendidos, os funcionários administrativos e as consultas realizadas.

## Entidades identificadas
- SALA
- MEDICOS
- PACIENTES
- FUNCIONARIOS
- CONSULTAS

## Atributos identificados
- SALA: número da sala, andar.
- MEDICOS: CRM, nome, idade, especialidade, CPF, data de admissão, sala onde atende.
- PACIENTES: RG, nome, data de nascimento, cidade, doença, plano de saúde.
- FUNCIONARIOS: matrícula, nome, data de nascimento, data de admissão, cargo, salário.
- CONSULTAS: código da consulta, data/horário, médico, paciente.

## Relacionamentos identificados (conforme o material-base)
- **MEDICOS — ATENDE — SALA**: um médico atende sempre na mesma sala; uma sala
  pode ser usada por vários médicos ao longo do tempo (N:1 de médico para sala).
- **MEDICOS — REALIZA — CONSULTA**: um médico realiza várias consultas (1:N).
- **CONSULTA — FAZ — PACIENTE**: um paciente faz várias consultas (1:N de paciente
  para consulta).
- **FUNCIONARIOS**: o material-base não define nenhum relacionamento explícito
  para esta entidade. Ver hipótese de modelagem abaixo — **nenhum relacionamento
  foi criado silenciosamente**.

## Requisitos funcionais
- RF01 — Cadastrar salas, médicos, pacientes, funcionários e consultas.
- RF02 — Listar pacientes por cidade.
- RF03 — Listar médicos por especialidade e data de admissão.
- RF04 — Relacionar cada consulta com paciente, médico e sala.
- RF05 — Calcular quantidade de consultas por médico e por paciente.

## Requisitos não funcionais
- RNF01 — Banco `CLINICA` implementado em MySQL.
- RNF02 — Nenhum dado real de pessoas (CPF, RG, CRM, telefone) deve ser utilizado.

## Dúvidas / hipóteses de modelagem
- **FUNCIONARIOS ficou sem relacionamento**, exatamente como no material-base.
  Não foi criado nenhum vínculo (ex.: funcionário-sala) para não introduzir uma
  regra de negócio que o enunciado não define.
- Adotou-se `CRM` como PK de MEDICOS, `RG` como PK de PACIENTES e `Matricula`
  como PK de FUNCIONARIOS, por serem os identificadores naturais já indicados
  como únicos e não nulos no material-base — não foram criados IDs substitutos.
- `CONSULTAS.Codigo_Consulta` foi mantido como PK (é único e não nulo no
  enunciado); foram adicionadas as FKs de médico e paciente, necessárias para
  materializar os relacionamentos REALIZA e FAZ descritos no material.
- A sala de uma consulta é obtida indiretamente, via o médico que a realizou
  (`medico.Numero_Sala`), já que cada médico atende em uma sala fixa.
