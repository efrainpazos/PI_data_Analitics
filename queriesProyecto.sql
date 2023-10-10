USE aviones;
        CREATE TABLE IF NOT EXISTS accidentes(
        `id` INT AUTO_INCREMENT PRIMARY KEY,
        `Fecha` VARCHAR(255), 
        `Operador` VARCHAR(255), 
        `Numero de Vuelo` VARCHAR(255),
        `Destino y/o tipoVuelo` VARCHAR(255),
        `TipoDeAeronave` VARCHAR(255),
        `registration` VARCHAR(255),
        `cn_ln` VARCHAR(255),
        `Total Abordo` VARCHAR(255),
        `Pasajeros a Bordo` VARCHAR(255),
        `Equipo a bordo` VARCHAR(255),
        `cantidad de fallecidos` VARCHAR(255),
        `Pasajeros muertos` VARCHAR(255),
        `Equipo a bordo muertos` VARCHAR(255),
        `ground` VARCHAR(255),
        `Resumen` VARCHAR(255),
        `Año` VARCHAR(255),
        `Lugar` VARCHAR(255),
        `Paises o Region` VARCHAR(255),
        `Pais` VARCHAR(255),
        `Tiempo` VARCHAR(255));
DROP table accidentes;
SET GLOBAL local_infile = 1;

LOAD DATA local INFILE 'C:\Users\PC\Desktop\PI_data_Analitics\dfAccidentesLimpio.csv'
INTO TABLE accidentes
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Esto ignora la primera fila si contiene encabezados 
select * from `dfaccidenteslimpio`;
drop table `dfaccidenteslimpio`