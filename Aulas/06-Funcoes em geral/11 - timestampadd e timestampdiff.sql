--  Seleciona o DB
USE curso;

-- Adicao e subtracao de datas, nao vai como se espera...
SELECT "2021-12-31" + 1;
        
-- timestampadd(<tipo intervalo>, <intervalo>, <data/datetime|coluna>) - Resultado eh char!!
SELECT 	timestampadd(DAY, 1, "2021-12-31"),
		timestampadd(MONTH, -1, "2021-12-31"),
        timestampadd(DAY, -30, "2021-12-31"),
        timestampadd(YEAR, 2, "2021-12-31"),
		timestampadd(HOUR, 1, "2021-12-31 15:55:59"),
        timestampadd(SECOND, 15, "2021-12-31 15:55:59"),
        timestampadd(MINUTE, 500, "2021-12-31 15:55:59");
        
-- Se precisar de uma coluna date, ou datetime, use cast/convert
SELECT 	CAST(timestampadd(DAY, 1, "2021-12-31") AS DATE);

-- Timestampdiff(<tipo intervalo>, <data|coluna>, <data|coluna>) - Diferenca entre datas/datetime
select Timestampdiff(DAY, "2021-12-01", "2021-12-31"),
		Timestampdiff(HOUR, "2021-12-01", "2021-12-31"),
        Timestampdiff(MONTH, "2021-12-01", "2021-12-31"),
        Timestampdiff(SECOND, "2021-12-01", "2021-12-31"),
        Timestampdiff(YEAR, "1965-04-06", curdate()) as Idade;
        

-- Consulta uma tabela
SELECT Nome_do_Municipio, PIB, Ano FROM pib_mun_em_milhares;


-- Filtrando somente ultimos 5 anos
SELECT Nome_do_Municipio, PIB, Ano 
FROM pib_mun_em_milhares
WHERE Ano >= (YEAR(curdate()) - 5);

        
