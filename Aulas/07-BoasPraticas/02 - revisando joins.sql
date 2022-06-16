-- Uso o banco do dados
USE WORK;

-- Lista tabelas do banco
SHOW TABLES;

-- Listando conteudo de tabelas
SELECT * FROM curso.populacao_estimada_2020;
SELECT * FROM curso.estados_por_regiao;
SELECT * FROM curso.pib_mun_em_milhares;
SELECT * FROM curso.idh_municipios;


-- Uma grande query!!!!
WITH 
	PIB_2018 as ( SELECT Cod_do_Municipio,PIB  FROM  curso.pib_mun_em_milhares WHERE Ano = 2018)
SELECT T1.COD_MUN_IBGE_COMP, 
	T1.UF, 
    T2.Regiao,
    T1.NOME_DO_MUNICIPIO, 
    T1.POPULACAO_ESTIMADA AS POP_2020,
    T3.PIB as PIB_2018,
    T4.IDHM_2010
FROM curso.populacao_estimada_2020 T1
LEFT JOIN curso.estados_por_regiao  T2 ON (T1.UF = T2.Sigla)
LEFT JOIN PIB_2018 T3 ON (T1.COD_MUN_IBGE_COMP = T3.Cod_do_Municipio)
LEFT JOIN curso.idh_municipios T4 ON (T1.COD_MUN_IBGE_COMP = T4.Codigo);

-- Crie uma tabela!!
CREATE TABLE DADOS_MUNICIPIOS AS
WITH 
	PIB_2018 as ( SELECT Cod_do_Municipio,PIB  FROM  curso.pib_mun_em_milhares WHERE Ano = 2018)
SELECT T1.COD_MUN_IBGE_COMP, 
	T1.UF, 
    T2.Regiao,
    T1.NOME_DO_MUNICIPIO, 
    T1.POPULACAO_ESTIMADA AS POP_2020,
    T3.PIB as PIB_2018,
    T4.IDHM_2010
FROM curso.populacao_estimada_2020 T1
LEFT JOIN curso.estados_por_regiao  T2 ON (T1.UF = T2.Sigla)
LEFT JOIN PIB_2018 T3 ON (T1.COD_MUN_IBGE_COMP = T3.Cod_do_Municipio)
LEFT JOIN curso.idh_municipios T4 ON (T1.COD_MUN_IBGE_COMP = T4.Codigo);

-- Listando conteudo de tabelas
SELECT * FROM DADOS_MUNICIPIOS;

SELECT * FROM DADOS_MUNICIPIOS where COD_MUN_IBGE_COMP = 5300108;

CREATE UNIQUE INDEX indice_codigo ON DADOS_MUNICIPIOS(COD_MUN_IBGE_COMP)


SELECT * FROM DADOS_MUNICIPIOS where COD_MUN_IBGE_COMP = 5221601;

ALTER TABLE DADOS_MUNICIPIOS DROP INDEX indice_codigo;