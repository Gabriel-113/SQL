use db_mmorpg;

insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('wancho', 'asdjkasd12', 'wancho@gmail.com', 'Ricardo', 'Osorio', '1995-11-25', 'Mexico', 'Av tronador 1423', '232423', '2022-09-30');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('plexus', 'jasdkasd128', 'samuel_140@hotmail.com', 'Samuel', 'Fernandez', '1992-03-20', 'Argentina', 'Av Trabajadores 45', '7000', '2021-03-21');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('waffles', 'iasdiqo132', 'waffles_gamers@gmail.com', 'Alejandro', 'Benite', '1999-08-25', 'Uruguay', 'Canarias 1234', '1086', '2022-01-1');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('Feed_especialista', 'tasdnk91433', 'faq1995@yahoo.com', 'Facundo', 'Otamendi', '1995-01-06', 'Argentina', 'Av 226', '7020', '2022-12-30');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('maquinola', 'elmaquina', 'eliasgomes@gmail.com', 'Elias', 'Gomes', '1996-03-17', 'Argentina', 'Alberdi 2423', '7400', '2022-05-02');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('elfita', 'rosada123', 'jaz123@outlook.es', 'Jazmin', 'Rodriguez', '1998-06-07', 'Argentina', 'Aguilar 1342', '6505', '2023-01-02');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('blitz', 'futbol12', 'pablofulbo@hotmail.com', 'Pablo', 'Dybala', '1999-11-08', 'Argentina', 'Rufino 3242', '5792', '2022-09-10');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('fiora', 'jualisa12', 'jualisa_f@gmail.com', 'Fiorela', 'Fernandez', '1999-07-25', 'Uruguay', 'Playadito 1245', '1205', '2022-03-14');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('MatadoR', '1865asd1', 'cuervo113@gmail.com', 'Martin', 'Insua', '1997-11-25', 'Argentina', 'Boedo 250', '611', '2022-12-01');
insert into USUARIO (usuario, contraseña, mail, nombre, apellido, fecha_nacimiento, pais, direccion, CP, fecha_registro) values ('MissF', 'legola13', 'Martina_13@yahoo.com', 'Martina', 'Urtiberea', '1997-02-25', 'Chile', 'Pascuas 4635', '0087', '2022-08-30');

insert into SERVIDOR (nombre, region, capacidad) values
('Morta', 'LAS', 1000),
('Raskan', 'LAN', 3000),
('Noria', 'LAS', 1000),
('Felora', 'LAN', 1500),
('Velario', 'BR', 2000),
('Fortes', 'EU', 1000);

insert into USUARIO_SERVIDOR (id_usuario, id_servidor) values
(1,1),
(2,3),
(3,5),
(4,6),
(5,1),
(6,2),
(7,3),
(8,4),
(9,4),
(10,4);

insert into PERSONAJE (id_usuario, id_servidor, nombre, raza, clase, nivel, daño, profesion, bando)  values
(1, 1, 'Legolas_XX', 'Elfo', 'Tirador', 80, 'Fisico', 'Cazador', 'Sindicato'),
(2, 3, 'Rubstein', 'Drenai', 'Guerrero', 80, 'Fisico', 'Herrero', 'Justicia'),
(3, 5, 'Wizardia', 'Elfo', 'Mago', 50, 'Magico', 'Alquimista', 'Letrado'),
(4, 6, 'Bordeaux', 'Humano', 'Asesino', 80, 'Fisico', 'Alquimista', 'Sindicato'),
(5, 1, 'Arwen', 'Humano', 'Sacerdote', 80, 'Magico', 'Escriba', 'Justicia'),
(6, 2, 'Messias', 'Orco', 'Brujo', 47, 'Maldicion', 'Alquimista', 'Sindicato'),
(7, 3, 'Faq14', 'Humano', 'Tirador', 12, 'Fisico', 'Cazador', 'Justicia'),
(8, 4, 'Waffen', 'Elfo', 'Asesino', 72, 'Fisico', 'Ladron', 'Sindicato'),
(9, 4, 'Kuty', 'Orco', 'Guerrero', 23, 'Fisico', 'Minero', 'Sindicato'),
(10, 4, 'Black', 'Drenai', 'Sacerdote', 35, 'Magico', 'Alquimista', 'Letrado');

insert into CLAN (id_usuario, id_servidor, nombre, cantidad, posicion) values
(1, 1, 'Soldados de la Noche', 12, 3),
(2, 3, 'Hand of God', 5, 27),
(3, 5, 'Kirin Tor', 25, 1),
(4, 6, 'Fulleros', 49, 1),
(5, 1, 'Implacables', 31, 7),
(6, 2, 'For the Horde', 32, 1),
(7, 3, 'Invencibles', 8, 68),
(8, 4, 'Guerreros por la Paz', 42, 1),
(9, 4, 'Unidos por la IPA', 18, 11),
(10, 4, 'Dragonborn', 29, 5);

insert into SPELLS (nombre, clase, daño, nivel) values
('Garra Oscura', 'Brujo', 'Maldicion', 50),
('Embate', 'Guerrero', 'Fisico', 30),
('Purificar', 'Sacerdote', 'Magico', 20),
('Daga Venenosa', 'Asesino', 'Fisico', 50),
('Tiro Certero', 'Tirador', 'Fisico', 10),
('Toque Helado', 'Mago', 'Magico', 30),
('Silencio', 'Asesino', ' ', 20),
('Exorcismo', 'Brujo', 'Maldicion', 80),
('Misiles Arcanos', 'Mago', 'Magico', 70),
('Doble Filo', 'Guerrero', 'Fisico', 30);

insert into ARMOR (nombre, tipo, defensa, nivel, rango) values
('Pechera Oxidada', 'Mediano', 10, 1, 'Comun'),
('Casco Ebano', 'Pesado', 1500, 70, 'Mitico'),
('Tunica de Seda', 'Liviano', 300, 40, 'Raro'),
('Botas de Cuero', 'Mediano', 150, 10, 'Comun'),
('Hombreras de Legionario', 'Mediano', 700, 80, 'Legendario'),
('Guantes de Hilo', 'Liviano', 50, 10, 'Comun'),
('Cota de Malla', 'Pesado', 500, 40, 'Raro'),
('Tunica Bendecida', 'Liviano', 1000, 80, 'Inusual'),
('Capucha de Algodon', 'Liviano', 30, 5, 'Comun'),
('Escudo de Plata', 'Mediano', 150, 20, 'Raro');

insert into WEAPON (nombre, tipo, ataque, nivel, rango) values
('Daga Maldita', 'Una Mano', 300, 50, 'Mitico'),
('Arco Curvo', 'Dos Manos', 500, 40, 'Raro'),
('Mandoble', 'Dos Manos', 800, 60, 'Raro'),
('Baculo Exanime', 'Dos Manos', 2000, 80, 'Legendario'),
('Espada Corva', 'Una Mano', 700, 40, 'Raro'),
('Baston Aprendiz', 'Dos Manos', 100, 10, 'Comun'),
('Hacha Doble Filo', 'Dos Manos', 500, 30, 'Raro'),
('Espada Corta', 'Una Mano', 400, 30, 'Comun'),
('Tomo Necronomicon', 'Una Mano', 2500, 80, 'Legendario'),
('Ballesta Pesada', 'Dos Manos', 700, 30, 'Raro');

insert into JEWELER (nombre, tipo, suerte, resistencia, velocidad, nivel, rango) values
('Anillo de Sangre', 'Mano', 50, 100, 20, 70, 'Mitico'),
('Collar Brillante', 'Cuello', 20, 40, 10, 40, 'Raro'),
('Collar Invisible', 'Cuello', 80, 120, 50, 80, 'Legendario'),
('Aro Perlado', 'Oreja', 100, 150, 30, 80, 'Inusual'),
('Anillo Estropeado', 'Mano', 5, 10, 5, 20, 'Comun'),
('Anillo de Ambar', 'Mano', 80, 120, 30, 60, 'Mitico'),
('Aro de Plata', 'Oreja', 50, 80, 20, 50, 'Raro'),
('Aro Maldito', 'Oreja', 10, 100, 100, 80, 'Mitico'),
('Anillo Leviatan', 'Mano', 30, 150, 30, 60, 'Mitico'),
('Anillo Bendecido', 'Mano', 120, 50, 100, 80, 'Legendario');

insert into ZONAS (nombre, nivel, npcs) values
('Lorencia', 1, 500),
('Atlas', 20, 1000),
('Terraland', 50, 3000),
('Icarus', 80, 1),
('Infernus', 70, 5000),
('Othersland', 50, 3000),
('Arena', 80, 10),
('Verland', 30, 1500),
('Sirio', 40, 2500),
('Northland', 60, 4000);

insert into BOSS (nombre, nivel, daño, dificultad) values
('Senatus', 40, 'Magico', '10+'),
('Enchantress', 30, 'Magico', '5+'),
('Malus', 70, 'Maldicion', '20+'),
('Mundus', 50, 'Fisico', '15+'),
('Malganis', 40, 'Maldicion', '10+'),
('Kinglear', 30, 'Fisico', '10+'),
('Archantus', 80, 'Magico', '20+'),
('Alextraza', 80, 'Magico', '30+'),
('Mutanus', 20, 'Maldicion', '5+'),
('Velanter', 60, 'Fisico', '15+'); 


