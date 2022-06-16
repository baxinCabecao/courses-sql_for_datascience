-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM curso.populacao_estimada_2020;

-- Escolhe as colunas da consulta
SELECT UF, NOME_DO_MUNICIPIO FROM populacao_estimada_2020;

-- Consulta especificando consulta completa
SELECT curso.populacao_estimada_2020.UF, curso.populacao_estimada_2020.NOME_DO_MUNICIPIO FROM curso.populacao_estimada_2020;

-- Usando apelido (Alias)
SELECT t1.UF,t1.NOME_DO_MUNICIPIO FROM curso.populacao_estimada_2020 AS T1;

-- Renomando colunas usando apelidos
SELECT  t1.UF AS 'Sigla da UF', t1.NOME_DO_MUNICIPIO AS 'Nome do município' FROM curso.populacao_estimada_2020 AS T1;

-- Mesmo processo, mas com apelido implicido, sem uso do AS
SELECT t1.UF 'Sigla da UF', t1.NOME_DO_MUNICIPIO 'Nome do município' FROM curso.populacao_estimada_2020 T1;

--  Especificando colunas de uma tabela
SELECT t1.* FROM curso.populacao_estimada_2020 T1;

-- O Select é tb um interpretador aritmetico
SELECT 1 + 1;




