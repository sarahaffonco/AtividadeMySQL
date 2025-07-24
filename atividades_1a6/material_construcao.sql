CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    quantidadeestoque INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, departamento) VALUES
('Hidráulica', 'Tubos, conexões e acessórios'),
('Elétrica', 'Fios, disjuntores e materiais elétricos'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Tintas', 'Tintas, vernizes e acessórios'),
('Pisos e Revestimentos', 'Cerâmicas, porcelanatos e afins');

INSERT INTO tb_produtos (nome, marca, quantidadeestoque, preco, categoriaid) VALUES
('Tubo PVC 100mm', 'Tigre', 50, 89.90, 1),
('Fio 2,5mm 100m', 'Cobrex', 30, 129.90, 2),
('Martelo Unha 500g', 'Tramontina', 80, 45.90, 3),
('Tinta Acrílica Branca 18L', 'Suvinil', 25, 189.90, 4),
('Piso Cerâmico 60x60cm', 'Portinari', 120, 39.90, 5),
('Cimento CP II 50kg', 'Votoran', 60, 32.90, 5),
('Chuveiro Elétrico 6800W', 'Lorenzetti', 15, 159.90, 2),
('Conjunto Chave de Fenda', 'Vonder', 45, 79.90, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_categorias.nome AS categoria, tb_categorias.departamento
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = 'Hidráulica';