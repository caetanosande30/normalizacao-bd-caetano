-- ===========================================
-- Dados de teste - 16 funcionários (dataset completo)
-- Trabalho II - Normalização de Base de Dados
-- Executar DEPOIS do schema.sql
-- ===========================================

USE gestao_funcionarios;

-- CIDADES (uma linha por cidade distinta na tabela original)
INSERT INTO CIDADE (Cidade, Provincia, Pais) VALUES
 ('Maputo', 'Maputo Cidade', 'Moçambique'),      -- Id_Cidade = 1
 ('Matola', 'Maputo Província', 'Moçambique'),   -- Id_Cidade = 2
 ('Chókwè', 'Gaza', 'Moçambique'),                -- Id_Cidade = 3
 ('Maxixe', 'Inhambane', 'Moçambique'),           -- Id_Cidade = 4
 ('Beira', 'Sofala', 'Moçambique'),               -- Id_Cidade = 5
 ('Nampula', 'Nampula', 'Moçambique'),            -- Id_Cidade = 6
 ('Chimoio', 'Manica', 'Moçambique'),             -- Id_Cidade = 7
 ('Tete', 'Tete', 'Moçambique'),                  -- Id_Cidade = 8
 ('Quelimane', 'Zambézia', 'Moçambique'),         -- Id_Cidade = 9
 ('Pemba', 'Cabo Delgado', 'Moçambique');         -- Id_Cidade = 10

-- CARGOS (códigos únicos da tabela de referência)
INSERT INTO CARGO (Cod_Cargo, Cargo) VALUES
 ('C01', 'Técnico de Informática'),
 ('C02', 'Contabilista'),
 ('C03', 'Engenheiro Civil'),
 ('C04', 'Enfermeiro'),
 ('C05', 'Professor'),
 ('C06', 'Motorista'),
 ('C07', 'Gestor de Recursos Humanos'),
 ('C08', 'Assistente Administrativo');

-- FUNÇÕES
INSERT INTO FUNCAO (Cod_Funcao, Funcao) VALUES
 ('F01', 'Tecnologias de Informação'),
 ('F02', 'Finanças'),
 ('F03', 'Engenharia'),
 ('F04', 'Saúde'),
 ('F05', 'Educação'),
 ('F06', 'Logística'),
 ('F07', 'Recursos Humanos'),
 ('F08', 'Administração');

-- FUNCIONÁRIOS (16 registos completos)
INSERT INTO FUNCIONARIO (NUIT, Nome, Data_Nasc, BI, Email, Rua_Av, Numero, Bairro,
                          Id_Cidade, Cod_Cargo, Cod_Funcao, Posto_Trabalho, Data_Admissao) VALUES
 ('100234567', 'Amélia Fernanda Cossa', '1985-03-12', '110100123456A', 'amelia.cossa@empresa.co.mz', 'Av. Julius Nyerere', '245', 'Sommerschield', 1, 'C01', 'F01', 'Sede Maputo', '2015-02-05'),
 ('100345678', 'Bernardo Alfredo Machava', '1979-07-22', '110100234567B', 'bernardo.machava@empresa.co.mz', 'Rua da Resistência', '8', 'Polana Caniço', 1, 'C02', 'F02', 'Sede Maputo', '2010-09-14'),
 ('100456789', 'Celina Armando Sitoe', '1990-11-03', '110200345678C', 'celina.sitoe@empresa.co.mz', 'Av. Samora Machel', '12', 'Fomento', 2, 'C08', 'F08', 'Delegação Matola', '2018-06-01'),
 ('100567890', 'Domingos Paulo Nhantumbo', '1982-01-30', '110300456789D', 'domingos.nhantumbo@empresa.co.mz', 'Rua 3', '56', 'Chókwè-Sede', 3, 'C06', 'F06', 'Delegação Gaza', '2012-03-10'),
 ('100678901', 'Eugénia Marta Muchanga', '1988-05-18', '110400567890E', 'eugenia.muchanga@empresa.co.mz', 'Av. Eduardo Mondlane', '301', 'Maxixe-Sede', 4, 'C04', 'F04', 'Delegação Inhambane', '2016-08-20'),
 ('100789012', 'Fernando José Macuácua', '1975-09-25', '110500678901F', 'fernando.macuacua@empresa.co.mz', 'Av. Poder Popular', '77', 'Macuti', 5, 'C03', 'F03', 'Delegação Beira', '2008-01-15'),
 ('100890123', 'Graça Isabel Zunguze', '1992-12-07', '110600789012G', 'graca.zunguze@empresa.co.mz', 'Rua da Frescura', '19', 'Ponta Gêa', 5, 'C05', 'F05', 'Delegação Beira', '2019-02-02'),
 ('100901234', 'Hélder António Cuamba', '1980-04-14', '110700890123H', 'helder.cuamba@empresa.co.mz', 'Av. 25 de Setembro', '150', 'Alto Maé', 1, 'C07', 'F07', 'Sede Maputo', '2011-11-11'),
 ('101012345', 'Ivete Sara Chirindza', '1995-06-29', '110800901234I', 'ivete.chirindza@empresa.co.mz', 'Rua do Bagamoyo', '5', 'Muhipiti', 6, 'C01', 'F01', 'Delegação Nampula', '2020-07-03'),
 ('101123456', 'João Baptista Nhaca', '1978-08-09', '110900012345J', 'joao.nhaca@empresa.co.mz', 'Av. Josina Machel', '200', 'Namahera', 6, 'C02', 'F02', 'Delegação Nampula', '2009-05-25'),
 ('101234567', 'Lúcia Ermelinda Bila', '1991-02-16', '111000123456K', 'lucia.bila@empresa.co.mz', 'Rua da Base', '33', 'Chaimite', 5, 'C08', 'F08', 'Delegação Beira', '2017-09-19'),
 ('101345678', 'Marcelino Inácio Tembe', '1983-10-21', '111100234567L', 'marcelino.tembe@empresa.co.mz', 'Av. Kwame Nkrumah', '410', 'Coop', 1, 'C03', 'F03', 'Sede Maputo', '2013-04-08'),
 ('101456789', 'Noémia Alzira Massingue', '1987-03-04', '111200345678M', 'noemia.massingue@empresa.co.mz', 'Rua de Chimoio', '67', 'Chingussura', 7, 'C04', 'F04', 'Delegação Manica', '2014-12-12'),
 ('101567890', 'Osvaldo Simião Ubisse', '1976-07-27', '111300456789N', 'osvaldo.ubisse@empresa.co.mz', 'Av. 7 de Setembro', '90', 'Matundo', 8, 'C06', 'F06', 'Delegação Tete', '2006-10-30'),
 ('101678901', 'Paulina Fátima Uache', '1993-01-15', '111400567890O', 'paulina.uache@empresa.co.mz', 'Rua da Missão', '24', 'Chalaua', 9, 'C05', 'F05', 'Delegação Zambézia', '2021-09-09'),
 ('101789012', 'Ricardo Manuel Come', '1981-06-02', '111500678901P', 'ricardo.come@empresa.co.mz', 'Av. Franqueza', '18', 'Chuwaula', 10, 'C07', 'F07', 'Delegação Cabo Delgado', '2010-07-17');

-- FILHOS (a partir das colunas Filho 1/2/3 da tabela original)
INSERT INTO FUNCIONARIO_FILHO (NUIT, Nome_Filho) VALUES
 ('100234567', 'Cátia Cossa'),
 ('100345678', 'Nelson Machava'),
 ('100345678', 'Ivete Machava'),
 ('100345678', 'Suzana Machava'),
 ('100567890', 'Paulo Nhantumbo Jr'),
 ('100567890', 'Alzira Nhantumbo'),
 ('100678901', 'Marta Muchanga'),
 ('100789012', 'José Macuácua'),
 ('100789012', 'Beatriz Macuácua'),
 ('100789012', 'Adriano Macuácua'),
 ('100901234', 'António Cuamba Jr'),
 ('100901234', 'Filomena Cuamba'),
 ('101123456', 'Baptista Nhaca Jr'),
 ('101234567', 'Ermelinda Bila'),
 ('101345678', 'Inácio Tembe Jr'),
 ('101345678', 'Rosa Tembe'),
 ('101567890', 'Simião Ubisse Jr'),
 ('101567890', 'Alcinda Ubisse'),
 ('101567890', 'Custódio Ubisse'),
 ('101789012', 'Manuel Come Jr');
-- (Graça Zunguze, Ivete Chirindza, Lúcia Bila, Noémia Massingue, Osvaldo Ubisse já contado,
--  Paulina Uache: sem filhos na tabela original - não geram linha aqui)

-- CELULARES (a partir das colunas Celular 1/2/3 da tabela original)
INSERT INTO FUNCIONARIO_CELULAR (NUIT, Numero_Celular) VALUES
 ('100234567', '841234567'),
 ('100234567', '821234567'),
 ('100345678', '845678901'),
 ('100456789', '861122334'),
 ('100567890', '847890123'),
 ('100567890', '878901234'),
 ('100678901', '849012345'),
 ('100789012', '823456789'),
 ('100789012', '843456789'),
 ('100789012', '863456789'),
 ('100890123', '844567890'),
 ('100890123', '824567890'),
 ('100901234', '825678901'),
 ('101012345', '846789012'),
 ('101123456', '827890123'),
 ('101123456', '847890124'),
 ('101234567', '848901234'),
 ('101345678', '829012345'),
 ('101345678', '849012346'),
 ('101345678', '869012347'),
 ('101456789', '841122334'),
 ('101567890', '822233445'),
 ('101567890', '842233445'),
 ('101678901', '843344556'),
 ('101789012', '824455667'),
 ('101789012', '844455667');
