--  Seleciona o DB
USE curso;

-- Reverse(texto|coluna) , inverte a ordem de um texto
select Nome_do_Municipio, reverse(Nome_do_Municipio) as Nome_revertido FROM curso.pib_mun_em_milhares;

-- Locate, reverse e substr juntos
select Nome_do_Municipio, 
	substr(Nome_do_municipio, 
		- locate(" ", 
			reverse(Nome_do_Municipio))) as Primeir_nome_removido 
FROM curso.pib_mun_em_milhares;

-- Locate, reverse e substr e if juntos
select Nome_do_Municipio, 
	if (locate(" ", Nome_do_Municipio) = 0, Nome_do_Municipio,
						substr(Nome_do_municipio, 
							- locate(" ", 
								reverse(Nome_do_Municipio)))) as Ultimo_nome_municipio 
FROM curso.pib_mun_em_milhares;


-- Locate, reverse e substr e if juntos - Com calculos intermediarios, para ajudar
select Nome_do_municipio, 
	reverse(Nome_do_municipio),
    locate(" ",reverse(Nome_do_municipio)),
    (-locate(" ",reverse(Nome_do_municipio))) + 1,
	substr(Nome_do_municipio,
				(-locate(" ",reverse(Nome_do_municipio))) + 1
				) as ultimo_nome_do_municipio
from pib_mun_em_milhares;



