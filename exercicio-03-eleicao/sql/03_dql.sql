-- =========================================================
-- DQL — Consultas do exercício
-- Exercício 03 — Processo Eleitoral Fictício
-- =========================================================

USE ELEICAO;

-- QUERY 01
-- Descrição: Lista os candidatos mostrando nome, partido e cargo.
SELECT
    c.numero_candidato,
    c.nome        AS candidato,
    p.nome        AS partido,
    ca.nome_cargo AS cargo
FROM candidato c
JOIN partido p ON p.codigo_partido = c.codigo_partido
JOIN cargo   ca ON ca.codigo_cargo = c.codigo_cargo
ORDER BY ca.nome_cargo, c.nome;


-- QUERY 02
-- Descrição: Lista os eleitores de uma zona eleitoral específica ('001'),
-- ordenados por seção e nome.
SELECT titulo_eleitor, nome, zona_eleitoral, sessao_eleitoral
FROM eleitor
WHERE zona_eleitoral = '001'
ORDER BY sessao_eleitoral, nome;


-- QUERY 03
-- Descrição: Mostra a quantidade de candidatos cadastrados por partido.
SELECT
    p.nome AS partido,
    COUNT(c.numero_candidato) AS qtd_candidatos
FROM partido p
LEFT JOIN candidato c ON c.codigo_partido = p.codigo_partido
GROUP BY p.nome
ORDER BY qtd_candidatos DESC;


-- QUERY 04
-- Descrição: Mostra a quantidade de registros de voto agrupados por
-- candidato (apenas contagem, sem declarar vencedor).
SELECT
    c.numero_candidato,
    c.nome AS candidato,
    COUNT(v.titulo_eleitor) AS qtd_votos
FROM candidato c
LEFT JOIN voto v ON v.numero_candidato = c.numero_candidato
GROUP BY c.numero_candidato, c.nome
ORDER BY c.numero_candidato;


-- QUERY 05
-- Descrição: Mostra os candidatos que não possuem nenhum registro de voto.
SELECT
    c.numero_candidato,
    c.nome AS candidato
FROM candidato c
LEFT JOIN voto v ON v.numero_candidato = c.numero_candidato
WHERE v.numero_candidato IS NULL;
