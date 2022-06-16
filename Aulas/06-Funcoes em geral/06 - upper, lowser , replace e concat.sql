--  Seleciona o DB
USE curso;

-- Upper(texto|coluna) , para maiuscula
SELECT Nome_do_Municipio, UPPER(Nome_do_Municipio) AS Nome_ajustado FROM curso.pib_mun_em_milhares;


-- lower(texto|coluna) , para minusculas
SELECT Nome_do_Municipio, LOWER(Nome_do_Municipio) AS Nome_ajustado FROM curso.pib_mun_em_milhares;


-- replace(texto|coluna, texto_procurado, novo_textro) , substitui um subtexto.
SELECT Atividade_maior_valor_adicionado_bruto, 
	REPLACE(Atividade_maior_valor_adicionado_bruto, ",",";") AS Nome_ajustado 
FROM curso.pib_mun_em_milhares;

-- concat(texto|coluna a concatenar...) , concatena textos colunas
SELECT Atividade_maior_valor_adicionado_bruto, 
	CONCAT(Sigla_da_UF, Nome_do_Municipio) AS Nome_ajustado 
FROM curso.pib_mun_em_milhares;

-- Insira separadores
SELECT Atividade_maior_valor_adicionado_bruto, 
	CONCAT(Sigla_da_UF, " - ", Nome_do_Municipio) AS Nome_ajustado 
FROM curso.pib_mun_em_milhares;

-- concat_ws(separador, texto|coluna a concatenar...) define um separador primeiro
SELECT Atividade_maior_valor_adicionado_bruto, 
	CONCAT_WS(" - ", Nome_da_Grande_Regiao, Sigla_da_UF, Nome_do_Municipio) AS Nome_ajustado 
FROM curso.pib_mun_em_milhares;