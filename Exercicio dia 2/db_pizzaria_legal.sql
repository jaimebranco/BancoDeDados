CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id INT PRIMARY KEY,
	dieta VARCHAR (30),
	descricao VARCHAR (160)
);

INSERT INTO tb_categorias(id, dieta, descricao) VALUES (1, "Tradicional",  "Não há restrições específicas quanto ao uso de produtos de origem animal ou vegetal.");
INSERT INTO tb_categorias(id, dieta, descricao) VALUES (2, "Vegetariana",  "Pizzas que não contêm carne, mas podem incluir derivado, como queijo e ovos.");
INSERT INTO tb_categorias(id, dieta, descricao) VALUES (3, "Vegana",  "Pizzas que não contêm nenhum ingrediente de origem animal. Isso inclui a exclusão de queijo, carne, ovos, mel, e qualquer outro produto derivado de animais.");
INSERT INTO tb_categorias(id, dieta, descricao) VALUES (4, "Sem Lactose",  "Pizzas feitas sem leite animal ou derivados");
INSERT INTO tb_categorias(id, dieta, descricao) VALUES (5, "Sem glúten",  "Pizzas feitas com farinha de arroz, que não contém glúten");

CREATE TABLE tb_pizzas(
	cadastro INT,
	nome VARCHAR (40),
	tipo INT,
	descricao VARCHAR (150),
	preco DECIMAL (5,2),
	adicional VARCHAR (100),
	FOREIGN KEY (Tipo) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 1, "Mussarela", 1, "Queijo mussarela, molho de tomate, orégano e carne moída", 50.00, "Azeitonas");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 2, "Calabresa", 1, "Calabresa fatiada, cebola, queijo mussarela, molho de tomate", 55.00, "Pimenta");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 3, "Veggie Supreme", 3, "Queijo vegano, tomate, rúcula, azeitonas, molho de tomate", 60.00, "Manjericão" );
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 4, "Vegetariana Especial", 2, "Queijo mussarela, cogumelos, pimentão, cebola, molho de tomate", 58.00, "Milho");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 5, "Bacon com Calabresa", 1, "Bacon, calabresa, queijo mussarela, molho de tomate", 65.00, "Cebola");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 6, "Quatro Queijos", 1, "Queijo mussarela, queijo gorgonzola, queijo parmesão, queijo provolone, molho de tomate", 70.00, "Orégano");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 7, "Lactose Free Delight", 4, "Queijo sem lactose, tomate, manjericão, molho de tomate", 55.00, "Azeitonas");
INSERT INTO tb_pizzas(cadastro, nome, tipo, descricao, preco, adicional) VALUES ( 8, "Clássica sem glúten", 5, "Massa sem glúten, queijo mussarela, presunto, tomate, molho de tomate", 65.00, "Manjericão");

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

ALTER TABLE tb_categorias RENAME COLUMN descricao TO comentario; 

SELECT * 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.tipo = tb_categorias.id;

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.tipo = tb_categorias.id
WHERE tb_categorias.id = 5;