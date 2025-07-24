-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2025 a las 19:17:32
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
-- Base de datos: `envios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregas`
--

CREATE TABLE `entregas` (
  `id` int(11) NOT NULL,
  `nombreCliente` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `codigoPostal` varchar(10) NOT NULL,
  `estadoEnvio` enum('Pendiente','En tránsito','Entregado','Cancelado') NOT NULL,
  `fechaEnvio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entregas`
--

INSERT INTO `entregas` (`id`, `nombreCliente`, `direccion`, `codigoPostal`, `estadoEnvio`, `fechaEnvio`) VALUES
(1, 'Juan Pérez', 'Calle Falsa 123', '1000', 'Pendiente', '2025-07-01'),
(2, 'María Gómez', 'Av. Rivadavia 4500', '1406', 'En tránsito', '2025-07-02'),
(3, 'Carlos López', 'San Martín 789', '2000', 'Entregado', '2025-07-03'),
(4, 'Lucía Fernández', 'Alsina 345', '5000', 'Cancelado', '2025-07-04'),
(5, 'Jorge Martínez', 'Belgrano 222', '3000', 'Entregado', '2025-07-05'),
(6, 'Ana Rodríguez', 'Mitre 1010', '1100', 'Pendiente', '2025-07-06'),
(7, 'Sofía Torres', 'Lavalle 888', '1600', 'En tránsito', '2025-07-07'),
(8, 'Diego Ramírez', 'Independencia 345', '1900', 'Entregado', '2025-07-08'),
(9, 'Laura Castro', 'Santa Fe 765', '1800', 'Pendiente', '2025-07-09'),
(10, 'Pablo Sánchez', 'Corrientes 432', '2100', 'Entregado', '2025-07-10'),
(11, 'Bruno Díaz', 'Av. Colón 222', '7600', 'En tránsito', '2025-07-11'),
(12, 'Valeria Luna', 'España 100', '5800', 'Cancelado', '2025-07-12'),
(13, 'Agustina Vega', 'Córdoba 543', '1200', 'Pendiente', '2025-07-13'),
(14, 'Martín Ruiz', 'Salta 909', '2300', 'En tránsito', '2025-07-14'),
(15, 'Camila Blanco', 'Urquiza 777', '3200', 'Entregado', '2025-07-15'),
(16, 'Francisco Moreno', 'Viamonte 321', '3300', 'Pendiente', '2025-07-16'),
(17, 'Daniela Paz', 'Catamarca 654', '4000', 'Entregado', '2025-07-17'),
(18, 'Emilia Aguirre', 'Jujuy 111', '4400', 'En tránsito', '2025-07-18'),
(19, 'Nicolás Torres', 'Entre Ríos 876', '1700', 'Cancelado', '2025-07-19'),
(20, 'Paula Ríos', 'La Rioja 202', '1500', 'Pendiente', '2025-07-20'),
(21, 'Gonzalo Suárez', 'Perú 808', '7000', 'Pendiente', '2025-07-21'),
(22, 'Micaela Fuentes', 'Brasil 505', '6700', 'Entregado', '2025-07-22'),
(23, 'Ramiro Herrera', 'Venezuela 1212', '7500', 'En tránsito', '2025-07-23'),
(24, 'Julieta Acosta', 'Italia 404', '6100', 'Entregado', '2025-07-24'),
(25, 'Lucas Medina', 'Chile 707', '6400', 'Pendiente', '2025-07-25'),
(26, 'Celeste Moyano', 'Francia 303', '6600', 'Cancelado', '2025-07-26'),
(27, 'Joaquín Paredes', 'México 343', '6300', 'Entregado', '2025-07-27'),
(28, 'Mariana Cabrera', 'Canadá 901', '6200', 'Pendiente', '2025-07-28'),
(29, 'Tomás Godoy', 'Estados Unidos 2020', '6800', 'En tránsito', '2025-07-29'),
(30, 'Rocío Sosa', 'Paraguay 505', '6000', 'Entregado', '2025-07-30'),
(31, 'Andrés Núñez', 'Uruguay 606', '6100', 'Entregado', '2025-07-31'),
(32, 'Natalia Serra', 'Cuba 101', '6200', 'Pendiente', '2025-08-01'),
(33, 'Federico León', 'Rusia 1414', '6400', 'Cancelado', '2025-08-02'),
(34, 'Verónica Báez', 'China 202', '6600', 'Entregado', '2025-08-03'),
(35, 'Iván Romero', 'India 303', '6700', 'En tránsito', '2025-08-04'),
(36, 'Brenda Duarte', 'Corea 505', '6500', 'Pendiente', '2025-08-05'),
(37, 'Damián Torres', 'Japón 707', '6900', 'Cancelado', '2025-08-06'),
(38, 'Noelia Ponce', 'Egipto 909', '7100', 'Entregado', '2025-08-07'),
(39, 'Leandro Silva', 'Sudáfrica 1234', '7200', 'Pendiente', '2025-08-08'),
(40, 'Carla Aguero', 'Nigeria 808', '7300', 'Entregado', '2025-08-09'),
(41, 'Santiago Rivas', 'Noruega 234', '7400', 'Pendiente', '2025-08-10'),
(42, 'Tatiana Lucero', 'Suecia 345', '7500', 'En tránsito', '2025-08-11'),
(43, 'Ezequiel Marín', 'Finlandia 456', '7600', 'Entregado', '2025-08-12'),
(44, 'Rosa Ibarra', 'Dinamarca 567', '7700', 'Cancelado', '2025-08-13'),
(45, 'Kevin Díaz', 'Bélgica 678', '7800', 'Pendiente', '2025-08-14'),
(46, 'Antonella Méndez', 'Holanda 789', '7900', 'Entregado', '2025-08-15'),
(47, 'Esteban Castro', 'Alemania 890', '8000', 'En tránsito', '2025-08-16'),
(48, 'Florencia Ortega', 'Austria 901', '8100', 'Pendiente', '2025-08-17'),
(49, 'Gustavo Ledesma', 'Suiza 1010', '8200', 'Entregado', '2025-08-18'),
(50, 'Milagros Soto', 'Irlanda 1111', '8300', 'Pendiente', '2025-08-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
