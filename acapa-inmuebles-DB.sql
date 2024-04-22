-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2024 a las 23:20:26
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
-- Base de datos: `acapa-inmueblesv-2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `califiacacion_id` int(11) NOT NULL,
  `qualification_number` tinyint(4) DEFAULT NULL,
  `propiedad_property_id` int(11) NOT NULL,
  `propiedad_usuario_User_id` int(11) NOT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `comment_id` int(11) NOT NULL,
  `content_comment` varchar(360) DEFAULT NULL,
  `propiedad_property_id` int(11) NOT NULL,
  `propiedad_usuario_User_id` int(11) NOT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `contract_id` int(11) NOT NULL,
  `dateStart_cont` date DEFAULT NULL,
  `dateEnd_cont` date DEFAULT NULL,
  `price_cont` decimal(10,0) DEFAULT NULL,
  `status_cont` int(1) DEFAULT 1,
  `usuario_User_id` int(11) NOT NULL,
  `propiedad_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `message_id` int(11) NOT NULL,
  `content_mess` varchar(250) DEFAULT NULL,
  `date_mess` date DEFAULT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo de pago`
--

CREATE TABLE `metodo de pago` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(150) DEFAULT NULL,
  `contrato_contract_id` int(11) NOT NULL,
  `Tarjeta_card_id` int(11) NOT NULL,
  `Tarjeta_usuario_User_id` int(11) NOT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `notification_id` int(11) NOT NULL,
  `content_noti` varchar(100) DEFAULT NULL,
  `date_noti` date DEFAULT NULL,
  `status_noti` int(1) DEFAULT 1,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad`
--

CREATE TABLE `propiedad` (
  `property_id` int(11) NOT NULL,
  `title_property` varchar(100) DEFAULT NULL,
  `description_property` varchar(650) DEFAULT NULL,
  `price_property` decimal(10,0) DEFAULT NULL,
  `status_property` int(1) DEFAULT 1,
  `photo_property` varchar(45) DEFAULT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `card_id` int(11) NOT NULL,
  `expiration_date` date NOT NULL,
  `cvv_card` int(11) DEFAULT NULL,
  `status_card` int(11) NOT NULL DEFAULT 1,
  `holder_name` varchar(100) DEFAULT NULL,
  `card_number` bigint(20) DEFAULT NULL,
  `usuario_User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `User_id` int(11) NOT NULL,
  `name_user` varchar(250) NOT NULL,
  `last_name_user` varchar(250) DEFAULT NULL,
  `cedula_user` int(20) NOT NULL,
  `birthdate_user` date DEFAULT NULL,
  `adress_user` varchar(150) DEFAULT '¡Sin Dirección!',
  `mail_user` varchar(250) NOT NULL,
  `role_user` varchar(45) NOT NULL DEFAULT 'Usuario',
  `phone_user` bigint(20) NOT NULL,
  `password_user` varchar(250) NOT NULL,
  `transactions` varchar(45) DEFAULT '0',
  `payment_method` varchar(45) DEFAULT '0',
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`User_id`, `name_user`, `last_name_user`, `cedula_user`, `birthdate_user`, `adress_user`, `mail_user`, `role_user`, `phone_user`, `password_user`, `transactions`, `payment_method`, `status`) VALUES
(1, 'Brayan', 'Monterrosa', 1003404843, '2002-05-22', '¡No hay Direccion!', 'bmonterrosa9@gmail.com', 'Admin', 3133492399, '$2y$10$xufyoIDDRP15YZ03hAUM6u9GQj1aewUmeWSLPx8CNSAvT7Z6j9yNi', '0', '0', 1),
(3, '', '', 0, '0000-00-00', '', '', '', 0, '$2y$10$JxFyUUt2NeH8tocec20jKuriNODuEX0bPm.Rxal5VxaGOSFcM/.VS', '', '', 0),
(4, '', '', 0, '0000-00-00', '', '', '', 0, '$2y$10$vMzLTdBnL.knJW6F4S0oMuPx8cgjFkRDEimZyni5ysxqNU3ON8Ea2', '', '', 0),
(5, 'Juan', 'Jimenez', 1003321654, '2000-04-12', '', 'juanjimenez@hotmail.com', '', 3133584569, '$2y$10$09fiqVRmo/JRnG3z0T3j0.7T6Ik8wVrXPFUNNxs9hppkqfCPfn/mW', '0', '0', 1),
(6, 'Santiago', 'Castillo', 1003524667, '2002-12-24', '', 'santiago457@gmail.com', '', 3016874455, '$2y$10$miIdNfa8jlHP06FeO5DsL.FHug7CLPQyvOBhlswPtz7Q6WqQvnG22', '0', '0', 1),
(7, 'camilo', 'Beleño', 156548987, '2000-06-23', '', 'correo123@gmail.com', '', 313346988323, '$2y$10$S01Kg/29pUX873vLOLcpxO/vH/wAXhHBAeVr5IFzdSmECibE2M94S', '0', '0', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`califiacacion_id`,`propiedad_property_id`,`propiedad_usuario_User_id`,`usuario_User_id`),
  ADD KEY `fk_calificacion_propiedad1_idx` (`propiedad_property_id`,`propiedad_usuario_User_id`),
  ADD KEY `fk_calificacion_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`comment_id`,`propiedad_property_id`,`propiedad_usuario_User_id`,`usuario_User_id`),
  ADD KEY `fk_comentario_propiedad1_idx` (`propiedad_property_id`,`propiedad_usuario_User_id`),
  ADD KEY `fk_comentario_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`contract_id`,`usuario_User_id`,`propiedad_property_id`),
  ADD KEY `fk_contrato_usuario1_idx` (`usuario_User_id`),
  ADD KEY `fk_contrato_propiedad1_idx` (`propiedad_property_id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`message_id`,`usuario_User_id`),
  ADD KEY `fk_mensaje_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `metodo de pago`
--
ALTER TABLE `metodo de pago`
  ADD PRIMARY KEY (`payment_id`,`contrato_contract_id`,`Tarjeta_card_id`,`Tarjeta_usuario_User_id`,`usuario_User_id`),
  ADD KEY `fk_metodo de pago_contrato1_idx` (`contrato_contract_id`),
  ADD KEY `fk_metodo de pago_Tarjeta1_idx` (`Tarjeta_card_id`,`Tarjeta_usuario_User_id`),
  ADD KEY `fk_metodo de pago_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`notification_id`,`usuario_User_id`),
  ADD KEY `fk_notificacion_usuario_idx` (`usuario_User_id`);

--
-- Indices de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD PRIMARY KEY (`property_id`,`usuario_User_id`),
  ADD KEY `fk_propiedad_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`card_id`,`usuario_User_id`),
  ADD KEY `fk_Tarjeta_usuario1_idx` (`usuario_User_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `califiacacion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodo de pago`
--
ALTER TABLE `metodo de pago`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propiedad`
--
ALTER TABLE `propiedad`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_calificacion_propiedad1` FOREIGN KEY (`propiedad_property_id`,`propiedad_usuario_User_id`) REFERENCES `propiedad` (`property_id`, `usuario_User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calificacion_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_propiedad1` FOREIGN KEY (`propiedad_property_id`,`propiedad_usuario_User_id`) REFERENCES `propiedad` (`property_id`, `usuario_User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentario_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `fk_contrato_propiedad1` FOREIGN KEY (`propiedad_property_id`) REFERENCES `propiedad` (`property_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrato_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `fk_mensaje_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `metodo de pago`
--
ALTER TABLE `metodo de pago`
  ADD CONSTRAINT `fk_metodo de pago_Tarjeta1` FOREIGN KEY (`Tarjeta_card_id`,`Tarjeta_usuario_User_id`) REFERENCES `tarjeta` (`card_id`, `usuario_User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_metodo de pago_contrato1` FOREIGN KEY (`contrato_contract_id`) REFERENCES `contrato` (`contract_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_metodo de pago_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `fk_notificacion_usuario` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `propiedad`
--
ALTER TABLE `propiedad`
  ADD CONSTRAINT `fk_propiedad_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `fk_Tarjeta_usuario1` FOREIGN KEY (`usuario_User_id`) REFERENCES `usuario` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
