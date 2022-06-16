--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM pib_mun_em_milhares t1;

-- Ajusta o PIB para o valor real
SELECT Sigla_da_UF, 
	Nome_do_Municipio, 
	Ano, 
    (PIB * 1000) as PIB 
FROM pib_mun_em_milhares t1;

-- Calcula percentual de cada municipio versus o nacional
SELECT Sigla_da_UF, 
	Nome_do_Municipio, 
	Ano, 
    PIB / (sum(PIB * 1000) OVER (partition by Ano)) as Percentual_pib_nacional
FROM pib_mun_em_milhares t1;

-- Adiciona a coluna PIB e melhora a apresentação do percentual
SELECT Sigla_da_UF, 
	Nome_do_Municipio, 
	Ano, 
    PIB,
    (PIB  / (sum(PIB) OVER (partition by Ano))) * 100 as Percentual_pib_nacional
FROM pib_mun_em_milhares t1;

-- Formata uma coluna
SELECT Sigla_da_UF, 
	Nome_do_Municipio, 
	Ano, 
    format(PIB,0, 'de_DE') As PIB,
    (PIB  / (sum(PIB) OVER (partition by Ano))) * 100 as Percentual_pib_nacional
FROM pib_mun_em_milhares t1;

-- Cuidado com o format, pois a coluna vira de texto, e assim nao podera fazer calculos DEPOIS e classificar
SELECT Sigla_da_UF, 
	Nome_do_Municipio, 
	Ano, 
    format(PIB, 0) * 100 AS PIB ,
    format((PIB  / (sum(PIB) OVER (partition by Ano))) * 100, 4) as Percentual_pib_nacional
FROM pib_mun_em_milhares t1;