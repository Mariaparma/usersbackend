CREATE DATABASE rede_social;

\c rede_social

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Luan Santana', 'luan.santana@email.com'),
    ('Ana Castela ', 'ana.castela@email.com'),
    ('Olivia Rodrigo', 'olivia.rodrigo@email.com'),
    ('Filipe Ret', 'flipe.ret@email.com');

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    description VARCHAR(200)
);

INSERT INTO posts (user_id, description) VALUES 
    ( 1, 'Ao vivo na Lua'),
    ( 2, 'To voltando pros rodeio'),
    ( 3, 'Sour'),
    ( 4, 'Libertarios não morrem');

    ALTER TABLE users ADD COLUMN photo TEXT;