-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2021 a las 04:20:53
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_db_g44`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clients`
--

CREATE TABLE `tb_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_clients`
--

INSERT INTO `tb_clients` (`id`, `name`, `document`) VALUES
(1, 'Pedro Marmol', 75310222),
(2, 'Andres', 75310333),
(3, 'Juan', 75310444),
(4, 'Andrea', 75310555),
(5, 'Esteban', 75310666),
(6, 'Francisco', 75310777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_products`
--

CREATE TABLE `tb_products` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `precio` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_products`
--

INSERT INTO `tb_products` (`id`, `name`, `precio`, `description`) VALUES
(1, 'Celular Samsung', 2300000, 'Celular'),
(2, 'TV SONY', 2300000, 'TV'),
(3, 'Celular Apple', 5700000, 'Celular'),
(4, 'Audifonos', 780000, 'Celular'),
(5, 'Mouse Microsoft', 100000, 'Tecnología'),
(6, 'Computador portatil DELL', 5400000, 'Tecnología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_products_clients`
--

CREATE TABLE `tb_products_clients` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_products_clients`
--

INSERT INTO `tb_products_clients` (`id`, `id_product`, `id_client`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 6, 1),
(5, 2, 3),
(6, 2, 4),
(7, 1, 5),
(8, 6, 5),
(9, 6, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_clients`
--
ALTER TABLE `tb_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_products_clients`
--
ALTER TABLE `tb_products_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_clients`
--
ALTER TABLE `tb_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_products_clients`
--
ALTER TABLE `tb_products_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_products_clients`
--
ALTER TABLE `tb_products_clients`
  ADD CONSTRAINT `tb_products_clients_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tb_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_products_clients_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `tb_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
