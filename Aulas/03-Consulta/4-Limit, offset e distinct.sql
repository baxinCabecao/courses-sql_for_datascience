-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados da tabela ordenando por populacao_estimada em ordem decrescente
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC;

-- Mesma consulta cima, porem limitando a somente 1 resultado
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1;

-- Mesma consulta cima, porem limitando a somente 10 resultados
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 10;

-- Mesma consulta cima, porem limitando a somente 20 resultados
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 20;

-- Mesma consulta cima, porem limitando a somente 10 resultados, porem comecando depois do 10
SELECT * FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 10 OFFSET 10;

-- Terceiro municipio com maior populacao do pais
SELECT nome_do_municipio, populacao_estimada FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1 OFFSET 2;

-- Seleciona todos os registros da tabela estados_por_regiao
SELECT * FROM estados_por_regiao;

-- Seleciona somente sigla da tabela estados_por_regiao
SELECT sigla from estados_por_regiao;

-- Seleciona somente uf da tabela populacao_estimada_2020
SELECT uf FROM populacao_estimada_2020;

-- Seleciona somente uf unicos da tabela populacao_estimada_2020
SELECT DISTINCT uf FROM populacao_estimada_2020;

-- Seleciona somente uf unicos da tabela populacao_estimada_2020, ordenado por UF
SELECT DISTINCT uf FROM populacao_estimada_2020 ORDER BY uf;