use db_mmorpg;


// Tabla que registra los movimientos realizados en las tablas USUARIO Y DATOS_USUARIO
// Interactua con los Triggers REGISTROS (USUARIO), INSERCION_DATOS (DATOS_USUARIO) y ACTUALIZACION_DATOS (ACTUALIZACION_DATOS),
CREATE TABLE REGISTROS_USUARIOS (
id_registro INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
movimiento VARCHAR(70),
fecha_movimiento DATETIME NULL DEFAULT CURRENT_TIMESTAMP
);

// Tabla que registra los movimientos en la tabla BANS
// Interactua con los Triggers SANCION (BANS) y FINALIZACION_SANCION (BANS)
CREATE TABLE SANCIONES (
id_sancion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
movimiento VARCHAR(200),
fecha_movimiento DATETIME NULL DEFAULT CURRENT_TIMESTAMP
);



