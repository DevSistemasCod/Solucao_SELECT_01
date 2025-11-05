-- USO DE SELECT

-- 01) Selecione o nome e siglas da tabela departamento;
SELECT sigla_depto, nome_depto FROM departamento;

-- 02) Selecione os nomes dos funcionarios 
SELECT nome_funcionario FROM funcionario;

-- 03) Selecione todos os nomes diferentes dos funcionarios 
SELECT DISTINCT nome_funcionario FROM funcionario;

-- 04) Selecione todos os projetos com a sigla de departamento igual a “TI”.
select * from projeto;
SELECT nome_projeto FROM projeto Where sigla_depto = "TI";

-- 05) Selecione todos os departamentos com um número menor do que 11 funcionários.
SELECT sigla_depto, nome_depto
FROM departamento WHERE qtd_funcionarios_depto < 11;

-- 06) Selecione todos os departamentos com um número maior ou igual a 15 funcionários.
SELECT DISTINCT sigla_depto, nome_depto
FROM departamento WHERE qtd_funcionarios_depto >=  15;

-- 07) Selecione todos os funcionários de um departamento específico (no nosso caso será TI).
SELECT nome_funcionario, cargo
FROM funcionario WHERE sigla_depto = 'TI';

select * from departamento;
-- 08)  Selecione todos os funcionários sem repetição do departamento de TI e com salário superior a R$ 3600.00.
SELECT distinct nome_funcionario, cargo, salario 
FROM funcionario WHERE sigla_depto = 'MKT' and salario > "3600";
