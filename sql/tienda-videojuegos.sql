-- =================================================
-- BASE DE DATOS DE EJEMPLO PARA TODOS LOS APUNTES
-- =================================================

DROP DATABASE IF EXISTS tienda_videojuegos;
CREATE DATABASE tienda_videojuegos;
USE tienda_videojuegos;

CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE plataformas (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE videojuegos (
    id_videojuego INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    precio DECIMAL(5, 2) NOT NULL,
    stock INT DEFAULT 0,
    lanzamiento INT,
    fk_genero INT,
    fk_plataforma INT,
    -- Claves foráneas para garantizar la consistencia de los datos
    FOREIGN KEY (fk_genero) REFERENCES generos(id_genero) ON DELETE SET NULL,
    FOREIGN KEY (fk_plataforma) REFERENCES plataformas(id_plataforma) ON DELETE SET NULL
);

INSERT INTO generos (nombre) VALUES 
('Aventura'), 
('RPG'), 
('Acción'), 
('Deportes');

INSERT INTO plataformas (nombre) VALUES 
('Nintendo Switch'), 
('PlayStation 5'), 
('PC'), 
('Xbox Series X');

INSERT INTO videojuegos (titulo, precio, stock, lanzamiento, fk_genero, fk_plataforma) VALUES
('Zelda: Tears of the Kingdom', 69.99, 15, 2023, 1, 1),
('Elden Ring', 59.99, 8, 2022, 2, 2),
('Cyberpunk 2077', 39.99, 12, 2020, 2, 3),
('EA Sports FC', 69.99, 20, 2023, 4, 2),
('Metroid Prime Remastered', 39.99, 0, 2023, 3, 1);