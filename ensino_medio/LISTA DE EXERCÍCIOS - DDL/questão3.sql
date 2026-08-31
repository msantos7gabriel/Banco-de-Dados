CREATE DATABASE escola;

Use escola;

CREATE table diciplina(
    codDiciplina int PRIMARY KEY,
    nomeDiciplina VARCHAR(50),
    nroCretitos TINYINT
);

CREATE TABLE aluno(
    nome VARCHAR(100),
    sexo CHAR(1),
    endereço VARCHAR(100),
    nascimento DATETIME,
    matricula INT PRIMARY KEY
);

CREATE TABLE matriculado(
    matricula int,
    codDiciplina int,
    nota decimal(2,1),
    FOREIGN KEY (matricula) REFERENCES aluno(matricula),
    FOREIGN KEY (codDiciplina) REFERENCES diciplina(codDiciplina),
    PRIMARY KEY(matricula,codDiciplina)
);