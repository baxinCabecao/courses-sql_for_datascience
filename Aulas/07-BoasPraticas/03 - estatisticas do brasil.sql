-- Uso o banco do dados
USE WORK;

-- Listando conteudo de tabelas
SELECT * FROM DADOS_MUNICIPIOS;

-- Criando uma sumarizacao por UF;
CREATE OR REPLACE VIEW ESTATISTICAS_DAS_UF AS
SELECT 
	UF,
    SUM(POP_2020) as Populacao,
    COUNT(DISTINCT COD_MUN_IBGE_COMP) as Qtde_Municipios,
    FORMAT(SUM(PIB_2018) * 1000, 2, "de_DE") as PIB_2018,
    FORMAT((SUM(PIB_2018) * 1000)/SUM(POP_2020), 0, "de_DE") as PIB_per_capta,
    FORMAT(AVG(IDHM_2010), 3, "pt_BR") as IDH_medio,
    FORMAT(STD(IDHM_2010), 3, "pt_BR") as IDH_desvio_padrao,
    FORMAT(MIN(IDHM_2010), 3, "pt_BR") as IDH_minimo,
    FORMAT(MAX(IDHM_2010), 3, "pt_BR") as IDH_maximo
FROM DADOS_MUNICIPIOS
GROUP BY UF
ORDER BY Populacao DESC;

-- Listando conteudo de tabelas
SELECT * FROM ESTATISTICAS_DAS_UF;

-- Criando uma sumarizacao por Regiao;
CREATE OR REPLACE VIEW ESTATISTICAS_DAS_REGIOES AS
SELECT 
	Regiao,
    SUM(POP_2020) as Populacao,
    COUNT(DISTINCT COD_MUN_IBGE_COMP) as Qtde_Municipios,
    FORMAT(SUM(PIB_2018) * 1000, 2, "de_DE") as PIB_2018,
    FORMAT((SUM(PIB_2018) * 1000)/SUM(POP_2020), 0, "de_DE") as PIB_per_capta,
    FORMAT(AVG(IDHM_2010), 3, "pt_BR") as IDH_medio,
    FORMAT(STD(IDHM_2010), 3, "pt_BR") as IDH_desvio_padrao,
    FORMAT(MIN(IDHM_2010), 3, "pt_BR") as IDH_minimo,
    FORMAT(MAX(IDHM_2010), 3, "pt_BR") as IDH_maximo
FROM DADOS_MUNICIPIOS
GROUP BY Regiao
ORDER BY Populacao DESC;

-- Listando conteudo de tabelas
SELECT * FROM ESTATISTICAS_DAS_REGIOES;

-- Criando uma sumarizacao nacional;
CREATE OR REPLACE VIEW ESTATISTICAS_DO_BRASIL AS
SELECT 
    SUM(POP_2020) as Populacao_2020,
    COUNT(DISTINCT COD_MUN_IBGE_COMP) as Qtde_Municipios,
    FORMAT(SUM(PIB_2018) * 1000, 2, "de_DE") as PIB_2018,
    FORMAT((SUM(PIB_2018) * 1000)/SUM(POP_2020), 0, "de_DE") as PIB_per_capta,
    FORMAT(AVG(IDHM_2010), 3, "pt_BR") as IDH_medio,
    FORMAT(STD(IDHM_2010), 3, "pt_BR") as IDH_desvio_padrao,
    FORMAT(MIN(IDHM_2010), 3, "pt_BR") as IDH_minimo,
    FORMAT(MAX(IDHM_2010), 3, "pt_BR") as IDH_maximo
FROM DADOS_MUNICIPIOS;

-- Listando conteudo de tabelas
SELECT * FROM ESTATISTICAS_DO_BRASIL;