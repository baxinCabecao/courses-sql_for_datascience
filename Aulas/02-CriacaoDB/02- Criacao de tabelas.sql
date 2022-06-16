-- Lisando tabelas
SHOW TABLES;

-- Setar Banco de Dados
USE curso;

-- Exibir todos os dados da tabela
SELECT * FROM populacao_2020;


-- Descrever/detalhar estrutura de uma tabela
DESCRIBE populacao_2020;
-- OU
SHOW columns from populacao_2020;


-- Renomear tabela
RENAME TABLE populacao_2020 TO populacao;

-- Alterar coluna de uma tabela
ALTER TABLE populacao MODIFY CodMunIBGECompleto INT NOT NULL;

-- Remover coluna de uma tabela
ALTER TABLE populacao DROP COLUMN COD_MUN;

-- Deletar tabela e recria com colunas certas
DROP TABLE populacao;
CREATE TABLE IF NOT EXISTS populacao_2020  
	(UF varchar(02), COD_UF tinyint, COD_MUN int, NOME_DO_MUNICIPIO varchar(50) NOT NULL, POPULACAO_ESTIMADA int,  COD_MUN_IBGE_COMP  INT UNIQUE NOT NULL PRIMARY KEY,  ANO INT);