-- Selectiona o BB para uso
USE curso;

-- Consulta todos os dados da tabela
SELECT * FROM populacao_2020;

-- Insere um valor na tabela
INSERT INTO populacao_2020 values("PE", 26, 9907, "Ouricuri", 69459, 2609907, 2019);
-- Insere novamente, porem da erro, porque a tabel possui restricao de ID único
INSERT INTO populacao_2020 values("PE", 26, 9907, "Ouricuri", 69459, 2609907, 2019);

-- Insere especificando colunas, inclusive sem o dado de populacao
INSERT INTO populacao_2020 (UF, COD_UF, COD_MUN, NOME_DO_MUNICIPIO, COD_MUN_IBGE_COMP, ANO) values("RJ", 33, 4557, "Rio de Janeiro", 3304557, 2019);



