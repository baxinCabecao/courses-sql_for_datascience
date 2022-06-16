--  Seleciona o DB
USE curso;

-- Curdate, Curtime e Now, retornam o dia, hora, e data hora atuais respectivamente. 
SELECT CURDATE(), CURTIME(), NOW();

-- Consulta a uma tabela
SELECT Nome_do_Municipio, PIB, Ano FROM pib_mun_em_milhares;

-- Cria uma data usando texto e colunas existentes
SELECT Nome_do_Municipio, PIB, date(concat_ws("-",Ano,12,31)) FROM pib_mun_em_milhares;

-- Maketime(hora,minuto,seguntos)- cria um tempo apartir de HH, MM, SS
SELECT maketime(23,59,59);

-- addtime(<time|datetime>, tempo a adicionar) - Adiciona um tempo a um datetime
SELECT Nome_do_Municipio, PIB, 
	addtime(
		convert(concat_ws("-",Ano,12,31), datetime), 
		maketime(23,59,59)) 
FROM pib_mun_em_milhares;

-- Day, Month, Year, Hour, minute, Second, extraem o Dia, mes, ano, hora, minuto e segunfos respectivamente,
select day("2022-01-15 15:55:59"), 
		month("2022-01-15 15:55:59"),
        year("2022-01-15 15:55:59"),
        hour("2022-01-15 15:55:59"),
        minute("2022-01-15 15:55:59"),
        second("2022-01-15 15:55:59");