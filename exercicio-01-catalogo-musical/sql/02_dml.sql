-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- Exercício 01 — Catálogo Musical
-- =========================================================

USE CATALOGO_MUSICAL;

-- ---------------------------------------------------------
-- Dados-base fornecidos no enunciado (NÃO alterar/remover)
-- ---------------------------------------------------------

-- CD (base)
INSERT INTO cd (cod_cd, nome, gravadora, data) VALUES
    (1, 'Fantasia', 'Som Preso', '1985-07-02'),
    (2, 'Fantasia de Verao', 'Som Preso', '1999-10-20'),
    (3, 'Romantico Total', 'RGB', '2001-09-21'),
    (4, 'Popular 2000', 'RGB', '2000-06-10');

-- CANTOR (base)
INSERT INTO cantor (cod_cantor, nome, biografia) VALUES
    (1, 'Marisa aos Montes', 'Nasceu no Rio de Janeiro em 1970. Gravou varios CDs. Formou recentemente os Canabalistas.'),
    (2, 'Zeca Sertanejo', 'Nasceu em Sao Paulo. Nao bebe. Nao fuma. Tem 3 filhos.'),
    (3, 'Alexandre Xicara', 'Toca pagode desde os 12 anos. Comportamento calmo. Gravou tambem MPB.'),
    (4, 'Emerson Seringueira', 'Canta MPB e sucessos internacionais desde 1990. Vendeu mais de 3 milhoes de discos.'),
    (5, 'Martinho do Bairro', 'Alem de pagode, canta sertanejo desde crianca. Tem familia no Rio de Janeiro.');

-- MUSICA (base)
INSERT INTO musica (cod_cd, numero_musica, titulo, cod_cantor, tempo_segundos, genero) VALUES
    (1, 1, 'Coracao apaixonado', 1, 120, 'MPB'),
    (1, 2, 'Coracao dilacerado', 2, 180, 'MPB'),
    (1, 3, 'Mulher', 1, 120, 'PAGODE'),
    (1, 4, 'Mulheres apaixonadas', 4, 178, 'MPB'),
    (1, 5, 'Vou embora', 5, 300, 'SAMBA'),
    (2, 1, 'Adeus para sempre', 2, 180, 'SAMBA'),
    (2, 2, 'Nova infancia', 4, 198, 'MPB'),
    (2, 3, 'Eu voltei', 5, 345, 'MPB'),
    (2, 4, 'Volta para mim', 5, 532, 'SAMBA'),
    (3, 1, 'Amor de irmao', 4, 123, 'SAMBA'),
    (3, 2, 'Amigo', 3, 452, 'SERTANEJO'),
    (3, 3, 'Amigo para sempre', 2, 89, 'SERTANEJO'),
    (3, 4, 'Cancao para o amigo', 1, 365, 'MPB'),
    (4, 1, 'Andancas', 2, 320, 'MPB'),
    (4, 2, 'Irmao do coracao', 4, 180, 'MPB'),
    (4, 3, 'Amor de mae', 3, 124, 'PAGODE');

-- ---------------------------------------------------------
-- Expansão fictícia gerada com apoio de IA (revisada manualmente)
-- Ver prompt em docs/prompts/geracao-dados.md
-- ---------------------------------------------------------

-- CANTOR (novos, códigos 6 a 15)
INSERT INTO cantor (cod_cantor, nome, biografia) VALUES
    (6, 'Bianca Horizonte', 'Cantora de MPB e bossa nova, iniciou a carreira em coros universitarios.'),
    (7, 'Diego Cerrado', 'Sertanejo raiz, cresceu em uma fazenda de gado em Goias.'),
    (8, 'Val Trovao', 'Voz marcante do rock nacional, fundou sua primeira banda aos 16 anos.'),
    (9, 'Iasmin Aurora', 'Interprete de axe e pop romantico, revelada em festivais de praia.'),
    (10, 'Ronaldo Sanfona', 'Referencia em forro pe-de-serra no interior do Nordeste.'),
    (11, 'Carla Sinuca', 'Samba de raiz e pagode, ligada a rodas de samba da zona norte.'),
    (12, 'Felipe Rima', 'Rapper e compositor, mistura rap nacional com base de MPB.'),
    (13, 'Tais Bossa', 'Especialista em bossa nova e jazz brasileiro instrumental.'),
    (14, 'Junior Estrada', 'Dupla sertaneja transformada em carreira solo, viola caipira.'),
    (15, 'Helena Ventura', 'Cantora pop com influencias de axe e musica eletronica.');

-- CD (novos, códigos 5 a 12)
INSERT INTO cd (cod_cd, nome, gravadora, data) VALUES
    (5, 'Estrada Afora', 'Discos Cerrado', '2004-03-15'),
    (6, 'Marejada', 'Litoral Records', '2012-11-02'),
    (7, 'Cordas do Sertao', 'Discos Cerrado', '2008-05-18'),
    (8, 'Sinal Aberto', 'Som Preso', '2015-09-09'),
    (9, 'Roda de Domingo', 'Zona Norte Music', '1997-04-25'),
    (10, 'Batida de Asfalto', 'Urbana Discos', '2019-07-30'),
    (11, 'Noite de Bossa', 'RGB', '2003-12-01'),
    (12, 'Fogo de Palha', 'Litoral Records', '2021-01-22');

-- MUSICA (novas, distribuídas entre os 12 CDs até totalizar 60 faixas)
INSERT INTO musica (cod_cd, numero_musica, titulo, cod_cantor, tempo_segundos, genero) VALUES
    (1, 6, 'Cancao de Domingo', 11, 152, 'MPB'),
    (1, 7, 'Beira da Estrada', 12, 235, 'SERTANEJO'),
    (1, 8, 'Luz da Manha', 4, 166, 'SAMBA'),
    (2, 5, 'Saudade Boa', 11, 374, 'SAMBA'),
    (2, 6, 'Coracao Aberto', 10, 311, 'MPB'),
    (3, 5, 'Vento no Rosto', 1, 142, 'SERTANEJO'),
    (3, 6, 'Tarde de Sol', 4, 353, 'RAP'),
    (4, 4, 'Flor do Asfalto', 1, 196, 'BOSSA NOVA'),
    (4, 5, 'Serenata Simples', 7, 207, 'AXE'),
    (4, 6, 'Chuva de Verao', 10, 237, 'MPB'),
    (5, 1, 'Passo Certo', 13, 176, 'FORRO'),
    (5, 2, 'Rima Solta', 6, 237, 'PAGODE'),
    (5, 3, 'Onda Calma', 4, 267, 'SAMBA'),
    (5, 4, 'Fogo Brando', 2, 289, 'SAMBA'),
    (5, 5, 'Estrada Longa', 6, 271, 'RAP'),
    (6, 1, 'Ceu de Anil', 5, 117, 'AXE'),
    (6, 2, 'Nome Bonito', 9, 158, 'FORRO'),
    (6, 3, 'Rua Sem Fim', 2, 377, 'ROCK'),
    (6, 4, 'Cais do Porto', 14, 280, 'RAP'),
    (7, 1, 'Doce Lembranca', 4, 130, 'MPB'),
    (7, 2, 'Viola e Prosa', 11, 211, 'ROCK'),
    (7, 3, 'Batida Nova', 2, 214, 'SAMBA'),
    (7, 4, 'Poeira do Caminho', 7, 237, 'AXE'),
    (8, 1, 'Meia Noite', 11, 281, 'PAGODE'),
    (8, 2, 'Sol de Inverno', 6, 276, 'SERTANEJO'),
    (8, 3, 'Cancao Simples', 11, 231, 'SAMBA'),
    (8, 4, 'Trem da Serra', 10, 182, 'BOSSA NOVA'),
    (9, 1, 'Praia Vazia', 12, 220, 'PAGODE'),
    (9, 2, 'Riso Solto', 8, 289, 'ROCK'),
    (9, 3, 'Verso Livre', 15, 380, 'SERTANEJO'),
    (9, 4, 'Manha de Domingo', 11, 261, 'MPB'),
    (10, 1, 'Balanco Doce', 4, 111, 'POP'),
    (10, 2, 'Chao Batido', 7, 232, 'SAMBA'),
    (10, 3, 'Canto da Mata', 4, 256, 'SERTANEJO'),
    (10, 4, 'Roda Viva', 11, 350, 'FORRO'),
    (11, 1, 'Tempo Bom', 15, 329, 'PAGODE'),
    (11, 2, 'Fim de Tarde', 5, 166, 'SERTANEJO'),
    (11, 3, 'Sina Boa', 12, 370, 'ROCK'),
    (11, 4, 'Cordas Soltas', 12, 314, 'RAP'),
    (11, 5, 'Coro Distante', 7, 280, 'SERTANEJO'),
    (12, 1, 'Marcha Lenta', 3, 355, 'AXE'),
    (12, 2, 'Compasso Novo', 2, 119, 'SAMBA'),
    (12, 3, 'Refrao Facil', 3, 176, 'FORRO'),
    (12, 4, 'Nota Solta', 10, 127, 'FORRO');

-- ---------------------------------------------------------
-- UPDATE de teste (aplicado apenas a um registro fictício criado acima)
-- ---------------------------------------------------------
UPDATE musica
SET tempo_segundos = 210
WHERE cod_cd = 5 AND numero_musica = 1;

-- ---------------------------------------------------------
-- DELETE de teste (remove um registro fictício criado exclusivamente para teste)
-- ---------------------------------------------------------
-- Insere e em seguida remove uma faixa de teste, sem afetar dados-base ou a numeração das demais faixas.
INSERT INTO musica (cod_cd, numero_musica, titulo, cod_cantor, tempo_segundos, genero)
VALUES (12, 99, 'Faixa de Teste', 15, 100, 'POP');

DELETE FROM musica
WHERE cod_cd = 12 AND numero_musica = 99;
