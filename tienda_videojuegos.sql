-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 04:52:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

CREATE DATABASE tienda_videojuegos;

USE tienda_videojuegos;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `genero`, `precio`, `stock`) VALUES
(1, 'The Legend of Zelda: Breath of the Wild', 'Aventura', 59.99, 30),
(2, 'Super Mario Odyssey', 'Plataformas', 49.99, 25),
(3, 'God of War', 'Acción', 39.99, 20),
(4, 'Minecraft', 'Sandbox', 19.99, 50),
(5, 'Fortnite', 'Battle Royale', 0.00, 100),
(6, 'Red Dead Redemption 2', 'Acción', 59.99, 15),
(7, 'The Witcher 3: Wild Hunt', 'RPG', 49.99, 18),
(8, 'FIFA 23', 'Deportes', 59.99, 40),
(9, 'Call of Duty: Modern Warfare II', 'Shooter', 69.99, 10),
(10, 'Animal Crossing: New Horizons', 'Simulación', 49.99, 35),
(11, 'Gran Turismo 7', 'Carreras', 59.99, 22),
(12, 'Apex Legends', 'Battle Royale', 0.00, 60),
(13, 'Overwatch 2', 'Shooter', 39.99, 30),
(14, 'Horizon Forbidden West', 'Aventura', 59.99, 12),
(15, 'NBA 2K23', 'Deportes', 49.99, 45),
(16, 'Among Us', 'Multijugador', 4.99, 100),
(17, 'Resident Evil Village', 'Survival Horror', 39.99, 8),
(18, 'Persona 5 Royal', 'RPG', 59.99, 25),
(19, 'GTA V', 'Acción', 29.99, 50),
(20, 'Cyberpunk 2077', 'RPG', 59.99, 10),
(21, 'Rocket League', 'Deportes', 19.99, 30),
(22, 'Splatoon 3', 'Disparos', 59.99, 18),
(23, 'Metroid Dread', 'Aventura', 59.99, 20),
(24, 'The Elder Scrolls V: Skyrim', 'RPG', 39.99, 40),
(25, 'Final Fantasy VII Remake', 'RPG', 49.99, 15),
(26, 'Minecraft Dungeons', 'Acción', 29.99, 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
