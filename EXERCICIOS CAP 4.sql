/* EXERCICIOS CAPITULO 4 */

/* CRIANDO BANCO E TABELA */

CREATE DATABASE LIBRARY;

CREATE TABLE BOOKS (

	BookName VARCHAR(30),
	WriterName VARCHAR(30),
	WriterSex CHAR(1),
	PagesNum VARCHAR(3),
	Publisher VARCHAR(30),
	Price FLOAT(6, 2),
	State CHAR(2),
	Year INTEGER(4)
	
);

/* CORRECOES DO PROFESSOR
Dar uma margem maior de tamanho para os varchars e para a parte inteira do float de preço
Numero de paginas declarado como um inteiro
*/

/* INSERT DOS VALORES  */

INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.90, 'RJ', 2009);

INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98.00, 'SP', 2018);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45.00, 'RJ', 2008);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', 310, 'Beta', 78.99, 'RJ', 2018);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60.00, 'MG', 2016);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100.00, 'ES', 2015);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Para sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);
	
INSERT INTO BOOKS(BookName, WriterName, WriterSex, PagesNum, Publisher, Price, State, Year)
	VALUES('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'RS', 2017);
	
	
/* COM O BANCO DE DADOS E A TABELA PRONTA COMEÇA OS EXERCICIOS */

/* 1 - TRAZER TODOS OS DADOS */

SELECT * FROM BOOKS;

/* 2 – Trazer o nome do livro e o nome da editora */

SELECT BookName AS Nome_do_Livro, Publisher AS Nome_da_Editora  FROM BOOKS;
	
/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */

SELECT BookName AS Nome_do_Livro, State AS UF FROM BOOKS
	WHERE WriterSex = 'M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */

SELECT BookName AS Nome_do_Livro, PagesNum AS Paginas FROM BOOKS
	WHERE WriterSex = 'F';
	
/* 5 – Trazer os valores dos livros das editoras de São Paulo */

SELECT BookName AS Nome_do_Livro, Price AS Preço FROM BOOKS
	WHERE State = 'SP';

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio) */

SELECT WriterName AS Nome_do_Autor, WriterSex AS Genero_do_Autor, State AS UF FROM BOOKS
	WHERE WriterSex = 'M' and (State = 'SP' OR STATE = 'RJ');