-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-10-2019 a las 16:28:38
-- Versión del servidor: 5.7.27-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Servicio_Social`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Codigos`
--

CREATE TABLE `Codigos` (
  `Id_Codigo` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `activo` int(11) NOT NULL,
  `id_rol_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Codigos`
--

INSERT INTO `Codigos` (`Id_Codigo`, `codigo`, `activo`, `id_rol_codigo`) VALUES
(1, 'asdasdas', 1, 1),
(2, '$2y$04$ZiYy8i48qWA5V3O/OpVPAuEh527BqXNP5y6DcICL2xgB.U59LRddm', 1, 1),
(3, '$2y$04$jftg5xzNjSu8z9OknKPcS.I5bY6J8mcC09F0BH5xcdRQFLiqrNdqq', 1, 1),
(4, '$2y$04$og/iJgIpim1vDozoZeXO4.YRl/PYZmj3PeztquUwq97wJF6Rwy1li', 1, 1),
(5, '$2y$04$Pwqa8snoaWL30VudPHm1j.dIwcXk88ACiQoLEshVdBh9g49voB.qa', 1, 1),
(6, '$2y$04$3xvM9FdpWpVAGhf0cfr4Z.3ExP7mDhYrSTuAYAMhUf3Jg6C6F02Ka', 1, 1),
(7, '$2y$04$ZmwSf0qqjvhT6twLlhmIPOXZObfMH7sV1oSzTglwfwpegescNr0f2', 1, 2),
(8, '$2y$04$/koWzLCSAocxyyjTJW4cM.KkAkxHXoIF32Z8Qt91ZETRSr0qfBrg6', 1, 1),
(9, '$2y$04$orvi7c3CkhqKcuTHp3llMuodDfMRSxMAVOdnOkWao1gEts9ZjmmN6', 1, 2),
(10, '$2y$04$6QK2jb6NJ9JRjWjTKAkykOD2WS9G7TTABJbVJSBb6fn6ryrZ33/7e', 1, 2),
(11, '$2y$04$sgH8J455pV0NBcUxJLBWTe..1GXKZF6dru6cDT4jP5DIc1VMIuPXS', 1, 2),
(12, '$2y$04$7iN7aBlEPR8rYSbTXGRpwOZuehpBVzSIR1jdp3TG80kyTm.20tlHW', 1, 2),
(13, '$2y$04$Lke1KmfageT5MKDO6D2HQetSpWqt0XdlNC/a7YVZBLbgxJPp4FLX6', 1, 2),
(14, '$2y$04$aLb6R/EJsfyjujVeyAhVDeIwstA1Sjv2I9ZpHy4X3w1OxwOSHp.jK', 1, 2),
(15, '$2y$04$UoykVzlMD0ROQTIzEiYKO.dBshj4SaB7yHGS8BTzt1.kA1E9q0F/G', 1, 1),
(16, '$2y$04$AEUs7pGhk2WDKT1h3rp3ve7VP0PJdCkdLAv2eol4.K3ffi8WKW9yO', 1, 1),
(17, '$2y$04$uXwNOuY9c7VIXtj3dTmOF.iJKxZAKkzY6Rmr03FQmCB4F7BZW.gSe', 1, 1),
(18, '$2y$04$UbBXEiJ6N1FU2vIdJtKXEeuiDzaqdwWblvD0h5hYKjCMxIHmy4mO.', 1, 2),
(19, '$2y$04$.8B4SU/HC2e3Obfp6yk1H.Qts1/ADq0TNQfX7IzadPpEuz6X3gVde', 1, 2),
(20, '$2y$04$z7cgjM/ZwI.bPWi.jO6YQO8VkNRTujbWipD9OwENhbz8YxoMcKMSm', 1, 2),
(21, '$2y$04$f7RHv5b0c1dBuo9Y1Nd/ieJRpTIyOi1cLKlEkqUPEDsoB8ZknxM3O', 1, 2),
(22, '$2y$04$bz6SEKAXoPhTEmCh07y7FOFDvjDMukhqGbbYMoo7SPOYZ64t626eW', 1, 2),
(23, '$2y$04$M4yQ1iLdaS7G5PjonFrbCOWY0VTlgZ3TnmfwkpB5twUBO07pgTGFy', 1, 2),
(24, '$2y$04$Toz55Ng.GMM.3LlhuG6DwOmlaALxiNw2b0BO.b9FBZrMne89C3nzu', 1, 2),
(25, '$2y$04$OXWdoTjdHUgjGts9dPkJfucodfr2ENsaVS6suC2yw6Tvj1xSkxZ.W', 1, 1),
(26, '$2y$04$cF/2JPeoQ/YCHNWj0Fm3r.AuAGIBChFZqfCB3Z8tNqVCdBIKqQvYW', 1, 1),
(27, '$2y$04$FfJeZm03nqMWisQP7HrqzuSj5lb4hQ0xnkkYl7ZP30THtB/B6sSHO', 1, 2),
(28, '$2y$04$Y6nTSlYUhGdfwl6lX/zsJeRHjXS.n62ybVY4XIYpbr3x05btiTFca', 1, 1),
(29, '$2y$04$oDbvCYT0cmQf/K5VkirKCe8VFel8Gch8Y3iXoWa93H1MO9ivY8r5i', 1, 1),
(30, '$2y$04$9bSzJCCC/W2KjyKu1pvsmOPtYt9Qg1VVt0M9S0Bg91y.Dgm6NNPH6', 1, 1),
(31, '$2y$04$KOJhkqtWlbqfiXMxp944HO//227ia7XG9ZEZX6DXsRzgJBq/Z8NWW', 1, 2),
(32, '$2y$04$7qY4oab6X0xsqw4NHHUyauf3v76.Tk9l19HfPib.Mq2Q486pCcOhm', 1, 2),
(33, '$2y$04$.seU/8Va7PhULSg4iERRA.vqRbCfsp.rfmOqOAUFOweBdlkrdpOqW', 1, 1),
(34, '$2y$04$5mtFyW8ZsgRUE6zMmJpvveY2a2W9Vjw/89mWlebPEF1UBoEYHVJCS', 1, 2),
(35, '$2y$04$SkvQxOUBJLvL2FmHcdLAEOPO8mH/1GXU.OCciEeQtwtyy1n1409kG', 1, 1),
(36, '$2y$04$jJl4vcNAFx1vgG1cwVCwgOEHuKkpc0IwU.shr4yNlfRqLQd2H3sy6', 1, 1),
(37, '$2y$04$C/eeHL3G6PUFSdphN2phOunDFQHjQSrPbTeU5HPKZRl2du7Nwrr3q', 1, 2),
(38, '$2y$04$JWWDug2mzD/sCJws1xAe0eO7PgC3JA8rC76Nt8Ww715.QbM83dbYC', 1, 1),
(39, '$2y$04$JlqEh0WpHpFK37m1f/flN.ArrdiKku0Btc38FFNP8NBqTAbDMdVb.', 1, 1),
(40, '$2y$04$N21hUTy3IHEAEcyEFkBOzutnXJJqn4xkzCfW5OftBHUln2zfenEgG', 1, 1),
(41, '$2y$04$LxSYeNhMqMVlJw/e7L595urD5wciNBczKEdOd6zzX51s255PSGV.6', 1, 2),
(42, '$2y$04$bFtlpLrBtQ.MTzekP5s0QeA8ORlFE3mbsqFLeri5.SoE5.xmx9qXq', 1, 2),
(43, '$2y$04$BPI.WNKP5Mik2npcadUfjeyvqU3yMhC.Nd1ij6f5M98GZzufL094O', 1, 2),
(44, '$2y$04$3NsqR5O6aVvNDwyvfBUfu.dvHfGyUixXdb2M7SDoGnux4cl2lkMVm', 1, 2),
(45, '$2y$04$o60kXJVUzeBslhx6wDMTT.ZJpNR.Si4dxhAdzUKkmojH/O2dX/Awe', 1, 2),
(46, '$2y$04$/dDovXSJcvrcxqeuv/nySuphkQvK4WSIa3WmIcWhSn2j9UWCaR13C', 1, 1),
(47, '$2y$04$03tdExg2y/sD6Rcjkknrje5MRCbFhDHiHObYw8L3LWHml2Lf1Ucqe', 1, 1),
(48, '$2y$04$uE2zuBt6RdRiTAPOKiawReQMyAvrCTrGGHEghgA9LFyvTY0U2BSGS', 1, 2),
(49, '$2y$04$PpvFjiO5VNaKs5TspWg4XuB5G3sMpCbzIgComvCaCXdzfPLexmFL.', 1, 1),
(50, '$2y$04$KW3rRxU/Gv/YYTuAZokK4eFi9cTtOJ0MrQIQf0p7a.2HBQO4/DXmy', 1, 1),
(51, '$2y$04$JmvWIzuZWD.FksIooG5G6.kWmYpA9NEOT0PoMr.3tUanoaXJn6dp.', 1, 1),
(52, '$2y$04$lhsQjLjpxN85LwxPm.6ih.6IxOSdYnBzMzcqk1EECxWzbo0nSxicq', 1, 1),
(53, '$2y$04$TrH/vid6WWtMG9P/3KLIqeEWwx1yenpWRZ/KkB5A28gJtC9cnWiB.', 1, 1),
(54, '$2y$04$JPu5QXUvs/F38Z0nNppxPeKTur3uqvlVXA4x6WbOH6RAKATYtGsdG', 1, 1),
(55, '$2y$04$HbFe.9yojCwKzAYY3LyB1Od1.dJKF3UcoGt5QaO48IC129Sum3z56', 1, 1),
(56, '$2y$04$FoO4CZCSnHnrp9dYVPuLOOZgwGcrkvP3HDKahYlGtJ.YemMpGQ/XW', 1, 1),
(57, '$2y$04$.dO2Y2dE8rJT3xM3QGGq3uxMWrouH/fybd0or3UGHtYUYmJhQTsAi', 1, 1),
(58, '$2y$04$Ioey3HWXU5Y94oSBbJLNo.qMh0qjHM.LtUUuKQFGTetGBxq9XLBuS', 1, 2),
(59, '$2y$04$ZnDL304xIyLGS8Hsph7bhe/14K3XlbUlH5QeK.B8TPVLIB8caWdjy', 1, 1),
(60, '$2y$04$ZjYTzyIjwMzTVo1SFVF1ne0WDhTC0kjUiMFTU.dGcToIOevSXNYna', 1, 2),
(61, '$2y$04$lGrCnWKTV/M3KB4lt3rxTOf0lku0YdfHK8JR97sPkCvK4qaV459s2', 1, 1),
(62, '$2y$04$xcRv.cptoxNfIshbxFQF2uV0X8r70khLGc.62Rho50wZ0IbvUPTka', 1, 2),
(63, '$2y$04$vPmJbberh6qOLiBbl9rn.eubXIFPaoDE01hizlmbOqPqODMUM3MKa', 1, 1),
(64, '$2y$04$kPwgDgGZakXVL4HyukG.ZuatPH5dkajhxPpcY/9nXQZK2Vkj9/vSC', 1, 2),
(65, '$2y$04$KilOzcsukSWygjRTnJQQOeYTLyDsDr8rnGE.YxrA3eI6rV8Sm5ZLC', 1, 1),
(66, '2123123', 5, 1),
(67, '$2y$04$rO3UzUf4wHIX/SQLV4eB4u.e2DEeqXc6dGxeyEzI3.hKDcXwaOwki', 1, 1),
(68, '$2y$04$yQtmJcO2IKR.HfeSR6mFwuEM9.q9bxe3sGXRdwSJWnkzSBEu3nEAW', 1, 2),
(69, '$2y$04$UQFKQ/JjEh4CUoiPyyqFYenGD.TdBGgTAg4unodRQKIf.TFIUMfya', 1, 1),
(70, '$2y$04$MW6wKR6HKb5yWZ26WSEZSu3ZAFctk2CMjTtjxi4rxrrF2W3pmctdG', 1, 2),
(71, '$2y$04$Z3.lwnY/NZDrUjDKRzJJCOqw5ydUprtOzUeFqikWjYoiLY6XCKkeS', 1, 1),
(72, '$2y$04$6ifuc6wTXj/4tJIXR..SreBjtJxZpwKd76K1utEQ6Vt7lT0SSNS/K', 1, 1),
(73, '$2y$04$Q3TwZ8QtZNuNHNqvM31Qi.7P3REt1GDSYZf9lbw1YfLZfGw29SJVi', 1, 1),
(74, '$2y$04$rtfPWlnCGEw8/kfocpeOk.bPi1aAAEx/vgRBtpLkN4h7iDFPE5TNa', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inicios_Sesiones`
--

CREATE TABLE `Inicios_Sesiones` (
  `Id_Inicio_Sesion` int(11) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `contrasenia` text NOT NULL,
  `id_rol_Inicio_Sesion` int(11) NOT NULL,
  `id_estudiante_Inicio_Sesion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Inicios_Sesiones`
--

INSERT INTO `Inicios_Sesiones` (`Id_Inicio_Sesion`, `correo`, `contrasenia`, `id_rol_Inicio_Sesion`, `id_estudiante_Inicio_Sesion`) VALUES
(4, 'Fredy Benitez', '$2y$10$eYb.uLw7djSl.unrqNSZwuxYGVSnZcYjk7d4xG3MttHfM5wjRoCiS', 1, 1),
(5, '', '$2y$10$RNycTQjRiWPCpv7qvVFWeOKXJa2Qtkct3eLPOZKGJlPVCjl9DrlZK', 1, 1),
(6, '', '$2y$10$ueLGVHKhSIdbBv9tYfY/POFt.2CgvFj4EOOd1UOE8GGFGgFYnd9V.', 1, 1),
(7, '', '$2y$10$aEN/q0CXH7eyWUXvtpqcjuoGzW2o/lQ.y47hK.kx4caVrpMdNF01C', 1, 1),
(8, '', '', 1, 1),
(9, '', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Roles`
--

CREATE TABLE `Roles` (
  `Id_Rol` int(11) NOT NULL,
  `nombre_rol` varchar(13) NOT NULL,
  `activo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Roles`
--

INSERT INTO `Roles` (`Id_Rol`, `nombre_rol`, `activo`) VALUES
(1, 'Administrador', '1'),
(2, 'Estudiante', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblAdministradores`
--

CREATE TABLE `tblAdministradores` (
  `idAdministrador` int(11) NOT NULL,
  `nombres` varchar(35) NOT NULL,
  `apellidos` varchar(35) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `fechaDeNacimiento` date NOT NULL,
  `fechaDeRegistro` datetime NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `telefonoMovil` varchar(8) NOT NULL,
  `telefonoFijo` varchar(8) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `codigo` varchar(9) NOT NULL,
  `foto` longblob,
  `activo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblAdministradores`
--

INSERT INTO `tblAdministradores` (`idAdministrador`, `nombres`, `apellidos`, `correo`, `fechaDeNacimiento`, `fechaDeRegistro`, `direccion`, `telefonoMovil`, `telefonoFijo`, `sexo`, `codigo`, `foto`, `activo`) VALUES
(1, 'Carlos Josefino', 'Aristides', 'carlos123@gmail.com', '2000-12-01', '2019-10-01 15:41:02', 'Colonia la presita 2', '78459625', '75962522', 'M', 'U20148596', NULL, '1'),
(2, 'Carlos Josefino', 'Aristides', 'carlos123@gmail.com', '2000-12-01', '2019-10-01 15:42:30', 'Colonia la presita 2', '78459625', '75962522', 'M', 'U20148596', NULL, '1'),
(3, 'Carlos Josefino', 'Aristides', 'carlos123@gmail.com', '2000-12-01', '2019-10-01 15:42:44', 'Colonia la presita 2', '78459625', '75962522', 'M', 'U20148596', NULL, '1'),
(4, 'Carlos Josefino', 'Aristides', 'carlos123@gmail.com', '2000-12-01', '2019-10-01 15:42:57', 'Colonia la presita 2', '78459625', '75962522', 'M', 'U20148596', NULL, '1'),
(5, 'Carlos Josefino', 'Aristides', 'carlos3123@gmail.com', '2000-12-01', '2019-10-01 15:45:19', 'Colonia la presita 2', '78459625', '75962522', 'F', 'U20148596', NULL, '1'),
(6, 'Carlos Josefino', 'Aristides', 'carlos31233@gmail.com', '2000-12-01', '2019-10-01 15:46:11', 'Colonia la presita 2', '78459625', '75962522', 'M', 'U2032331', NULL, '1'),
(7, 'Carlos Josefino', 'Aristides', 'carlos31233@gmail.com', '2000-12-01', '2019-10-01 15:49:38', 'Colonia la presita 2', '7845965', '75962522', 'M', 'U2032331', NULL, '1'),
(8, 'Antonio', 'Rivas', 'anto@gmail.com', '2000-12-31', '2019-10-01 15:59:50', 'Colonia la pradera', '78451123', '25412563', 'M', 'U20154896', NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblCarreras`
--

CREATE TABLE `tblCarreras` (
  `idCarrera` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `activo` int(11) NOT NULL,
  `idFacultadCarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblCarreras`
--

INSERT INTO `tblCarreras` (`idCarrera`, `nombre`, `activo`, `idFacultadCarrera`) VALUES
(1, 'Ingenieria en Desarrollo de Software', 1, 1),
(2, 'Ingenieria Civil', 1, 1),
(3, 'Arquitectura', 1, 1),
(4, 'Ingenieria en Sistemas Informaticos', 1, 1),
(5, 'Ingenieria Agronomica', 1, 2),
(6, 'Licenciatura en Medicina Veterinaria', 1, 2),
(7, 'Licenciatura en Ciencias Juridicas', 1, 3),
(8, 'Licenciatura en Psicologia', 1, 5),
(9, 'Licenciatura en Idioma Ingles', 1, 5),
(10, 'Licenciatura en Educacion Inicial y Parvularia', 1, 5),
(11, 'Licenciatura en Comunicaciones', 1, 5),
(12, 'Técnico en Comunicaciones', 1, 5),
(13, 'Técnico en Idioma Ingles', 1, 5),
(14, 'Profesorado en Fisica y Deporte', 1, 5),
(15, 'Profesorado en Idioma Ingles', 1, 5),
(16, 'Profesorado en Biologia', 1, 5),
(17, 'Profesorado en Quimica', 1, 5),
(18, 'Profesorado en Matematica', 1, 5),
(19, 'Profesorado en Educación Artística', 1, 5),
(20, 'Profesorado en Educación Inicial y Parvularia', 1, 5),
(21, 'Licenciatura en Administración de Empresas', 1, 4),
(22, 'Licenciatura en Mercadotecnia', 1, 4),
(23, 'Licenciatura en Contaduria Publica', 1, 4),
(24, 'Licenciatura en Ciencias de la Computacion', 1, 4),
(25, 'Técnico en Ciencias de la Computacion', 1, 4),
(26, 'Licenciatura en Enfermeria', 1, 6),
(27, 'Teconologo en enfermeria', 1, 6),
(28, 'Doctorado en medicina', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblEstudiantes`
--

CREATE TABLE `tblEstudiantes` (
  `idEstudiante` int(11) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `telefonoMovil` varchar(8) NOT NULL,
  `telefonoFijo` varchar(8) NOT NULL,
  `trabaja` varchar(1) NOT NULL,
  `becado` varchar(1) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `codigo` varchar(9) NOT NULL,
  `numMateriasCursadas` int(11) NOT NULL,
  `ciclo` int(11) NOT NULL,
  `foto` longblob,
  `fechaHoraRegistro` datetime NOT NULL,
  `activo` varchar(1) NOT NULL,
  `idCarreraEstudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblEstudiantes`
--

INSERT INTO `tblEstudiantes` (`idEstudiante`, `nombres`, `apellidos`, `email`, `direccion`, `telefonoMovil`, `telefonoFijo`, `trabaja`, `becado`, `sexo`, `codigo`, `numMateriasCursadas`, `ciclo`, `foto`, `fechaHoraRegistro`, `activo`, `idCarreraEstudiante`) VALUES
(1, 'Fredy Mauricio', 'Benitez Orellana', 'fredymauricio@gmail.com', 'colonia la presita 1', '78753025', '26672973', 'S', 'S', 'M', 'U20160586', 35, 8, NULL, '2019-09-11 10:00:00', '1', 3),
(2, 'Ingrid Roxana', 'Argueta Claros', 'ingrid@gmail.com', 'Ato nuevo', '75968599', '26859877', 'S', 'S', 'F', 'U20165896', 38, 8, NULL, '2019-09-14 00:00:00', '1', 9),
(3, 'Fredy Mauricio', 'Benitez Orellana', 'fredy@gmail.com', 'Colonia las brisas', '78753025', '26672973', 'N', 'S', 'M', 'U20162586', 45, 3, NULL, '2019-09-26 05:08:34', '1', 23),
(4, 'Dimas Ivan', 'Gutierrez Amaya', 'fredy@gmail.com', 'Universidad', '1234', '1234', 'S', 'S', 'M', 'U20160586', 4, 22, NULL, '2019-09-26 05:24:43', '1', 5),
(5, 'Dimas Ivan', 'Gutierrez Amaya', 'fredy@gmail.com', 'Universidad', '1234', '1234', 'S', 'S', 'M', 'U20160586', 4, 22, NULL, '2019-09-26 05:26:17', '1', 5),
(6, 'Fredy', 'Benitez', 'fred1y@gmail.com', 'stemen', '12345678', '23981290', 'N', 'S', 'M', 'U20160583', 34, 8, NULL, '2019-09-26 13:17:32', '1', 26),
(7, 'Tatiana Marilu', 'Aviles Garcia', 'tatiana@gmail.com', 'Colonia la prado', '74859632', '24513658', 'S', 'S', 'F', 'U20160782', 30, 8, NULL, '2019-10-01 13:58:29', '1', 9),
(8, 'Luciana', 'Sandoval', 'luci@gmail.com', 'colonia la presita 2', '74859632', '25418698', 'S', 'N', 'F', 'U20178596', 35, 8, NULL, '2019-10-01 16:12:06', '1', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblFacultades`
--

CREATE TABLE `tblFacultades` (
  `idFacultad` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblFacultades`
--

INSERT INTO `tblFacultades` (`idFacultad`, `nombre`, `activo`) VALUES
(1, 'Facultad de Ingenieria y Arquitectura', 1),
(2, 'Facultad de Ciencias Agronomicas', 1),
(3, 'Facultad de Ciencias Juridicas', 1),
(4, 'Facultad de Ciencias Economicas', 1),
(5, 'Facultad de Ciencias y Humanidades', 1),
(6, 'Facultad de Ciencias de la Salud', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblLogins`
--

CREATE TABLE `tblLogins` (
  `idLogin` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contrasenia` text NOT NULL,
  `idUsuarioLogin` int(11) NOT NULL,
  `fechaDeRegistro` datetime NOT NULL,
  `activo` varchar(1) NOT NULL,
  `idRolLogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblLogins`
--

INSERT INTO `tblLogins` (`idLogin`, `email`, `contrasenia`, `idUsuarioLogin`, `fechaDeRegistro`, `activo`, `idRolLogin`) VALUES
(1, 'fredy@gmail.com', '$2y$04$fxPuyM2NzHQ.37fxJJCkVueEUUV6oktwPTANeCuROWqzNyW1.aQfS', 34, '2019-09-26 05:24:43', '1', 2),
(2, 'fredy@gmail.com', '$2y$04$ckQs9Rqz4322r7qDZexLXu8kEw9m3F8cfXX49gWDCpu2e3gMpprIm', 345, '2019-09-26 05:26:17', '1', 2),
(3, 'fred1y@gmail.com', '$2y$04$COfVBucSThvaxxEA2GQ36.hRfVKIfHeId1kkXpUTPPZoDw2IkhvNi', 6, '2019-09-26 13:17:32', '1', 2),
(4, 'tatiana@gmail.com', '$2y$04$XFVP5h9pdGEsA5NCfYuAI.6JtThA7bo3gGy69AwoLD4zuJ1JHSB2m', 7, '2019-10-01 13:58:29', '1', 2),
(5, 'carlos123@gmail.com', '$2y$04$PitKiTvG8hoKiDFO/k774.P.3ln4ubmyMEPLQaVt0rjKc8K4Ry.8W', 1234, '2019-10-01 15:42:57', '1', 1),
(6, 'carlos3123@gmail.com', '$2y$04$xUV4ezE8Hcgqc2gIl69kk.dW7DdfBmhEBFNKytF.tGKOWMSGO3RBK', 5, '2019-10-01 15:45:19', '1', 1),
(7, 'carlos31233@gmail.com', '$2y$04$vDAkQCt6Z/7ZFU6nmkAuW.nq7Ju3bW5eMd97SoRXpR5oc.sgq8sV.', 6, '2019-10-01 15:46:11', '1', 1),
(8, 'carlos31233@gmail.com', '$2y$04$6imlIBM2xjkmtty.7ymbX.jHd1xzKuYDMwYEHwzICpkM95tVvHa6W', 67, '2019-10-01 15:49:38', '1', 1),
(9, 'anto@gmail.com', '$2y$04$yGNkC2nfa0oMIccU5hVRx.SnI/MWorYvXA92/1ruOOCRchL/FjRTO', 8, '2019-10-01 15:59:50', '1', 1),
(10, 'luci@gmail.com', '$2y$04$uGGROZptPsW.3QAueiDFD.l6Px4rvDESHwa5zcxgvA9VL.F/oQRZC', 8, '2019-10-01 16:12:06', '1', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Codigos`
--
ALTER TABLE `Codigos`
  ADD PRIMARY KEY (`Id_Codigo`);

--
-- Indices de la tabla `Inicios_Sesiones`
--
ALTER TABLE `Inicios_Sesiones`
  ADD PRIMARY KEY (`Id_Inicio_Sesion`);

--
-- Indices de la tabla `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `tblAdministradores`
--
ALTER TABLE `tblAdministradores`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indices de la tabla `tblCarreras`
--
ALTER TABLE `tblCarreras`
  ADD PRIMARY KEY (`idCarrera`),
  ADD KEY `idFacultadCarrera` (`idFacultadCarrera`);

--
-- Indices de la tabla `tblEstudiantes`
--
ALTER TABLE `tblEstudiantes`
  ADD PRIMARY KEY (`idEstudiante`);

--
-- Indices de la tabla `tblFacultades`
--
ALTER TABLE `tblFacultades`
  ADD PRIMARY KEY (`idFacultad`);

--
-- Indices de la tabla `tblLogins`
--
ALTER TABLE `tblLogins`
  ADD PRIMARY KEY (`idLogin`),
  ADD KEY `idRolLogin` (`idRolLogin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Codigos`
--
ALTER TABLE `Codigos`
  MODIFY `Id_Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT de la tabla `Inicios_Sesiones`
--
ALTER TABLE `Inicios_Sesiones`
  MODIFY `Id_Inicio_Sesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `Roles`
--
ALTER TABLE `Roles`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tblAdministradores`
--
ALTER TABLE `tblAdministradores`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tblCarreras`
--
ALTER TABLE `tblCarreras`
  MODIFY `idCarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `tblEstudiantes`
--
ALTER TABLE `tblEstudiantes`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tblFacultades`
--
ALTER TABLE `tblFacultades`
  MODIFY `idFacultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tblLogins`
--
ALTER TABLE `tblLogins`
  MODIFY `idLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblCarreras`
--
ALTER TABLE `tblCarreras`
  ADD CONSTRAINT `tblCarreras_ibfk_1` FOREIGN KEY (`idFacultadCarrera`) REFERENCES `tblFacultades` (`idFacultad`);

--
-- Filtros para la tabla `tblLogins`
--
ALTER TABLE `tblLogins`
  ADD CONSTRAINT `tblLogins_ibfk_1` FOREIGN KEY (`idRolLogin`) REFERENCES `Roles` (`Id_Rol`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
