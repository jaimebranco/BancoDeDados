CREATE DATABASE db_escola;

USE db_escola; 

CREATE TABLE tb_dadosestudantes (
	matrícula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) NOT NULL,
    data_nascimento DATE NOT NULL,
    nota DECIMAL (4,2),
    turma VARCHAR (50)
);

INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Ana Silva", "2005-01-15", 8.5, "1A");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Pedro Almeida", "2004-09-20", 7.2, "1B");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Maria Oliveira", "2005-03-08", 9.0, "1A");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("João Santos", "2004-12-25", 6.8, "1B");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Laura Fernandes", "2005-02-14", 7.5, "1A");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Lucas Pereira", "2004-11-05", 8.2, "1B");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Sofia Santos", "2005-04-22", 9.5, "1A");
INSERT INTO tb_dadosestudantes (nome, data_nascimento, nota, turma) VALUES ("Gabriel Costa", "2004-10-10", 7.0, "1B");

SELECT * FROM tb_dadosestudantes WHERE nota > 7.00;
SELECT * FROM tb_dadosestudantes WHERE nota < 7.00;

UPDATE tb_dadosestudantes SET nota = 7.20 WHERE matrícula = 4;

SELECT * FROM tb_dadosestudantes;