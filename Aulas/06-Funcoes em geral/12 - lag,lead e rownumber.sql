--  Seleciona o DB
USE curso;

-- Consulta uma tabela
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano FROM pib_mun_em_milhares ORDER BY Cod_do_Municipio, Ano;

/* LAG(<coluna>) OVER (PARTITION BY <coluna de particionamento/grupo> ORDER BY <coluna de ordenacao>) - Retorna valor anterior, 
sendo que particionamento e ordenacao sao opcionais.
*/
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano,
		LAG(PIB) OVER () as PIB_anterior
FROM pib_mun_em_milhares 
ORDER BY Cod_do_Municipio, Ano;

 -- Variacao do pib ao longo dos anos. Algo esta errado...
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano,
		LAG(PIB) OVER () as PIB_anterior,
        FORMAT(
				( (PIB / LAG(PIB) OVER ())  - 1)
				* 100, 
            2) As Variacao
FROM pib_mun_em_milhares 
ORDER BY Cod_do_Municipio, Ano;

 -- Variacao do pib ao longo dos anos. Algo esta errado...
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano,
		LAG(PIB) OVER ( PARTITION BY Cod_do_Municipio order by Ano) as PIB_anterior,
        FORMAT(
				( (PIB / LAG(PIB) OVER ( PARTITION BY Cod_do_Municipio order by Ano))  - 1)
				* 100, 
            2) As Variacao
FROM pib_mun_em_milhares 
ORDER BY Cod_do_Municipio, Ano;

/* LEAD(<coluna>) OVER (PARTITION BY <coluna de particionamento/grupo> ORDER BY <coluna de ordenacao>) - Retorna proximo valor, 
sendo que particionamento e ordenacao sao opcionais.
*/
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano,
		LEAD(PIB) OVER (PARTITION BY Cod_do_Municipio ORDER BY Ano) as PIB_proximo
FROM pib_mun_em_milhares 
ORDER BY Cod_do_Municipio, Ano;

/* Row_number() OVER (PARTITION BY <coluna de particionamento/grupo> ORDER BY <coluna de ordenacao>) - Numero da linha, 
sendo que particionamento e ordenacao sao opcionais.
*/
SELECT Cod_do_Municipio, Nome_do_Municipio, PIB, Ano,
		ROW_NUMBER() OVER () as LINHA
FROM pib_mun_em_milhares 
ORDER BY Cod_do_Municipio, Ano;
