# Soluciones DDL2

1)

```sql
create table Empleado (
	DNI varchar(10) Primary Key,
    Nombre varchar(50) not null,
    Direccion varchar(50),
    Telefono varchar(10),
    Sucursal int
);

create table Sucursal(
	Codigo int Primary Key,
    Direccion varchar(40),
    Telefono varchar(10)
);

create table Periodista(

    DNI varchar(10) Primary Key,
    Nombre varchar(25) not null,
    Direccion varchar(40),
    Telefono varchar(10),
    Especialista varchar(40)
);

create table Revista(
	NumReg int Primary Key,
    Titulo varchar(25) not null,
    Periodicidad enum('Semanal','Quincenal','Mensual','Trimestral','Anual') Default 'Mensual',
    Tipo varchar(25),
    Sucursal int
);

create table escribe (
	NumReg int,
    DNI_Per varchar(10),
    Primary Key(NumReg, DNI_Per)
);

create table NumRevista(
	NumReg int,
    Numero int,
    NumPaginas int check (NumPaginas > 0),
    Fecha Date,
    CantVendidas int
);

Alter table Empleado add foreign key(Sucursal) references Sucursal(Codigo);
Alter table Revista add foreign key(Sucursal) references Sucursal(Codigo);
Alter table NumRevista add foreign key(NumReg) references Revista(NumReg);
Alter table escribe add foreign key(NumReg) references Revista(NumReg);
Alter table escribe add foreign key(DNI_Per) references Periodista(DNI);
```

### Ejercicio 8

```sql
Create Table: CREATE TABLE `ejercicio8` (
    `NIF` varchar(10) NOT NULL,
    `Nombre` varchar(20) DEFAULT NULL,
    `Direccion` varchar(20) DEFAULT NULL,
    `Poblacion` varchar(20) DEFAULT NULL,
    `Provincia` varchar(20) DEFAULT NULL,
    `codpostal` int DEFAULT NULL,
     PRIMARY KEY (`NIF`)
);

alter table add primary key(NIF);
alter table ejercicio8 add check ( binary upper(Provincia) = binary Provincia);
alter table ejercicio8 modify Nombre varchar(50) not null check (length(Nombre) = 30);
```

