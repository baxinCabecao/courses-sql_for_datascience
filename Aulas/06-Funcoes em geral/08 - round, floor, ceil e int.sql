--  Seleciona o DB
USE curso;

-- Consulta uma tabela
SELECT Cod_do_Municipio, Nome_do_Municipio,PIB_per_capita_valores_em_1_real FROM curso.pib_mun_em_milhares;

-- Round(<coluna|numero>, <casas decimais>) - Arredonda para a qtde de cadas decimais, para o valor mais proximo
SELECT Cod_do_Municipio, 
	Nome_do_Municipio,PIB_per_capita_valores_em_1_real, 
    round(PIB_per_capita_valores_em_1_real, 1) 
FROM curso.pib_mun_em_milhares;

-- Removendo casas decimais
SELECT Cod_do_Municipio, 
	Nome_do_Municipio,PIB_per_capita_valores_em_1_real, 
    round(PIB_per_capita_valores_em_1_real, 0) 
FROM curso.pib_mun_em_milhares;

-- Arredodando alem das casas decimais
SELECT Cod_do_Municipio, 
	Nome_do_Municipio,PIB_per_capita_valores_em_1_real, 
    round(PIB_per_capita_valores_em_1_real, -1) 
FROM curso.pib_mun_em_milhares;

-- Floor(<coluna|numero>) Arredonda para baixo, retornando um inteiro
SELECT Cod_do_Municipio, 
	Nome_do_Municipio,PIB_per_capita_valores_em_1_real, 
    floor(PIB_per_capita_valores_em_1_real) 
FROM curso.pib_mun_em_milhares;

-- Floor(<coluna|numero>) Arredonda para cima, retornando um inteiro
SELECT Cod_do_Municipio, 
	Nome_do_Municipio,PIB_per_capita_valores_em_1_real, 
    ceil(PIB_per_capita_valores_em_1_real) 
FROM curso.pib_mun_em_milhares;

-- Cuidado com floor e ceil com numeros negativos!!
SELECT floor(-1.1), ceil(-1.1);