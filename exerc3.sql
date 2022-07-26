CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(

id  BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR (255),
idade INT,
genero VARCHAR (255),
turma INT,
nota INT,
aprovacao BOOLEAN

);


ALTER TABLE tb_escola MODIFY COLUMN aprovacao BOOLEAN;

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Jessika", 9,"feminino",1,7,true);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Marcelo", 7,"Masculino",2,9,true);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Jose", 10,"Masculino",2,5,false);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Maria", 7,"feminino",1,10,true);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Rafaela", 6,"feminino",3,6,false);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Pedro",8, "Masculino",4,5,false);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Julia",10, "feminino",3,9,true);
INSERT INTO tb_alunos (nome_aluno, idade, genero , turma, nota , aprovacao) VALUES("Paula",7, "feminino",4,10,true);
