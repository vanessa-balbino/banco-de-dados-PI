-- =========================================================
-- DQL — Consultas do exercício
-- Exercício 02 — Clínica
-- =========================================================

USE CLINICA;

-- QUERY 01
-- Descrição: Lista os pacientes da cidade de Itabuna, ordenados pelo nome.
SELECT rg, nome, cidade, doenca, plano_saude
FROM pacientes
WHERE cidade = 'Itabuna'
ORDER BY nome;


-- QUERY 02
-- Descrição: Lista os médicos por especialidade e data de admissão.
SELECT crm, nome, especialidade, data_admissao
FROM medicos
ORDER BY especialidade, data_admissao;


-- QUERY 03
-- Descrição: Mostra cada consulta com data/hora, paciente, médico e sala
-- associada (a sala é obtida a partir da sala fixa do médico).
SELECT
    c.codigo_consulta,
    c.data_horario,
    p.nome AS paciente,
    m.nome AS medico,
    m.numero_sala AS sala
FROM consultas c
JOIN pacientes p ON p.rg  = c.rg_paciente
JOIN medicos   m ON m.crm = c.crm_medico
ORDER BY c.data_horario;


-- QUERY 04
-- Descrição: Mostra a quantidade de consultas realizadas por médico.
SELECT
    m.crm,
    m.nome AS medico,
    COUNT(c.codigo_consulta) AS qtd_consultas
FROM medicos m
LEFT JOIN consultas c ON c.crm_medico = m.crm
GROUP BY m.crm, m.nome
ORDER BY qtd_consultas DESC;


-- QUERY 05
-- Descrição: Lista os pacientes que possuem mais de uma consulta cadastrada,
-- mostrando a quantidade de consultas de cada um.
SELECT
    p.rg,
    p.nome AS paciente,
    COUNT(c.codigo_consulta) AS qtd_consultas
FROM pacientes p
JOIN consultas c ON c.rg_paciente = p.rg
GROUP BY p.rg, p.nome
HAVING COUNT(c.codigo_consulta) > 1
ORDER BY qtd_consultas DESC;
