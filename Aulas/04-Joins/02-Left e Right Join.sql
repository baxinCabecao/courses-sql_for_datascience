-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM populacao_estimada_2020;

-- Consulta todos os dados de uma tabela
SELECT * FROM estados_por_regiao;

-- Left join de populacao com tabela de UF
select
	T1.*,
	T2.Regiao
from
	populacao_estimada_2020 as T1
left join estados_por_regiao as T2 on
	(T1.COD_UF = T2.Codigo_IBGE);
    
-- inner join - Cuidado com chaves inexistentes na outra tabela
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
inner join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo);
    

-- left join - tudo da tabela a esquerda
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
left join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo);
    
-- left join - descobrindo quem falta na tabela da direita
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
left join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo)
where t2.Codigo is null;


-- left join da tabela de PIB com a tabela de municipios, filtrando ano e UF
select
	T1.*,
	T2.PIB as PIB2018
from
	populacao_estimada_2020 as T1
left join pib_mun_em_milhares as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio)
where
	t2.Ano = 2018 and t2.Sigla_da_UF = "SP";

-- left join da tabela de PIB com a tabela de municipios, sem filtros
select
	T1.*,
	T2.PIB as PIB
from
	populacao_estimada_2020 as T1
left join pib_mun_em_milhares as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio);
    

-- with em conjunto com left join, filtrando ano e UF, sem impacto na tabela da esquerda
with
	pib_2018 as (SELECT Cod_do_Municipio, PIB FROM  pib_mun_em_milhares WHERE Ano = 2018 AND Sigla_da_UF = "SP")
select
	T1.*,
	T2.PIB as PIB2018
from
	populacao_estimada_2020 T1 
left join pib_2018 as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Cod_do_Municipio)
order by
	PIB;


-- right join de populacao com tabela de UF
select
	T1.*,
	T2.Regiao
from
	populacao_estimada_2020 as T1
right join estados_por_regiao as T2 on
	(T1.COD_UF = T2.Codigo_IBGE);
    
-- right join - tudo da tabela a direita
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
right join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo);
    
-- left join - tudo da tabela a esquerda
select
	T1.*,
	T2.IDHM_2010
from
	populacao_estimada_2020 as T1
left join idh_municipios as T2 on
	(T1.COD_MUN_IBGE_COMP = T2.Codigo);



