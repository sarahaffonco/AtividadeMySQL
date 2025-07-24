CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    corte VARCHAR(100) NOT NULL,
    peso DECIMAL(6,3) NOT NULL,
    precokg DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Bovinos', 'Cortes de carne bovina'),
('Suínos', 'Cortes de carne suína'),
('Aves', 'Cortes de frango e outras aves'),
('Peixes', 'Peixes e frutos do mar'),
('Especiais', 'Cortes premium e especiais');

INSERT INTO tb_produtos (nome, corte, peso, precokg, categoriaid) VALUES
('Picanha', 'Bife', 2.500, 79.90, 1),
('Costela', 'Assar', 3.200, 45.90, 1),
('Linguiça', 'Toscana', 1.000, 32.90, 2),
('Peito de Frango', 'Bandeja', 1.800, 22.90, 3),
('Salmão', 'Postas', 1.500, 89.90, 4),
('Contrafilé', 'Bife', 2.000, 69.90, 1),
('Cupim', 'Peça', 3.500, 65.90, 1),
('Bacon', 'Fatias', 0.500, 42.90, 2);

SELECT * FROM tb_produtos WHERE precokg > 50.00;

SELECT * FROM tb_produtos WHERE precokg BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.corte, tb_produtos.precokg, tb_categorias.nome AS categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.corte, tb_produtos.precokg, tb_categorias.nome AS categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = 'Aves';