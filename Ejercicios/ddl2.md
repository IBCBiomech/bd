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