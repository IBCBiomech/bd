# Ejercicios DDL 1

### Ejercicio 1

Realiza el diseño físico para el siguiente modelo relacional. Asigna el tipo de datos que consideres más adecuado. Realiza el diseño sin poner nombres a las restricciones. 

#### A

![Sql pieces providers.png](https://upload.wikimedia.org/wikipedia/commons/5/53/Sql_pieces_providers.png)

#### B

![Scientists-schema.png](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Scientists-schema.png/300px-Scientists-schema.png)

#### C





![Planet-express-db.png](https://upload.wikimedia.org/wikipedia/commons/c/c0/Planet-express-db.png)



#### D

![../_images/tema3-035.png](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-035.png)

#### E

![../_images/tema3-036.png](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-036.png)

#### F



![Sql hospital.png](https://upload.wikimedia.org/wikipedia/commons/b/b8/Sql_hospital.png)



### Ejercicio 2

Disponemos de la siguiente Base de Datos para gestionar la información de los pubs de una determinada provincia:

![image-20210406221817148](/home/user22/.config/Typora/typora-user-images/image-20210406221817148.png)

Se pide escribir los comandos SQL que permitan la creación de las tablas anteriores teniendo en cuenta las siguientes restricciones:

• Todos los valores son de tipo carácter excepto los campos FECHA_APERTURA (fecha) , CANTIDAD, PRECIO y COD_LOCALIDAD (numéricos).
• Los únicos campos que no son obligatorios son los campos DOMICILIO.
• Los valores del campo horario sólo pueden ser HOR1, HOR2 y HOR3.
• No es posible dar de alta EXISTENCIAS a precio 0.
• El campo función de la tabla PUB_EMPLEADO sólo puede tener los valores
CAMARERO, SEGURIDAD, LIMPIEZA.
• Se ha de mantener la integridad referencial entre las tablas. Claves foráneas: PUB: COD_LOCALIDAD. Titular: COD_PUB. Existencias: COD_PUB. PUB_EMPLEADO: COD_PUB, DNI_EMPLEADO.
• Las claves primarias vienen marcadas con el símbolo #.

Este ejercicio hay que hacerlo de dos formas:

a) Crear las base de datos con todos los constraints o restricciones: primary, foreign key, check en la sentencia CREATE TABLE.

b) Crear la bases de datos sin crear los primary, foreign y check y luego utilizar ALTER para añadir las restricciones/constraints