/*Alterar o modificar la estructura de la tabla*/
ALTER TABLE contactos ADD COLUMN ciudad VARCHAR(30) NOT NULL AFTER apellidos; 

/*Al no permitir valores NULOS, sus valors por defectos seran VACIOS*/


/*Funcion de agrupacion que cuenta los datos*/ 
SELECT COUNT(ciudad) from contactos;


/*Funcion para la fecha actual del sistema*/
SELECT CURDATE();

/*Eliminar columnas del tiron*/

ALTER TABLE contactos 
DROP ciudad, 
DROP ciudad2, 
DROP sueldo;

/*Actualizacion de campos*/
UPDATE contactos
SET tipo='Amigo'
WHERE cod_contacto=1;


UPDATE contactos
SET sueldo=20000
WHERE MOD(cod_contacto, 2)=0;

UPDATE contactos
SET sueldo=22000
WHERE MOD(cod_contacto, 2)=1;

UPDATE contactos
SET sueldo=24000
WHERE MOD(cod_contacto, 6)=0;

/*OPERADORES DE COMPARACION*/
< Mayor que
> Menor que