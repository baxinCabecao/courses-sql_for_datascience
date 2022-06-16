-- Seleciona o DB para uso
USE curso;

-- Consulta todos os dados da tabela
SELECT * FROM populacao_2020;

-- Atualiza um registro
UPDATE populacao_2020 SET POPULACAO_ESTIMADA = 6718903 WHERE COD_MUN_IBGE_COMP = 3304557;

-- Atualiza possivelmente varios registros, com base na conducao
UPDATE populacao_2020 SET POPULACAO_ESTIMADA = 1500 WHERE COD_UF >= 1;

-- Deleta registros de uma base
DELETE FROM populacao_2020 WHERE uf = "rj";

