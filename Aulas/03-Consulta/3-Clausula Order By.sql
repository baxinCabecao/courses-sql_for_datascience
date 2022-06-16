-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM populacao_estimada_2020;

-- Consulta todos os dados da tabela ordenando por populacao_estimada
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada;

-- Consulta todos os dados da tabela ordenando por populacao_estimada em ordem crescente
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada ASC;

-- Consulta todos os dados da tabela ordenando por populacao_estimada em ordem decrescente
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC;

-- Consulta todos os dados de uma tabela ordenando por UF crescente, e depos por
-- populacao_estimada em ordem decrescente
SELECT * FROM populacao_estimada_2020 ORDER BY UF, populacao_estimada DESC;

-- Consulta todos os dados da tabela ordenando por populacao_estimada decrescente
SELECT nome_do_municipio FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC;

-- Consulta apenas UF de 'pe' e ordena por populacao_estimada decrescente
-- Observe que o ORDER BY vem depois do Where
SELECT * FROM populacao_estimada_2020 WHERE uf='pe' ORDER BY populacao_estimada DESC;

