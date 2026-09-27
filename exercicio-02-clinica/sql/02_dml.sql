-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- Exercício 02 — Clínica
-- Massa de dados fictícia gerada com apoio de IA e revisada manualmente
-- =========================================================

USE CLINICA;

-- ---------------------------------------------------------
-- SALA (8)
-- ---------------------------------------------------------
INSERT INTO sala (numero_sala, andar) VALUES
    (4, 9),
    (5, 6),
    (7, 4),
    (15, 1),
    (25, 5),
    (29, 8),
    (34, 0),
    (39, 2);

-- ---------------------------------------------------------
-- MEDICOS (15)
-- ---------------------------------------------------------
INSERT INTO medicos (crm, nome, idade, especialidade, cpf, data_admissao, numero_sala) VALUES
    ('CRM-10001', 'Ana Beatriz Campos', 52, 'Cardiologia', '999.101.201-11', '2012-02-18', 34),
    ('CRM-10002', 'Bruno Andrade Lima', 29, 'Cardiologia', '999.102.202-12', '2012-11-21', 4),
    ('CRM-10003', 'Carla Nogueira Reis', 62, 'Clinica Geral', '999.103.203-13', '2006-04-02', 7),
    ('CRM-10004', 'Diego Fontoura Melo', 44, 'Clinica Geral', '999.104.204-14', '2009-09-04', 25),
    ('CRM-10005', 'Elisa Marques Tavares', 61, 'Pediatria', '999.105.205-15', '2008-10-19', 15),
    ('CRM-10006', 'Fabio Rezende Costa', 49, 'Cardiologia', '999.106.206-16', '2022-12-03', 4),
    ('CRM-10007', 'Gabriela Souza Pinto', 65, 'Dermatologia', '999.107.207-17', '2020-11-18', 34),
    ('CRM-10008', 'Henrique Vidal Moura', 46, 'Oftalmologia', '999.108.208-18', '2023-08-12', 25),
    ('CRM-10009', 'Isabela Cardoso Braga', 41, 'Pediatria', '999.109.209-19', '2012-02-19', 25),
    ('CRM-10010', 'Joao Pedro Farias', 59, 'Oftalmologia', '999.110.210-20', '2015-12-15', 25),
    ('CRM-10011', 'Karina Duarte Nascimento', 64, 'Cardiologia', '999.111.211-21', '2008-09-14', 7),
    ('CRM-10012', 'Luiz Otavio Barreto', 47, 'Pediatria', '999.112.212-22', '2020-07-02', 5),
    ('CRM-10013', 'Marina Coutinho Alves', 61, 'Neurologia', '999.113.213-23', '2015-12-12', 39),
    ('CRM-10014', 'Nelson Aragao Ferreira', 63, 'Oftalmologia', '999.114.214-24', '2007-02-09', 39),
    ('CRM-10015', 'Olivia Sampaio Rocha', 30, 'Ortopedia', '999.115.215-25', '2014-11-19', 39);

-- ---------------------------------------------------------
-- PACIENTES (40)
-- ---------------------------------------------------------
INSERT INTO pacientes (rg, nome, data_nascimento, cidade, doenca, plano_saude) VALUES
    ('RG-20001', 'Rafael Teixeira', '1981-12-13', 'Vitoria da Conquista', 'Hipertensao', 'Unimed'),
    ('RG-20002', 'Bianca Freitas', '1990-03-20', 'Itabuna', 'Lombalgia', 'SUS'),
    ('RG-20003', 'Caio Monteiro', '1972-05-05', 'Ilheus', 'Ansiedade', 'Unimed'),
    ('RG-20004', 'Debora Salgado', '2008-02-06', 'Salvador', 'Ansiedade', 'Bradesco Saude'),
    ('RG-20005', 'Eduardo Vilela', '1980-03-27', 'Jequie', 'Bronquite', 'Amil'),
    ('RG-20006', 'Fernanda Quintal', '1998-06-22', 'Jequie', 'Enxaqueca cronica', 'SUS'),
    ('RG-20007', 'Gustavo Peixoto', '1955-03-05', 'Ilheus', 'Enxaqueca cronica', 'SUS'),
    ('RG-20008', 'Helena Cordeiro', '2007-10-06', 'Itapetinga', 'Gastrite', 'SUS'),
    ('RG-20009', 'Igor Bastos', '1963-07-18', 'Vitoria da Conquista', 'Dermatite', 'Bradesco Saude'),
    ('RG-20010', 'Julia Marreiro', '1985-03-23', 'Camacari', 'Dermatite', 'Hapvida'),
    ('RG-20011', 'Kleber Amaral', '1951-08-28', 'Camacari', 'Ansiedade', 'Unimed'),
    ('RG-20012', 'Larissa Pontes', '1996-07-04', 'Salvador', 'Ansiedade', 'SUS'),
    ('RG-20013', 'Marcelo Esteves', '1969-02-07', 'Salvador', 'Asma', 'SUS'),
    ('RG-20014', 'Natalia Godoy', '1988-10-02', 'Itabuna', 'Hipertensao', 'Bradesco Saude'),
    ('RG-20015', 'Otavio Serra', '1964-09-04', 'Vitoria da Conquista', 'Dermatite', 'SUS'),
    ('RG-20016', 'Patricia Leal', '1954-04-20', 'Jequie', 'Asma', 'Hapvida'),
    ('RG-20017', 'Quintino Aguiar', '1977-06-20', 'Vitoria da Conquista', 'Lombalgia', 'SUS'),
    ('RG-20018', 'Renata Cavalcante', '1959-08-15', 'Salvador', 'Lombalgia', 'Amil'),
    ('RG-20019', 'Sergio Menezes', '1955-03-04', 'Vitoria da Conquista', 'Gastrite', 'Unimed'),
    ('RG-20020', 'Tatiane Borba', '1965-09-01', 'Ilheus', 'Bronquite', 'Amil'),
    ('RG-20021', 'Ulisses Franco', '1963-12-18', 'Itabuna', 'Bronquite', 'Amil'),
    ('RG-20022', 'Vanessa Rangel', '1956-12-28', 'Itapetinga', 'Bronquite', 'Amil'),
    ('RG-20023', 'Wagner Siqueira', '1966-06-25', 'Ilheus', 'Bronquite', 'Bradesco Saude'),
    ('RG-20024', 'Ximena Prado', '2009-06-21', 'Ilheus', 'Dermatite', 'SulAmerica'),
    ('RG-20025', 'Yuri Camargo', '1969-04-27', 'Jequie', 'Enxaqueca cronica', 'SUS'),
    ('RG-20026', 'Zilda Marinho', '2011-08-12', 'Itabuna', 'Hipertensao', 'SulAmerica'),
    ('RG-20027', 'Arthur Novaes', '1980-08-09', 'Ilheus', 'Dermatite', 'Amil'),
    ('RG-20028', 'Bruna Queiroz', '2002-12-12', 'Vitoria da Conquista', 'Diabetes', 'SUS'),
    ('RG-20029', 'Cesar Trindade', '1958-04-16', 'Ilheus', 'Rinite alergica', 'SUS'),
    ('RG-20030', 'Daniela Ramalho', '2006-10-20', 'Itabuna', 'Lombalgia', 'Hapvida'),
    ('RG-20031', 'Emerson Vasconcelos', '1989-11-03', 'Itabuna', 'Ansiedade', 'SulAmerica'),
    ('RG-20032', 'Flavia Nogueira', '1970-08-06', 'Jequie', 'Rinite alergica', 'SUS'),
    ('RG-20033', 'Guilherme Brito', '1995-08-13', 'Itabuna', 'Asma', 'SUS'),
    ('RG-20034', 'Hilda Paz', '1961-01-05', 'Feira de Santana', 'Lombalgia', 'SulAmerica'),
    ('RG-20035', 'Ivo Casagrande', '1963-10-27', 'Feira de Santana', 'Lombalgia', 'Hapvida'),
    ('RG-20036', 'Joana Brandao', '1989-03-18', 'Camacari', 'Asma', 'SUS'),
    ('RG-20037', 'Kaique Loureiro', '1946-12-21', 'Itabuna', 'Bronquite', 'Hapvida'),
    ('RG-20038', 'Leticia Sales', '1962-07-28', 'Ilheus', 'Enxaqueca cronica', 'SUS'),
    ('RG-20039', 'Mauricio Falcao', '1977-04-10', 'Camacari', 'Enxaqueca cronica', 'SulAmerica'),
    ('RG-20040', 'Norma Guedes', '1986-05-18', 'Jequie', 'Asma', 'SUS');

-- ---------------------------------------------------------
-- FUNCIONARIOS (10)
-- ---------------------------------------------------------
INSERT INTO funcionarios (matricula, nome, data_nascimento, data_admissao, cargo, salario) VALUES
    ('FUNC-301', 'Paulo Ricardo Assis', '1987-08-22', '2019-09-14', 'Auxiliar de Limpeza', 1031.75),
    ('FUNC-302', 'Vera Lucia Prado', '1974-09-17', '2010-08-25', 'Recepcionista', 2938.13),
    ('FUNC-303', 'Antonio Carlos Melo', '1974-03-05', '2017-10-24', 'Assistente Médico', 2730.34),
    ('FUNC-304', 'Sonia Maria Rezende', '1985-11-17', '2018-09-16', 'Assistente Médico', 4034.08),
    ('FUNC-305', 'Jorge Luiz Andrade', '1968-04-07', '2014-01-25', 'Assistente Médico', 2535.78),
    ('FUNC-306', 'Cristina Alves Moreira', '2000-01-25', '2024-02-15', 'Auxiliar Administrativo', 2953.99),
    ('FUNC-307', 'Roberto Carlos Diniz', '1997-10-17', '2013-12-09', 'Tecnico de Enfermagem', 2537.54),
    ('FUNC-308', 'Marta Regina Souza', '1995-09-08', '2021-09-09', 'Auxiliar de Limpeza', 4072.09),
    ('FUNC-309', 'Fabricio Lopes Cunha', '1977-08-05', '2016-02-13', 'Tecnico de Enfermagem', 1770.76),
    ('FUNC-310', 'Silvana Aparecida Gois', '1980-07-03', '2013-11-10', 'Assistente Médico', 4089.14);

-- ---------------------------------------------------------
-- CONSULTAS (80)
-- ---------------------------------------------------------
INSERT INTO consultas (codigo_consulta, data_horario, crm_medico, rg_paciente) VALUES
    (1, '2023-12-21 17:30:00', 'CRM-10003', 'RG-20017'),
    (2, '2023-08-08 18:00:00', 'CRM-10007', 'RG-20032'),
    (3, '2023-11-27 10:15:00', 'CRM-10012', 'RG-20028'),
    (4, '2024-06-14 10:30:00', 'CRM-10006', 'RG-20006'),
    (5, '2024-01-11 15:45:00', 'CRM-10008', 'RG-20002'),
    (6, '2024-06-17 16:30:00', 'CRM-10009', 'RG-20005'),
    (7, '2023-04-04 08:30:00', 'CRM-10005', 'RG-20003'),
    (8, '2023-05-25 09:45:00', 'CRM-10014', 'RG-20017'),
    (9, '2024-03-18 15:45:00', 'CRM-10012', 'RG-20021'),
    (10, '2023-05-02 18:15:00', 'CRM-10007', 'RG-20005'),
    (11, '2024-01-21 08:30:00', 'CRM-10002', 'RG-20039'),
    (12, '2023-02-09 08:45:00', 'CRM-10001', 'RG-20022'),
    (13, '2024-05-20 09:00:00', 'CRM-10009', 'RG-20016'),
    (14, '2023-03-09 07:15:00', 'CRM-10004', 'RG-20020'),
    (15, '2024-09-25 10:30:00', 'CRM-10008', 'RG-20033'),
    (16, '2023-05-12 07:30:00', 'CRM-10001', 'RG-20001'),
    (17, '2023-12-17 15:15:00', 'CRM-10009', 'RG-20031'),
    (18, '2023-08-04 17:45:00', 'CRM-10011', 'RG-20032'),
    (19, '2024-09-10 18:15:00', 'CRM-10004', 'RG-20022'),
    (20, '2023-12-24 17:15:00', 'CRM-10007', 'RG-20023'),
    (21, '2023-03-01 08:30:00', 'CRM-10007', 'RG-20011'),
    (22, '2023-02-22 13:30:00', 'CRM-10010', 'RG-20016'),
    (23, '2024-01-15 09:15:00', 'CRM-10005', 'RG-20029'),
    (24, '2023-05-12 12:30:00', 'CRM-10004', 'RG-20003'),
    (25, '2024-04-12 09:00:00', 'CRM-10006', 'RG-20025'),
    (26, '2023-08-09 15:15:00', 'CRM-10004', 'RG-20033'),
    (27, '2023-02-09 08:15:00', 'CRM-10007', 'RG-20038'),
    (28, '2023-07-01 11:30:00', 'CRM-10011', 'RG-20015'),
    (29, '2023-10-17 09:45:00', 'CRM-10013', 'RG-20021'),
    (30, '2024-03-10 18:15:00', 'CRM-10001', 'RG-20033'),
    (31, '2024-12-23 15:15:00', 'CRM-10015', 'RG-20034'),
    (32, '2023-11-19 18:15:00', 'CRM-10002', 'RG-20002'),
    (33, '2023-03-21 12:00:00', 'CRM-10007', 'RG-20029'),
    (34, '2023-11-01 17:15:00', 'CRM-10008', 'RG-20017'),
    (35, '2023-08-26 08:00:00', 'CRM-10011', 'RG-20034'),
    (36, '2023-12-24 14:30:00', 'CRM-10013', 'RG-20005'),
    (37, '2024-04-24 10:15:00', 'CRM-10012', 'RG-20030'),
    (38, '2024-07-03 14:30:00', 'CRM-10013', 'RG-20003'),
    (39, '2023-02-20 09:30:00', 'CRM-10005', 'RG-20020'),
    (40, '2023-01-16 07:45:00', 'CRM-10005', 'RG-20007'),
    (41, '2023-11-16 11:30:00', 'CRM-10008', 'RG-20030'),
    (42, '2024-02-18 10:30:00', 'CRM-10002', 'RG-20031'),
    (43, '2023-05-15 08:45:00', 'CRM-10005', 'RG-20025'),
    (44, '2023-04-03 16:00:00', 'CRM-10003', 'RG-20034'),
    (45, '2024-06-05 16:30:00', 'CRM-10015', 'RG-20008'),
    (46, '2024-04-16 14:45:00', 'CRM-10001', 'RG-20011'),
    (47, '2023-08-22 14:45:00', 'CRM-10005', 'RG-20010'),
    (48, '2024-06-13 12:00:00', 'CRM-10014', 'RG-20022'),
    (49, '2023-06-25 12:45:00', 'CRM-10002', 'RG-20013'),
    (50, '2023-12-10 11:30:00', 'CRM-10002', 'RG-20026'),
    (51, '2024-10-03 12:45:00', 'CRM-10013', 'RG-20018'),
    (52, '2023-05-04 07:30:00', 'CRM-10011', 'RG-20010'),
    (53, '2023-05-14 15:30:00', 'CRM-10004', 'RG-20024'),
    (54, '2024-01-26 17:45:00', 'CRM-10015', 'RG-20036'),
    (55, '2023-12-03 07:45:00', 'CRM-10008', 'RG-20040'),
    (56, '2023-11-28 11:45:00', 'CRM-10001', 'RG-20036'),
    (57, '2023-03-16 13:30:00', 'CRM-10005', 'RG-20020'),
    (58, '2024-12-24 17:30:00', 'CRM-10007', 'RG-20016'),
    (59, '2024-08-18 17:45:00', 'CRM-10002', 'RG-20011'),
    (60, '2023-02-07 15:45:00', 'CRM-10009', 'RG-20015'),
    (61, '2024-06-25 14:45:00', 'CRM-10003', 'RG-20036'),
    (62, '2023-04-03 09:30:00', 'CRM-10009', 'RG-20006'),
    (63, '2024-04-12 11:15:00', 'CRM-10015', 'RG-20002'),
    (64, '2024-07-14 18:15:00', 'CRM-10007', 'RG-20018'),
    (65, '2024-01-16 11:30:00', 'CRM-10003', 'RG-20033'),
    (66, '2023-02-09 10:45:00', 'CRM-10007', 'RG-20029'),
    (67, '2024-05-28 07:15:00', 'CRM-10001', 'RG-20028'),
    (68, '2024-10-16 07:00:00', 'CRM-10007', 'RG-20034'),
    (69, '2024-08-08 08:15:00', 'CRM-10003', 'RG-20010'),
    (70, '2023-12-23 17:45:00', 'CRM-10002', 'RG-20036'),
    (71, '2023-01-26 09:15:00', 'CRM-10010', 'RG-20003'),
    (72, '2024-03-21 11:45:00', 'CRM-10012', 'RG-20008'),
    (73, '2023-02-10 15:15:00', 'CRM-10007', 'RG-20017'),
    (74, '2023-10-01 07:30:00', 'CRM-10008', 'RG-20018'),
    (75, '2024-11-27 10:45:00', 'CRM-10009', 'RG-20016'),
    (76, '2023-01-14 18:30:00', 'CRM-10001', 'RG-20002'),
    (77, '2023-08-22 17:45:00', 'CRM-10002', 'RG-20017'),
    (78, '2023-11-14 12:15:00', 'CRM-10008', 'RG-20003'),
    (79, '2024-12-14 12:45:00', 'CRM-10004', 'RG-20001'),
    (80, '2024-12-28 15:00:00', 'CRM-10004', 'RG-20032');

-- ---------------------------------------------------------
-- UPDATE de teste
-- ---------------------------------------------------------
-- Corrige a especialidade de um médico cadastrado incorretamente.
UPDATE medicos SET especialidade = 'Cardiologia' WHERE crm = 'CRM-10001';

-- ---------------------------------------------------------
-- DELETE de teste
-- ---------------------------------------------------------
-- Insere e remove uma consulta de teste, sem afetar os demais registros.
INSERT INTO consultas (codigo_consulta, data_horario, crm_medico, rg_paciente)
VALUES (999, '2024-12-31 10:00:00', 'CRM-10001', 'RG-20001');

DELETE FROM consultas WHERE codigo_consulta = 999;
