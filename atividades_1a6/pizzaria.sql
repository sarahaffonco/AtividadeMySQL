CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ingredientes TEXT NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas tradicionais salgadas'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas premium com ingredientes especiais'),
('Brotinho', 'Pizzas pequenas individuais');

INSERT INTO tb_pizzas (nome, ingredientes, tamanho, preco, categoriaid) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 'Grande', 49.90, 1),
('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 'Grande', 55.00, 1),
('Portuguesa', 'Molho de tomate, mussarela, presunto, ovo, cebola, azeitona', 'Grande', 65.00, 1),
('Chocolate', 'Chocolate ao leite, morangos', 'Média', 42.00, 2),
('Romeu e Julieta', 'Goiabada, mussarela', 'Média', 45.00, 2),
('Muçarela', 'Molho de tomate, mussarela em dobro', 'Grande', 59.00, 1),
('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 'Grande', 69.00, 1),
('Moda da Casa', 'Molho de tomate, mussarela, presunto, bacon, milho, palmito', 'Grande', 75.00, 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_pizzas.ingredientes, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.ingredientes, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';