USE tienda;
SELECT * FROM producto;
SELECT nombre, precio FROM producto;
DESCRIBE producto;
SELECT nombre, precio, precio * 1.07 as precioDolares FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT lower(nombre), precio FROM producto;
SELECT nombre, upper(LEFT(nombre,2)) AS DosPrimeras FROM fabricante;
SELECT nombre, round(precio) AS PrecioRedondeado FROM producto;
SELECT nombre, truncate(precio, 0) AS PrecioRedondeado FROM producto;
SELECT codigo_fabricante FROM producto WHERE codigo_fabricante IS NOT NULL;
SELECT DISTINCT(codigo_fabricante) FROM producto WHERE codigo_fabricante IS NOT NULL;
SELECT nombre FROM fabricante order by nombre asc;
SELECT nombre FROM fabricante order by nombre desc;
SELECT nombre, precio FROM producto order by nombre asc, precio desc;
SELECT * FROM fabricante limit 5;
SELECT * FROM fabricante limit 3,2;
SELECT nombre, precio FROM producto order by precio asc limit 1;
SELECT nombre, precio FROM producto order by precio desc limit 1;
SELECT nombre FROM producto where codigo_fabricante = 2;
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo;
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
	Order by f.nombre asc;
SELECT p.nombre, p.precio, p.codigo_fabricante, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo;
SELECT p.nombre, p.precio, p.codigo_fabricante, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where p.precio = (SELECT MIN(precio) FROM producto);
SELECT p.nombre, p.precio, p.codigo_fabricante, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where p.precio = (SELECT max(precio) FROM producto);
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "Lenovo";
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "Crucial" 
    and p.precio = 200;
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "Asus"
    or f.nombre like "Hewlett-Packardy";
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f ON p.codigo_fabricante = f.codigo
	WHERE f.nombre IN ('Asus', 'Hewlett-Packardy');
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "%e";
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "%w%";
SELECT p.nombre, p.precio, f.nombre FROM producto p
	JOIN fabricante f
    ON p.codigo_fabricante = f.codigo
    where p.precio >= 180
    Order by p.precio desc, p.nombre asc;
SELECT f.nombre, f.codigo FROM fabricante f
	RIGHT JOIN producto p
    ON p.codigo_fabricante = f.codigo
    group by f.codigo;
SELECT f.nombre, f.codigo, p.nombre FROM fabricante f
	LEFT JOIN producto p
    ON p.codigo_fabricante = f.codigo;
SELECT f.nombre, f.codigo FROM fabricante f
	LEFT JOIN producto p
    ON p.codigo_fabricante = f.codigo
    where p.codigo_fabricante IS NULL
    group by f.codigo;
SELECT f.nombre, f.codigo, p.nombre FROM fabricante f
	LEFT JOIN producto p
    ON p.codigo_fabricante = f.codigo
    where f.nombre like "Lenovo";
SELECT p.*,f.* FROM producto p
	JOIN fabricante f
    ON f.codigo = p.codigo_fabricante
	where precio = (SELECT MAX(precio) FROM producto p
							JOIN fabricante f
                            ON f.codigo = p.codigo_fabricante
                            where f.nombre like "Lenovo");
SELECT p.precio, p.nombre, f.nombre FROM producto p
	JOIN fabricante f
	ON f.codigo = p.codigo_fabricante
	where f.nombre like "Lenovo" 
    order by p.precio desc limit 1;
SELECT p.precio, p.nombre, f.nombre FROM producto p
	JOIN fabricante f
	ON f.codigo = p.codigo_fabricante
	where f.nombre like "Hewlett-Packard" 
    order by p.precio asc limit 1;
SELECT p.*,f.* FROM producto p
	JOIN fabricante f
    ON f.codigo = p.codigo_fabricante
	where precio >= (SELECT MAX(precio) FROM producto p
							JOIN fabricante f
                            ON f.codigo = p.codigo_fabricante
                            where f.nombre like "Lenovo");
SELECT * FROM producto p
	JOIN fabricante f
    ON f.codigo = p.codigo_fabricante
	where f.nombre like "Asus"
    and p.precio > (SELECT avg(precio) FROM producto p
							JOIN fabricante f
                            ON f.codigo = p.codigo_fabricante
                            where f.nombre like "Asus");
