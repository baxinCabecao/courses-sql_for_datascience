--  Seleciona o DB
USE curso;

-- Consulta uma tabela
SELECT Cod_do_Municipio, Nome_do_Municipio FROM curso.pib_mun_em_milhares;

-- Operacao matematica com o codigo do municipio, mas faz sentido?
SELECT Cod_do_Municipio * 2, Nome_do_Municipio FROM curso.pib_mun_em_milhares;

-- CONVERT(<texto|coluna>, TIPO) Converter numero em texto
SELECT CONVERT(Cod_do_Municipio, CHAR), Nome_do_Municipio FROM curso.pib_mun_em_milhares;

-- Conversao automatica de tipos no MYSQL!!
SELECT CONVERT(Cod_do_Municipio, CHAR) * 2 , Nome_do_Municipio FROM curso.pib_mun_em_milhares;

-- Opcao acima equivaleu a...:
SELECT CONVERT(
		CONVERT(Cod_do_Municipio, CHAR), 
		SIGNED) * 2 , 
        Nome_do_Municipio 
FROM curso.pib_mun_em_milhares;

-- Diferenca entre signed e unsigned
SELECT CONVERT(-1, UNSIGNED), CONVERT(-1, SIGNED), CONVERT(1, UNSIGNED);

-- Conversao para data
SELECT CONVERT("2022-02-19", DATE);

-- Conversao para hora
SELECT CONVERT("12:55", TIME);

-- Conversao para data/hora
SELECT CONVERT("2022-02-19 12:55", DATETIME);

-- CAST(<texto|coluna> AS <TIPO>) - Mesma coisa que convert
SELECT CAST("2022-02-19 12:55" AS DATETIME);

-- Conversao para numero returna 0  se nao for possivel.
SELECT CONVERT("BOLA", UNSIGNED);

