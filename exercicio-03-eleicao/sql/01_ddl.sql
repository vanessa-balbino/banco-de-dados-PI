-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- Exercício 03 — Processo Eleitoral Fictício
-- =========================================================

DROP DATABASE IF EXISTS ELEICAO;
CREATE DATABASE ELEICAO
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE ELEICAO;

-- ---------------------------------------------------------
-- Tabela: cargo
-- ---------------------------------------------------------
CREATE TABLE cargo (
    codigo_cargo   INT NOT NULL,
    nome_cargo     VARCHAR(30) NOT NULL,
    salario        DECIMAL(10,2) NOT NULL DEFAULT 17000.00,
    numero_vagas   INT NOT NULL,
    PRIMARY KEY (codigo_cargo),
    CONSTRAINT uq_cargo_nome  UNIQUE (nome_cargo),
    CONSTRAINT uq_cargo_vagas UNIQUE (numero_vagas)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: partido
-- ---------------------------------------------------------
CREATE TABLE partido (
    codigo_partido  INT NOT NULL,
    sigla           CHAR(5) NOT NULL,
    nome            VARCHAR(40) NOT NULL,
    numero          INT NOT NULL,
    PRIMARY KEY (codigo_partido),
    CONSTRAINT uq_partido_sigla  UNIQUE (sigla),
    CONSTRAINT uq_partido_nome   UNIQUE (nome),
    CONSTRAINT uq_partido_numero UNIQUE (numero)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: candidato
-- ---------------------------------------------------------
CREATE TABLE candidato (
    numero_candidato  INT NOT NULL,
    nome              VARCHAR(40) NOT NULL,
    codigo_cargo      INT NOT NULL,
    codigo_partido    INT NOT NULL,
    PRIMARY KEY (numero_candidato),
    CONSTRAINT uq_candidato_nome UNIQUE (nome),
    CONSTRAINT fk_candidato_cargo
        FOREIGN KEY (codigo_cargo) REFERENCES cargo (codigo_cargo)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_candidato_partido
        FOREIGN KEY (codigo_partido) REFERENCES partido (codigo_partido)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: eleitor
-- ---------------------------------------------------------
CREATE TABLE eleitor (
    titulo_eleitor     VARCHAR(30) NOT NULL,
    zona_eleitoral     CHAR(5) NOT NULL,
    sessao_eleitoral   CHAR(5) NOT NULL,
    nome               VARCHAR(40) NOT NULL,
    PRIMARY KEY (titulo_eleitor)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: voto
-- PK composta: impede que o mesmo eleitor vote duas vezes
-- no mesmo candidato.
-- ---------------------------------------------------------
CREATE TABLE voto (
    titulo_eleitor    VARCHAR(30) NOT NULL,
    numero_candidato  INT NOT NULL,
    PRIMARY KEY (titulo_eleitor, numero_candidato),
    CONSTRAINT fk_voto_eleitor
        FOREIGN KEY (titulo_eleitor) REFERENCES eleitor (titulo_eleitor)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_voto_candidato
        FOREIGN KEY (numero_candidato) REFERENCES candidato (numero_candidato)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE INDEX idx_candidato_cargo   ON candidato (codigo_cargo);
CREATE INDEX idx_candidato_partido ON candidato (codigo_partido);
CREATE INDEX idx_voto_candidato    ON voto (numero_candidato);
