--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM pib_mun_em_milhares;

-- Count por padrao conta linhas sem filtrar duplicidade, assim como sum, avg, etc
SELECT count(UF) from populacao_estimada_2020;

-- Exibir lista unicas de UF;
SELECT DISTINCT uf from populacao_estimada_2020;

-- Count  de valores unicos
SELECT count(DISTINCT UF) as Qtde_UF from populacao_estimada_2020;

-- Count desconcidera valores NULL, assim como sum, avg, etc
SELECT count(t2.IDHM_2010) as Qtde_IDHM
FROM populacao_estimada_2020 t1
LEFT JOIN idh_municipios t2 ON(t1.COD_MUN_IBGE_COMP = t2.Codigo);


-- Soma de populacao por UF
SELECT uf, sum(POPULACAO_ESTIMADA) as Populacao from populacao_estimada_2020 GROUP BY UF;

-- Filtrar colunas de agregação é com o HAVING, que vem DEPOIS do Group By. Aqui estados com pop maior que 5 milhoes
SELECT uf, sum(POPULACAO_ESTIMADA) as Populacao from populacao_estimada_2020 GROUP BY UF HAVING Populacao > 5000000;


-- Filtra ano 2018 dessa tabela
SELECT * FROM pib_mun_em_milhares WHERE Ano = 2018;

-- Descobrindo qual o ano mais recente
SELECT max(Ano) FROM pib_mun_em_milhares;

-- Usando subquery pra sempre pegar o ano mais recente
with
	ano_mais_recente as (SELECT max(Ano) as Ano FROM pib_mun_em_milhares)
select t1.* from pib_mun_em_milhares t1
inner join ano_mais_recente t2 ON (t1.Ano = t2.Ano);

