CREATE DATABASE israel;
USE israel;
CREATE TABLE curso (
cod_curso INTEGER,
nome VARCHAR (100),
sigla VARCHAR(5),
PRIMARY KEY(cod_curso)
);
CREATE TABLE disciplina (
cod_disciplina INTEGER,
nome VARCHAR(100),
curso INTEGER,
PRIMARY KEY (cod_disciplina),
CONSTRAINT fk_curso FOREIGN KEY
(curso) REFERENCES curso(cod_curso)
ON UPDATE NO ACTION
ON DELETE NO ACTION
);
INSERT INTO curso (cod_curso, nome, sigla)
VALUES
(1, "Ciência da computação", "CCO"),
(2, "Análise e desenvolvimento de sistemas", "ADS"),
(3, "Gestão de tecnologia da informação", "GTI"),
(4, "Jogos digitais", "JD");
ALTER TABLE DISCIPLINA
DROP FOREIGN KEY FK_CURSO;