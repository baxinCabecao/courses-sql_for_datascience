-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM populacao_estimada_2020;

-- UF com a cidade da maior populacao do pais
SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1;

-- Cidades do UF com a cidade da maior populacao do pais
SELECT * FROM populacao_estimada_2020 WHERE UF = (SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1);

-- Erro, pois uma clausia = nao pode receber 2 argumentos, e estamos filtrando as 2 maiores populacoes
SELECT * FROM populacao_estimada_2020 WHERE UF = (SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 2);

-- Erro, pois uma clausia IN não vale para subquery
SELECT * FROM populacao_estimada_2020 WHERE UF IN((SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 2));

-- UF com as 2 cidades de maior populacao do pais
SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 2;

-- Subquery usando With, que separa melhor as querys, criando uma subtabela temporaria
WITH
	UF_Maior_Pop AS (SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1)
SELECT t1.* FROM populacao_estimada_2020 t1, UF_Maior_Pop WHERE t1.UF = UF_Maior_Pop.UF;

-- Subquery usando With, que separa melhor as querys, criando 2 subtabelas temporarias, agora o IN funciona
WITH
	UF_Maior_Pop AS (SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1),
    UF_Segunda_Maior_Pop AS (SELECT UF FROM populacao_estimada_2020 ORDER BY populacao_estimada DESC LIMIT 1 OFFSET 1)
SELECT t1.* FROM populacao_estimada_2020 t1, UF_Maior_Pop, UF_Segunda_Maior_Pop WHERE t1.UF IN (UF_Maior_Pop.UF, UF_Segunda_Maior_Pop.UF);