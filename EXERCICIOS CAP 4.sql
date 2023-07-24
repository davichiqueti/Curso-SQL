/*	EXERCICIOS CAPITULO 4

 	CRIANDO BANCO E TABELA */

CREATE DATABASE LIBRARY;

CREATE TABLE BOOKS(
	book_name VARCHAR(30),
	writer_name VARCHAR(30),
	writer_sex CHAR(1),
	pages_num VARCHAR(3),
	publisher VARCHAR(30),
	price FLOAT(6, 2),
	state CHAR(2),
	publish_year INTEGER(4)
);
/* INSERT DOS VALORES  */

INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.90, 'RJ', 2009);

INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98.00, 'SP', 2018);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45.00, 'RJ', 2008);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', 310, 'Beta', 78.99, 'RJ', 2018);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60.00, 'MG', 2016);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100.00, 'ES', 2015);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Para sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);
	
INSERT INTO BOOKS(book_name, writer_name, writer_sex, pages_num, publisher, price, state, year)
	VALUES('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'RS', 2017);
	
-- EXERCICIO 1 - TRAZER TODOS OS DADOS

SELECT * FROM BOOKS;


-- EXERCICIO 2 – Trazer o nome do livro e o nome da editora

SELECT book_name AS Nome_do_Livro, publisher AS Nome_da_Editora
FROM BOOKS;
	

-- EXERCICIO 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino

SELECT book_name AS Nome_do_Livro, state AS UF 
FROM BOOKS
WHERE writer_sex = 'M';


-- EXERCICIO 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino 

SELECT book_name AS Nome_do_Livro, pages_num AS Paginas
FROM BOOKS
WHERE writer_sex = 'F';
	

-- EXERCICIO 5 – Trazer os valores dos livros das editoras de São Paulo

SELECT book_name AS Nome_do_Livro, price AS Preço
FROM BOOKS
WHERE state = 'SP';


-- 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio) */

SELECT writer_name AS Nome_do_Autor, writer_sex AS Genero_do_Autor, state AS UF
FROM BOOKS
WHERE writer_sex = 'M' and (state = 'SP' OR state = 'RJ');