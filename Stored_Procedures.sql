use db_mmorpg;

-- Este proceso de almacenamiento sirve para visualizar la composicion del servidor de manera detallada y ordenada
-- de mayor a menor o viceversa correspondiendo al nivel de la zona. Toma dos paramentros, el primero "servidor" (INT) es el numero
-- correspondiende al id_servidor siendo del 1 al 6; el segundo parametro "nivel" (VARCHAR(5)) acepta 'ASC' y 'DESC' 
-- tomando el camino correspondiente del ordenamiento mediante un condicional if. EJ: CALL INFORMACION_SERVIDOR(3,'ASC').
-- Ej: si el item existe ('Tomo Necronomicon', 'Una Mano', 2500, 0, 80, 'Velocidad cast %50 Mana %40', 'Legendario', '%3')
-- Ej: si el item no existe ('Tomo Sagrado', 'Una Mano', 0, 800, 70, 'Velocidad cast %30 Mana %20', 'Mitico', '%10')

drop procedure if exists INFORMACION_SERVIDOR;

DELIMITER //
CREATE PROCEDURE `INFORMACION_SERVIDOR` (IN servidor INT, IN nivel VARCHAR(5))
BEGIN
SET @ordenar = nivel;
if nivel = 'ASC' THEN SELECT COMPOSICION_SERVIDOR.id_servidor, 
COMPOSICION_ZONA.id_composicion_zona, 
ZONAS.nombre AS zona,
ZONAS.nivel AS nivel,
NPC.nombre as npc,
DUNGEONS.nombre AS dungeon, 
BOSS.nombre AS boss
FROM COMPOSICION_SERVIDOR INNER JOIN COMPOSICION_ZONA 
ON COMPOSICION_SERVIDOR.id_servidor = COMPOSICION_SERVIDOR.id_composicion_zona 
INNER JOIN ZONAS ON COMPOSICION_ZONA.id_zona = ZONAS.id_zona
INNER JOIN NPC ON COMPOSICION_ZONA.id_npc = NPC.id_npc
INNER JOIN DUNGEONS ON COMPOSICION_ZONA.id_dungeon = DUNGEONS.id_dungeon
INNER JOIN BOSS ON COMPOSICION_ZONA.id_boss = BOSS.id_boss WHERE (COMPOSICION_SERVIDOR.id_servidor = servidor)
ORDER BY ZONAS.nivel  ASC;
elseif nivel = 'DESC' THEN SELECT COMPOSICION_SERVIDOR.id_servidor, 
COMPOSICION_ZONA.id_composicion_zona, 
ZONAS.nombre AS zona,
ZONAS.nivel AS nivel,
NPC.nombre as npc,
DUNGEONS.nombre AS dungeon, 
BOSS.nombre AS boss
FROM COMPOSICION_SERVIDOR INNER JOIN COMPOSICION_ZONA 
ON COMPOSICION_SERVIDOR.id_servidor = COMPOSICION_SERVIDOR.id_composicion_zona 
INNER JOIN ZONAS ON COMPOSICION_ZONA.id_zona = ZONAS.id_zona
INNER JOIN NPC ON COMPOSICION_ZONA.id_npc = NPC.id_npc
INNER JOIN DUNGEONS ON COMPOSICION_ZONA.id_dungeon = DUNGEONS.id_dungeon
INNER JOIN BOSS ON COMPOSICION_ZONA.id_boss = BOSS.id_boss WHERE (COMPOSICION_SERVIDOR.id_servidor = servidor)
ORDER BY ZONAS.nivel DESC;
end if;
END//
DELIMITER ;


-- Este proceso de almacenamiento inserta un nuevo registro en la tabla ITEMS
-- Se llama al Stored Procedure, se le envia los datos (VARCHAR E INT)
-- del nuevo registro respetando el orden de la tabla
-- se realiza la comprobacion mediante el nombre, en caso de existir el item,
-- se  devuelve el nombre del item seguido de un mensaje que indica que el item ya existe
-- si la comprobacion no encuentra el nombre del item en la tabla, inserta el nuevo registro.

drop procedure if exists INSERCION_ITEM;

DELIMITER //
CREATE PROCEDURE `INSERCION_ITEM` (IN nom VARCHAR(50), IN tipo VARCHAR(50), IN daño INT, IN defensa INT, IN nivel INT, IN pasiva VARCHAR(50), IN rango VARCHAR(15), IN drops VARCHAR(10) )
BEGIN
SET @nuevo_item = nom;
if @nuevo_item = ( SELECT nombre FROM ITEMS where (nombre = @nuevo_item) ) then
SELECT CONCAT(nombre, ' ', '"El item ya exite"') FROM ITEMS WHERE nombre = @nuevo_item; 
else
insert into ITEMS (nombre, tipo, daño, defensa, nivel, pasiva, rango, drops) values
(nom, tipo, daño, defensa, nivel, pasiva, rango, drops);
end if;
END//
DELIMITER ;
