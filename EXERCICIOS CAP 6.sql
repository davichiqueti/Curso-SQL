/* Exercicios Cap 6 */

/* CRIACAO DE DATABASE E TABELA */
create database exercicio;

use exercicio;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

/* Mostrando apenas as 5 primeiras rows para demonstração */

insert into funcionarios values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores','10/2/2009',67470,'Structural Engineer',2);
insert into funcionarios values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte','3/31/2008',71869,'Financial Advisor',2);
insert into funcionarios values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo','7/12/2009',101768,'Recruiting Manager',3);
insert into funcionarios values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria','12/25/2014',96897,'Desktop Support Technician',3);
insert into funcionarios values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios','9/19/2002',63702,'Software Engineer III',7);




/* 
EXERCICIO 1 
Traga os funcionarios que trabalhem
no departamento de filmes OU no
departamento de roupas 
*/

SELECT departamento, COUNT(*)
FROM FUNCIONARIOS
GROUP BY departamento;

-- Resultado do COUNT - departamento de filmes tem 21 registros e o departamento de roupas tem 53 
-- Começaremos o operador OR pelo maior para melhor performance

SELECT idFuncionario, nome
FROM FUNCIONARIOS
WHERE departamento = 'roupas' OR departamento = 'filmes';



/*
EXERCICIO 2
O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
desses dois setores. 
*/

SELECT departamento, COUNT(*)
FROM FUNCIONARIOS
WHERE sexo = 'feminino'
GROUP BY departamento;

-- Resultado do COUNT - departamento de filmes tem 9 mulheres e o departamento lar tem 32 mulheres
-- Começaremos com a verificação do departamento pois possui menos valores, retornando FALSO mais rapido
-- Operador OR usara primeiro o departamento com mais mulheres para melhor performance


SELECT idFuncionario, nome, email
FROM FUNCIONARIOS
WHERE (departamento = 'lar' OR departamento = 'filmes') AND sexo = 'feminino';



/*
EXERCICIO 3
Traga os funcionarios do sexo masculino
ou os funcionarios que trabalhem no setor Jardim
*/

SELECT sexo, COUNT(*)
FROM FUNCIONARIOS
WHERE sexo = 'masculino';

SELECT COUNT(*)
FROM FUNCIONARIOS
WHERE departamento = 'Jardim';

-- Como o esperado, existem muito mais funcionarios homens (484) do que funcionarios que trabalham no departamento jardim (47)
-- O operador OR terá como primeiro condição o sexo ser masculino, para melhor performance, já que há mais registros

SELECT idFuncionario, nome, departamento
FROM FUNCIONARIOS
WHERE sexo = 'masculino' OR departamento = 'Jardim';

-- NOTA: Retorno de 507 valores, diferença de 24 da soma total das duas condições,
-- Gerada por rows que condiziam ambos os valores
-- Portanto, há 24 homens no setor Jardim


