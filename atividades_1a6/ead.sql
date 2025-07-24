CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    areaconhecimento VARCHAR(50) NOT NULL,
    nivel VARCHAR(30) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    instrutor VARCHAR(100) NOT NULL,
    cargahoraria INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (areaconhecimento, nivel) VALUES
('Programação', 'Avançado'),
('Design', 'Intermediário'),
('Marketing Digital', 'Básico'),
('Data Science', 'Avançado'),
('Idiomas', 'Básico');

INSERT INTO tb_cursos (nome, instrutor, cargahoraria, preco, categoriaid) VALUES
('Java para Profissionais', 'João Silva', 80, 899.90, 1),
('Photoshop Avançado', 'Maria Oliveira', 60, 750.00, 2),
('Marketing de Conteúdo', 'Carlos Souza', 40, 499.90, 3),
('Python para Data Science', 'Ana Costa', 100, 1200.00, 4),
('Inglês para Viagens', 'Patrícia Lima', 30, 350.00, 5),
('JavaScript Moderno', 'Roberto Alves', 70, 850.00, 1),
('UI/UX Design', 'Fernanda Rocha', 50, 690.00, 2),
('Analise de Dados com Power BI', 'Lucas Mendes', 45, 950.00, 4);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT tb_cursos.nome, tb_cursos.instrutor, tb_cursos.preco, tb_categorias.area_conhecimento AS categoria, tb_categorias.nivel
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT tb_cursos.nome, tb_cursos.instrutor, tb_cursos.preco, tb_categorias.area_conhecimento AS categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_categorias.area_conhecimento = 'Programação';