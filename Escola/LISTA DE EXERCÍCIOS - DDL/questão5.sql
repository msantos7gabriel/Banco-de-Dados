CREATE DATABASE congresso;

use congresso;

CREATE table congressita(
prenome VARCHAR(50),
sobrenome VARCHAR(100),
codigo int PRIMARY KEY
);

CREATE table partido(
sigla VARCHAR(10) PRIMARY KEY,
nome VARCHAR(50)
);

CREATE table filiado(
    data date,
    codigo int,
    sigla VARCHAR(10),
    FOREIGN KEY (sigla) REFERENCES partido(sigla),
    FOREIGN KEY (codigo) REFERENCES congressita(codigo),
    PRIMARY KEY(codigo,sigla)
);