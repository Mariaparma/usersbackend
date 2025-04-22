CREATE DATABASE rede_social;

\c rede_social

-- Tabela de usuários
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    photo TEXT
);

INSERT INTO users (name, email) VALUES 
    ('Léon Vargas', 'leon.vargas@gmail.com'),
    ('Violetta Castilho', 'violetta.castilho@gmail.com'),
    ('Tomás Heredia', 'thomas.heredia@email.com'),
    ('Mia Cáceres', 'mia.caceres@email.com'),
    ('Álvaro Paz', 'alvaro.paz@email.com'),
    ('Juanma Portolesi', 'juanma.portolesi@email.com'),
    ('Lupe Achával', 'lupe.achaval@email.com'),
    ('Mercedes Taylor', 'mercedes.taylor@email.com'),
    ('Gaspar Fontan', 'gaspar.fontan@email.com'),
    ('Ramiro Ponce', 'ramiro.ponce@email.com'),
    ('Camila Torres', 'camila.torres@email.com'),
    ('Francesca Caviglia', 'francesca.caviglia@email.com'),
    ('Ludmila Ferro', 'ludmila.ferro@email.com'),
    ('Diego Hernández', 'diego.hernandez@email.com'),
    ('Federico Paccini', 'federico.paccini@email.com'),
    ('Naty Vidal', 'naty.vidal@email.com'),
    ('Andrés Calixto', 'andres.calixto@email.com'),
    ('Jade LaFontaine', 'jade.lafontaine@email.com'),
    ('Gusttavo Lima', 'gusttavo.lima@email.com'),
    ('Marília Mendonça', 'marilia.mendonca@email.com'),
    ('Jorge', 'jorge@email.com'),
    ('Mateus', 'mateus@email.com'),
    ('Henrique', 'henrique@email.com'),
    ('Juliano', 'juliano@email.com'),
    ('Zé Neto', 'zeneto@email.com'),
    ('Cristiano', 'cristiano@email.com'),
    ('Simone Mendes', 'simone.mendes@email.com'),
    ('Simaria Mendes', 'simaria.mendes@email.com'),
    ('Maiara', 'maiara@email.com'),
    ('Maraísa', 'maraisa@email.com'),
    ('Wesley Safadão', 'wesley.safadao@email.com'),
    ('Luan Estilizado', 'luan.estilizado@email.com'),
    ('Fernando', 'fernando@email.com'),
    ('Sorocaba', 'sorocaba@email.com'),
    ('Anitta', 'anitta@email.com'),
    ('Luísa Sonza', 'luisa.sonza@email.com'),
    ('IZA', 'iza@email.com'),
    ('Manu Gavassi', 'manu.gavassi@email.com'),
    ('Shawn Mendes', 'shawn.mendes@email.com'),
    ('Taylor Swift', 'taylor.swift@email.com'),
    ('Ed Sheeran', 'ed.sheeran@email.com'),
    ('Dua Lipa', 'dua.lipa@email.com'),
    ('Billie Eilish', 'billie.eilish@email.com'),
    ('Ariana Grande', 'ariana.grande@email.com'),
    ('Bruno Mars', 'bruno.mars@email.com'),
    ('Justin Bieber', 'justin.bieber@gmail.com'),
    ('Selena Gomez', 'selena.gomez');


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    description VARCHAR(200)
);

INSERT INTO posts (user_id, description) VALUES 
    (1, 'Ao vivo na Lua'),
    (2, 'To voltando pros rodeio'),
    (3, 'Sour'),
    (4, 'Libertários não morrem'),
    (5, 'Cantando com Violetta'),
    (6, 'Novo show em Buenos Aires'),
    (7, 'Sonhos musicais'),
    (8, 'Minha vida na escola de música'),
    (9, 'Amigos e música sempre juntos'),
    (10, 'Treinando para o campeonato de dança');