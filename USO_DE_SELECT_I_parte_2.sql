-- 01) Selecione todos funcionários (sem repetição) com seus respectivos cargos em ordem alfabética descendente.
SELECT distinct nome_funcionario, cargo
FROM funcionario ORDER BY nome_funcionario DESC;

-- 02) Selecione todos os nomes dos departamentos com suas respectivos siglas em ordem alfabética ascendente
SELECT sigla_depto, nome_depto
FROM departamento ORDER BY nome_depto ASC;

-- 03) Selecione todos os projetos em ordem alfabética descendente com base em seus nomes.
SELECT sigla_projeto, nome_projeto
FROM projeto ORDER BY nome_projeto DESC;

-- 04) Liste as siglas dos departamentos e a contagem de funcionários em cada departamento.
SELECT sigla_depto, COUNT(*) AS qtd_funcionarios
FROM funcionario GROUP BY sigla_depto;

-- 05) Liste as siglas dos departamentos com mais de 3 funcionários.
SELECT sigla_depto, COUNT(*) AS qtd_funcionarios
FROM funcionario GROUP BY sigla_depto HAVING COUNT(*) > 3;

-- 06) Liste os 3 funcionários com os menores salários em ordem decrescente
SELECT nome_funcionario, salario
FROM funcionario ORDER BY salario ASC LIMIT 3;

-- 07) Liste os departamentos com a maior contagem de funcionários, ordenados em ordem decrescente, mostrando apenas os 3 primeiros.
SELECT sigla_depto, COUNT(*) AS qtd_funcionarios FROM funcionario
GROUP BY sigla_depto ORDER BY qtd_funcionarios DESC LIMIT 3;

-- 08) Liste os departamentos e a quantidade de funcionários em cada departamento que têm um salário médio superior a 3790.
SELECT sigla_depto, COUNT(*) 
AS qtd_funcionarios, AVG(salario) AS media_salarial
FROM funcionario GROUP BY sigla_depto HAVING AVG(salario) > 3790;