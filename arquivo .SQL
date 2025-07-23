CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
 id BIGINT AUTO_INCREMENT,
	nomecompleto VARCHAR(255) NOT NULL,
	cpf VARCHAR(15) NOT NULL,
    cargo VARCHAR(255),
	salario DECIMAL NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    dataadmissao DATE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (cpf)
);

INSERT INTO tb_colaboradores (nomecompleto, cpf, cargo, salario, departamento, dataadmissao, telefone) VALUES
('Ana Carolina Silva', '123.456.789-01', 'Analista de RH', 4200.00, 'Recursos Humanos', '2021-03-15', '(11) 98765-4321'),
('Carlos Eduardo Oliveira', '234.567.890-12', 'Desenvolvedor Júnior', 5500.00, 'Tecnologia', '2022-05-20', '(11) 97654-3210'),
('Mariana Santos Costa', '345.678.901-23', 'Gerente de Vendas', 9800.00, 'Comercial', '2019-11-10', '(11) 96543-2109'),
('Pedro Henrique Almeida', '456.789.012-34', 'Assistente Administrativo', 2300.00, 'Administração', '2023-01-05', '(11) 95432-1098'),
('Fernanda Lima Pereira', '567.890.123-45', 'Contador Pleno', 6500.00, 'Financeiro', '2020-07-22', '(11) 94321-0987'),
('Ricardo Martins Souza', '678.901.234-56', 'Analista de Marketing', 3800.00, 'Marketing', '2022-09-18', '(11) 93210-9876'),
('Juliana Ferreira Ramos', '789.012.345-67', 'Designer Sênior', 7200.00, 'Criação', '2018-06-30', '(11) 92109-8765'),
('Lucas Gonçalves Rocha', '890.123.456-78', 'Estagiário', 2000.00, 'Tecnologia', '2023-04-10', '(11) 91098-7654'),
('Amanda Dias Castro', '901.234.567-89', 'Coordenadora de Logística', 8500.00, 'Operações', '2020-02-15', '(11) 90987-6543'),
('Roberto Nunes Vieira', '012.345.678-90', 'Diretor Executivo', 10000.00, 'Diretoria', '2017-08-05', '(11) 89876-5432');

SELECT * FROM tb_colaboradores WHERE salario BETWEEN 2000 AND 10000 ORDER BY salario ASC;

SELECT * FROM tb_colaboradores WHERE salario BETWEEN 0 AND 2000 ORDER BY salario ASC;

UPDATE tb_colaboradores SET salario = 700 WHERE id = 1;

UPDATE tb_colaboradores SET departamento = 'Analista' WHERE id = 1;

UPDATE tb_colaboradores
SET salario = 7500.00,
    cargo = 'Desenvolvedor Pleno',
    departamento = 'Tecnologia da Informação'
WHERE id = 2;
