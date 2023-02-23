use db_mmorpg;

-- Tabla vista que permite acceder rapidamente al pais de cada usuario
CREATE OR REPLACE VIEW PAISES_USUARIOS AS
(SELECT USUARIO.id_usuario, USUARIO.usuario, DATOS_USUARIO.pais
FROM USUARIO INNER JOIN DATOS_USUARIO ON USUARIO.id_usuario = DATOS_USUARIO.id_usuario
ORDER BY id_usuario ASC);


-- Tabla vista para llevar un control sobre el nivel de la zona.
-- Llevar un control sobre los niveles de las zonas es fundamental dentro del juego
-- Siendo el elemento donde mas interactuan los usuarios.
CREATE OR REPLACE VIEW ZONAS_NIVEL AS
(SELECT nombre, nivel FROM ZONAS ORDER BY nivel ASC);


-- Tabla vista que lleva el control de las ventas de manera sencilla, trayendo los datos
-- De la compra, el item, usuario y el valor.
CREATE OR REPLACE VIEW CONTROL_VENTAS AS
(SELECT VENTAS.id_ventas, USUARIO.usuario, SHOP.id_shop, SHOP.precio, ITEMS.nombre
FROM VENTAS INNER JOIN USUARIO ON USUARIO.id_usuario = VENTAS.id_ventas
INNER JOIN SHOP ON VENTAS.id_ventas = SHOP.id_shop
INNER JOIN ITEMS ON SHOP.id_item = ITEMS.id_item);


-- Tabla vista que permite ver la composicion de cada zona, 
-- A la hora de diseñar cada una es importante llevar el control de cada composicion.
-- Siendo ademas una tabla que el usuario podria consultar sin problemas en una especie de wiki.
CREATE OR REPLACE VIEW DATA_ZONA AS
(SELECT COMPOSICION_ZONA.id_composicion_zona AS Composicion,
ZONAS.NOMBRE AS zona,
ZONAS.nivel AS Nivel,
NPC.nombre as Npc,
DUNGEONS.nombre AS Dungeon,
DUNGEONS.grupo AS Grupo,
DUNGEONS.dificultad AS Dificultad_Dungeon, 
BOSS.nombre AS Boss,
BOSS.dificultad AS Dificultad_Boss
FROM COMPOSICION_ZONA INNER JOIN ZONAS ON COMPOSICION_ZONA.id_zona = ZONAS.id_zona
INNER JOIN NPC ON COMPOSICION_ZONA.id_npc = NPC.id_npc
INNER JOIN DUNGEONS ON COMPOSICION_ZONA.id_dungeon = DUNGEONS.id_dungeon
INNER JOIN BOSS ON COMPOSICION_ZONA.id_boss = BOSS.id_boss
ORDER BY ZONAS.nivel ASC);


-- Tabla vista que lleva un control del nivel del personaje, junto al pais y su fecha de registro.
-- Esta tabla permite tener una referencia de la actividad del usuario, en que nivel es mas propenso
-- A dejar el videojuego, o donde se produce un estancamiento e ir pensando posible implementaciones
-- Para mejorar la experiencia. Esta tabla junto a la de DATA_ZONA son las principales de observacion
-- Para el mejoramiento del juego.
CREATE OR REPLACE VIEW USUARIOS_ACTIVOS AS
(SELECT USUARIO.id_usuario, USUARIO.usuario, DATOS_USUARIO.pais,
DATOS_USUARIO.fecha_registro, PERSONAJE.nivel FROM
USUARIO INNER JOIN DATOS_USUARIO ON USUARIO.id_usuario = DATOS_USUARIO.id_usuario
INNER JOIN PERSONAJE ON USUARIO.id_usuario = PERSONAJE.id_usuario ORDER BY PERSONAJE.nivel DESC);

