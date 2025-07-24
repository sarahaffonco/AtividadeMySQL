CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE TB_estudantes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    datanascimento DATE NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    responsavel VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO tb_estudantes (nome, datanascimento, turma, nota, responsavel, telefone) VALUES
('Maria Silva', '2010-05-15', '5ºA', 8.5, 'Ana Silva', '(11) 98765-4321'),
('João Santos', '2009-11-22', '6ºB', 6.8, 'Carlos Santos', '(11) 91234-5678'),
('Ana Oliveira', '2011-03-10', '4ºC', 9.2, 'Paula Oliveira', '(11) 92345-6789'),
('Pedro Costa', '2010-07-30', '5ºA', 7.5, 'Marta Costa', '(11) 93456-7890'),
('Luiza Pereira', '2009-09-05', '6ºB', 5.9, 'Roberto Pereira', '(11) 94567-8901'),
('Carlos Rocha', '2011-01-18', '4ºC', 8.0, 'Fernanda Rocha', '(11) 95678-9012'),
('Julia Almeida', '2010-12-03', '5ºA', 6.5, 'Marcos Almeida', '(11) 96789-0123'),
('Lucas Mendes', '2009-08-25', '6ºB', 9.8, 'Patricia Mendes', '(11) 97890-1234');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes 
SET nota = 7.1, turma = '6ºA' 
WHERE id = 2;

SELECT * FROM tb_estudantes WHERE id = 2;