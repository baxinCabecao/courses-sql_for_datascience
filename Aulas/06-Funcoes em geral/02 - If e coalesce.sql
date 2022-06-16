--  Seleciona o DB
USE curso;

-- Populacao Maxima  e Minima do Pais
SELECT 
    FORMAT(MAX(T1.POPULACAO_ESTIMADA), 0) AS POP_MAX,
    FORMAT(MIN(T1.POPULACAO_ESTIMADA), 0) AS POP_MIN
FROM
    populacao_estimada_2020 t1;

-- IF (condicao, valor se verdadeiro, valor se faso)
-- Classifica cidades por porte
SELECT 
    *,
    IF(POPULACAO_ESTIMADA > 1000000,
        'Metropole',
        'Cidade Pequena') AS Classificacao
FROM
    populacao_estimada_2020;

-- IF (condicao, valor se verdadeiro, valor se faso)
-- Classifica cidades por porte
SELECT 
    *,
    IF(POPULACAO_ESTIMADA > 3000000,
        'Grande Metropole',
        IF(POPULACAO_ESTIMADA > 1000000,
            'Metropole',
            'Cidade Pequena')) AS Classificacao
FROM
    populacao_estimada_2020;
    

-- Classifica em municipios sem e com regiao metropolitada
SELECT Nome_do_Municipio,
		Regiao_Metropolitana,
	IF(Regiao_Metropolitana is not null, "Sim", "Não") AS 'Faz parte de Regiao Metropolitada'
FROM pib_mun_em_milhares;

-- Calcula com base nos valores calculados uma agregacao
SELECT 
    Ano,
    IF(Regiao_Metropolitana IS NOT NULL,
        'Sim',
        'Não') AS 'Possui_Regiao_metropolitada',
    COUNT(IF(Regiao_Metropolitana IS NOT NULL,
        'Sim',
        'Não')) AS Qtde
FROM
    pib_mun_em_milhares
GROUP BY Ano , Possui_Regiao_metropolitada;


-- Nao precisa de IF, existe uma funcao para isso!!
SELECT 
    t1.*, IF(t2.IDHM_2010 IS NULL, 0, IDHM_2010)
FROM
    populacao_estimada_2020 t1
        LEFT JOIN
    idh_municipios t2 ON (t1.COD_MUN_IBGE_COMP = t2.Codigo);

-- Coalesce resolve esse probema!!
SELECT 
    t1.*, COALESCE(t2.IDHM_2010, 0)
FROM
    populacao_estimada_2020 t1
        LEFT JOIN
    idh_municipios t2 ON (t1.COD_MUN_IBGE_COMP = t2.Codigo);




