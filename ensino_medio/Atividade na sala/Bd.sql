-- Active: 1715259365937@@127.0.0.1@3306@instituição
drop database if exists instituição;
CREATE DATABASE instituição;
use instituição;

CREATE table aluno(
matricula int PRIMARY key AUTO_INCREMENT, 
nome VARCHAR(60),
email VARCHAR(250),
nascimento DATE
);

CREATE table professor(
    id int PRIMARY key AUTO_INCREMENT,
    nome VARCHAR(60),
    titulação enum("graduado", "pos-graduado","mestre","doutor","Pos-Doutorado")
);

CREATE table disciplina(
    id int primary key auto_increment,
    nome varchar(60) unique not null,
    ch smallint,
    id_professor int,
    FOREIGN KEY (id_professor) REFERENCES professor(id)
);


CREATE TABLE matricula(
    id_disciplina int,
    matricula int,
    nota decimal(3,1),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id),
    FOREIGN KEY (matricula) REFERENCES aluno(matricula),
    PRIMARY KEY(id_disciplina,matricula)
);

INSERT INTO professor (nome, titulação) VALUES 
('Ana Silva', 'doutor'),
('Carlos Souza', 'mestre'),
('Maria Oliveira', 'pos-graduado'),
('João Pereira', 'graduado'),
('Fernanda Costa', 'Pos-Doutorado');


INSERT INTO aluno (nome, email, nascimento) VALUES 
('João da Silva', 'joao.silva@example.com', '1995-04-12'),
('Maria Santos', 'maria.santos@example.com', '1998-07-25'),
('Pedro Oliveira', 'pedro.oliveira@example.com', '2000-01-15'),
('Ana Costa', 'ana.costa@example.com', '1996-11-03'),
('Lucas Almeida', 'lucas.almeida@example.com', '1999-09-22');

INSERT INTO disciplina (nome,id_professor,ch) VALUES ("Quimica",1,60),
("Fisica",2,80),
("Matematica",3,40),
("Portugues",4,80),
("Psw",5,120);

INSERT into matricula VALUES (1, 1, 7.3), (1, 2, 8.4), (1, 3, 6.9), (1, 4, 9.1), (1, 5, 5.7),
(2, 1, 6.5), (2, 2, 7.2), (2, 3, 8.8), (2, 4, 9.4), (2, 5, 7.1),
(3, 1, 8.3), (3, 2, 6.7), (3, 3, 7.9), (3, 4, 5.8), (3, 5, 9.2);

SELECT * from aluno;
SELECT * from professor;
SELECT * from disciplina;
SELECT * from matricula;