-- Seleciona a base de dados
USE curso;


-- Filtragem com subquery e join. Aqui, municipios pertencentes ao UF que possuem as 3 maiores cidades do pais
with
	Mun_maiores_pop as (SELECT UF FROM  populacao_estimada_2020 ORDER BY POPULACAO_ESTIMADA DESC LIMIT 3)
select
	T1.*
from
	populacao_estimada_2020 T1 
inner join Mun_maiores_pop as T2 on
	(T1.UF = T2.UF);
    
    
-- Join com operador de comparacao diferente de '='
with
	Mun_maior_pop as (SELECT COD_MUN_IBGE_COMP FROM  populacao_estimada_2020 ORDER BY POPULACAO_ESTIMADA DESC LIMIT 1)
select
	T1.*
from
	populacao_estimada_2020 T1 
inner join Mun_maior_pop as T2 on
	(T1.COD_MUN_IBGE_COMP != T2.COD_MUN_IBGE_COMP);
    

-- Filtragem com subquery e join. Aqui, municipios que não  pertencentem aos UFs que possuem as 3 maiores cidades do pais  
with
 tres_cidades_de_maior_pop as (select UF from populacao_estimada_2020 order by POPULACAO_ESTIMADA DESC limit 3)
select t1.* from populacao_estimada_2020 t1
left join tres_cidades_de_maior_pop t2 on (t1.UF = t2.UF )
where t2.UF IS NULL;

    

-- Erro, mysql nao suporta Full join!!
select
	T1.*,
	T2.Sigla as Sigla
from populacao_estimada_2020 as T1 
full join estados_por_regiao as T2;


