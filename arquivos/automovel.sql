-- criacao do banco automoveis

CREATE DATABASE IF NOT EXISTS automovel;

USE automovel;

CREATE TABLE IF NOT EXISTS clientes(
id INTEGER PRIMARY KEY,
nome VARCHAR(255));
CREATE TABLE IF NOT EXISTS concessionarias(
 id INTEGER PRIMARY KEY,
 nome VARCHAR(255));
CREATE TABLE IF NOT EXISTS automoveis (
id INTEGER PRIMARY KEY, 
modelo VARCHAR(255),
 preco FLOAT);

CREATE TABLE IF NOT EXISTS alocacao(
id INTEGER PRIMARY KEY,
 area INTEGER,
 automovel INTEGER,
 concessionaria INTEGER,
 FOREIGN KEY (automovel) REFERENCES automoveis (id),
 FOREIGN KEY (concessionaria) REFERENCES concessionarias(id),
 quantidade INTEGER)