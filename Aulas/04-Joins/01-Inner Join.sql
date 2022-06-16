-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM populacao_estimada_2020;

-- Consulta todos os dados de uma tabela
SELECT * FROM estados_por_regiao;

-- Iner join da tabela de UF com a tabela de municipios
select
	*
from
	populacao_estimada_2020 as T1
inner join estados_por_regiao as T2 on
	(T1.COD_UF = T2.Codigo_IBGE);

-- Iner join da tabela de UF com a tabela de municipios, porem pegando apenas a regiao da tabela de UF
select
	T1.*,
	T2.Regiao
from
	populacao_estimada_2020 as T1
inner join estados_por_regiao as T2 on
	(T1.COD_UF = T2.Codigo_IBGE);

-- Conhecendo a tabela de PIB
SELECT * FROM pib_mun_em_milhares;

-- inner join da tabela de PIB com a tabela de municipios, gerando multiplas linhas
select
	T1.*,
	T2.PIB
from
	populacao_estimada_2020 as T1
inner join pib_mun_em_milhares as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio);	

-- duplicacao de linhas, inner join da tabela de PIB com a tabela de municipios, gerando multiplas linhas
SELECT 
	T1.*,
	T2.PIB,
    T2.Ano as Ano_PIB
FROM populacao_estimada_2020 AS T1 
INNER JOIN pib_mun_em_milhares AS T2 ON (T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio) 
WHERE NOME_DO_MUNICIPIO  = "São Paulo";

-- inner join da tabela de PIB com a tabela de municipios, gerando multiplas linhas
SELECT 
	T1.*,
	T2.PIB,
    T2.Ano as Ano_PIB
FROM populacao_estimada_2020 AS T1 
INNER JOIN pib_mun_em_milhares AS T2 ON (T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio) 
WHERE t1.NOME_DO_MUNICIPIO  = "São Paulo";

-- inner join da tabela de PIB com a tabela de municipios, filtrando ano
select
	T1.*,
	T2.PIB as PIB2018
from
	populacao_estimada_2020 as T1
inner join pib_mun_em_milhares as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio)
where
	t2.Ano = 2018
order by
	PIB;

-- Consulta todos os dados de uma tabela
SELECT * FROM idh_municipios;

-- inner join - Cuidado com chaves inexistentes na outra tabela
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
inner join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo)
order by
	IDHM_2010 DESC;
    
-- Cuidade com join que darao multiplos maths (relacionamento 1-n ou n-n)
SELECT *
FROM populacao_estimada_2020 t1 
LEFT JOIN populacao_estimada_2020 t2 ON (t1.COD_UF = t2.COD_UF);
