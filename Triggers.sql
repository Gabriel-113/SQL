use db_mmorpg;

// Trigger que despues de que se realiza una insercion en la tabla USUARIO, inserta un comentario en la tabla REGISTROS_USUARIOS
// Registrando cada nuevo usuario
DELIMITER //
CREATE TRIGGER REGISTROS AFTER INSERT ON USUARIO
FOR EACH ROW 
BEGIN
insert into REGISTROS_USUARIOS (movimiento) value (concat('Nuevo usuario registrado ', NEW.usuario));
END // 
DELIMITER ;

// Trigger que registra cuando se insertan datos en la tabla DATOS_USUARIO, se agrega un comentario con la accion y el id del usuario.
DELIMITER //
CREATE TRIGGER INSERCION_DATOS AFTER INSERT ON DATOS_USUARIO
FOR EACH ROW
BEGIN
insert into REGISTROS_USUARIOS (movimiento) value (concat('Se cargaron los datos correspondiente al usuario numero id: ', NEW.id_usuario));
END // 
DELIMITER ;

// Trigger que luego de que captura una actualizacion de los datos de la tabla DATOS_USUARIO, registra un comentario
// En la tabla REGISTROS_USUARIOS con la accion y el id del usuario
DELIMITER //
CREATE TRIGGER ACTUALIZACION_DATOS AFTER UPDATE ON DATOS_USUARIO
FOR EACH ROW
BEGIN
insert into REGISTROS_USUARIOS (movimiento) values (concat('Los datos del usuario numero id: ', id_usuario, 'se modificaron'));
END //
DELIMITER ;

// Trigger que registra una insercion en la tabla BANS e inserta un comentario con la accion
// El id del usuario y del moderador en la tabla SANCIONES
DELIMITER //
CREATE TRIGGER SANCION AFTER INSERT ON BANS
FOR EACH ROW
BEGIN
insert into SANCIONES (movimiento) values (concat('Se registro la sancion con numero id: ', NEW.id_ban , ', Realizada por el moderador numero id: ', NEW.id_moderator));
END //
DELIMITER ;

// Trigger que registra una delete en la tabla BANS, inserta un comentario en la tabla SANCIONES
// Con la accion, el id del usuario y del moderador
DELIMITER //
CREATE TRIGGER FINALIZACION_SANCION AFTER DELETE ON BANS
FOR EACH ROW
BEGIN
insert into SANCIONES (movimiento) values (concat('Se elimino la sancion con numero id: ', OLD.id_ban , ', Realizada por el moderador numero id: ', OLD.id_moderator));
END //
DELIMITER ;

