CREATE DATABASE db_funcionarios;

USE db_funcionarios;

CREATE TABLE tb_dadosfuncionarios (
	matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) NOT NULL,
    datanascimento DATE,
	cargo VARCHAR (50) NOT NULL,
    salario DECIMAL (8,2),
    status BOOLEAN
  );
  
INSERT INTO tb_dadosfuncionarios (nome, datanascimento, cargo, salario, status) VALUES ("João da Silva", "1980-01-01", "Desenvolvedor", 3000,  1);
INSERT INTO tb_dadosfuncionarios (nome, datanascimento, cargo, salario, status) VALUES ("Maria Souza", "1985-05-15", "Analista", 2500, 0);
INSERT INTO tb_dadosfuncionarios (nome, datanascimento, cargo, salario, status) VALUES ("Pedro Gomes", "1990-11-20", "Vendedor", 2500.50, 1);
INSERT INTO tb_dadosfuncionarios (nome, datanascimento, cargo, salario, status) VALUES ("Ana Oliveira", "1992-03-08", "Gerente", 8000, 1);
INSERT INTO tb_dadosfuncionarios (nome, datanascimento, cargo, salario, status) VALUES ("Carlos Santos", "1978-07-25", "Contador", 4500.60, 1);

SELECT * FROM tb_dadosfuncionarios WHERE salario > 2000;
SELECT * FROM tb_dadosfuncionarios WHERE salario < 2000;

UPDATE tb_dadosfuncionarios SET salario = 4000 WHERE matricula = 1;

SELECT * FROM tb_dadosfuncionarios;