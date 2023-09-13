-- USO DE SELECT

-- 01) Selecione o nome e siglas da tabela departamento;
SELECT sigla_depto, nome_depto FROM funcionario;

-- 02) Selecione sigla e nome dos departamentos de forma não repetida.
SELECT DISTINCT sigla_depto, nome_depto FROM departamento;

-- 03) Selecione os nomes dos funcionarios 
SELECT nome_funcionario FROM funcionario;

-- 04) Selecione todos os nomes diferentes dos funcionarios 
SELECT DISTINCT nome_funcionario FROM funcionario;

-- 05) Selecione todos os projetos diferentes e seus nomes.
SELECT DISTINCT sigla_projeto, nome_projeto FROM projeto;

-- 06) Selecione todos os departamentos com um número menor do que 11 funcionários.
SELECT DISTINCT sigla_depto, nome_depto
FROM departamento WHERE qtd_funcionarios_depto < 11;

-- 07) Selecione todos os departamentos com um número maior ou igual a 15 funcionários.
SELECT DISTINCT sigla_depto, nome_depto
FROM departamento WHERE qtd_funcionarios_depto >=  15;

-- 08) Selecione todos os funcionários de um departamento específico (no nosso caso será TI).
SELECT ALL nome_funcionario, cargo
FROM funcionario WHERE sigla_depto = 'TI';

-- 09) Selecione todos os funcionários com seus respectivos cargos em ordem alfabética descendente.
SELECT ALL nome_funcionario, cargo
FROM funcionario ORDER BY nome_funcionario DESC;

-- 10) Selecione todos os nomes dos departamentos com suas respectivos siglas em ordem alfabética ascendente
SELECT sigla_depto, nome_depto
FROM departamento ORDER BY nome_depto ASC;

-- 11) Selecione todos os projetos em ordem alfabética descendente com base em seus nomes.
SELECT sigla_projeto, nome_projeto
FROM projeto ORDER BY nome_projeto DESC;

-- 12)  Considere que a tabela funcionário precisa ser alterada, será necessário
adicionar a coluna data_admissao (tipo date), salario (tipo decimal com até duas casas de precisão) 
ALTER TABLE funcionario ADD COLUMN data_admissao DATE,
ADD COLUMN salario DECIMAL(10, 2); 
 
-- 13) Considere que a tabela projeto também precisa ser alterada, será necessário adicionar a coluna duração (tipo numérico) deve representar em meses a duração de um projeto.
ALTER TABLE projeto ADD COLUMN duracao INT;

-- 14)a) Para garantir a consistência dos dados você deve fazer os inserts (de data de admissão e salário) nas duplas já existentes. 

UPDATE funcionario SET data_admissao = '2017-09-21', salario = 4000.00 WHERE codigo_funcionario = 100; 
UPDATE funcionario SET data_admissao = '2019-05-29', salario = 3000.00 WHERE codigo_funcionario = 101; 
UPDATE funcionario SET data_admissao = '2015-01-01', salario = 6500.00 WHERE codigo_funcionario = 102; 
UPDATE funcionario SET data_admissao = '2020-11-15', salario = 3400.00 WHERE codigo_funcionario = 103; 
UPDATE funcionario SET data_admissao = '2021-07-10', salario = 3600.00 WHERE codigo_funcionario = 104;
UPDATE funcionario SET data_admissao = '2018-02-01', salario = 3000.00 WHERE codigo_funcionario = 105;
UPDATE funcionario SET data_admissao = '2018-02-01', salario = 4100.00 WHERE codigo_funcionario = 106;
UPDATE funcionario SET data_admissao = '2020-03-12', salario = 5200.00 WHERE codigo_funcionario = 107;
UPDATE funcionario SET data_admissao = '2020-03-18', salario = 4900.00 WHERE codigo_funcionario = 108;
UPDATE funcionario SET data_admissao = '2020-03-02', salario = 3700.00 WHERE codigo_funcionario = 109;
UPDATE funcionario SET data_admissao = '2021-04-22', salario = 4600.00 WHERE codigo_funcionario = 110;
UPDATE funcionario SET data_admissao = '2021-04-22', salario = 4600.00 WHERE codigo_funcionario = 111;
UPDATE funcionario SET data_admissao = '2015-01-01', salario = 6500.00 WHERE codigo_funcionario = 112;

-- 14) b) Agora faça as alterações necessárias para deixar os campos data_admissao e salario como itens obrigatórios para futuros inserts.
ALTER TABLE funcionario
MODIFY COLUMN data_admissao DATE NOT NULL,
MODIFY COLUMN salario DECIMAL(10, 2) NOT NULL;
