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

SELECT * from aluno;
SELECT * from professor;