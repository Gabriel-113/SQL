use db_mmorpg;

START TRANSACTION;
DELETE FROM DATOS_USUARIO WHERE pais = "peru";
SELECT * FROM DATOS_USUARIO WHERE pais = "peru";

/* ROLLBACK */;

/* COMMIT */;

/* insert into DATOS_USUARIO 
(nombre, apellido, mail, fecha_nacimiento, pais, direccion, CP, fecha_registro, id_usuario)
values
('Abran', 'oockovici', 'aoockovicis@upenn.edu', '2001-12-22', 'Peru', NULL, NULL, '2022-06-04', 29),
('Rudolph', 'Castaneda', 'rcastanedav@boston.com', '1993-09-10', 'Peru', '5762 Maryland Junction', NULL, '2021-09-17', 32),
('Trumann', 'Manifield', 'tmanifield17@imageshack.us', '2001-02-20', 'Peru', '20 Stone Corner Center', NULL, '2022-01-16'),
('Mellisent', 'Lynam', 'mlynam1k@example.com', '1993-03-09', 'Peru', '122 John Wall Lane', NULL, '2021-10-01', 57);
*/

START TRANSACTION;
insert into SPELLS (nombre, daño, nivel) values ('Acechar', ' ', 10);
insert into SPELLS (nombre, daño, nivel) values ('Abrazo Demoniaco','Maldicion', 40);
insert into SPELLS (nombre, daño, nivel) values ('Aluvion','Fisico', 30);
insert into SPELLS (nombre, daño, nivel) values('Aguijon Venenoso','Fisico', 50);
savepoint NEW_SPELLS_1;
insert into SPELLS (nombre, daño, nivel) values('Disparo Potente','Fisico', 20);
insert into SPELLS (nombre, daño, nivel) values('Terror','Maldicion', 70);
insert into SPELLS (nombre, daño, nivel) values('Aliento de Escarcha', 'Magico', 20);
insert into SPELLS (nombre, daño, nivel) values('Alcance de las Sombras','Maldicion', 80);
SAVEPOINT NEW_SPELLS_2;

SELECT * FROM SPELLS;

/* ROLLBACK TO NEW_SPELLS_1 */;

/* RELEASE SAVEPOINT NEW_SPELLS_1 */;