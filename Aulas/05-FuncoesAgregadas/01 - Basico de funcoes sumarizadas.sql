--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM pib_mun_em_milhares;

-- Soma PIB da tabela
SELECT sum(PIB) FROM pib_mun_em_milhares;

-- Filtra ano 2018 dessa tabela
SELECT * FROM pib_mun_em_milhares WHERE Ano = 2018;

-- PIB nacional de 2018
SELECT sum(PIB) as PIB_NACIONAL FROM pib_mun_em_milhares WHERE Ano = 2018;

-- PIB nacional de 2018
SELECT avg(PIB) FROM pib_mun_em_milhares WHERE Ano = 2018;

-- Observe que sai apenas 1 resultado, pois funcoes agregadas sempre reduzem a saida
SELECT Sigla_da_UF, Nome_do_Municipio,  avg(PIB) FROM pib_mun_em_milhares WHERE Ano = 2018;

-- Estatisticas gerais PIB 2018
SELECT sum(PIB), avg(pib), min(pib), max(pib), std(pib), count(Cod_do_Municipio) FROM pib_mun_em_milhares WHERE Ano = 2018;




