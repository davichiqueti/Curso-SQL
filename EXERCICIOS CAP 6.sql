/* Exercicios Cap 6 - Fazer consultas pensando em 

CRIACAO DE DATABASE E TABELA */

create database EXERCISE;

use EXERCISE;

create table employees
  (
      id_employee integer,
      name varchar(100),
      email varchar(200),
      sex varchar(10),
      department varchar(100),
      admission_date varchar(10),
      salary integer,
      role varchar(100),
      id_region int
  );

-- Demonstração 5 primeiras rows. Tabela original com 1000 itens
insert into employees values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores','10/2/2009',67470,'Structural Engineer',2);
insert into employees values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte','3/31/2008',71869,'Financial Advisor',2);
insert into employees values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo','7/12/2009',101768,'Recruiting Manager',3);
insert into employees values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria','12/25/2014',96897,'Desktop Support Technician',3);
insert into employees values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios','9/19/2002',63702,'Software Engineer III',7);


/* 
EXERCICIO 1 
Traga os employees que trabalhem
no departamento de filmes OU no
departamento de roupas 
*/

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- TEMOS MAIS employees EM ROUPAS, SERÁ O PRIMEIRO VALOR NO OPERADOR OR

SELECT id_employee, name, sex, department
FROM employees
WHERE department = 'Roupas' OR department = 'Filmes';


/*
EXERCICIO 2
O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
desses dois setores. 
*/

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- O SEXO SERÁ O SEGUNDO OPERADOR DO AND, FILTRAR PRIMEIRAMENTE PELO SETOR
-- TEMOS MAIS employees EM LAR, SERÁ O PRIMEIRO VALOR NO OPERADOR OR

SELECT id_employee, name, sex, department, email
FROM employees
WHERE department = 'Lar' OR department = 'Filmes'
AND sex = 'Feminino';


/*
EXERCICIO 3
Traga os employees do sexo masculino
ou os employees que trabalhem no setor Jardim
*/

-- O SEXO SERÁ O PRIMEIRO OPERADOR DO OR, POR VALIDAR MAIS FACILMENTE
SELECT id_employee, name, sex, department
FROM employees
WHERE sex = 'Masculino' OR department = 'Jardim';