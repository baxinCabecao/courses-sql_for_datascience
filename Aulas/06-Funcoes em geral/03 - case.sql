--  Seleciona o DB
USE curso;


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
    

/* Usando Case
   Sintaxe:
	Case (Caso) 
		When (Quando) <condicao> THEN (Entao) <VALOR|FORMULA>
		When (Quando) <condicao> THEN (Entao) <VALOR|FORMULA>
		...
		ELSE (Se nenhum caso acima, opcional) <VALOR|FORMULA>
	END (Fim)
*/
SELECT 
    CASE
     WHEN POPULACAO_ESTIMADA > 3000000 THEN 'Grande Metropole'
	 WHEN POPULACAO_ESTIMADA > 1000000 THEN 'Metropole'
     WHEN POPULACAO_ESTIMADA > 500000 THEN 'Grande cidade'
     ELSE 'Cidade Pequena'
	END AS Classificacao
FROM
    populacao_estimada_2020;


-- Qtde de municipios por porte
SELECT 
    CASE
     WHEN POPULACAO_ESTIMADA > 3000000 THEN 'Grande Metropole'
	 WHEN POPULACAO_ESTIMADA > 1000000 THEN 'Metropole'
     WHEN POPULACAO_ESTIMADA > 500000 THEN 'Grande cidade'
     ELSE 'Cidade Pequena'
	END AS Classificacao,
	count(DISTINCT COD_MUN_IBGE_COMP) as Qtde
FROM
    populacao_estimada_2020
GROUP BY Classificacao;



-- Nao use case para regras complexas de negocio, nesse caso, use JOINS!!
SELECT 
	*, 
    CASE
     WHEN UF = "PE" THEN 'Nordeste'
	 WHEN UF = "SP" THEN 'Sudeste'
     WHEN UF = "AM" THEN 'Norte'
     ELSE 'Nao faca isso...'
	END AS Classificacao
FROM
    populacao_estimada_2020;
    







