--Desafío - Top 100
--1 Crear base de datos llamada películas
--2 Cargar ambos archivos a su tabla correspondiente

CREATE TABLE peliculas(
      id SMALLINT PRIMARY KEY,
	  pelicula VARCHAR(80),
	  anio_estreno VARCHAR(4),
	  director VARCHAR(40)
);

SELECT * FROM peliculas

CREATE TABLE reparto(
      id SMALLINT,
	  actor VARCHAR(40),
	  FOREIGN KEY(id) REFERENCES peliculas(id)
);

SELECT * FROM reparto

--3 Obtener el ID de la película “Titanic”

SELECT id FROM peliculas WHERE pelicula = 'Titanic';

--4 Listar a todos los actores que aparecen en la película "Titanic"

SELECT actor FROM reparto WHERE id = 2;

--5 Consultar en cuántas películas del top 100 participa Harrison Ford

SELECT COUNT (actor) AS total_peliculas
FROM reparto
WHERE actor='Harrison Ford';

--6 Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente

SELECT pelicula, anio_estreno
FROM peliculas
WHERE anio_estreno BETWEEN '1990' AND '1999'
ORDER BY pelicula ASC;

--7 Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser 
--nombrado para la consulta como “longitud_titulo”

SELECT pelicula,LENGTH(pelicula)
AS longitud_titulo
FROM peliculas;

--8 Consultar cual es la longitud más grande entre todos los títulos de las películas

SELECT MAX(LENGTH(pelicula))
AS longitud_maxima
FROM peliculas;
