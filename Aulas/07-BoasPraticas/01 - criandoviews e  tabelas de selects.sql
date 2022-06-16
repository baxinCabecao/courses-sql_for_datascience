-- Cria uma nova base de dados
CREATE database work;

-- Uso o banco do dados
USE WORK;

-- Lista tabelas do banco
SHOW TABLES;

-- Consultando tabela de outro DB
SELECT * FROM curso.populacao_estimada_2020;

-- Criando uma tabela apartir de um select
CREATE TABLE POP_2020 AS
SELECT COD_MUN_IBGE_COMP, UF, NOME_DO_MUNICIPIO, POPULACAO_ESTIMADA FROM curso.populacao_estimada_2020;

-- Consultando tabela
SELECT * FROM POP_2020;

-- Criando uma view apartir de um select
CREATE VIEW POP_2020_VIEW AS
SELECT * FROM POP_2020;

-- Consulta dados de uma view
SELECT * FROM POP_2020_VIEW;

-- Lista tabelas do banco
SHOW TABLES;

-- deletando tabela
DROP TABLE POP_2020;

-- Erro, tabela a qual a view se refere foi deletada!!
SELECT * FROM POP_2020_VIEW;

-- Criando uma view apartir de uma view
CREATE OR REPLACE VIEW POP_2020_VIEW_VIEW AS
SELECT * FROM POP_2020_VIEW;

-- Consulta dados de uma view
SELECT * FROM POP_2020_VIEW_VIEW;

-- Deletar uma view
DROP VIEW POP_2020_VIEW;

-- Deletar uma view
DROP VIEW POP_2020_VIEW_VIEW;


