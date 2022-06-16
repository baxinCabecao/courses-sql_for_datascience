--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM pib_mun_em_milhares;

-- Soma de populacao por UF
SELECT uf, NOME_DO_MUNICIPIO, POPULACAO_ESTIMADA, sum(POPULACAO_ESTIMADA) as Populacao_UF 
from populacao_estimada_2020 
GROUP BY UF;

-- Soma de populacao por UF
SELECT uf, 
NOME_DO_MUNICIPIO, 
POPULACAO_ESTIMADA, 
sum(POPULACAO_ESTIMADA) OVER (PARTITION BY UF) as Populacao_UF
from populacao_estimada_2020 ;


-- % da populacao do municipio vs da UF
SELECT uf, 
NOME_DO_MUNICIPIO, 
POPULACAO_ESTIMADA, 
POPULACAO_ESTIMADA / (sum(POPULACAO_ESTIMADA) OVER (PARTITION BY UF)) AS "% da populacao"
from populacao_estimada_2020 ;

-- Soma de populacao Nacional, mas mantendo dos dos municipios
SELECT uf, 
NOME_DO_MUNICIPIO, 
POPULACAO_ESTIMADA, 
sum(POPULACAO_ESTIMADA) OVER () as Populacao_Nacional
from populacao_estimada_2020 ;

-- Soma de populacao por UF, acumuladando pela coluna do ORDER BY(vai adicionando na ordem especificada)
SELECT uf, 
NOME_DO_MUNICIPIO, 
POPULACAO_ESTIMADA, 
sum(POPULACAO_ESTIMADA) OVER (PARTITION BY UF ORDER BY NOME_DO_MUNICIPIO) as Populacao_UF_soma_Acumulada
from populacao_estimada_2020 ;
