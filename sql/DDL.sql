-- ===========================================
-- Trabalho II - Normalização de Base de Dados
-- Sistema de Gestão de Funcionários
-- Universidade Licungo - Licenciatura em Informática
--
-- DDL: criação das tabelas do esquema normalizado
-- ===========================================

CREATE DATABASE IF NOT EXISTS gestao_funcionarios;
USE gestao_funcionarios;

-- Tabela CIDADE
CREATE TABLE CIDADE (
    Id_Cidade INT AUTO_INCREMENT PRIMARY KEY,
    Cidade VARCHAR(50) NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    Pais VARCHAR(50) NOT NULL
);

-- Tabela CARGO
CREATE TABLE CARGO (
    Cod_Cargo VARCHAR(5) PRIMARY KEY,
    Cargo VARCHAR(50) NOT NULL
);

-- Tabela FUNCAO
CREATE TABLE FUNCAO (
    Cod_Funcao VARCHAR(5) PRIMARY KEY,
    Funcao VARCHAR(50) NOT NULL
);

-- Tabela FUNCIONARIO (depende de CIDADE, CARGO, FUNCAO)
CREATE TABLE FUNCIONARIO (
    NUIT VARCHAR(15) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Data_Nasc DATE NOT NULL,
    BI VARCHAR(20) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Rua_Av VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(50),
    Id_Cidade INT NOT NULL,
    Cod_Cargo VARCHAR(5) NOT NULL,
    Cod_Funcao VARCHAR(5) NOT NULL,
    Posto_Trabalho VARCHAR(50),
    Data_Admissao DATE NOT NULL,
    FOREIGN KEY (Id_Cidade) REFERENCES CIDADE(Id_Cidade),
    FOREIGN KEY (Cod_Cargo) REFERENCES CARGO(Cod_Cargo),
    FOREIGN KEY (Cod_Funcao) REFERENCES FUNCAO(Cod_Funcao)
);

-- Tabela FUNCIONARIO_FILHO (depende de FUNCIONARIO)
CREATE TABLE FUNCIONARIO_FILHO (
    Id_Filho INT AUTO_INCREMENT PRIMARY KEY,
    NUIT VARCHAR(15) NOT NULL,
    Nome_Filho VARCHAR(100) NOT NULL,
    FOREIGN KEY (NUIT) REFERENCES FUNCIONARIO(NUIT)
);

-- Tabela FUNCIONARIO_CELULAR (depende de FUNCIONARIO)
CREATE TABLE FUNCIONARIO_CELULAR (
    Id_Celular INT AUTO_INCREMENT PRIMARY KEY,
    NUIT VARCHAR(15) NOT NULL,
    Numero_Celular VARCHAR(15) NOT NULL,
    FOREIGN KEY (NUIT) REFERENCES FUNCIONARIO(NUIT)
);
