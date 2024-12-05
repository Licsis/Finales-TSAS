-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2024 a las 17:03:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurantereservas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `numero_personas` int(11) NOT NULL
) ;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `nombre_cliente`, `telefono`, `fecha`, `hora`, `numero_personas`) VALUES
(1, 'Juan Pérez', '3704123456', '2024-12-10', '19:00:00', 4),
(2, 'María López', '3704987654', '2024-12-11', '13:30:00', 2),
(3, 'Carlos Gómez', '3704765123', '2024-12-12', '20:00:00', 6),
(4, 'Ana Fernández', '3704987451', '2024-12-13', '18:00:00', 3),
(5, 'Luis Martínez', '3704125789', '2024-12-14', '21:00:00', 5),
(6, 'Sofía Díaz', '3704123976', '2024-12-15', '14:00:00', 2),
(7, 'Pedro Sánchez', '3704987543', '2024-12-16', '12:30:00', 4),
(8, 'Laura García', '3704651234', '2024-12-17', '19:30:00', 3),
(9, 'Diego Torres', '3704876541', '2024-12-18', '15:00:00', 2),
(10, 'Camila Jiménez', '3704789543', '2024-12-19', '20:30:00', 6),
(11, 'Valeria Castro', '3704961234', '2024-12-20', '17:00:00', 5),
(12, 'Roberto Peña', '3704112345', '2024-12-21', '14:30:00', 3),
(13, 'Natalia Ruiz', '3704765987', '2024-12-22', '12:00:00', 4),
(14, 'Andrés Vargas', '3704785234', '2024-12-23', '19:00:00', 2),
(15, 'Lucía Herrera', '3704789654', '2024-12-24', '13:00:00', 3),
(16, 'Fernando Ríos', '3704125876', '2024-12-25', '16:30:00', 6),
(17, 'Elena Chávez', '3704678945', '2024-12-26', '21:30:00', 5),
(18, 'Javier Navarro', '3704789654', '2024-12-27', '18:30:00', 4),
(19, 'Isabel Ortiz', '3704561237', '2024-12-28', '20:00:00', 3),
(20, 'Tomás Ramírez', '3704785123', '2024-12-29', '12:30:00', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
