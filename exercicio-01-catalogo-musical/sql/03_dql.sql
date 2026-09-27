-- =========================================================
-- DQL — Consultas do exercício
-- Exercício 01 — Catálogo Musical
-- =========================================================

USE CATALOGO_MUSICAL;

-- QUERY 01
-- Descrição: Lista todos os CDs, do lançamento mais recente para o mais antigo.
SELECT cod_cd, nome, gravadora, data
FROM cd
ORDER BY data DESC;


-- QUERY 02
-- Descrição: Lista músicas com duração superior a 240 segundos, da maior
-- para a menor duração.
SELECT titulo, tempo_segundos, cod_cd
FROM musica
WHERE tempo_segundos > 240
ORDER BY tempo_segundos DESC;


-- QUERY 03
-- Descrição: Mostra título da música, nome do cantor e nome do CD em uma
-- única consulta.
SELECT
    m.titulo       AS musica,
    ca.nome        AS cantor,
    cd.nome        AS cd
FROM musica m
JOIN cantor ca ON ca.cod_cantor = m.cod_cantor
JOIN cd     cd ON cd.cod_cd     = m.cod_cd
ORDER BY cd.nome, m.numero_musica;


-- QUERY 04
-- Descrição: Mostra a quantidade de músicas existente em cada CD.
SELECT
    cd.cod_cd,
    cd.nome AS cd,
    COUNT(m.numero_musica) AS qtd_musicas
FROM cd
LEFT JOIN musica m ON m.cod_cd = cd.cod_cd
GROUP BY cd.cod_cd, cd.nome
ORDER BY qtd_musicas DESC;


-- QUERY 05
-- Descrição: Mostra cada gênero, a quantidade de músicas e a duração média
-- das faixas desse gênero.
SELECT
    genero,
    COUNT(*) AS qtd_musicas,
    ROUND(AVG(tempo_segundos), 1) AS duracao_media_segundos
FROM musica
GROUP BY genero
ORDER BY qtd_musicas DESC;
