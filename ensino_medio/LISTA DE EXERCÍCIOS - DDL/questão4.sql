CREATE DATABASE banco;

use banco;

CREATE table conta(
    nroConta INT PRIMARY KEY,
    SaldoConta FLOAT
);

CREATE TABLE transacao(
    nroTransacao int,
    data date,
    valor FLOAT,
    nroConta INT,
    FOREIGN KEY (nroConta) REFERENCES conta(nroConta),
    PRIMARY KEY(nroConta,nroTransacao)
);
