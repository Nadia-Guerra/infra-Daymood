-- LLENADO DE CATEGORÍAS
INSERT INTO categories (id, name) VALUES
(1, 'Sueno'), (2, 'Relaciones y vinculos'), (3, 'Estudios, trabajo y presion'),
(4, 'Actividad fisica'), (5, 'Autocuidado'), (6, 'Manias'), (7, 'Escuela/Trabajo'),
(8, 'Alegria'), (9, 'Tristeza'), (10, 'Ira'), (11, 'Miedo'), (12, 'Amor'),
(13, 'Desagrado'), (14, 'Verguenza'), (15, 'Culpa'), (16, 'Bienestar emocional'),
(17, 'Alimentacion general'), (18, 'Interacciones sociales'), (19, 'Autoconimiento'), (20, 'Logros');

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
('Alegria',   'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_happy.png?alt=media',        8),
('Tristeza',  'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_sadness.png?alt=media',      9),
('Ira',       'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_angry.png?alt=media',        10),
('Miedo',     'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_fear.png?alt=media',         11),
('Amor',      'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_love.png?alt=media',         12),
('Desagrado', 'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_disgust.png?alt=media',      13),
('Verguenza', 'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_embarrasment.png?alt=media', 14),
('Culpa',     'https://firebasestorage.googleapis.com/v0/b/daymood-prod-a60e1.firebasestorage.app/o/emotions%2Fem_guilt.png?alt=media',        15);

-- LLENADO DE FOROS
INSERT INTO forums (id, id_category, min_age, max_age) VALUES
(gen_random_uuid(), 2, 18, 20), (gen_random_uuid(), 2, 21, 23), (gen_random_uuid(), 2, 24, 60),
(gen_random_uuid(), 3, 18, 20), (gen_random_uuid(), 3, 21, 23), (gen_random_uuid(), 3, 24, 60),
(gen_random_uuid(), 16, 18, 20), (gen_random_uuid(), 16, 21, 23), (gen_random_uuid(), 16, 24, 60),
(gen_random_uuid(), 19, 18, 20), (gen_random_uuid(), 19, 21, 23), (gen_random_uuid(), 19, 24, 60),
(gen_random_uuid(), 20, 18, 20), (gen_random_uuid(), 20, 21, 23), (gen_random_uuid(), 20, 24, 60);

-- USUARIOS DE PRUEBA
INSERT INTO users (firebase_uid, username, email, birth_day) VALUES
('firebase_test_uid_123', 'NadiaTest', 'nadia@example.com', '2005-05-15'),
('pIrV5rl9uRdCzEyshQJzXWy1fjn1', 'user_tkql2bk8', 'uwu@gmail.com', '2004-01-31'),
('ILJbfdO1QLWknuaUDT58PXpjVO02', 'nadiaprueba', 'nadiaprueba@gmail.com', '2000-01-01');