-- ===========================================
-- Trabalho II - Normalização de Base de Dados
-- Sistema de Gestão de Funcionários
-- Universidade Licungo - Licenciatura em Informática
--
-- QUERIES DE EXEMPLO: reconstituição da informação original
-- (executar depois de ddl.sql e de inserir dados)
-- ===========================================

USE gestao_funcionarios;

-- Query 1: Reconstituir a "ficha completa" de um funcionário
SELECT
    f.Nome,
    f.Email,
    c.Cargo,
    fn.Funcao,
    ci.Cidade,
    ci.Provincia,
    f.Data_Admissao
FROM FUNCIONARIO f
JOIN CARGO c ON f.Cod_Cargo = c.Cod_Cargo
JOIN FUNCAO fn ON f.Cod_Funcao = fn.Cod_Funcao
JOIN CIDADE ci ON f.Id_Cidade = ci.Id_Cidade
WHERE f.NUIT = '100234567';

-- Query 2: Listar todos os funcionários com os seus filhos
SELECT
    f.Nome AS Funcionario,
    ff.Nome_Filho
FROM FUNCIONARIO f
JOIN FUNCIONARIO_FILHO ff ON f.NUIT = ff.NUIT
ORDER BY f.Nome;

-- Query 3: Listar funcionários com os seus contactos, agrupados por cargo
SELECT
    c.Cargo,
    f.Nome,
    fc.Numero_Celular
FROM FUNCIONARIO f
JOIN CARGO c ON f.Cod_Cargo = c.Cod_Cargo
JOIN FUNCIONARIO_CELULAR fc ON f.NUIT = fc.NUIT
ORDER BY c.Cargo, f.Nome;
