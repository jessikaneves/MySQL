-- QUESTAO 2 


CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;




CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255)
);


CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
tamanho VARCHAR (255),
tipo_de_massa VARCHAR (255),
valor DECIMAL (10,2),
categoria_id BIGINT,

FOREIGN KEY (categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;


INSERT INTO tb_categorias(categoria)VALUES("Tradicionais");
INSERT INTO tb_categorias(categoria)VALUES("Premium");
INSERT INTO tb_categorias(categoria)VALUES("Doces");
INSERT INTO tb_categorias(categoria)VALUES("Vegana");
INSERT INTO tb_categorias(categoria)VALUES("Brotinho");

 
DROP TABLE tb_pizzas;

DELETE FROM tb_categorias WHERE id = 6;
DELETE FROM tb_categorias WHERE id = 7;
DELETE FROM tb_categorias WHERE id = 8;
DELETE FROM tb_categorias WHERE id = 9;
DELETE FROM tb_categorias WHERE id = 10;
SELECT * FROM tb_pizzas;


INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Mussarela","G","Grossa",58.90,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Calabresa","G","Média",50,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Marguerita","M","Fina",79.90,2);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Brigadeiro","P","Fina",60.90,3);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Carne de Sol","G","Grossa",80.90,4);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Presunto","PP","Fina",18.90,5);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Frango","P","Média",39.90,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Camarão com catupiry","GG","Grossa",110.25,2);


SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor >50.00 AND valor <=100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;

