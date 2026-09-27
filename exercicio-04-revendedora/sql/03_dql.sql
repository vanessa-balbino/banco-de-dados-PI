-- =========================================================
-- DQL — Consultas do exercício
-- Exercício 04 — Revendedora de Carros Usados
-- =========================================================

USE REVENDEDORA_CARROS;

-- QUERY 01
-- Descrição: Lista automóveis com preço abaixo de R$ 60.000,00, do menor
-- para o maior preço.
SELECT renavam, placa, marca, modelo, ano_modelo, preco
FROM automovel
WHERE preco < 60000
ORDER BY preco ASC;


-- QUERY 02
-- Descrição: Lista clientes da cidade de Itabuna, em ordem alfabética.
SELECT codigo_cliente, nome, sobrenome, cidade, estado
FROM cliente
WHERE cidade = 'Itabuna'
ORDER BY nome, sobrenome;


-- QUERY 03
-- Descrição: Mostra cada negócio com data, automóvel, cliente, vendedor e
-- preço pago.
SELECT
    n.id_negocio,
    n.data_negocio,
    CONCAT(a.marca, ' ', a.modelo) AS automovel,
    CONCAT(c.nome, ' ', c.sobrenome) AS cliente,
    CONCAT(v.nome, ' ', v.sobrenome) AS vendedor,
    n.preco_pago
FROM negocio n
JOIN automovel a ON a.renavam         = n.renavam_automovel
JOIN cliente   c ON c.codigo_cliente  = n.codigo_cliente
JOIN vendedor  v ON v.codigo_vendedor = n.codigo_vendedor
ORDER BY n.data_negocio DESC;


-- QUERY 04
-- Descrição: Mostra a quantidade de negócios e o valor total vendido por
-- vendedor.
SELECT
    v.codigo_vendedor,
    CONCAT(v.nome, ' ', v.sobrenome) AS vendedor,
    COUNT(n.id_negocio)             AS qtd_negocios,
    COALESCE(SUM(n.preco_pago), 0)  AS total_vendido
FROM vendedor v
LEFT JOIN negocio n ON n.codigo_vendedor = v.codigo_vendedor
GROUP BY v.codigo_vendedor, vendedor
ORDER BY total_vendido DESC;


-- QUERY 05
-- Descrição: Mostra, por marca, a quantidade de automóveis negociados e o
-- preço médio pago.
SELECT
    a.marca,
    COUNT(n.id_negocio)               AS qtd_negociados,
    ROUND(AVG(n.preco_pago), 2)       AS preco_medio_pago
FROM automovel a
JOIN negocio n ON n.renavam_automovel = a.renavam
GROUP BY a.marca
ORDER BY qtd_negociados DESC;
