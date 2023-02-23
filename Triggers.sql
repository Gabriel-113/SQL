use db_mmorpg;


DELIMITER //
CREATE TRIGGER REGISTROS AFTER INSERT ON USUARIO
FOR EACH ROW 
BEGIN
insert into REGISTROS_USUARIOS (movimiento) value (concat('Nuevo usuario registrado ', NEW.usuario));
END // 
DELIMITER ;


DELIMITER //
CREATE TRIGGER INSERCION_DATOS AFTER INSERT ON DATOS_USUARIO
FOR EACH ROW
BEGIN
insert into REGISTROS_USUARIOS (movimiento) value (concat('Se cargaron los datos correspondiente al usuario numero id: ', NEW.id_usuario));
END // 
DELIMITER ;


DELIMITER //
CREATE TRIGGER ACTUALIZACION_DATOS AFTER UPDATE ON DATOS_USUARIO
FOR EACH ROW
BEGIN
insert into REGISTROS_USUARIOS (movimiento) values (concat('Los datos del usuario numero id: ', NEW.id_usuario, 'se modificaron'));
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER SANCION AFTER INSERT ON BANS
FOR EACH ROW
BEGIN
insert into SANCIONES (movimiento) values (concat('Se registro la sancion con numero id: ', NEW.id_ban , ', Realizada por el moderador numero id: ', NEW.id_moderator));
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER FINALIZACION_SANCION AFTER DELETE ON BANS
FOR EACH ROW
BEGIN
insert into SANCIONES (movimiento) values (concat('Se elimino la sancion con numero id: ', OLD.id_ban , ', Realizada por el moderador numero id: ', OLD.id_moderator));
END //
DELIMITER ;

