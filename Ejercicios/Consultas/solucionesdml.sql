 # 1.1.3
 
 # 1.1.4
 1.
 
 select p.nombre, p.precio, f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante;
+---------------------------------+--------+-----------------+
| nombre                          | precio | nombre          |
+---------------------------------+--------+-----------------+
| Disco duro SATA3 1TB            |  86.99 | Seagate         |
| Memoria RAM DDR4 8GB            |    120 | Crucial         |
| Disco SSD 1 TB                  | 150.99 | Samsung         |
| GeForce GTX 1050Ti              |    185 | Gigabyte        |
| GeForce GTX 1080 Xtreme         |    755 | Crucial         |
| Monitor 24 LED Full HD          |    202 | Asus            |
| Monitor 27 LED Full HD          | 245.99 | Asus            |
| Portátil Yoga 520               |    559 | Lenovo          |
| Portátil Ideapd 320             |    444 | Lenovo          |
| Impresora HP Deskjet 3720       |  59.99 | Hewlett-Packard |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |
+---------------------------------+--------+-----------------+
2.
select p.nombre, p.precio, f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante
    -> order by f.nombre;
+---------------------------------+--------+-----------------+
| nombre                          | precio | nombre          |
+---------------------------------+--------+-----------------+
| Monitor 24 LED Full HD          |    202 | Asus            |
| Monitor 27 LED Full HD          | 245.99 | Asus            |
| Memoria RAM DDR4 8GB            |    120 | Crucial         |
| GeForce GTX 1080 Xtreme         |    755 | Crucial         |
| GeForce GTX 1050Ti              |    185 | Gigabyte        |
| Impresora HP Deskjet 3720       |  59.99 | Hewlett-Packard |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |
| Portátil Yoga 520               |    559 | Lenovo          |
| Portátil Ideapd 320             |    444 | Lenovo          |
| Disco SSD 1 TB                  | 150.99 | Samsung         |
| Disco duro SATA3 1TB            |  86.99 | Seagate         |
+---------------------------------+--------+-----------------+

3.
select p.nombre, p.precio, f.nombre,f.codigo from producto p inner join fabricante f on f.codigo = p.codigo_fabricante;
+---------------------------------+--------+-----------------+--------+
| nombre                          | precio | nombre          | codigo |
+---------------------------------+--------+-----------------+--------+
| Disco duro SATA3 1TB            |  86.99 | Seagate         |      5 |
| Memoria RAM DDR4 8GB            |    120 | Crucial         |      6 |
| Disco SSD 1 TB                  | 150.99 | Samsung         |      4 |
| GeForce GTX 1050Ti              |    185 | Gigabyte        |      7 |
| GeForce GTX 1080 Xtreme         |    755 | Crucial         |      6 |
| Monitor 24 LED Full HD          |    202 | Asus            |      1 |
| Monitor 27 LED Full HD          | 245.99 | Asus            |      1 |
| Portátil Yoga 520               |    559 | Lenovo          |      2 |
| Portátil Ideapd 320             |    444 | Lenovo          |      2 |
| Impresora HP Deskjet 3720       |  59.99 | Hewlett-Packard |      3 |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |      3 |
+---------------------------------+--------+-----------------+--------+
4.
select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where p.precio = (select min(precio) from producto);
+---------------------------+--------+-----------------+
| nombre                    | precio | nombre_fab      |
+---------------------------+--------+-----------------+
| Impresora HP Deskjet 3720 |  59.99 | Hewlett-Packard |
+---------------------------+--------+-----------------+

5.
select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where p.precio = (select max(precio) from producto);
+-------------------------+--------+------------+
| nombre                  | precio | nombre_fab |
+-------------------------+--------+------------+
| GeForce GTX 1080 Xtreme |    755 | Crucial    |
+-------------------------+--------+------------+

6.

select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante
    -> where f.nombre = 'Lenovo';
+----------------------+--------+------------+
| nombre               | precio | nombre_fab |
+----------------------+--------+------------+
| Portátil Yoga 520    |    559 | Lenovo     |
| Portátil Ideapd 320  |    444 | Lenovo     |
+----------------------+--------+------------+

7.

select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante    where f.nombre = 'Crucial' and p.precio > 200;
+-------------------------+--------+------------+
| nombre                  | precio | nombre_fab |
+-------------------------+--------+------------+
| GeForce GTX 1080 Xtreme |    755 | Crucial    |
+-------------------------+--------+------------+


8.
 select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where f.nombre = 'Seagate' OR f.nombre = 'Asus' or f.nombre = 'Hewlett-Packard';
+---------------------------------+--------+-----------------+
| nombre                          | precio | nombre_fab      |
+---------------------------------+--------+-----------------+
| Monitor 24 LED Full HD          |    202 | Asus            |
| Monitor 27 LED Full HD          | 245.99 | Asus            |
| Impresora HP Deskjet 3720       |  59.99 | Hewlett-Packard |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |
| Disco duro SATA3 1TB            |  86.99 | Seagate         |
+---------------------------------+--------+-----------------+

9. 

select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where f.nombre IN ('Asus', 'Seagate','Hewlett-Packard');
+---------------------------------+--------+-----------------+
| nombre                          | precio | nombre_fab      |
+---------------------------------+--------+-----------------+
| Monitor 24 LED Full HD          |    202 | Asus            |
| Monitor 27 LED Full HD          | 245.99 | Asus            |
| Impresora HP Deskjet 3720       |  59.99 | Hewlett-Packard |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |
| Disco duro SATA3 1TB            |  86.99 | Seagate         |
+---------------------------------+--------+-----------------+

10.
select p.nombre, p.precio, f.nombre nombre_fab from producto p inner join fabricante f on f.codigo = p.codigo_fabricante
    -> where p.nombre like '%e';
+-------------------------+--------+------------+
| nombre                  | precio | nombre_fab |
+-------------------------+--------+------------+
| GeForce GTX 1080 Xtreme |    755 | Crucial    |
+-------------------------+--------+------------+

11.
select p.nombre,p.precio from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where  f.nombre like '%w%';
+---------------------------------+--------+
| nombre                          | precio |
+---------------------------------+--------+
| Impresora HP Deskjet 3720       |  59.99 |
| Impresora HP Laserjet Pro M26nw |    180 |
+---------------------------------+--------+

12.

select p.nombre,p.precio,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where p.precio >= 180 order by p.precio desc, p.nombre asc;
+---------------------------------+--------+-----------------+
| nombre                          | precio | nombre          |
+---------------------------------+--------+-----------------+
| GeForce GTX 1080 Xtreme         |    755 | Crucial         |
| Portátil Yoga 520               |    559 | Lenovo          |
| Portátil Ideapd 320             |    444 | Lenovo          |
| Monitor 27 LED Full HD          | 245.99 | Asus            |
| Monitor 24 LED Full HD          |    202 | Asus            |
| GeForce GTX 1050Ti              |    185 | Gigabyte        |
| Impresora HP Laserjet Pro M26nw |    180 | Hewlett-Packard |
+---------------------------------+--------+-----------------+


13.

Ya hemos utilizado inner join en los ejercicios anteriores.

## 1.1.5

1.
select * from producto p right join fabricante f on f.codigo = p.codigo_fabricante;
+--------+---------------------------------+--------+-------------------+--------+-----------------+
| codigo | nombre                          | precio | codigo_fabricante | codigo | nombre          |
+--------+---------------------------------+--------+-------------------+--------+-----------------+
|      6 | Monitor 24 LED Full HD          |    202 |                 1 |      1 | Asus            |
|      7 | Monitor 27 LED Full HD          | 245.99 |                 1 |      1 | Asus            |
|      8 | Portátil Yoga 520               |    559 |                 2 |      2 | Lenovo          |
|      9 | Portátil Ideapd 320             |    444 |                 2 |      2 | Lenovo          |
|     10 | Impresora HP Deskjet 3720       |  59.99 |                 3 |      3 | Hewlett-Packard |
|     11 | Impresora HP Laserjet Pro M26nw |    180 |                 3 |      3 | Hewlett-Packard |
|      3 | Disco SSD 1 TB                  | 150.99 |                 4 |      4 | Samsung         |
|      1 | Disco duro SATA3 1TB            |  86.99 |                 5 |      5 | Seagate         |
|      2 | Memoria RAM DDR4 8GB            |    120 |                 6 |      6 | Crucial         |
|      5 | GeForce GTX 1080 Xtreme         |    755 |                 6 |      6 | Crucial         |
|      4 | GeForce GTX 1050Ti              |    185 |                 7 |      7 | Gigabyte        |
|   NULL | NULL                            |   NULL |              NULL |      8 | Huawei          |
|   NULL | NULL                            |   NULL |              NULL |      9 | Xiaomi          |
+--------+---------------------------------+--------+-------------------+--------+-----------------+

2.
 select * from producto p right join fabricante f on f.codigo = p.codigo_fabricante where p.codigo_fabricante is NULL;
+--------+--------+--------+-------------------+--------+--------+
| codigo | nombre | precio | codigo_fabricante | codigo | nombre |
+--------+--------+--------+-------------------+--------+--------+
|   NULL | NULL   |   NULL |              NULL |      8 | Huawei |
|   NULL | NULL   |   NULL |              NULL |      9 | Xiaomi |
+--------+--------+--------+-------------------+--------+--------+

3. Sí, puedes tener productos queno estén asociados a ningún fabricante, p.e. Xiami.

 -- CONSULTAS RESUMEN
1.

mysql> select count(*) from producto;
+----------+
| count(*) |
+----------+
|       11 |
+----------+


2
select count(*) from fabricante;
+----------+
| count(*) |
+----------+
|        9 |
+----------+


3.

select count(distinct codigo_fabricante) from producto;
+-----------------------------------+
| count(distinct codigo_fabricante) |
+-----------------------------------+
|                                 7 |
+-----------------------------------+


4.
select avg(precio) from producto;
+-------------------+
| avg(precio)       |
+-------------------+
| 271.7236363636364 |
+-------------------+

-- Esto lo hago para que veáis cómo se trunca el resultado a dos decimales.  

select truncate(avg(precio),2) from producto;
+-------------------------+
| truncate(avg(precio),2) |
+-------------------------+
|                  271.72 |
+-------------------------+

5.

select min(precio) from producto;
+-------------+
| min(precio) |
+-------------+
|       59.99 |
+-------------+

6.

select max(precio) from producto;
+-------------+
| max(precio) |
+-------------+
|         755 |
+-------------+

7.

select nombre, precio from producto where precio = (select min(precio) from producto); 
+---------------------------+--------+
| nombre                    | precio |
+---------------------------+--------+
| Impresora HP Deskjet 3720 |  59.99 |
+---------------------------+--------+

8.

select nombre, precio from producto where precio = (select max(precio) from producto);

+-------------------------+--------+
| nombre                  | precio |
+-------------------------+--------+
| GeForce GTX 1080 Xtreme |    755 |
+-------------------------+--------+

9.

mysql> select sum(precio) from producto;
+-------------+
| sum(precio) |
+-------------+
|     2988.96 |
+-------------+

10.

mysql> select count( *) as numProductos,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by p.codigo_fabricante having f.nombre = 'Asus';
+--------------+--------+
| numProductos | nombre |
+--------------+--------+
|            2 | Asus   |
+--------------+--------+

11.
select avg(p.precio) as media,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by p.codigo_fabricante having f.nombre = 'Asus';
+---------+--------+
| media   | nombre |
+---------+--------+
| 223.995 | Asus   |
+---------+--------+

12.
select min(p.precio) as menor,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by p.codigo_fabricante having f.nombre = 'Asus';
+-------+--------+
| menor | nombre |
+-------+--------+
|   202 | Asus   |
+-------+--------+

13.

select max(p.precio) as mayor,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by p.codigo_fabricante having f.nombre = 'Asus'
    -> ;
+--------+--------+
| mayor  | nombre |
+--------+--------+
| 245.99 | Asus   |
+--------+--------+

14.

select sum(p.precio) as suma,f.nombre from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by p.codigo_fabricante having f.nombre = 'Asus';
+--------+--------+
| suma   | nombre |
+--------+--------+
| 447.99 | Asus   |
+--------+--------+

15.

select f.nombre,max(precio),avg(precio),count(p.nombre) from producto p inner join fabricante f on f.codigo = p.codigo_fabricante group by f.codigo having f.nombre = 'Crucial';
+---------+-------------+-------------+-----------------+
| nombre  | max(precio) | avg(precio) | count(p.nombre) |
+---------+-------------+-------------+-----------------+
| Crucial |         755 |       437.5 |               2 |
+---------+-------------+-------------+-----------------+

16.

select f.nombre,count(p.nombre) as num from producto p right join fabricante f on f.codigo = p.codigo_fabricante group by f.codigo order by num desc;
+-----------------+-----+
| nombre          | num |
+-----------------+-----+
| Asus            |   2 |
| Lenovo          |   2 |
| Hewlett-Packard |   2 |
| Crucial         |   2 |
| Samsung         |   1 |
| Seagate         |   1 |
| Gigabyte        |   1 |
| Huawei          |   0 |
| Xiaomi          |   0 |
+-----------------+-----+

17.

select f.nombre,count(p.nombre),min(p.precio),avg(p.precio) as num from producto p inner join fabricante f on f.codigo = p.codigo_fabricante group by f.codigo;
+-----------------+-----------------+---------------+---------+
| nombre          | count(p.nombre) | min(p.precio) | num     |
+-----------------+-----------------+---------------+---------+
| Seagate         |               1 |         86.99 |   86.99 |
| Crucial         |               2 |           120 |   437.5 |
| Samsung         |               1 |        150.99 |  150.99 |
| Gigabyte        |               1 |           185 |     185 |
| Asus            |               2 |           202 | 223.995 |
| Lenovo          |               2 |           444 |   501.5 |
| Hewlett-Packard |               2 |         59.99 | 119.995 |
+-----------------+-----------------+---------------+---------+

18.

select f.codigo,max(precio),min(p.precio),avg(p.precio) as media,count(p.nombre) from producto p inner join fabricante f on f.codigo = p.codigo_fabricante group by f.codigo having media > 200;
+--------+-------------+---------------+---------+-----------------+
| codigo | max(precio) | min(p.precio) | media   | count(p.nombre) |
+--------+-------------+---------------+---------+-----------------+
|      6 |         755 |           120 |   437.5 |               2 |
|      1 |      245.99 |           202 | 223.995 |               2 |
|      2 |         559 |           444 |   501.5 |               2 |
+--------+-------------+---------------+---------+-----------------+


19.

select f.nombre,f.codigo,max(precio),min(p.precio),avg(p.precio) as media,count(p.nombre) from producto p inner join fabricante f
 on f.codigo = p.codigo_fabricante group by f.codigo having media > 200;
+---------+--------+-------------+---------------+---------+-----------------+
| nombre  | codigo | max(precio) | min(p.precio) | media   | count(p.nombre) |
+---------+--------+-------------+---------------+---------+-----------------+
| Crucial |      6 |         755 |           120 |   437.5 |               2 |
| Asus    |      1 |      245.99 |           202 | 223.995 |               2 |
| Lenovo  |      2 |         559 |           444 |   501.5 |               2 |
+---------+--------+-------------+---------------+---------+-----------------+

20.

select * from producto where precio >= 180;
+--------+---------------------------------+--------+-------------------+
| codigo | nombre                          | precio | codigo_fabricante |
+--------+---------------------------------+--------+-------------------+
|      4 | GeForce GTX 1050Ti              |    185 |                 7 |
|      5 | GeForce GTX 1080 Xtreme         |    755 |                 6 |
|      6 | Monitor 24 LED Full HD          |    202 |                 1 |
|      7 | Monitor 27 LED Full HD          | 245.99 |                 1 |
|      8 | Portátil Yoga 520               |    559 |                 2 |
|      9 | Portátil Ideapd 320             |    444 |                 2 |
|     11 | Impresora HP Laserjet Pro M26nw |    180 |                 3 |
+--------+---------------------------------+--------+-------------------+

21.

select f.codigo,f.nombre,count(p.nombre) from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where p.precio >= 180 group by f.codigo;
+--------+-----------------+-----------------+
| codigo | nombre          | count(p.nombre) |
+--------+-----------------+-----------------+
|      7 | Gigabyte        |               1 |
|      6 | Crucial         |               1 |
|      1 | Asus            |               2 |
|      2 | Lenovo          |               2 |
|      3 | Hewlett-Packard |               1 |
+--------+-----------------+-----------------+

22.

select f.codigo,f.nombre,avg(p.precio) from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by f.codi
go;
+--------+-----------------+---------------+
| codigo | nombre          | avg(p.precio) |
+--------+-----------------+---------------+
|      5 | Seagate         |         86.99 |
|      6 | Crucial         |         437.5 |
|      4 | Samsung         |        150.99 |
|      7 | Gigabyte        |           185 |
|      1 | Asus            |       223.995 |
|      2 | Lenovo          |         501.5 |
|      3 | Hewlett-Packard |       119.995 |
+--------+-----------------+---------------+

23.

 select f.codigo from producto p inner join fabricante f on f.codigo = p.codigo_fabricante  group by f.codigo;
+--------+
| codigo |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
+--------+

26.

select f.nombre,count(p.nombre) from producto p inner join fabricante f on f.codigo = p.codigo_fabricante where p.precio >= 220 group by f.codigo order by f.nombre;
+---------+-----------------+
| nombre  | count(p.nombre) |
+---------+-----------------+
| Asus    |               1 |
| Crucial |               1 |
| Lenovo  |               2 |
+---------+-----------------+




---
# 1.1.7

