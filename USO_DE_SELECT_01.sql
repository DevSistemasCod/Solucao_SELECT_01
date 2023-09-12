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