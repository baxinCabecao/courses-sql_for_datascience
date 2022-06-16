--  Seleciona o DB
USE curso;

-- Exibe os dados de uma tabela
SELECT * FROM curso.pib_mun_em_milhares;

-- Usando a substring(texto|coluna, posicao, tamanho)
select Nome_do_Municipio, substr(Nome_do_municipio, 1, 3) FROM curso.pib_mun_em_milhares;

-- Usando a substring(texto|coluna, posicao) - vai ate o fim
select Nome_do_Municipio, substr(Nome_do_municipio, 5) as Nome_modificado FROM curso.pib_mun_em_milhares;

-- Usando a substring(texto|coluna, posicao negativa) - em ordem inversa
select Nome_do_Municipio, substr(Nome_do_municipio, -5) as Nome_modificado FROM curso.pib_mun_em_milhares;


-- Trim - remove espacos em branco no inicio e no fim da string
select Nome_do_Municipio, trim(substr(Nome_do_municipio, 5)) as Nome_modificado FROM curso.pib_mun_em_milhares;


-- Locate(texto_procutado, texto|coluna)  Retorna a posicao de uma string
select Nome_do_Municipio, locate(" ", Nome_do_Municipio) as Posicao_string FROM curso.pib_mun_em_milhares;

-- Locate e substr juntos
select Nome_do_Municipio, 
	substr(Nome_do_municipio, locate(" ", Nome_do_Municipio)) as Primeir_nome_removido 
FROM curso.pib_mun_em_milhares;


