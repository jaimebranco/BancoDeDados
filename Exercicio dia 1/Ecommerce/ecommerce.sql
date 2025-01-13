CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (40),
    descricao VARCHAR (100),
    preco DECIMAL (6,2),
    Disponibilifade BOOLEAN
);

ALTER TABLE tb_produtos RENAME COLUMN disponibilifade TO disponibilidade;

INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Smartphone Top", "Tela grande, câmera incrível", 2999.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Tênis de Corrida", "Leve e confortável para seus treinos", 399.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Notebook Gamer", "Processador potente para jogos", 4999.99, FALSE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Relógio Inteligente", "Monitore sua saúde e atividades", 999.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Câmera DSLR", "Capture momentos incríveis em alta resolução", 3499.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Frigobar Portátil", "Ideal para viagens e camping", 299.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Livro de Ficção", "Uma aventura épica", 49.99, TRUE);
INSERT INTO tb_produtos (titulo, descricao, preco, disponibilidade) VALUES ("Console de Jogos", "A diversão está garantida", 2499.99, TRUE);

SELECT * FROM tb_produtos WHERE preco > 500; 
SELECT * FROM tb_produtos WHERE preco < 500; 

UPDATE tb_produtos SET preco = 59.99 WHERE id = 7;

