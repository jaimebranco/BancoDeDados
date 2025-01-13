CREATE DATABASE db_magicwar;

USE db_magicwar;

CREATE TABLE tb_classes (
	id INT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR (50) NOT NULL,
    pontoforte VARCHAR(50) NOT NULL,
    pontofraco VARCHAR(50) NOT NULL
);

INSERT INTO tb_classes (tipo, pontoforte, pontofraco) VALUES ("Humano", "Adaptação ao ambiente ", "Baixa resistência a magia");
INSERT INTO tb_classes (tipo, pontoforte, pontofraco) VALUES ("Anão", "Resistência", "Baixa velocidade");
INSERT INTO tb_classes (tipo, pontoforte, pontofraco) VALUES ("Elfo", "Agilidade", "Baixa iniciativa");
INSERT INTO tb_classes (tipo, pontoforte, pontofraco) VALUES ("Orc", "Agressividade", "Baixa capacidade de trabalho em equipe");
INSERT INTO tb_classes (tipo, pontoforte, pontofraco) VALUES ("Animal Mítico", "Uso de elemnentos da natureza", "Baixa tolerância a sons");

CREATE TABLE tb_personagens (
	nome VARCHAR(50),
    tipo INT,
    vida INT,
    ataque INT,
    defesa INT,
    especial VARCHAR (50),
    FOREIGN KEY (tipo) REFERENCES tb_classes (id) 
);

INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Eldrin Solas", 3,  50000, 2500, 3500,"Ventania da morte"); 
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Bárbara Pedra Escura", 4, 80000, 7500, 2250, "Força bruta");
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Aerith Luna", 5, 150000, 4500, 1700, "Cura poderosa");
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Kael Fireheart", 4, 85000, 1900, 3380,"Mãos de fogo");
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Silas Sombra", 1, 130000, 2600, 3700, "Invisibilidade");
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Anya Floresta", 3, 200000, 500, 1600, "Afinidade com animais");
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Thorin Escudo de Carvalho", 2, 140000, 2000, 1000, "Resistência inabalável"); 
INSERT INTO tb_personagens (nome, tipo, vida, ataque, defesa, especial) VALUES ("Elara Oceano", 5, 120000, 2800, 1650,"Controle das marés"); 

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

select * from tb_classes;

SELECT nome, tb_classes.id, vida, ataque, defesa, especial 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.tipo = tb_classes.id;

SELECT nome, tb_classes.id, vida, ataque, defesa, especial 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.tipo = tb_classes.id
WHERE tb_classes.tipo = "Anão";