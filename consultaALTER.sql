/*Alterar o modificar la estructura de la tabla*/
ALTER TABLE contactos ADD COLUMN ciudad VARCHAR(30) NOT NULL AFTER apellidos; 

/*Al no permitir valores NULOS, sus valors por defectos seran VACIOS*/


/*Funcion de agrupacion que cuenta los datos y devuelve una tupla*/ 
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

/*DISTINCT Selecciona los valores no repetidos en una columna que se le indique*/

SELECT DISTINCT tipo; 

/*Funciones que devuelven maximos, minimos y la media*/
MAX()
MIN()
AVG()

/*Funcion de agrupacion que suma todos los datos y devuelve una tupla*/
SUM()
SELECT SUM(SUELDO) FROM contactos;
   /*Suma los datos y devuelve la suma total de cada departamento*/ 
    SELECT SUM(SUELDO) FROM contactos GROUP by departamento;

/*Actualizar filas impares*/
UPDATE contactos 
SET departamento = 'Marketing'
WHERE MOD (cod_contacto, 2)=1;


/*Practica de consultas usando agenda daw y contactos*/

/*#1 contactos de madrid que ganen mas de 23000*/
SELECT nombre, apellidos, dni 
FROM CONTACTOS 
WHERE SUELDO > 23000 
AND ciudad = 'Madrid'
ORDER BY nombre, apellidos, dni;

/*#2 Gasto total de sueldos de la empresa y por departamento*/ 
SELECT SUM(sueldo) AS 'Sueldo Total' FROM contactos;
SELECT departamento, SUM(SUELDO) FROM contactos GROUP by departamento;

/*#3 Gasto medio por departamento*/
SELECT departamento, AVG(SUELDO) FROM contactos GROUP by departamento;

/*#4 Contactos de Madrid, Cordoba, Toledo, burgos*/
SELECT nombre, apellido, dni
FROM contactos 
WHERE ciudad = 'Madrid', 'Cordoba', 'Toledo', 'Burgos'
ORDER BY nombre, apellidos, dni;

/*#5 Saber quien cumple años hoy*/
SELECT nombre, apellidos 
FROM contactos 
WHERE fec_nac = CURDATE()
