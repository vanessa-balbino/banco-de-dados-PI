-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- Exercício 04 — Revendedora de Carros Usados
-- Massa de dados fictícia gerada com apoio de IA e revisada manualmente
-- =========================================================

USE REVENDEDORA_CARROS;

-- AUTOMOVEL (40)
INSERT INTO automovel (renavam, placa, marca, modelo, ano_fabricacao, ano_modelo, cor, motor, numero_portas, tipo_combustivel, preco) VALUES
    ('REN700000001', 'FIC1001', 'Torque', 'Sertao', 2016, 2017, 'Azul', '1.8', 4, 'Hibrido', 122518.95),
    ('REN700000002', 'FIC1002', 'Pampa Motors', 'Coxilha', 2012, 2012, 'Prata', '1.0', 4, 'Hibrido', 36103.98),
    ('REN700000003', 'FIC1003', 'Litoral Cars', 'Maresia', 2022, 2022, 'Vermelho', '2.0 Turbo', 2, 'Hibrido', 144714.66),
    ('REN700000004', 'FIC1004', 'Rota Norte', 'Cerrado 4x4', 2022, 2023, 'Bege', '1.0', 4, 'Hibrido', 109188.10),
    ('REN700000005', 'FIC1005', 'Rota Norte', 'Cerrado', 2015, 2015, 'Branco', '2.0 Turbo', 2, 'Flex', 122607.71),
    ('REN700000006', 'FIC1006', 'Fusca Motors', 'Brisa', 2017, 2017, 'Cinza', '1.8', 4, 'Gasolina', 49868.33),
    ('REN700000007', 'FIC1007', 'Fusca Motors', 'Brisa', 2017, 2017, 'Preto', '1.4', 4, 'Flex', 42329.91),
    ('REN700000008', 'FIC1008', 'Estrela Auto', 'Cometa Sport', 2018, 2019, 'Vermelho', '1.6', 4, 'Hibrido', 62162.51),
    ('REN700000009', 'FIC1009', 'Estrela Auto', 'Cometa Sport', 2018, 2019, 'Cinza', '1.8', 4, 'Diesel', 31139.77),
    ('REN700000010', 'FIC1010', 'Fusca Motors', 'Brisa GT', 2012, 2013, 'Prata', '1.8', 2, 'Gasolina', 94867.66),
    ('REN700000011', 'FIC1011', 'Vento Veiculos', 'Aral Plus', 2018, 2018, 'Branco', '2.0 Turbo', 4, 'Diesel', 125538.06),
    ('REN700000012', 'FIC1012', 'Vento Veiculos', 'Aral Plus', 2015, 2016, 'Vermelho', '1.0', 4, 'Flex', 136006.18),
    ('REN700000013', 'FIC1013', 'Torque', 'Sertao', 2022, 2023, 'Cinza', '1.4', 2, 'Gasolina', 75620.72),
    ('REN700000014', 'FIC1014', 'Torque', 'Sertao', 2021, 2021, 'Cinza', '1.8', 4, 'Gasolina', 137545.63),
    ('REN700000015', 'FIC1015', 'Torque', 'Sertao SW', 2012, 2012, 'Bege', '1.8', 4, 'Flex', 125928.86),
    ('REN700000016', 'FIC1016', 'Fusca Motors', 'Brisa', 2023, 2024, 'Azul', '1.0', 4, 'Gasolina', 47963.67),
    ('REN700000017', 'FIC1017', 'Fusca Motors', 'Brisa GT', 2023, 2024, 'Branco', '1.4', 4, 'Flex', 57509.13),
    ('REN700000018', 'FIC1018', 'Rota Norte', 'Cerrado', 2018, 2019, 'Prata', '1.4', 4, 'Gasolina', 131129.98),
    ('REN700000019', 'FIC1019', 'Pampa Motors', 'Coxilha XL', 2022, 2023, 'Bege', '2.0', 4, 'Diesel', 44239.03),
    ('REN700000020', 'FIC1020', 'Pampa Motors', 'Coxilha XL', 2014, 2014, 'Prata', '1.8', 4, 'Flex', 58937.26),
    ('REN700000021', 'FIC1021', 'Vento Veiculos', 'Aral Plus', 2020, 2020, 'Grafite', '1.6', 4, 'Gasolina', 43623.92),
    ('REN700000022', 'FIC1022', 'Fusca Motors', 'Brisa GT', 2016, 2016, 'Branco', '1.0', 4, 'Gasolina', 36411.09),
    ('REN700000023', 'FIC1023', 'Fusca Motors', 'Brisa GT', 2020, 2021, 'Branco', '1.6', 4, 'Hibrido', 85782.41),
    ('REN700000024', 'FIC1024', 'Torque', 'Sertao SW', 2019, 2019, 'Branco', '1.4', 4, 'Gasolina', 111067.10),
    ('REN700000025', 'FIC1025', 'Pampa Motors', 'Coxilha', 2022, 2022, 'Prata', '1.0', 4, 'Hibrido', 129142.16),
    ('REN700000026', 'FIC1026', 'Estrela Auto', 'Cometa', 2022, 2022, 'Vermelho', '1.6', 4, 'Flex', 56631.19),
    ('REN700000027', 'FIC1027', 'Torque', 'Sertao', 2014, 2015, 'Bege', '2.0', 2, 'Flex', 87460.87),
    ('REN700000028', 'FIC1028', 'Rota Norte', 'Cerrado 4x4', 2015, 2016, 'Azul', '2.0 Turbo', 4, 'Flex', 100125.73),
    ('REN700000029', 'FIC1029', 'Vento Veiculos', 'Aral Plus', 2013, 2014, 'Preto', '1.6', 4, 'Flex', 129552.48),
    ('REN700000030', 'FIC1030', 'Rota Norte', 'Cerrado', 2011, 2012, 'Prata', '2.0 Turbo', 4, 'Hibrido', 88538.89),
    ('REN700000031', 'FIC1031', 'Estrela Auto', 'Cometa', 2016, 2016, 'Vermelho', '1.0', 2, 'Hibrido', 32918.68),
    ('REN700000032', 'FIC1032', 'Vento Veiculos', 'Aral', 2021, 2022, 'Grafite', '1.8', 4, 'Hibrido', 73092.62),
    ('REN700000033', 'FIC1033', 'Estrela Auto', 'Cometa Sport', 2013, 2013, 'Prata', '1.8', 4, 'Hibrido', 71644.24),
    ('REN700000034', 'FIC1034', 'Pampa Motors', 'Coxilha XL', 2013, 2014, 'Azul', '1.4', 4, 'Hibrido', 73156.45),
    ('REN700000035', 'FIC1035', 'Pampa Motors', 'Coxilha XL', 2016, 2016, 'Branco', '1.6', 4, 'Diesel', 130452.58),
    ('REN700000036', 'FIC1036', 'Rota Norte', 'Cerrado 4x4', 2012, 2012, 'Branco', '1.0', 4, 'Hibrido', 114855.59),
    ('REN700000037', 'FIC1037', 'Estrela Auto', 'Cometa Sport', 2011, 2011, 'Grafite', '1.4', 4, 'Diesel', 103064.54),
    ('REN700000038', 'FIC1038', 'Rota Norte', 'Cerrado', 2013, 2014, 'Preto', '1.0', 4, 'Diesel', 138559.86),
    ('REN700000039', 'FIC1039', 'Torque', 'Sertao', 2020, 2020, 'Vermelho', '2.0', 4, 'Hibrido', 46388.15),
    ('REN700000040', 'FIC1040', 'Estrela Auto', 'Cometa', 2017, 2018, 'Grafite', '1.8', 4, 'Gasolina', 106117.18);

-- CLIENTE (30)
INSERT INTO cliente (nome, sobrenome, telefone, rua, numero, complemento, bairro, cidade, estado, cep) VALUES
    ('Tatiane', 'Simulado 1', '(73) 92621-4087', 'Rua Ficticia 56', '36', 'Casa 2', 'Bairro Modelo 13', 'Camacari', 'BA', '45019-176'),
    ('Quintino', 'Referencia 2', '(73) 91643-7523', 'Rua Ficticia 156', '452', 'Bloco B', 'Bairro Modelo 4', 'Itabuna', 'BA', '45964-657'),
    ('Eduardo', 'Exemplo 3', '(73) 96062-4117', 'Rua Ficticia 117', '380', '', 'Bairro Modelo 6', 'Vitoria da Conquista', 'BA', '45138-684'),
    ('Zilda', 'Teste 4', '(73) 99673-1805', 'Rua Ficticia 80', '193', 'Bloco B', 'Bairro Modelo 7', 'Salvador', 'BA', '45230-688'),
    ('Zilda', 'Referencia 5', '(73) 98663-1288', 'Rua Ficticia 169', '597', '', 'Bairro Modelo 2', 'Jequie', 'BA', '45921-952'),
    ('Ximena', 'Amostra 6', '(73) 93492-1977', 'Rua Ficticia 128', '835', '', 'Bairro Modelo 10', 'Barreiras', 'BA', '45482-795'),
    ('Zilda', 'Pratica 7', '(73) 93501-5419', 'Rua Ficticia 40', '362', 'Casa 2', 'Bairro Modelo 5', 'Itabuna', 'BA', '45911-926'),
    ('Caio', 'Exemplo 8', '(73) 94053-9384', 'Rua Ficticia 26', '695', 'Apto 101', 'Bairro Modelo 6', 'Feira de Santana', 'BA', '45360-160'),
    ('Fernanda', 'Ficticio 9', '(73) 99111-5509', 'Rua Ficticia 175', '809', 'Bloco B', 'Bairro Modelo 3', 'Itabuna', 'BA', '45106-338'),
    ('Daniela', 'Pratica 10', '(73) 99823-5103', 'Rua Ficticia 105', '204', 'Apto 101', 'Bairro Modelo 12', 'Jequie', 'BA', '45080-432'),
    ('Arthur', 'Amostra 11', '(73) 94501-9237', 'Rua Ficticia 11', '746', 'Casa 2', 'Bairro Modelo 10', 'Vitoria da Conquista', 'BA', '45021-826'),
    ('Larissa', 'Esboco 12', '(73) 98839-3654', 'Rua Ficticia 114', '827', '', 'Bairro Modelo 15', 'Feira de Santana', 'BA', '45695-156'),
    ('Gustavo', 'Referencia 13', '(73) 99736-2830', 'Rua Ficticia 80', '400', 'Apto 101', 'Bairro Modelo 8', 'Camacari', 'BA', '45011-460'),
    ('Fernanda', 'Referencia 14', '(73) 95344-1409', 'Rua Ficticia 194', '386', 'Apto 101', 'Bairro Modelo 3', 'Jequie', 'BA', '45211-331'),
    ('Quintino', 'Ilustrativo 15', '(73) 95685-8372', 'Rua Ficticia 190', '786', 'Casa 2', 'Bairro Modelo 15', 'Ilheus', 'BA', '45245-515'),
    ('Tatiane', 'Modelo 16', '(73) 96765-9844', 'Rua Ficticia 172', '835', 'Casa 2', 'Bairro Modelo 10', 'Vitoria da Conquista', 'BA', '45027-533'),
    ('Sergio', 'Ficticio 17', '(73) 94454-2753', 'Rua Ficticia 55', '950', '', 'Bairro Modelo 9', 'Camacari', 'BA', '45916-626'),
    ('Julia', 'Exemplo 18', '(73) 93639-4932', 'Rua Ficticia 170', '435', '', 'Bairro Modelo 11', 'Barreiras', 'BA', '45789-606'),
    ('Yuri', 'Amostra 19', '(73) 94476-5144', 'Rua Ficticia 48', '441', 'Bloco B', 'Bairro Modelo 4', 'Barreiras', 'BA', '45488-371'),
    ('Bianca', 'Ilustrativo 20', '(73) 98516-4372', 'Rua Ficticia 10', '809', 'Casa 2', 'Bairro Modelo 10', 'Barreiras', 'BA', '45822-409'),
    ('Ximena', 'Modelo 21', '(73) 94587-3597', 'Rua Ficticia 97', '146', 'Bloco B', 'Bairro Modelo 1', 'Itabuna', 'BA', '45796-780'),
    ('Bruna', 'Referencia 22', '(73) 95859-8501', 'Rua Ficticia 51', '498', 'Apto 101', 'Bairro Modelo 14', 'Barreiras', 'BA', '45688-156'),
    ('Rafael', 'Pratica 23', '(73) 93166-9189', 'Rua Ficticia 86', '473', 'Casa 2', 'Bairro Modelo 7', 'Barreiras', 'BA', '45612-835'),
    ('Wagner', 'Exemplo 24', '(73) 95202-2713', 'Rua Ficticia 96', '672', 'Casa 2', 'Bairro Modelo 12', 'Barreiras', 'BA', '45811-227'),
    ('Daniela', 'Amostra 25', '(73) 96459-2265', 'Rua Ficticia 191', '316', 'Apto 101', 'Bairro Modelo 11', 'Vitoria da Conquista', 'BA', '45149-869'),
    ('Arthur', 'Simulado 26', '(73) 92707-5846', 'Rua Ficticia 166', '224', '', 'Bairro Modelo 4', 'Vitoria da Conquista', 'BA', '45509-889'),
    ('Wagner', 'Esboco 27', '(73) 94569-1526', 'Rua Ficticia 176', '923', 'Casa 2', 'Bairro Modelo 15', 'Camacari', 'BA', '45009-297'),
    ('Arthur', 'Modelo 28', '(73) 95648-1946', 'Rua Ficticia 68', '714', 'Bloco B', 'Bairro Modelo 1', 'Ilheus', 'BA', '45774-716'),
    ('Ulisses', 'Ilustrativo 29', '(73) 91346-4808', 'Rua Ficticia 153', '722', 'Bloco B', 'Bairro Modelo 8', 'Camacari', 'BA', '45442-751'),
    ('Rafael', 'Pratica 30', '(73) 93336-6675', 'Rua Ficticia 103', '774', 'Bloco B', 'Bairro Modelo 11', 'Barreiras', 'BA', '45736-626');

-- VENDEDOR (8)
INSERT INTO vendedor (nome, sobrenome, telefone, rua, numero, complemento, bairro, cidade, estado, cep, data_admissao, salario) VALUES
    ('Paulo', 'Ficticio 1', '(73) 94661-8194', 'Avenida Modelo 30', '11', '', 'Bairro Central 4', 'Salvador', 'BA', '45793-700', '2010-06-16', 2863.90),
    ('Vera', 'Ficticio 2', '(73) 91220-5441', 'Avenida Modelo 42', '355', '', 'Bairro Central 3', 'Feira de Santana', 'BA', '45220-149', '2022-03-07', 2852.22),
    ('Antonio', 'Ficticio 3', '(73) 93589-3508', 'Avenida Modelo 29', '283', '', 'Bairro Central 1', 'Vitoria da Conquista', 'BA', '45547-758', '2011-11-13', 2725.83),
    ('Sonia', 'Ficticio 4', '(73) 93030-4328', 'Avenida Modelo 90', '359', '', 'Bairro Central 2', 'Itabuna', 'BA', '45087-898', '2015-04-20', 4642.51),
    ('Jorge', 'Ficticio 5', '(73) 95009-4336', 'Avenida Modelo 56', '296', '', 'Bairro Central 5', 'Itabuna', 'BA', '45409-409', '2018-11-12', 6003.31),
    ('Cristina', 'Ficticio 6', '(73) 97844-1562', 'Avenida Modelo 74', '256', '', 'Bairro Central 1', 'Jequie', 'BA', '45789-925', '2023-03-02', 6182.77),
    ('Roberto', 'Ficticio 7', '(73) 92307-5209', 'Avenida Modelo 100', '242', '', 'Bairro Central 3', 'Vitoria da Conquista', 'BA', '45296-449', '2019-11-16', 5020.72),
    ('Marta', 'Ficticio 8', '(73) 97378-5800', 'Avenida Modelo 7', '60', '', 'Bairro Central 3', 'Ilheus', 'BA', '45498-432', '2012-12-05', 3540.69);

-- NEGOCIO (25) — cada um vinculado a um automóvel diferente
INSERT INTO negocio (data_negocio, preco_pago, codigo_cliente, codigo_vendedor, renavam_automovel) VALUES
    ('2023-01-07', 121024.12, 14, 4, 'REN700000025'),
    ('2023-11-25', 58335.83, 28, 6, 'REN700000008'),
    ('2023-12-12', 126183.19, 21, 8, 'REN700000018'),
    ('2024-12-20', 128505.63, 13, 4, 'REN700000029'),
    ('2024-03-11', 119560.86, 6, 6, 'REN700000015'),
    ('2024-11-25', 107197.22, 29, 3, 'REN700000004'),
    ('2023-04-24', 111038.13, 22, 2, 'REN700000024'),
    ('2023-12-13', 92338.24, 11, 7, 'REN700000028'),
    ('2024-04-26', 42277.14, 19, 5, 'REN700000007'),
    ('2023-01-07', 43007.53, 25, 4, 'REN700000021'),
    ('2023-03-21', 47588.51, 7, 8, 'REN700000016'),
    ('2023-09-13', 67528.23, 13, 5, 'REN700000032'),
    ('2023-03-15', 128705.21, 23, 1, 'REN700000038'),
    ('2023-11-11', 126336.94, 16, 1, 'REN700000012'),
    ('2024-12-10', 69723.44, 17, 5, 'REN700000034'),
    ('2024-06-01', 100606.03, 13, 2, 'REN700000037'),
    ('2024-11-11', 35761.44, 27, 5, 'REN700000002'),
    ('2023-09-12', 86069.83, 9, 6, 'REN700000030'),
    ('2023-11-06', 32440.72, 21, 6, 'REN700000031'),
    ('2023-06-02', 88544.89, 9, 3, 'REN700000010'),
    ('2023-01-26', 54359.38, 12, 4, 'REN700000020'),
    ('2023-06-20', 122698.04, 11, 4, 'REN700000011'),
    ('2023-03-24', 129935.21, 20, 4, 'REN700000014'),
    ('2023-12-13', 47410.94, 9, 6, 'REN700000006'),
    ('2023-04-10', 115865.64, 26, 5, 'REN700000001');

-- ---------------------------------------------------------
-- UPDATE de teste
-- ---------------------------------------------------------
UPDATE automovel SET preco = preco * 0.95 WHERE renavam = 'REN700000001';

-- ---------------------------------------------------------
-- DELETE de teste
-- ---------------------------------------------------------
-- Insere e remove um negócio de teste, usando um automóvel ainda sem venda registrada.
INSERT INTO negocio (data_negocio, preco_pago, codigo_cliente, codigo_vendedor, renavam_automovel)
VALUES ('2024-12-31', 50000.00, 1, 1, 'REN700000003');
DELETE FROM negocio WHERE renavam_automovel = 'REN700000003';
