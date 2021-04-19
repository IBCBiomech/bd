# Ejercicios DDL 2

Recordamos que las restricciones son PRIMARY, UNIQUE, FOREIGN KEY, CHECK.

### Ejercicio 1. Realiza el diseño físico para el siguiente modelo relacional. 

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-040.png)

No pueden ser nulos los siguientes campos: Nombre de Empleado, Nombre de Periodista, Título de Revista. La Periodicidad toma uno de los siguientes valores: Semanal, Quincenal, Mensual, Trimestral o Anual, siendo el valor por defecto Mensual. NumPaginas debe ser mayor que 0.

### Ejercicio 2

 Realiza el diseño físico para el siguiente modelo relacional. Asigna el tipo de datos que consideres más adecuado. 

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-041.png)

No pueden ser nulos los siguientes campos: Nombre de Socio, Título de Película. Sexo toma los valores H o M. Por defecto si no se indica nada un actor o actriz no es Protagonista (este campo toma valores S o N). FechaDevolución debe ser mayor que FechaAlquiler.

### Ejercicio 3

No pueden ser nulos los siguientes campos: Nombre de Persona, NombreVía, Número de Vivienda, Nombre de Municipio. Sexo toma los valores H o M. Por defecto si no se indica nada el TipoVia es Calle.

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-042.png)

### Ejercicio 4

Crea las tablas sin restricciones y añádelas después con el comando ALTER TABLE. 

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-043.png)

### Ejercicio 5

Crea las tablas sin restricciones y añádelas después con el comando ALTER TABLE.

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-044.png)

### Ejercicio 6

Crea las tablas sin restricciones y añádelas después con el comando ALTER TABLE. 

![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-047.png)

### Ejercicio 7

Crea las tablas sin restricciones y añádelas después con el comando ALTER TABLE.



![](https://gestionbasesdatos.readthedocs.io/es/latest/_images/tema3-048.png)

### Ejercicio 8

| Columna   | Tipo de dato |
| :-------- | :----------- |
| NIF       | VARCHAR2(10) |
| NOMBRE    | VARCHAR2(20) |
| DIRECCION | VARCHAR2(20) |
| POBLACION | VARCHAR2(20) |
| PROVINCIA | VARCHAR2(20) |
| CODPOSTAL | NUMBER(5)    |

Crear tabla sin restricciones. Después añadir las siguientes restricciones:

- La clave primaria es NIF.
- PROVINCIA ha de almacenarse en mayúscula.
- Cambia la longitud de NOMBRE a 30 caracteres y no nulo.

| Columna        | Tipo de dato |
| :------------- | :----------- |
| COD_FABRICANTE | NUMBER(3)    |
| NOMBRE         | VARCHAR2(15) |
| PAIS           | VARCHAR2(15) |

Restricciones:

- La clave primaria es COD_FABRICANTE.
- Las columnas NOMBRE y PAIS han de almacenarse en mayúscula.

| Columna        | Tipo de dato |      |
| :------------- | :----------- | :--- |
| ARTICULO       | VARCHAR2(20) |      |
| COD_FABRICANTE | NUMBER(3)    |      |
| PESO           | NUMBER(3)    |      |
| CATEGORIA      | VARCHAR2(10) |      |
| PRECIO_VENTA   | NUMBER(6     |      |
| PRECIO_COSTO   | NUMBER(6     |      |
| EXISTENCIAS    | NUMBER(5)    |      |

Restricciones:

- La clave primaria está formada por las columnas: ARTICULO, COD_FABRICANTE, PESO y CATEGORIA.
- COD_FABRICANTE es clave ajena que referencia a la tabla FABRICANTES.
- PRECIO_VENTA, PRECIO_COSTO y PESO han de ser > 0.
- CATEGORIA ha de ser ‘Primera’, ‘Segunda’ o ‘Tercera’.

| Columna           | Tipo de dato |
| :---------------- | :----------- |
| NIF               | VARCHAR2(10) |
| ARTICULO          | VARCHAR2(20) |
| COD_FABRICANTE    | NUMBER(3)    |
| PESO              | NUMBER(3)    |
| CATEGORIA         | VARCHAR2(10) |
| FECHA_VENTA       | DATE         |
| UNIDADES_VENDIDAS | NUMBER(4)    |

Restricciones:

- La clave primaria está formada por las columnas: NIF, ARTICULO, COD_FABRICANTE, PESO, CATEGORIA y FECHA_VENTA.
- NIF es clave ajena que referencia a la tabla TIENDAS.
- ARTICULO, COD_FABRICANTE, PESO y CATEGORIA es clave ajena que referencia a la tablas ARTICULOS.
- UNIDADES_VENDIDAS han de ser > 0.
- CATEGORIA ha de ser ‘Primera’, ‘Segunda’ o ‘Tercera’.

| Columna          | Tipo de dato |
| :--------------- | :----------- |
| NIF              | VARCHAR2(10) |
| ARTICULO         | VARCHAR2(20) |
| COD_FABRICANTE   | NUMBER(3)    |
| PESO             | NUMBER(3)    |
| CATEGORIA        | VARCHAR2(10) |
| FECHA_PEDIDO     | DATE         |
| UNIDADES_PEDIDAS | NUMBER(4)    |
| EXISTENCIAS      | NUMBER(5)    |

Restricciones:

- La clave primaria está formada por las columnas: NIF, ARTICULO, COD_FABRICANTE, PESO, CATEGORIA y FECHA_PEDIDO.
- NIF es clave ajena que referencia a la tabla TIENDAS.
- ARTICULO, COD_FABRICANTE, PESO y CATEGORIA es clave ajena que referencia a la tablas ARTICULOS.
- UNIDADES_PEDIDAS han de ser > 0.
- CATEGORIA ha de ser ‘Primera’, ‘Segunda’ o ‘Tercera’.