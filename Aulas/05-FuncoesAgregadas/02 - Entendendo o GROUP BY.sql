--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM pib_mun_em_milhares;

-- Soma PIB da tabela
SELECT sum(PIB) FROM pib_mun_em_milhares;

-- Soma PIB da tabela por ano
SELECT sum(PIB) FROM pib_mun_em_milhares GROUP BY Ano;

-- Soma PIB da tabela por ano, mantendo a coluna ano
SELECT Ano, sum(PIB) FROM pib_mun_em_milhares GROUP BY Ano;

-- Soma PIB da tabela por ano, mantendo a coluna ano
SELECT Ano, sum(PIB), avg(PIB) FROM pib_mun_em_milhares GROUP BY Ano;

-- Soma PIB da tabela por ano, UF, e ordena por ano, depois por somaPIB
SELECT Ano, Sigla_da_UF, sum(PIB) as SomaPIB, avg(PIB) as Media_PIB 
FROM pib_mun_em_milhares 
GROUP BY Ano, Sigla_da_UF  
ORDER BY Ano, SomaPIB DESC;

-- Atencao, se incluirmos na saida coluna que nao esteja no Group By, temos apenas o primeiro valor
SELECT Ano, Sigla_da_UF, Nome_do_Municipio, sum(PIB) as SomaPIB, avg(PIB) as Media_PIB 
FROM pib_mun_em_milhares 
GROUP BY Ano, Sigla_da_UF  
ORDER BY Ano, SomaPIB DESC;

-- É possivel tb usar Where, que vem ANTES do GROUP BY
SELECT Ano, Sigla_da_UF, Nome_do_Municipio, sum(PIB) as SomaPIB, avg(PIB) as Media_PIB 
FROM pib_mun_em_milhares 
WHERE Ano = 2018
GROUP BY Ano, Sigla_da_UF  
ORDER BY Ano, SomaPIB DESC;

-- Join e sumarizacao na mesma query
SELECT t2.Regiao, sum(t1.POPULACAO_ESTIMADA) as Populacao
FROM populacao_estimada_2020 t1 
LEFT JOIN estados_por_regiao t2 ON (t1.COD_UF = t2.Codigo_IBGE)
GROUP BY t2.Regiao;

-- Atencao com join, pois pode haver redundancia
SELECT sum(t1.POPULACAO_ESTIMADA) as Populacao
FROM populacao_estimada_2020 t1 
LEFT JOIN populacao_estimada_2020 t2 ON (t1.COD_UF = t2.COD_UF);