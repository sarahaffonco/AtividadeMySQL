CREATE DATABASE db_comercio;

USE db_comercio;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nomeproduto VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    quantidadeestoque INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    datacadastro DATE NOT NULL,    
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nomeproduto, descricao, preco, quantidadeestoque, categoria, datacadastro) VALUES
('Smartphone X', 'Celular de última geração com câmera tripla', 2999.90, 50, 'Eletrônicos', '2023-01-15'),
('Notebook Pro', 'Notebook com processador i7 e 16GB RAM', 4599.00, 30, 'Eletrônicos', '2023-02-10'),
('Fone Bluetooth', 'Fone sem fio com cancelamento de ruído', 399.90, 100, 'Acessórios', '2023-03-05'),
('Camiseta Básica', 'Camiseta 100% algodão diversas cores', 79.90, 200, 'Vestuário', '2023-01-20'),
('Mochila Executiva', 'Mochila resistente para notebooks até 15"', 249.90, 80, 'Acessórios', '2023-02-28'),
('Smart TV 55"', 'TV 4K com HDR e Android TV', 3299.00, 25, 'Eletrônicos', '2023-03-15'),
('Livro SQL Completo', 'Guia completo de SQL para iniciantes', 129.90, 150, 'Livros', '2023-01-30'),
('Cafeteira Premium', 'Cafeteira automática com moedor integrado', 599.90, 40, 'Eletrodomésticos', '2023-02-20');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos 
SET preco = 549.90, quantidadeestoque = 35 
WHERE id = 8;

SELECT * FROM tb_produtos WHERE id = 8;
