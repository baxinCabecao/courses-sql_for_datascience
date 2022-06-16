-- Exibir tabelas
SHOW DATABASES;

-- Criar a base de dados
CREATE DATABASE curso;

-- Setar Banco de Dados
USE curso;

-- Lisando tabelas
SHOW TABLES;

-- Criacao da tabela
CREATE TABLE populacao_2020  (UF varchar(2), 
											COD_UF tinyint, 
                                            COD_MUN int, 
                                            NOME_DO_MUNICIPIO varchar(50), 
                                            POPULACAO_ESTIMADA int, 
                                            COD_MUN_IBGE_COMP  INT,  
                                            ANO INT);
