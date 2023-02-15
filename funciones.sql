-- Esta funcion recibe por parametros el nombre de una tabla (VARCHAR)
-- y nivel (INT) y retorna la cantidad de campos (INT) que hay de ese nivel
-- Los niveles son 1-10-20-30-40-50-60-70-80

drop function if exists CONTROL_NIVEL;

DELIMITER //
CREATE FUNCTION CONTROL_NIVEL (tabla VARCHAR(50), nivel INT) RETURNS INT
READS SQL DATA
BEGIN
	DECLARE control_nivel INT;
    IF ('ZONAS' = tabla) THEN (select count(z.nombre) into control_nivel from ZONAS z where z.nivel = nivel);
    ELSEIF ('DUNGEONS' = tabla) THEN (select count(d.nombre) into control_nivel from DUNGEONS d where d.nivel = nivel);
    ELSEIF ('BOSS' = tabla) THEN (select count(b.nombre) into control_nivel from BOSS b where b.nivel = nivel);
    END IF;
    RETURN control_nivel;
END //
DELIMITER ;