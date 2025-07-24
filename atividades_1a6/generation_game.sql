CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipohabilidade VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poderataque INT NOT NULL,
    poderdefesa INT NOT NULL,
    pontosvida INT NOT NULL,
    classeid INT,
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipohabilidade, descricao) VALUES
('Guerreiro', 'Físico', 'Especialista em combate corpo a corpo'),
('Mago', 'Mágico', 'Domina artes arcanas e magias poderosas'),
('Arqueiro', 'Físico', 'Mestre em ataques à distância'),
('Ladino', 'Físico', 'Especialista em furtividade e ataques rápidos'),
('Clerigo', 'Mágico', 'Curandeiro e protetor divino');

INSERT INTO tb_personagens (nome, nivel, poderataque, poderdefesa, pontosvida, classeid) VALUES
('Aragorn', 30, 2500, 1800, 5000, 1),
('Gandalf', 45, 3000, 1500, 4000, 2),
('Legolas', 35, 2800, 1200, 3500, 3),
('Bilbo', 25, 1500, 1000, 2500, 4),
('Frodo', 28, 1800, 1100, 2700, 4),
('Gimli', 32, 2700, 2000, 5500, 1),
('Galadriel', 50, 3500, 2200, 4500, 2),
('Boromir', 29, 2400, 1900, 5200, 1);

SELECT * FROM tb_personagens WHERE poderataque > 2000;

SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poderataque, tb_classes.nome, tb_classes.tipohabilidade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poderataque, tb_classes.nome, tb_classes.tipohabilidade
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';