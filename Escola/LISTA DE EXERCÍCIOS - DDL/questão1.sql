CREATE DATABASE livraria;

use livraria;

CREATE table area(
nomeArea VARCHAR(30),
codArea SMALLINT PRIMARY KEY
);

CREATE TABLE livro(
    editora VARCHAR(20),
    anoPublicacao YEAR,
    autor varchar(40),
    nome varchar(60),
    ISBN char(13) PRIMARY KEY,
    codArea smallint,
    FOREIGN KEY (codArea) REFERENCES area(codArea)
);