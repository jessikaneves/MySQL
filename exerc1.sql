CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_rh(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colab VARCHAR (255),
salario DECIMAL (8,2),
funcao_colab VARCHAR (255),
presenca BOOLEAN
);

SELECT * FROM tb_rh;
INSERT INTO tb_rh(nome_colab,salario,funcao_colab,presenca)VALUES("Jessika Neves",4100.00,"CEO",false);
SELECT * FROM tb_rh WHERE salario > 2000.00;
SELECT * FROM tb_rh WHERE salario < 2000.00;
UPDATE tb_rh SET presenca = true WHERE id = 3