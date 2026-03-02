-- LLENADO DE CATEGORÍAS
INSERT INTO categories (name) VALUES
    ('Sueno'), ('Alimentacion general'), ('Interacciones sociales'),
    ('Actividad fisica'), ('Autocuidado'), ('Manias'), ('Escuela/Trabajo'),
    ('Alegria'), ('Tristeza'), ('Ira'), ('Miedo'), ('Amor'), 
    ('Desagrado'), ('Verguenza'), ('Culpa'),
    ('Bienestar emocional'), ('Estudios, trabajo y presion'),
    ('Relaciones y vinculos'), ('Autoconimiento'), ('Logros');

-- LLENADO DE HÁBITOS
INSERT INTO habits(name, id_category) VALUES
('8 horas o mas', 1), ('6 a 7 horas', 1), ('4 a 5 horas', 1), ('Menos de 4 horas', 1),
('Balanceada', 2), ('Aceptable', 2), ('Irregular', 2), ('Insuficiente', 2),
('Excelentes', 3), ('Positivas', 3), ('Neutras', 3), ('Conflictivas', 3),
('60 minutos o mas', 4), ('30 a 60 minutos', 4), ('Menos de 30 minutos', 4), ('Ninguna', 4),
('Completo', 5), ('Parcial', 5), ('Minimo', 5), ('Nulo', 5),
('8 horas o mas', 6), ('6 a 7 horas', 6), ('4 a 5 horas', 6), ('Menos de 4 horas', 6),
('Satisfactorio', 7), ('6 a 7 horas', 7), ('4 a 5 horas', 7), ('Menos de 4 horas', 7);

-- LLENADO DE EMOCIONES BASE
INSERT INTO emotions (name, img_url, id_category) VALUES
('Alegria', '/images/emotions/alegria.png', 8),
('Tristeza', '/images/emotions/tristeza.png', 9),
('Ira', '/images/emotions/ira.png', 10),
('Miedo', '/images/emotions/miedo.png', 11),
('amor', '/images/emotions/amor.png', 12),
('Desagrado', '/images/emotions/desagrado.png', 13),
('Verguenza', '/images/emotions/verguenza.png', 14),
('Culpa', '/images/emotions/culpa.png', 15);

-- FOROS POR EDAD
INSERT INTO forums (min_age, max_age) VALUES
(18,20), (21,23), (24,60);

-- USUARIOS DE PRUEBA
INSERT INTO users (firebase_uid, username, email, birth_day) VALUES 
('firebase_test_uid_123', 'NadiaTest', 'nadia@example.com', '2005-05-15'),
('pIrV5rl9uRdCzEyshQJzXWy1fjn1', 'user_tkql2bk8', 'uwu@gmail.com', '2004-01-31'),
('ILJbfdO1QLWknuaUDT58PXpjVO02', 'nadiaprueba', 'nadiaprueba@gmail.com', '2000-01-01');