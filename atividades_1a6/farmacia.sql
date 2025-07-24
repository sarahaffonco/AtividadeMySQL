CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios para diversos tratamentos'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Maternidade', 'Produtos para gestantes e bebês');

INSERT INTO tb_produtos (nome, fabricante, quantidade, preco, categoriaid) VALUES
('Dipirona 500mg', 'EMS', 100, 12.90, 1),
('Protetor Solar FPS 50', 'Neutrogena', 50, 89.90, 2),
('Shampoo Anti-Caspa', 'Clear', 80, 34.90, 3),
('Multivitamínico', 'Centrum', 60, 65.00, 4),
('Fralda Pampers G', 'P&G', 120, 59.90, 5),
('Creme Hidratante Corporal', 'Nivea', 70, 22.50, 2),
('Paracetamol 750mg', 'Medley', 90, 15.80, 1),
('Condicionador Reparador', 'Pantene', 75, 28.90, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.fabricante, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.fabricante, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';