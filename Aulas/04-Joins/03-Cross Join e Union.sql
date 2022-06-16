-- Seleciona a base de dados
USE curso;


-- Fazendo um join sem especificar o ON(condicao)
select
	T1.*,
	T2.Sigla as Sigla
from populacao_estimada_2020 as T1 inner join estados_por_regiao as T2;


-- Cros join, a mesma coisa, so que de forma mais clara
select
	T1.*,
	T2.Sigla as Sigla
from populacao_estimada_2020 as T1 
cross join estados_por_regiao as T2;


-- Union join , adiciona o resultado de uma tabela em outra, aqui pop 2020 e pop 2019
select * from populacao_estimada_2020
UNION
select * from populacao_estimada_2019;


-- Funciona, mas faz sentido? - Sempre faca UNION de tabelas com a mesma estrutura
select UF, NOME_DO_MUNICIPIO from populacao_estimada_2020
UNION
select Sigla, Estado from estados_por_regiao;


-- Union join , adiciona o resultado de uma tabela em outra, aqui a mesma tabela 2 vezes
select * from populacao_estimada_2020
UNION
select * from populacao_estimada_2020;


-- Union join , adiciona o resultado de uma tabela em outra, aqui a mesma tabela 2 vezes, 
-- ele sempre usa o DISTINCT
select * from populacao_estimada_2020
UNION DISTINCT
select * from populacao_estimada_2020;


-- Union join , adiciona o resultado de uma tabela em outra, aqui a mesma tabela 2 vezes, 
-- O All permite duplicidade
select * from populacao_estimada_2020
UNION ALL
select * from populacao_estimada_2020;
