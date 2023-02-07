DROP DATABASE IF EXISTS `db_mmorpg`;
CREATE DATABASE IF NOT EXISTS `db_mmorpg`;

use db_mmorpg;

CREATE TABLE USUARIO ( 
id_usuario INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(20) NOT NULL,
contraseña VARCHAR(12) NOT NULL,
mail VARCHAR(50) NOT NULL,
nombre VARCHAR(15) NOT NULL,
apellido VARCHAR(20) NOT NULL,
fecha_nacimiento DATE NOT NULL,
pais VARCHAR(20) NOT NULL,
direccion VARCHAR(30),
CP VARCHAR(20),
fecha_registro DATE NOT NULL
);

CREATE TABLE SERVIDOR (
id_servidor INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL,
capacidad INT NOT NULL
);

CREATE TABLE USUARIO_SERVIDOR (
id_usuario INT NOT NULL,
id_servidor INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO (id_usuario),
FOREIGN KEY (id_servidor) REFERENCES SERVIDOR (id_servidor)
);

CREATE TABLE PERSONAJE (
id_personaje INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_servidor INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
raza VARCHAR(10) NOT NULL,
clase VARCHAR(15) NOT NULL,
nivel INT NOT NULL,
daño VARCHAR(10) NOT NULL,
profesion VARCHAR(30),
bando VARCHAR(15) NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
FOREIGN KEY (id_servidor) REFERENCES SERVIDOR(id_servidor)
);

CREATE TABLE CLAN (
id_clan INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_servidor INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
cantidad INT NOT NULL,
posicion INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
FOREIGN KEY (id_servidor) REFERENCES SERVIDOR(id_servidor)
);

CREATE TABLE SPELLS (
id_spell INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
clase VARCHAR(15) NOT NULL,
daño VARCHAR(10) NOT NULL,
nivel INT NOT NULL
);

CREATE TABLE ARMOR (
id_armor INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
tipo VARCHAR(10) NOT NULL,
defensa INT NOT NULL,
nivel INT NOT NULL,
rango VARCHAR(10) NOT NULL
);

CREATE TABLE WEAPON (
id_weapon INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
tipo VARCHAR(10) NOT NULL,
ataque INT NOT NULL,
nivel INT NOT NULL,
rango VARCHAR(10) NOT NULL
);

CREATE TABLE JEWELER (
id_jeweler INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
tipo VARCHAR(10) NOT NULL,
suerte INT NOT NULL,
resistencia INT NOT NULL,
velocidad INT NOT NULL,
nivel INT NOT NULL,
rango VARCHAR(10) NOT NULL
);

CREATE TABLE ZONAS (
id_zona INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
nivel INT NOT NULL,
npcs INT NOT NULL
);

CREATE TABLE BOSS (
id_boss INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
nivel INT NOT NULL,
daño VARCHAR(10),
dificultad VARCHAR(15)
);

CREATE TABLE DUNGEON (
id_dungeon INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
nivel INT NOT NULL,
dificultad VARCHAR(15),
grupo VARCHAR(5)
);

CREATE TABLE SHOP (
id_item INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
item VARCHAR(50) NOT NULL,
precio INT NOT NULL,
stock INT NOT NULL
);

CREATE TABLE AUCTION_MORTA (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE AUCTION_RASKAN (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE AUCTION_NORIA (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE AUCTION_FELORA (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE AUCTION_VELARIO (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE AUCTION_FORTES (
id_auction INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
moneda VARCHAR(15) NOT NULL,
precio INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE MODERATOR ( 
id_moderator INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(20) NOT NULL,
contraseña VARCHAR(12) NOT NULL,
mail VARCHAR(50) NOT NULL,
nombre VARCHAR(15) NOT NULL,
apellido VARCHAR(20) NOT NULL,
fecha_nacimiento DATE NOT NULL,
pais VARCHAR(20) NOT NULL,
direccion VARCHAR(30),
CP VARCHAR(20),
fecha_registro DATE NOT NULL,
permisos VARCHAR(20) NOT NULL
);

CREATE TABLE MODERATOR_SERVIDOR (
id_moderator INT NOT NULL,
id_servidor INT NOT NULL,
FOREIGN KEY (id_moderator) REFERENCES MODERATOR (id_moderator),
FOREIGN KEY (id_servidor) REFERENCES SERVIDOR (id_servidor)
);

CREATE TABLE BANS (
id_ban INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_moderator INT NOT NULL,
fecha_sancion DATE NOT NULL,
fecha_fin DATE NOT NULL,
motivo VARCHAR(300) NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
FOREIGN KEY (id_moderator) REFERENCES MODERATOR(id_moderator)
);

CREATE TABLE PETITIONS (
id_petitions INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
id_ban INT NOT NULL,
id_usuario INT NOT NULL,
fecha DATE NOT NULL,
descargo VARCHAR(300),
FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
FOREIGN KEY (id_ban) REFERENCES BANS(id_ban)
);