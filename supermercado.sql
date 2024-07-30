-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2024 a las 07:29:49
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
-- Base de datos: `supermercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Bebidas'),
(2, 'Lácteos'),
(3, 'Carnes'),
(4, 'Verduras'),
(5, 'Frutas'),
(6, 'Granos'),
(7, 'Cereales'),
(8, 'Dulces'),
(9, 'Snacks'),
(10, 'Aseo Personal'),
(11, 'Limpieza'),
(12, 'Panadería'),
(13, 'Congelados'),
(14, 'Conservas'),
(15, 'Pastas'),
(16, 'Salsas'),
(17, 'Especias'),
(18, 'Aceites'),
(19, 'Bebidas Alcohólicas'),
(20, 'Electrónica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad_pedida` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `fecha_pedido`, `id_producto`, `cantidad_pedida`, `id_proveedor`) VALUES
(1, '2023-01-10', 1, 50, 1),
(2, '2023-01-12', 2, 100, 2),
(3, '2023-01-15', 3, 20, 3),
(4, '2023-01-18', 4, 60, 4),
(5, '2023-01-20', 5, 80, 5),
(6, '2023-02-01', 6, 150, 6),
(7, '2023-02-05', 7, 40, 7),
(8, '2023-02-10', 8, 60, 8),
(9, '2023-02-15', 9, 70, 9),
(10, '2023-02-20', 10, 30, 10),
(11, '2023-03-01', 11, 100, 11),
(12, '2023-03-05', 12, 120, 12),
(13, '2023-03-10', 13, 50, 13),
(14, '2023-03-15', 14, 70, 14),
(15, '2023-03-20', 15, 90, 15),
(16, '2023-04-01', 16, 80, 16),
(17, '2023-04-05', 17, 200, 17),
(18, '2023-04-10', 18, 60, 18),
(19, '2023-04-15', 19, 30, 19),
(20, '2023-04-20', 20, 5, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio`, `cantidad`, `id_categoria`) VALUES
(1, 'Coca-Cola', 1.50, 100, 1),
(2, 'Leche Entera', 0.80, 200, 2),
(3, 'Pollo Entero', 5.00, 50, 3),
(4, 'Zanahorias', 0.60, 150, 4),
(5, 'Manzanas', 1.20, 120, 5),
(6, 'Arroz', 0.50, 300, 6),
(7, 'Cereal Corn Flakes', 2.50, 80, 7),
(8, 'Chocolate', 1.00, 110, 8),
(9, 'Papas Fritas', 1.20, 90, 9),
(10, 'Jabón', 0.70, 70, 10),
(11, 'Detergente', 1.50, 130, 11),
(12, 'Pan', 0.30, 250, 12),
(13, 'Helado', 3.00, 60, 13),
(14, 'Atún en Lata', 1.00, 140, 14),
(15, 'Spaghetti', 0.90, 180, 15),
(16, 'Salsa de Tomate', 0.50, 160, 16),
(17, 'Orégano', 0.40, 200, 17),
(18, 'Aceite de Oliva', 2.00, 70, 18),
(19, 'Vino Tinto', 10.00, 40, 19),
(20, 'Televisión', 150.00, 10, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `contacto`) VALUES
(1, 'Proveedor A', 'contactoA@correo.com'),
(2, 'Proveedor B', 'contactoB@correo.com'),
(3, 'Proveedor C', 'contactoC@correo.com'),
(4, 'Proveedor D', 'contactoD@correo.com'),
(5, 'Proveedor E', 'contactoE@correo.com'),
(6, 'Proveedor F', 'contactoF@correo.com'),
(7, 'Proveedor G', 'contactoG@correo.com'),
(8, 'Proveedor H', 'contactoH@correo.com'),
(9, 'Proveedor I', 'contactoI@correo.com'),
(10, 'Proveedor J', 'contactoJ@correo.com'),
(11, 'Proveedor K', 'contactoK@correo.com'),
(12, 'Proveedor L', 'contactoL@correo.com'),
(13, 'Proveedor M', 'contactoM@correo.com'),
(14, 'Proveedor N', 'contactoN@correo.com'),
(15, 'Proveedor O', 'contactoO@correo.com'),
(16, 'Proveedor P', 'contactoP@correo.com'),
(17, 'Proveedor Q', 'contactoQ@correo.com'),
(18, 'Proveedor R', 'contactoR@correo.com'),
(19, 'Proveedor S', 'contactoS@correo.com'),
(20, 'Proveedor T', 'contactoT@correo.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
