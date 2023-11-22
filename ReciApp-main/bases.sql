-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 15:22:30
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
-- Base de datos: `bases`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_funcionario`
--

CREATE TABLE `cargo_funcionario` (
  `cago_funcionario` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo_funcionario`
--

INSERT INTO `cargo_funcionario` (`cago_funcionario`, `cargo`) VALUES
(1, 'portero'),
(2, 'vigilante'),
(3, 'limpieza'),
(4, 'administracion'),
(5, 'contaduria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color_vehiculo`
--

CREATE TABLE `color_vehiculo` (
  `color_vehiculo_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `color_vehiculo`
--

INSERT INTO `color_vehiculo` (`color_vehiculo_id`, `color`) VALUES
(1, 'Blanco'),
(2, 'Negro'),
(3, 'Plateado / Gris'),
(4, 'Azul'),
(5, 'Rojo'),
(6, 'Verde'),
(7, 'Marrón'),
(8, 'Beige'),
(9, 'Amarillo'),
(10, 'Naranja'),
(11, 'Dorado'),
(12, 'Bronce'),
(13, 'Morado'),
(14, 'Rosa'),
(15, 'Turquesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `entrada_id` int(11) NOT NULL,
  `usuaro_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`entrada_id`, `usuaro_id`, `funcionario_id`, `fecha`, `hora`) VALUES
(1, 2, 4, '2023-11-27', '10:23:00'),
(2, 4, 9, '0000-00-00', '22:37:00'),
(3, 5, 4, '0000-00-00', '07:15:00'),
(4, 45, 10, '0000-00-00', '13:16:00'),
(5, 16, 10, '0000-00-00', '13:24:00'),
(6, 4, 9, '2023-11-06', '22:37:00'),
(7, 4, 9, '2023-11-15', '22:37:00'),
(8, 4, 9, '2023-11-23', '22:37:00'),
(9, 4, 9, '2023-11-07', '22:37:00'),
(10, 4, 9, '2023-11-11', '20:22:02'),
(11, 4, 9, '2023-11-20', '19:14:02'),
(12, 4, 9, '2023-11-12', '13:06:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE `funcionarios` (
  `funcionario_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cargo_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`funcionario_id`, `usuario_id`, `cargo_funcionario`) VALUES
(1, 81, 2),
(2, 82, 3),
(3, 83, 2),
(4, 84, 1),
(5, 85, 3),
(6, 86, 3),
(7, 87, 1),
(8, 88, 2),
(9, 89, 1),
(10, 90, 1),
(11, 91, 3),
(12, 92, 2),
(13, 93, 2),
(14, 94, 1),
(15, 95, 2),
(16, 96, 3),
(17, 97, 4),
(18, 98, 4),
(19, 99, 4),
(20, 100, 5),
(1, 81, 2),
(2, 82, 3),
(3, 83, 2),
(4, 84, 1),
(5, 85, 3),
(6, 86, 3),
(7, 87, 1),
(8, 88, 2),
(9, 89, 1),
(10, 90, 1),
(11, 91, 3),
(12, 92, 2),
(13, 93, 2),
(14, 94, 1),
(15, 95, 2),
(16, 96, 3),
(17, 97, 4),
(18, 98, 4),
(19, 99, 4),
(20, 100, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `inmueble_id` int(11) NOT NULL,
  `numero_inmueble` varchar(15) NOT NULL,
  `parqueadero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`inmueble_id`, `numero_inmueble`, `parqueadero_id`) VALUES
(1, 'A01', 1),
(2, 'A02', 2),
(3, 'A03', 3),
(4, 'A04', 4),
(5, 'A05', 5),
(6, 'A06', 6),
(7, 'A07', 7),
(8, 'A08', 8),
(9, 'A09', 9),
(10, 'A10', 10),
(11, 'B01', 11),
(12, 'B02', 12),
(13, 'B03', 13),
(14, 'B04', 14),
(15, 'B05', 15),
(16, 'B06', 16),
(17, 'B07', 17),
(18, 'B08', 18),
(19, 'B09', 19),
(20, 'B10', 20),
(21, 'C01', 21),
(22, 'C02', 22),
(23, 'C03', 23),
(24, 'C04', 24),
(25, 'C05', 25),
(26, 'C06', 26),
(27, 'C07', 27),
(28, 'C08', 28),
(29, 'C09', 29),
(30, 'C10', 30),
(31, 'D01', 31),
(32, 'D02', 32),
(33, 'D03', 33),
(34, 'D04', 34),
(35, 'D05', 35),
(36, 'D06', 36),
(37, 'D07', 37),
(38, 'D08', 38),
(39, 'D09', 39),
(40, 'D10', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paqueteria`
--

CREATE TABLE `paqueteria` (
  `paquete_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `inmueble_id` int(11) NOT NULL,
  `fecah_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paqueteria`
--

INSERT INTO `paqueteria` (`paquete_id`, `funcionario_id`, `inmueble_id`, `fecah_entrega`) VALUES
(1, 10, 4, '0000-00-00'),
(2, 9, 26, '0000-00-00'),
(3, 9, 18, '0000-00-00'),
(4, 14, 30, '0000-00-00'),
(5, 7, 16, '0000-00-00'),
(6, 4, 12, '0000-00-00'),
(7, 9, 40, '0000-00-00'),
(8, 14, 32, '0000-00-00'),
(9, 4, 14, '0000-00-00'),
(10, 7, 20, '0000-00-00'),
(11, 14, 10, '0000-00-00'),
(12, 4, 38, '0000-00-00'),
(13, 9, 22, '0000-00-00'),
(14, 10, 36, '0000-00-00'),
(15, 4, 8, '0000-00-00'),
(16, 10, 28, '0000-00-00'),
(17, 10, 34, '0000-00-00'),
(18, 7, 24, '0000-00-00'),
(19, 14, 2, '0000-00-00'),
(20, 7, 6, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueaderos`
--

CREATE TABLE `parqueaderos` (
  `parqueadero_id` int(11) NOT NULL,
  `parqueadero_1` int(11) NOT NULL,
  `parqueadero_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parqueaderos`
--

INSERT INTO `parqueaderos` (`parqueadero_id`, `parqueadero_1`, `parqueadero_2`) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10),
(6, 11, 12),
(7, 13, 14),
(8, 15, 16),
(9, 17, 18),
(10, 19, 20),
(11, 21, 22),
(12, 23, 24),
(13, 25, 26),
(14, 27, 28),
(15, 29, 30),
(16, 31, 32),
(17, 33, 34),
(18, 35, 36),
(19, 37, 38),
(20, 39, 40),
(21, 41, 42),
(22, 43, 44),
(23, 45, 46),
(24, 47, 48),
(25, 49, 50),
(26, 51, 52),
(27, 53, 54),
(28, 55, 56),
(29, 57, 58),
(30, 59, 60),
(31, 61, 62),
(32, 63, 64),
(33, 65, 66),
(34, 67, 68),
(35, 69, 70),
(36, 71, 72),
(37, 73, 74),
(38, 75, 76),
(39, 77, 78),
(40, 79, 80),
(41, 81, 82),
(42, 83, 84),
(43, 85, 86),
(44, 87, 88),
(45, 89, 90),
(46, 91, 92),
(47, 93, 94),
(48, 95, 96),
(49, 97, 98),
(50, 99, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residentes`
--

CREATE TABLE `residentes` (
  `residente_id` int(11) NOT NULL,
  `usuario_id` double DEFAULT NULL,
  `inmueble_id` double DEFAULT NULL,
  `encargado` varchar(10) DEFAULT NULL,
  `documento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `residentes`
--

INSERT INTO `residentes` (`residente_id`, `usuario_id`, `inmueble_id`, `encargado`, `documento`) VALUES
(1, 1, 5, 'si', 106812902),
(2, 2, 38, 'si', 104834919),
(3, 3, 8, 'si', 104941837),
(4, 4, 6, 'si', 104567624),
(5, 5, 4, 'no', 105743722),
(6, 6, 30, 'si', 106064476),
(7, 7, 15, 'si', 105850640),
(8, 8, 8, 'no', 105422968),
(9, 9, 27, 'si', 106117935),
(10, 10, 15, 'no', 103658821),
(11, 11, 26, 'si', 107080197),
(12, 12, 8, 'no', 103872657),
(13, 13, 29, 'si', 103017313),
(14, 14, 14, 'si', 106011017),
(15, 15, 16, 'si', 103551903),
(16, 16, 1, 'si', 106385230),
(17, 17, 6, 'no', 104193411),
(18, 18, 23, 'si', 106545607),
(19, 19, 18, 'si', 103177690),
(20, 20, 21, 'si', 107400951),
(21, 21, 10, 'si', 104086493),
(22, 22, 20, 'no', 107187115),
(23, 23, 22, 'si', 103979575),
(24, 24, 20, 'si', 103070772),
(25, 25, 16, 'no', 106278312),
(26, 26, 16, 'no', 105957558),
(27, 27, 36, 'si', 103926116),
(28, 28, 14, 'no', 104460706),
(29, 29, 25, 'si', 104246870),
(30, 30, 2, 'no', 104781460),
(31, 31, 2, 'si', 106866361),
(32, 32, 11, 'si', 103338067),
(33, 33, 28, 'si', 107026738),
(34, 34, 35, 'si', 106599066),
(35, 35, 39, 'si', 103605362),
(36, 36, 34, 'si', 201453681),
(37, 37, 6, 'no', 104995296),
(38, 38, 3, 'si', 106492148),
(39, 39, 13, 'si', 103498444),
(40, 40, 7, 'si', 102910395),
(41, 41, 24, 'si', 106759443),
(42, 42, 13, 'no', 106705984),
(43, 43, 12, 'si', 103391526),
(44, 44, 17, 'si', 103444985),
(45, 45, 19, 'si', 102750018),
(46, 46, 40, 'si', 107347492),
(47, 47, 4, 'si', 107454410),
(48, 48, 9, 'si', 106973279),
(49, 49, 14, 'no', 102453694),
(50, 50, 33, 'si', 105048755),
(51, 51, 1, 'no', 105102214),
(52, 52, 6, 'no', 105529886),
(53, 53, 1, 'no', 102589641),
(54, 54, 31, 'si', 105636804),
(55, 55, 4, 'no', 124756310),
(56, 56, 32, 'si', 106224853),
(57, 57, 37, 'si', 104139952),
(58, 58, 7, 'no', 105155673),
(59, 59, 9, 'no', 102803477),
(60, 60, 12, 'no', 105797181);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `salidas_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`salidas_id`, `usuario_id`, `funcionario_id`, `fecha`, `hora`) VALUES
(1, 4, 9, '2023-11-21', '04:16:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuaro`
--

CREATE TABLE `tipo_usuaro` (
  `tipo_usuario_id` int(11) NOT NULL,
  `tipo_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuaro`
--

INSERT INTO `tipo_usuaro` (`tipo_usuario_id`, `tipo_usuario`) VALUES
(1, 'Residente'),
(2, 'Visitante'),
(3, 'Funcionario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `tipo_vehiculo_id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`tipo_vehiculo_id`, `tipo`) VALUES
(1, 'carro a gasolina'),
(2, 'carro electrico'),
(3, 'carro hibrido'),
(4, 'moto'),
(5, 'cuatrimoto'),
(6, 'bicibleta'),
(7, 'scooter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_1` varchar(255) NOT NULL,
  `apellido_2` varchar(255) NOT NULL,
  `celular` bigint(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `clave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `apellido_1`, `apellido_2`, `celular`, `documento`, `email`, `tipo_usuario`, `clave`) VALUES
(1, 'Laura', 'Garcia', 'Lopez', 3122082775, 106812902, 'LauraGarcia@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(2, 'Mariana', 'Martinez', 'Aguilar', 3106582039, 104834919, 'MarianaMartinez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(3, 'Camilo', 'Ramirez', 'Sanchez', 3169496791, 104941837, 'CamiloRamirez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(4, 'Daniel ', 'Ochoa', 'Rodriguez', 3167425814, 104567624, 'Daniel Ochoa@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(5, 'David', 'Nieto', 'Alvarado', 3138495319, 105743722, 'DavidNieto@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(6, 'Marco', 'Diaz', 'Corona', 3174967639, 106064476, 'MarcoDiaz@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(7, 'Maria', 'Torres', 'Sanchez', 3114788311, 105850640, 'MariaTorres@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(8, 'Rosa', 'Cortes', 'Alvarado', 3170408599, 105422968, 'RosaCortes@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(9, 'Diana', 'Macana', 'Ramirez', 3117523735, 106117935, 'DianaMacana@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(10, 'Freddy', 'Naranjo', 'Ochoa', 3165849559, 103658821, 'FreddyNaranjo@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(11, 'Alberto', 'Hernandez', 'Estrada', 3201784596, 107080197, 'AlbertoHernandez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(12, 'Juan Pablo', 'Briones', 'Alvarez', 3146701591, 103872657, 'JuanBriones@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(13, 'Beatriz', 'Loma', 'Peña', 3164937751, 103017313, 'BeatrizLoma@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(14, 'Camilo', 'Barba', 'Fierros', 3167673175, 106011017, 'CamiloBarba@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(15, 'William', 'Gomez', 'Salas', 3153084247, 103551903, 'WilliamGomez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(16, 'Luz', 'Rosas', 'Aguilar', 3139407127, 106385230, 'LuzRosas@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(17, 'Mario', 'Robles', 'Hernandez', 3135759895, 104193411, 'MarioRobles@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(18, 'Lucía', 'Olivares', 'Rosas', 3201389563, 106545607, 'LucíaOlivares@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(19, 'Natalia', 'Esquivel', 'Saucedo', 3161290519, 103177690, 'NataliaEsquivel@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(20, 'Valeria', 'Muñiz', 'Muñiz', 3148579624, 107400951, 'ValeriaMuñiz@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(21, 'Raúl', 'Ortiz', 'Hernandez', 3151260631, 104086493, 'RaúlOrtiz@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(22, 'Victoria', 'Saucedo', 'Espinoza', 3175879447, 107187115, 'VictoriaSaucedo@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(23, 'Tatiana', 'Gonzalez', 'Rios', 3107493847, 103979575, 'TatianaGonzalez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(24, 'Ricardo', 'Rios', 'Padilla', 3121170967, 103070772, 'RicardoRios@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(25, 'Julián', 'Cortes', 'Ramos', 3124818199, 106278312, 'JuliánCortes@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(26, 'Rosa', 'Gomez', 'Luevanos', 3163697183, 105957558, 'RosaGomez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(27, 'Edison', 'Meza', 'Jimenez', 3133936279, 103926116, 'EdisonMeza@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(28, 'Jenny', 'Ibarra', 'Flores', 3142142551, 104460706, 'JennyIbarra@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(29, 'Lina', 'Alvarez', 'Rojas', 3133024471, 104246870, 'LinaAlvarez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(30, 'Cristian', 'Alvarez', 'Hernandez', 3214589632, 104781460, 'CristianAlvarez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(31, 'Ana', 'Gutierrez', 'Teran', 3145789783, 106866361, 'AnaGutierrez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(32, 'Oscar', 'Velez', 'Meza', 3198745216, 103338067, 'OscarVelez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(33, 'María José', 'Rivera', 'Gutierrez', 3112964695, 107026738, 'MariaRivera@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(34, 'David', 'Ascencio', 'Reyes', 3115700119, 106599066, 'DavidAscencio@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(35, 'Felipe', 'Luevanos', 'Jimenez', 3157643287, 103605362, 'FelipeLuevanos@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(36, 'Camila', 'Hernandez', 'Diaz', 3173144023, 201453681, 'CamilaHernandez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(37, 'Omar', 'Sanchez', 'Rocha', 3103846615, 104995296, 'OmarSanchez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(38, 'Daniela', 'Espinoza', 'Naranjo', 3158555095, 106492148, 'DanielaEspinoza@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(39, 'Hernán', 'Ortiz', 'Briones', 3110229271, 103498444, 'HernánOrtiz@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(40, 'Fernando', 'Hernandez', 'Robles', 3147613399, 102910395, 'FernandoHernandez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(41, 'Eduardo', 'Garcia', 'Gutierrez', 3140318935, 106759443, 'EduardoGarcia@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(42, 'Samuel', 'Torres', 'Lopez', 3104758423, 106705984, 'SamuelTorres@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(43, 'Sandra', 'Ayala', 'Ortiz', 3184737099, 103391526, 'SandraAyala@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(44, 'Diego', 'Alvarez', 'Mejia', 3182543373, 103444985, 'DiegoAlvarez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(45, 'Angélica', 'Diaz', 'De Loma', 3112052887, 102750018, 'AngélicaDiaz@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(46, 'Yolanda', 'Hernandez', 'Cortes', 3122994583, 107347492, 'YolandaHernandez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(47, 'Jorge', 'Ventura', 'Diaz', 3176791255, 107454410, 'JorgeVentura@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(48, 'Alejandro', 'Hernandez', 'Romero', 3109317463, 106973279, 'AlejandroHernandez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(49, 'Alejandra', 'Valencia', 'Saldaña', 3130289047, 102453694, 'AlejandraValencia@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(50, 'José', 'Padilla', 'Olivares', 3164025943, 105048755, 'JoséPadilla@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(51, 'Antonia', 'Sanchez', 'Velazquez', 3168584983, 105102214, 'AntoniaSanchez@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(52, 'Rafael', 'Rocha', 'Gomez', 3126641815, 105529886, 'RafaelRocha@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(53, 'Sofía', 'Reyes', 'Ortiz', 3173120278, 102589641, 'SofíaReyes@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(54, 'Sergio', 'Garcia', 'Hernandez', 3102934807, 105636804, 'SergioGarcia@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(55, 'Natalia', 'Aguila', 'Tabarez', 3116611927, 124756310, 'NataliaAguila@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(56, 'Miguel', 'Estrada', 'Garcia', 3162202327, 106224853, 'MiguelEstrada@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(57, 'Jairo', 'Farias', 'Torres', 3111141079, 104139952, 'JairoFarias@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(58, 'Diego', 'Fierros', 'Jimenez', 3137583511, 105155673, 'DiegoFierros@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(59, 'Daniela', 'Flores', 'Alvarez', 3148525207, 102803477, 'DanielaFlores@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(60, 'Isabel', 'Franco', 'Gonzalez', 3154907863, 105797181, 'IsabelFranco@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(61, 'Manuel', 'Galvan', 'Garcia', 3154897524, 105904099, 'ManuelGalvan@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(62, 'Mauricio', 'Gutierrez', 'Farias', 3108405655, 102457863, 'MauricioGutierrez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(63, 'Carolina', 'Hernandez', 'Ascencio', 3125730007, 125678541, 'CarolinaHernandez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(64, 'Estefanía', 'Jimenez', 'Alvarez', 3191966468, 103231149, 'EstefaníaJimenez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(65, 'Nelson', 'Jimenez', 'Rivera', 3166761367, 107240574, 'NelsonJimenez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(66, 'Santiago', 'Lopez', 'Hernandez', 3153996055, 102856936, 'SantiagoLopez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(67, 'Adriana', 'Lopez', 'Ventura', 3113876503, 104033034, 'AdrianaLopez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(68, 'Daniel', 'Lopez', 'Mejia', 3187658340, 103765739, 'DanielLopez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(69, 'Patricia', 'Medina', 'Vargas', 3105670231, 106919820, 'PatriciaMedina@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(70, 'Sebastián', 'Mejia', 'Lopez', 3141230743, 105583345, 'SebastiánMejia@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(71, 'Jhon', 'Mejia', 'Hernandez', 3155819671, 103712280, 'JhonMejia@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(72, 'Sebastián', 'Peña', 'Chavez', 3118547541, 103124231, 'SebastiánPeña@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(73, 'Andrés', 'Perez', 'Cortes', 3163114135, 107133656, 'AndrésPerez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(74, 'Julia', 'Ramirez', 'Garcia', 3128465431, 102643100, 'JuliaRamirez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(75, 'Marcela', 'Rodriguez', 'Rodriguez', 3134848087, 105209132, 'MarcelaRodriguez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(76, 'Carlos', 'Romero', 'Barba', 3174055831, 106652525, 'CarlosRomero@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(77, 'Santiago', 'Ruiz', 'Esquivel', 3124587215, 104514165, 'SantiagoRuiz@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(78, 'Mateo', 'Salas', 'Rojas', 3123906391, 102696559, 'MateoSalas@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(79, 'Andrea', 'Saldaña', 'Michel', 3160378711, 104888378, 'AndreaSaldaña@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(80, 'Luis', 'Sanchez', 'Perez', 3119347351, 104353788, 'LuisSanchez@gmail.com', 2, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(81, 'Clara', 'Suarez', 'Torres', 3152172439, 105262591, 'ClaraSuarez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(82, 'Andrés', 'Tabarez', 'Suarez', 3156731479, 103819198, 'AndrésTabarez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(83, 'Teresa', 'Teran', 'Sanchez', 3171320407, 107294033, 'TeresaTeran@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(84, 'Alejandro', 'Vargas', 'Gomez', 3131200855, 954263469, 'AlejandroVargas@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(85, 'Gabriel', 'Velazquez', 'Marquez', 3118435543, 102963854, 'GabrielVelazquez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(86, 'Esteban', 'Corona', 'Ramirez', 3136671703, 106438689, 'EstebanCorona@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(87, 'Mariana', 'Ramos', 'Galvan', 3143054359, 104674542, 'MarianaRamos@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(88, 'Astrid', 'Jimenez', 'Ruiz', 3143966167, 106171394, 'AstridJimenez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(89, 'Gabriel', 'Rojas', 'Nieto', 3132112663, 102536182, 'GabrielRojas@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(90, 'Samuel', 'Alvarado', 'Medina', 3144877975, 104728001, 'SamuelAlvarado@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(91, 'Sofía', 'Aguilar', 'Silva', 3204587698, 103284608, 'SofíaAguilar@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(92, 'Felipe', 'Michel', 'Ibarra', 3172232215, 104621083, 'FelipeMichel@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(93, 'Paola', 'Silva', 'Ruiz', 3149437015, 104300329, 'PaolaSilva@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(94, 'Isabella', 'Rodriguez', 'Valencia', 3120259159, 105476427, 'IsabellaRodriguez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(95, 'Juan', 'Chavez', 'Ayala', 3150348823, 106331771, 'JuanChavez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(96, 'Valentina', 'Marquez', 'Macana', 3210812658, 104407247, 'ValentinaMarquez@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(97, 'Javier', 'Rojas', 'Aguila', 3129377239, 110249547, 'JavierRojas@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(98, 'Viviana', 'Alvarado', 'Velez', 3159466903, 105369509, 'VivianaAlvarado@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(99, 'Diana', 'Aguilar', 'Martinez', 3127553623, 105690263, 'DianaAguilar@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(100, 'Antonio', 'Ruiz', 'Franco', 3181815858, 105316050, 'AntonioRuiz@gmail.com', 3, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(125, '', '', '', 0, 123, '', 0, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(126, '123', '123', '123', 123, 1234, '123@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(127, 'michael', 'moreno', 'cortes', 3186781934, 1111661861, 'maicolchalaca1310@gmail.com', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(128, 'asdasd', 'asdasd', 'asdasd', 123131123, 2147483647, 'daasdaasd@hmai.co', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(129, '12313', '123123', '1231231', 23123, 1231231, 'M@G.COM', 1, '263fec58861449aacc1c328a4aff64aff4c62df4a2d50b3f207fa89b6e242c9aa778e7a8baeffef85b6ca6d2e7dc16ff0a760d59c13c238f6bcdc32f8ce9cc62'),
(130, '123', '123', '123', 123, 123, 'dad@hmai.co', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(131, 'addasda', 'sdasdasda', 'sdasdasd', 23123123123, 2147483647, 'pacaasdadsasds@fsad', 1, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(132, 'asdasdasda', 'sdasdasdas', 'dasdasdasda', 21321323123232, 5432, 'AntonioRu123121121iz@gmail.com', 1, 'efe27bdffbf45f23819d177baf6e65fe2f00241b17c8fea54c0c6e9584ddccf412151b66bf07eb5356fa72580f72b8879e7d2a9b19839999860fdaaaefaed747');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `vehiculo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `placa` varchar(7) NOT NULL,
  `tipo_vehiculo_id` int(11) NOT NULL,
  `color_vehiculo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`vehiculo_id`, `usuario_id`, `placa`, `tipo_vehiculo_id`, `color_vehiculo_id`) VALUES
(1, 23, 'TUV 678', 1, 1),
(2, 31, 'CDE 56G', 4, 5),
(3, 14, 'EFG 789', 3, 2),
(4, 25, 'NOP 67P', 5, 1),
(5, 65, 'ABD 34F', 5, 4),
(6, 28, 'PQR 891', 1, 5),
(7, 17, 'CEF 67F', 4, 11),
(8, 16, 'FGH 890', 1, 10),
(9, 20, 'BCD 234', 3, 2),
(10, 12, 'LMN 67D', 4, 2),
(11, 24, 'YZA 901', 3, 3),
(12, 21, '', 6, 1),
(13, 30, 'VWX 675', 1, 7),
(14, 18, '', 6, 6),
(15, 33, 'KLM 567', 1, 2),
(16, 5, 'EFG 567', 2, 8),
(17, 84, 'WXY 901', 1, 3),
(18, 100, 'HIJ 234', 3, 3),
(19, 64, 'XYZ 896', 1, 2),
(20, 70, '', 6, 4),
(21, 10, 'YZA 901', 1, 1),
(22, 32, 'BCD 456', 2, 3),
(23, 19, 'OPQ 901', 2, 5),
(24, 13, 'DEF 456', 2, 9),
(25, 99, 'JKL 233', 1, 8),
(26, 67, 'HIJ 895', 1, 1),
(27, 69, 'QRS 345', 3, 9),
(28, 8, 'KLM 345', 1, 3),
(29, 29, 'PQR 890', 1, 4),
(30, 66, 'NOP 89H', 4, 3),
(31, 68, 'GHI 901', 2, 1),
(32, 97, '', 7, 7),
(33, 85, '', 6, 1),
(34, 9, 'MNO 56D', 4, 6),
(35, 98, 'STU 345', 1, 3),
(36, 11, 'ZAB 890', 1, 6),
(37, 22, 'UVW 567', 1, 1),
(38, 34, 'MNO 567', 3, 3),
(39, 27, 'QRS 901', 1, 10),
(40, 26, 'IJK 342', 1, 3),
(41, 6, 'RST 23K', 4, 1),
(42, 15, 'GHI 780', 2, 2),
(43, 7, 'STU 347', 1, 12),
(44, 4, '', 7, 4),
(45, 71, '', 7, 2),
(1, 23, 'TUV 678', 1, 1),
(2, 31, 'CDE 56G', 4, 5),
(3, 14, 'EFG 789', 3, 2),
(4, 25, 'NOP 67P', 5, 1),
(5, 65, 'ABD 34F', 5, 4),
(6, 28, 'PQR 891', 1, 5),
(7, 17, 'CEF 67F', 4, 11),
(8, 16, 'FGH 890', 1, 10),
(9, 20, 'BCD 234', 3, 2),
(10, 12, 'LMN 67D', 4, 2),
(11, 24, 'YZA 901', 3, 3),
(12, 21, '', 6, 1),
(13, 30, 'VWX 675', 1, 7),
(14, 18, '', 6, 6),
(15, 33, 'KLM 567', 1, 2),
(16, 5, 'EFG 567', 2, 8),
(17, 84, 'WXY 901', 1, 3),
(18, 100, 'HIJ 234', 3, 3),
(19, 64, 'XYZ 896', 1, 2),
(20, 70, '', 6, 4),
(21, 10, 'YZA 901', 1, 1),
(22, 32, 'BCD 456', 2, 3),
(23, 19, 'OPQ 901', 2, 5),
(24, 13, 'DEF 456', 2, 9),
(25, 99, 'JKL 233', 1, 8),
(26, 67, 'HIJ 895', 1, 1),
(27, 69, 'QRS 345', 3, 9),
(28, 8, 'KLM 345', 1, 3),
(29, 29, 'PQR 890', 1, 4),
(30, 66, 'NOP 89H', 4, 3),
(31, 68, 'GHI 901', 2, 1),
(32, 97, '', 7, 7),
(33, 85, '', 6, 1),
(34, 9, 'MNO 56D', 4, 6),
(35, 98, 'STU 345', 1, 3),
(36, 11, 'ZAB 890', 1, 6),
(37, 22, 'UVW 567', 1, 1),
(38, 34, 'MNO 567', 3, 3),
(39, 27, 'QRS 901', 1, 10),
(40, 26, 'IJK 342', 1, 3),
(41, 6, 'RST 23K', 4, 1),
(42, 15, 'GHI 780', 2, 2),
(43, 7, 'STU 347', 1, 12),
(44, 4, '', 7, 4),
(45, 71, '', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `visitante_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `inmueble_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`visitante_id`, `usuario_id`, `inmueble_id`) VALUES
(1, 61, 18),
(2, 62, 25),
(3, 63, 2),
(4, 64, 11),
(5, 65, 4),
(6, 66, 23),
(7, 67, 30),
(8, 68, 14),
(9, 69, 16),
(10, 70, 2),
(11, 71, 36),
(12, 72, 10),
(13, 73, 20),
(14, 74, 16),
(15, 75, 6),
(16, 76, 16),
(17, 77, 22),
(18, 78, 20),
(19, 79, 21),
(20, 80, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo_funcionario`
--
ALTER TABLE `cargo_funcionario`
  ADD PRIMARY KEY (`cago_funcionario`);

--
-- Indices de la tabla `color_vehiculo`
--
ALTER TABLE `color_vehiculo`
  ADD PRIMARY KEY (`color_vehiculo_id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`entrada_id`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`inmueble_id`);

--
-- Indices de la tabla `paqueteria`
--
ALTER TABLE `paqueteria`
  ADD PRIMARY KEY (`paquete_id`);

--
-- Indices de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  ADD PRIMARY KEY (`parqueadero_id`);

--
-- Indices de la tabla `residentes`
--
ALTER TABLE `residentes`
  ADD PRIMARY KEY (`residente_id`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`salidas_id`);

--
-- Indices de la tabla `tipo_usuaro`
--
ALTER TABLE `tipo_usuaro`
  ADD PRIMARY KEY (`tipo_usuario_id`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`tipo_vehiculo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`visitante_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo_funcionario`
--
ALTER TABLE `cargo_funcionario`
  MODIFY `cago_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `color_vehiculo`
--
ALTER TABLE `color_vehiculo`
  MODIFY `color_vehiculo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `entrada_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `inmueble_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `paqueteria`
--
ALTER TABLE `paqueteria`
  MODIFY `paquete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  MODIFY `parqueadero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `residentes`
--
ALTER TABLE `residentes`
  MODIFY `residente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `salidas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_usuaro`
--
ALTER TABLE `tipo_usuaro`
  MODIFY `tipo_usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `tipo_vehiculo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `visitante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
