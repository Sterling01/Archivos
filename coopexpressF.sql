-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2020 a las 17:19:00
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coopexpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

CREATE TABLE `credito` (
  `codigo_credito` int(10) NOT NULL,
  `monto_credito` double(10,2) NOT NULL,
  `numero_meses_credito` int(2) NOT NULL,
  `fecha_solicitud_credito` datetime NOT NULL,
  `fecha_pago_credito` date NOT NULL,
  `desripcion_credito` varchar(255) NOT NULL,
  `estado_credito` varchar(1) NOT NULL DEFAULT 'P',
  `codigo_cuenta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `credito`
--

INSERT INTO `credito` (`codigo_credito`, `monto_credito`, `numero_meses_credito`, `fecha_solicitud_credito`, `fecha_pago_credito`, `desripcion_credito`, `estado_credito`, `codigo_cuenta`) VALUES
(1, 2400.00, 24, '2020-01-29 15:33:43', '2020-02-29', 'Crédito para educación', 'P', 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito_detalle`
--

CREATE TABLE `credito_detalle` (
  `codigo_detalle_credito` int(10) NOT NULL,
  `numero_cuota_detalle_credito` int(10) NOT NULL,
  `fecha_detalle_credito` date NOT NULL,
  `valor_detalle_credito` double(10,2) NOT NULL,
  `codigo_credito` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `credito_detalle`
--

INSERT INTO `credito_detalle` (`codigo_detalle_credito`, `numero_cuota_detalle_credito`, `fecha_detalle_credito`, `valor_detalle_credito`, `codigo_credito`) VALUES
(1, 1, '2020-02-29', 100.00, 1),
(2, 2, '2020-03-29', 100.00, 1),
(3, 3, '2020-04-29', 100.00, 1),
(4, 4, '2020-05-29', 100.00, 1),
(5, 5, '2020-06-29', 100.00, 1),
(6, 6, '2020-07-29', 100.00, 1),
(7, 7, '2020-08-29', 100.00, 1),
(8, 8, '2020-09-29', 100.00, 1),
(9, 9, '2020-10-29', 100.00, 1),
(10, 10, '2020-11-29', 100.00, 1),
(11, 11, '2020-12-29', 100.00, 1),
(12, 12, '2021-01-29', 100.00, 1),
(13, 13, '2021-02-28', 100.00, 1),
(14, 14, '2021-03-28', 100.00, 1),
(15, 15, '2021-04-28', 100.00, 1),
(16, 16, '2021-05-28', 100.00, 1),
(17, 17, '2021-06-28', 100.00, 1),
(18, 18, '2021-07-28', 100.00, 1),
(19, 19, '2021-08-28', 100.00, 1),
(20, 20, '2021-09-28', 100.00, 1),
(21, 21, '2021-10-28', 100.00, 1),
(22, 22, '2021-11-28', 100.00, 1),
(23, 23, '2021-12-28', 100.00, 1),
(24, 24, '2022-01-28', 100.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `codigo_cuenta` int(10) NOT NULL,
  `numero_cuenta` varchar(10) NOT NULL,
  `correo_cuenta` varchar(255) NOT NULL,
  `pswd_cuenta` varchar(255) NOT NULL,
  `saldo_cuenta` double(10,2) NOT NULL,
  `usuario_cedula` varchar(10) NOT NULL,
  `tipo_cuenta_codigo` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`codigo_cuenta`, `numero_cuenta`, `correo_cuenta`, `pswd_cuenta`, `saldo_cuenta`, `usuario_cedula`, `tipo_cuenta_codigo`) VALUES
(100000, '100000', 'stalinsant1@hotmail.com', '123', 47.00, '0107349110', 1),
(100001, '100001', 'stalinsant1@gmail.com', '123', 131.00, '0301127429', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `codigo_tipo_cuenta` int(10) NOT NULL,
  `nombre_tipo_cuenta` varchar(250) NOT NULL,
  `descripcion_tipo_cuenta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`codigo_tipo_cuenta`, `nombre_tipo_cuenta`, `descripcion_tipo_cuenta`) VALUES
(1, 'Usuario', 'Cliente caja de ahorros'),
(2, 'Administrador', 'Administrador usuarios'),
(3, 'Cajero', 'Gestiona las solicitudes de los usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE `tipo_transaccion` (
  `codigo_tipo_transaccion` int(10) NOT NULL,
  `nombre_tipo_transaccion` varchar(250) NOT NULL,
  `descripcion_tipo_transaccion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_transaccion`
--

INSERT INTO `tipo_transaccion` (`codigo_tipo_transaccion`, `nombre_tipo_transaccion`, `descripcion_tipo_transaccion`) VALUES
(1, 'Deposito origen', 'Cuenta de la que se retira el dinero en un deposito'),
(2, 'Deposito destino', 'Cuenta en la que se deposita el dinero'),
(3, 'Retiro', 'Retiro de dinero de una cuenta existente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `codigo_transaccion` int(10) NOT NULL,
  `monto_transaccion` double(10,2) NOT NULL,
  `fecha_transaccion` datetime NOT NULL,
  `descripcion_transaccion` varchar(255) NOT NULL,
  `cuenta_transaccion` int(10) NOT NULL,
  `tipo_transaccion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`codigo_transaccion`, `monto_transaccion`, `fecha_transaccion`, `descripcion_transaccion`, `cuenta_transaccion`, `tipo_transaccion`) VALUES
(1, 11.00, '2020-01-31 10:14:12', 'Deposito realizado a la cuenta 100001', 100000, 1),
(2, 11.00, '2020-01-31 10:14:12', 'Deposito realizado desde la cuenta 100000', 100001, 2),
(3, 0.00, '2020-01-31 10:14:38', 'Retiro de dinero de la cuenta 100000', 100000, 3),
(4, 10.00, '2020-01-31 10:14:46', 'Retiro de dinero de la cuenta 100000', 100000, 3),
(5, 12.00, '2020-01-31 10:15:05', 'Retiro de dinero de la cuenta 100000', 100000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cedula_usuario` varchar(10) NOT NULL,
  `nombre_usuario` varchar(250) NOT NULL,
  `apellido_usuario` varchar(250) NOT NULL,
  `fecha_nacimiento_usuario` date NOT NULL,
  `nivel_educacion_usuario` varchar(20) NOT NULL,
  `estado_civil_usuario` varchar(20) NOT NULL,
  `genero_usuario` varchar(10) NOT NULL,
  `telefono_usuario` varchar(10) NOT NULL,
  `ciudad_usuario` varchar(50) NOT NULL,
  `calle_principal_usuario` varchar(50) NOT NULL,
  `calle_secundaria_usuario` varchar(50) NOT NULL,
  `estado_usuario` varchar(1) DEFAULT 'I'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula_usuario`, `nombre_usuario`, `apellido_usuario`, `fecha_nacimiento_usuario`, `nivel_educacion_usuario`, `estado_civil_usuario`, `genero_usuario`, `telefono_usuario`, `ciudad_usuario`, `calle_principal_usuario`, `calle_secundaria_usuario`, `estado_usuario`) VALUES
('0107349110', 'Stalin', 'Figueroa', '1998-04-05', 'Secundaria', 'Soltero', 'Masculino', '0967585156', 'Cuenca', 'Alcuquiro', 'Lumbaqui', 'I'),
('0301127429', 'Patricia', 'Sacoto', '1968-03-10', 'Secundaria', 'Soltero', 'Femenino', '072808388', 'Cuenca', 'Alcuquiro', 'Lumbaqui', 'I'),
('0301574935', 'Ruth', 'Sacoto', '1977-12-13', 'Superior', 'Casado', 'Femenino', '074058400', 'Cuenca', 'Altiplano', 'Roca Sinche', 'I'),
('1401277767', 'Javier', 'Vazquez', '1999-11-30', 'Secundario', 'Divorciado', 'Masculino', '072808388', 'Cuenca', 'Casique Duma', 'Calle del retorno', 'I');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credito`
--
ALTER TABLE `credito`
  ADD PRIMARY KEY (`codigo_credito`),
  ADD UNIQUE KEY `credito_unique` (`codigo_cuenta`),
  ADD KEY `codigo_cuenta` (`codigo_cuenta`);

--
-- Indices de la tabla `credito_detalle`
--
ALTER TABLE `credito_detalle`
  ADD PRIMARY KEY (`codigo_detalle_credito`),
  ADD KEY `codigo_credito` (`codigo_credito`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`codigo_cuenta`),
  ADD UNIQUE KEY `cuenta_unique` (`numero_cuenta`,`correo_cuenta`),
  ADD KEY `usuario_cedula` (`usuario_cedula`),
  ADD KEY `tipo_cuenta_codigo` (`tipo_cuenta_codigo`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`codigo_tipo_cuenta`);

--
-- Indices de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  ADD PRIMARY KEY (`codigo_tipo_transaccion`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`codigo_transaccion`),
  ADD KEY `cuenta_transaccion` (`cuenta_transaccion`),
  ADD KEY `tipo_transaccion` (`tipo_transaccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cedula_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credito`
--
ALTER TABLE `credito`
  MODIFY `codigo_credito` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `credito_detalle`
--
ALTER TABLE `credito_detalle`
  MODIFY `codigo_detalle_credito` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `codigo_cuenta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100002;

--
-- AUTO_INCREMENT de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  MODIFY `codigo_tipo_cuenta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  MODIFY `codigo_tipo_transaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `codigo_transaccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `credito`
--
ALTER TABLE `credito`
  ADD CONSTRAINT `credito_ibfk_1` FOREIGN KEY (`codigo_cuenta`) REFERENCES `cuenta` (`codigo_cuenta`);

--
-- Filtros para la tabla `credito_detalle`
--
ALTER TABLE `credito_detalle`
  ADD CONSTRAINT `credito_detalle_ibfk_1` FOREIGN KEY (`codigo_credito`) REFERENCES `credito` (`codigo_credito`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`usuario_cedula`) REFERENCES `usuario` (`cedula_usuario`),
  ADD CONSTRAINT `cuenta_ibfk_2` FOREIGN KEY (`tipo_cuenta_codigo`) REFERENCES `tipo_cuenta` (`codigo_tipo_cuenta`);

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `FK3r350utn8oirnlbim7222685l` FOREIGN KEY (`tipo_transaccion`) REFERENCES `tipo_transaccion` (`codigo_tipo_transaccion`),
  ADD CONSTRAINT `FKiex9e56cpvvv2uluedekkmhtr` FOREIGN KEY (`cuenta_transaccion`) REFERENCES `cuenta` (`codigo_cuenta`),
  ADD CONSTRAINT `transaccion_ibfk_1` FOREIGN KEY (`cuenta_transaccion`) REFERENCES `cuenta` (`codigo_cuenta`),
  ADD CONSTRAINT `transaccion_ibfk_3` FOREIGN KEY (`tipo_transaccion`) REFERENCES `tipo_transaccion` (`codigo_tipo_transaccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
