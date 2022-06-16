-- Seleciona a base de dados
USE curso;

-- Exibi tabelas do Banco de Dados
SHOW TABLES;

-- Consulta todos os dados de uma tabela
SELECT * FROM populacao_estimada_2020;

-- Consulta apenas onde UF = "sp"
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf = "sp";

-- Consulta apenas onde UF = "sp" ou UF = "al"
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf IN ("sp", "al");

-- Consulta apenas onde UF != "sp" e UF != "al"
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf NOT IN ("sp", "al");

-- Consulta apenas onde NOME_DO_MUNICIPIO = São Paulo
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO = "São Paulo";

-- Consulta apenas onde NOME_DO_MUNICIPIO começa com São Paulo
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO LIKE "São Paulo%";

-- Consulta apenas onde NOME_DO_MUNICIPIO possuem São Paulo no nome
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO LIKE "%São Paulo%";

-- Consulta apenas onde NOME_DO_MUNICIPIO possuem São no nome
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO LIKE "%SÃO%";

-- Consulta apenas onde NOME_DO_MUNICIPIO possuem exatamente São no nome
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO LIKE BINARY "%São%";

-- Consulta apenas onde NOME_DO_MUNICIPIO possuem exatamente Paul? no nome
SELECT * FROM populacao_estimada_2020 WHERE NOME_DO_MUNICIPIO LIKE BINARY "%Paul_";

-- Consulta com mais de uma clausula (AND)
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf = "sp" AND populacao_estimada >= 500000;

-- Consulta com mais de uma clausula (AND = &&)
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf = "pe" && populacao_estimada >= 500000;

-- Consulta com mais de uma clausula, operador BETWEEN
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf = "pe" AND populacao_estimada BETWEEN 500000 AND 1000000;

-- Consulta com mais de uma clausula, operador OR, com parenteses
SELECT * FROM populacao_estimada_2020 AS T1 WHERE (uf = "pe" && populacao_estimada >= 500000) or (uf = 'se' and (populacao_estimada <= 5000 or populacao_estimada >= 500000));

-- Consulta com mais de uma clausula, operador OR, sem parenteses
SELECT * FROM populacao_estimada_2020 AS T1 WHERE uf = "pe" && populacao_estimada >= 500000 or uf = 'se' and populacao_estimada <= 5000 or populacao_estimada >= 500000;

