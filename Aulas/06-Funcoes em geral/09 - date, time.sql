--  Seleciona o DB
USE curso;
 
 -- Datas/hora seguem o padrao AAAA-MM-DD HH:MM::SS, onde AAAA eh ano com 4 digitos, MM eh mes com 2 digitos, e DD eh dia com 2 digitos
SELECT "2022-02-01 15:55:00";

-- Extrai uma data de uma string/datetime
SELECT DATE("2022-02-01 15:55:00") AS DATA;

-- Extrai uma  hora/tempo de uma string/datetime
SELECT TIME("2022-02-01 15:55:00") AS HORA;

-- Converte uma  Data/tempo(também chamado de timestamp), apartir de uma string
SELECT CONVERT("2022-02-01 15:55:00", DATETIME) AS DATAHORA;

-- funcoes Date e time tb funcionam com colunas de data, datetime, time
SELECT DATE(CONVERT("2022-02-01 15:55:00", DATETIME)), 
	TIME(CONVERT("2022-02-01 15:55:00", DATETIME));

-- Comparacao entre datas
SELECT (DATE("2022-02-02") > DATE("2022-02-01"));

-- Comparacao entre datas, ocorre conversao automatica!!
SELECT "2022-04-02" > DATE("2022-04-01"), "2022-03-02" > DATE("2022-04-01");

-- Adicicao e subtracao de data e horas: nao faca isso!!! Vamos aprender depois a forma correta;
SELECT date(date("2022-04-02") + 1);

-- Porque deu menor? Conversao invalida!!!
SELECT "07:60:00" < time("07:55:01"), time("07:60:00"), time("07:55:01");




