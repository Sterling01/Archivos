-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 04:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ws_peliculas`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelicula`
--

CREATE TABLE `pelicula` (
  `codigo_pelicula` int(10) NOT NULL,
  `titulo_pelicula` varchar(250) NOT NULL,
  `descripcion_pelicula` varchar(500) NOT NULL,
  `genero_pelicula` varchar(250) NOT NULL,
  `fecha_estreno_pelicula` date NOT NULL,
  `director_pelicula` varchar(250) NOT NULL,
  `precio_pelicula` double(10,2) NOT NULL,
  `precio_prelicula` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelicula`
--

INSERT INTO `pelicula` (`codigo_pelicula`, `titulo_pelicula`, `descripcion_pelicula`, `genero_pelicula`, `fecha_estreno_pelicula`, `director_pelicula`, `precio_pelicula`, `precio_prelicula`) VALUES
(100, 'Endgame', 'Los Vengadores restantes deben encontrar una manera de recuperar a sus aliados para un enfrentamiento épico con Thanos, el malvado que diezmó el planeta y el universo', 'Accion/Ciencia Ficcion', '2019-04-22', 'Joe Russo, Anthony Russo', 15.25, NULL),
(101, 'Mi abuelo es un peligro', 'Una semana antes de su boda, un abogado arrogante se encuentra de viaje con su abuelo, un antiguo general del ejército, rudo y malhablado, rumbo a Daytona Beach, Florida, para pasar unas salvajes vacaciones de primavera que incluyen fiestas, peleas en bares y una épica noche de karaoke.', 'Comedia/Comedia Erotica', '2016-01-21', 'Dan Mazer', 50.00, NULL),
(102, '300', 'En el año 480 antes de Cristo, existe un estado de guerra entre Persia, dirigida por el rey Jerjes, y Grecia. En la batalla de la Termópilas, Leonidas, rey de la ciudad griega de Esparta, encabeza a sus 300 bravos soldados en contra del numeroso ejército persa. A pesar de que la muerte aguarda a los espartanos, su sacrificio inspira a toda Grecia para unirla en contra de su enemigo común.', 'Accion/Belico', '2007-03-09', 'Zack Snyder', 10.00, NULL),
(103, 'La era de hielo 2', 'Manny, Sid y Diego se reúnen para prevenir a sus amigos sobre los peligros que corren sus hogares debido al hielo derretido', 'Animacion/Infantil', '2006-03-29', 'Carlos Saldanha', 12.00, NULL),
(104, 'La hera de hielo', 'Un mamut gruñón y sus amigos prehistóricos entran en acción para ayudar a un pequeño perdido a regresar con su padre.', 'Animacion/Iinfantil', '2002-03-12', 'Chris Wedge', 10.00, NULL),
(105, 'El conjuro', 'A principios de los años 70, Ed y Lorrain Warren, reputados investigadores de fenómenos paranormales, se enfrentan a una entidad demoníaca al intentar ayudar a una familia que está siendo aterrorizada por una presencia oscura en su aislada granja', 'Terror/Suspenso', '2013-07-15', 'James Wan', 15.00, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`codigo_pelicula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `codigo_pelicula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
