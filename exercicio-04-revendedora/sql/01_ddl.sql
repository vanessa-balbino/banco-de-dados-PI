-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- Exercício 04 — Revendedora de Carros Usados
-- =========================================================

DROP DATABASE IF EXISTS REVENDEDORA_CARROS;
CREATE DATABASE REVENDEDORA_CARROS
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE REVENDEDORA_CARROS;

-- ---------------------------------------------------------
-- Tabela: automovel
-- ---------------------------------------------------------
CREATE TABLE automovel (
    renavam            VARCHAR(15) NOT NULL,
    placa              VARCHAR(8)  NOT NULL,
    marca              VARCHAR(40) NOT NULL,
    modelo             VARCHAR(60) NOT NULL,
    ano_fabricacao     SMALLINT    NOT NULL,
    ano_modelo         SMALLINT    NOT NULL,
    cor                VARCHAR(30) NOT NULL,
    motor              VARCHAR(20) NOT NULL,
    numero_portas      TINYINT     NOT NULL,
    tipo_combustivel   VARCHAR(20) NOT NULL,
    preco              DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (renavam),
    CONSTRAINT uq_automovel_placa UNIQUE (placa),
    CONSTRAINT ck_automovel_preco CHECK (preco > 0),
    CONSTRAINT ck_automovel_portas CHECK (numero_portas BETWEEN 2 AND 5)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: cliente
-- ---------------------------------------------------------
CREATE TABLE cliente (
    codigo_cliente  INT AUTO_INCREMENT,
    nome            VARCHAR(50) NOT NULL,
    sobrenome       VARCHAR(50) NOT NULL,
    telefone        VARCHAR(20),
    rua             VARCHAR(80),
    numero          VARCHAR(10),
    complemento     VARCHAR(40),
    bairro          VARCHAR(40),
    cidade          VARCHAR(40),
    estado          CHAR(2),
    cep             VARCHAR(9),
    PRIMARY KEY (codigo_cliente)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: vendedor
-- ---------------------------------------------------------
CREATE TABLE vendedor (
    codigo_vendedor  INT AUTO_INCREMENT,
    nome             VARCHAR(50) NOT NULL,
    sobrenome        VARCHAR(50) NOT NULL,
    telefone         VARCHAR(20),
    rua              VARCHAR(80),
    numero           VARCHAR(10),
    complemento      VARCHAR(40),
    bairro           VARCHAR(40),
    cidade           VARCHAR(40),
    estado           CHAR(2),
    cep              VARCHAR(9),
    data_admissao    DATE NOT NULL,
    salario          DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (codigo_vendedor)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: negocio
-- PK substituta (id_negocio): o enunciado não define um
-- identificador natural para o negócio (ver docs/requisitos.md).
-- ---------------------------------------------------------
CREATE TABLE negocio (
    id_negocio          INT AUTO_INCREMENT,
    data_negocio        DATE NOT NULL,
    preco_pago          DECIMAL(10,2) NOT NULL,
    codigo_cliente      INT NOT NULL,
    codigo_vendedor     INT NOT NULL,
    renavam_automovel   VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_negocio),
    CONSTRAINT uq_negocio_automovel UNIQUE (renavam_automovel),
    CONSTRAINT fk_negocio_cliente
        FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo_cliente)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_negocio_vendedor
        FOREIGN KEY (codigo_vendedor) REFERENCES vendedor (codigo_vendedor)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_negocio_automovel
        FOREIGN KEY (renavam_automovel) REFERENCES automovel (renavam)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT ck_negocio_preco CHECK (preco_pago > 0)
) ENGINE = InnoDB;

CREATE INDEX idx_negocio_cliente  ON negocio (codigo_cliente);
CREATE INDEX idx_negocio_vendedor ON negocio (codigo_vendedor);
