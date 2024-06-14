-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2024 a las 00:24:34
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digitalh_bd_principal_2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_candidato`
--

CREATE TABLE `tbl_candidato` (
  `id_candidato` int(11) NOT NULL,
  `nombres_candidato` varchar(255) DEFAULT NULL,
  `apellidos_candidato` varchar(255) DEFAULT NULL,
  `nombre_completo1_candidato` varchar(255) DEFAULT NULL,
  `nombre_completo2_candidato` varchar(255) DEFAULT NULL,
  `anio_inicio_actividad_laboral_candidato` date DEFAULT NULL,
  `anio_experiencia_total_candidato` varchar(11) DEFAULT NULL,
  `perfil_experiencia1_candidato` varchar(255) DEFAULT NULL,
  `perfil_experiencia2_candidato` varchar(255) DEFAULT NULL,
  `perfil_experiencia3_candidato` varchar(255) DEFAULT NULL,
  `DH_perfil_experiencia1_candidato` varchar(255) DEFAULT NULL,
  `DH_perfil_experiencia2_candidato` varchar(255) DEFAULT NULL,
  `DH_perfil_experiencia3_candidato` varchar(255) DEFAULT NULL,
  `celular_principal_candidato` varchar(20) DEFAULT NULL,
  `celular_secundario_candidato` varchar(20) DEFAULT NULL,
  `telefono_fijo_candidato` varchar(20) DEFAULT NULL,
  `correo_principal_candidato` varchar(100) DEFAULT NULL,
  `correo_secundario_candidato` varchar(100) DEFAULT NULL,
  `direccion_candidato` varchar(255) DEFAULT NULL,
  `comentario_reclutador_candidato` text DEFAULT NULL,
  `comentario_fecha_nacimiento_candidato` date DEFAULT NULL,
  `usuario_creacion_candidato` varchar(100) DEFAULT NULL,
  `fecha_hora_creacion_candidato` datetime DEFAULT NULL,
  `usuario_ultima_modificacion_candidato` varchar(100) DEFAULT NULL,
  `fecha_hora_ultima_modificacion_candidato` datetime DEFAULT NULL,
  `nombre_archivo_candidato` varchar(255) DEFAULT NULL,
  `ruta_archivo_candidato` varchar(255) DEFAULT NULL,
  `nivel_ingles_candidato` varchar(100) DEFAULT NULL,
  `nivel_ingles_conversacional_candidato` varchar(100) DEFAULT NULL,
  `version_candidato` varchar(11) DEFAULT NULL,
  `estado_candidato` tinyint(1) DEFAULT NULL,
  `id_reclutador` int(11) DEFAULT NULL,
  `id_disponibilidad` int(11) DEFAULT NULL,
  `id_asistencia_laboral` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_candidato`
--

INSERT INTO `tbl_candidato` (`id_candidato`, `nombres_candidato`, `apellidos_candidato`, `nombre_completo1_candidato`, `nombre_completo2_candidato`, `anio_inicio_actividad_laboral_candidato`, `anio_experiencia_total_candidato`, `perfil_experiencia1_candidato`, `perfil_experiencia2_candidato`, `perfil_experiencia3_candidato`, `DH_perfil_experiencia1_candidato`, `DH_perfil_experiencia2_candidato`, `DH_perfil_experiencia3_candidato`, `celular_principal_candidato`, `celular_secundario_candidato`, `telefono_fijo_candidato`, `correo_principal_candidato`, `correo_secundario_candidato`, `direccion_candidato`, `comentario_reclutador_candidato`, `comentario_fecha_nacimiento_candidato`, `usuario_creacion_candidato`, `fecha_hora_creacion_candidato`, `usuario_ultima_modificacion_candidato`, `fecha_hora_ultima_modificacion_candidato`, `nombre_archivo_candidato`, `ruta_archivo_candidato`, `nivel_ingles_candidato`, `nivel_ingles_conversacional_candidato`, `version_candidato`, `estado_candidato`, `id_reclutador`, `id_disponibilidad`, `id_asistencia_laboral`) VALUES
(1, 'Martha', 'Arias', 'Martha Arias', 'Arias Martha', '2009-01-01', '15.00', '2', '3', '3', '2', '1', '1', '994-671-929', '999-888-777', '12345678', 'gbarretof@gmail.com', 'correo2aaaa', 'San pedro', '¿Cuánto tiempo de experiencia en .Net y Javascript?\n+5 años\n\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\n6000\n\n¿Tienes disponibilidad para trabajar de manera híbrida, 2 veces por semana en San Isidro?\nPodria ser, pero prefiero que sea remoto\n\n¿Cuál es tu disponibilidad para empezar a trabajar con nosotros?\ncuento con disposicion inmediata', '2000-02-11', 'admin', '2024-04-24 11:35:31', '4', '2024-06-14 02:11:48', '', 'uploads/', '1', '1', '1.1.', 1, 3, 1, 1),
(2, 'FERNANDO', 'BUSTAMANTE GUERRERO', 'FERNANDO BUSTAMANTE GUERRERO', 'BUSTAMANTE GUERRERO FERNANDO', '2005-01-01', '19.00', 'Full Stack Developer SENIOR', 'Adobe Consultant SENIOR', NULL, 'Full Stack Developer SENIOR', 'Tecnhical Leader', NULL, '929-714-276', '930-805-143', NULL, NULL, NULL, 'Jr. Manuel Mattos 561, Urb. San German – San Martin de Porres, Lima, Perú', '¿Cuánto tiempo de experiencia en .Net y Javascript?\r\n7\r\n\r\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\r\n4500 a 5500\r\n\r\n¿Tienes disponibilidad para trabajar de manera híbrida, 2 veces por semana en San Isidro?\r\nSi\r\n\r\n¿Cuál es tu disponibilidad para empezar a trabajar con nosotros?\r\n5 dias', '1979-04-25', 'ADMIN', '2024-04-24 14:13:03', 'ADMIN', '2024-04-24 14:13:03', 'CV_BUSTAMANTE_GUERRERO_FERNANDO.pdf', 'RUTA ARCHIVO', '4', '2', '1.0', 1, 3, 12, 4),
(3, 'ROY PETER', 'CELINO SAMAMÉ', 'ROY PETER CELINO SAMAMÉ', 'CELINO SAMAMÉ ROY PETER', '2015-04-01', '9.00', 'Full Stack Developer SEMI-SENIOR', NULL, NULL, 'Full Stack Developer SEMI-SENIOR', NULL, NULL, '916-399-665', NULL, NULL, 'roy.celino@ingenieros.com', NULL, 'Pasaje Magallanes 792, 1ra Zona, Ventanilla, Lima, Perú', '¿Cuánto tiempo de experiencia en .Net y Javascript?\n\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\n5500\n\n¿Tienes disponibilidad para trabajar de manera híbrida, 2 veces por semana en San Isidro?\nsi, no hay problema\n\n¿Cuál es tu disponibilidad para empezar a trabajar con nosotros?\na solicitud', NULL, 'Admin', '2024-04-24 00:00:00', 'Admin', '2024-04-24 14:13:03', 'CV_CELINO_SAMAMÉ_ROY_PETER.pdf', 'RUTA ARCHIVO', '2', '1', '1.0', 1, 3, 12, 4),
(4, 'EDUARDO JESUS', 'CUADRA NEYRA', 'EDUARDO JESUS CUADRA NEYRA', 'CUADRA NEYRA EDUARDO JESUS', '2014-01-01', '10.00', 'Full Stack Developer SEMI-SENIOR', NULL, NULL, '', NULL, NULL, '921-173-428', NULL, NULL, 'ecuadran@gmail.com', NULL, 'Av. Rafael Escardo 1143 San Miguel – Lima 32, Perú', '¿Cuánto tiempo de experiencia en .Net y Javascript?\r\n.net 3 años, 9 años en JavaScript\r\n\r\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\r\n5000\r\n\r\n¿Tienes disponibilidad para trabajar de manera híbrida, 2 veces por semana en San Isidro?\r\nSi\r\n\r\n¿Cuál es tu disponibilidad para empezar a trabajar con nosotros?\r\nInmediata', NULL, 'admin', '2024-04-24 14:50:02', 'admin', '2024-04-24 14:50:02', 'CV_CUADRA_NEYRA_EDUARDO_JESUS.pdf', 'ruta archivo', '2', '1', '1.0', 1, 3, 12, 4),
(5, 'MIDORY', 'FLORES ARANA', 'MIDORY FLORES ARANA', 'FLORES ARANA MIDORY', '2022-11-01', '1.00', 'Full Stack Developer JUNIOR', NULL, NULL, 'Full Stack Developer JUNIOR', NULL, NULL, '973-912-046', NULL, NULL, 'midoryfa@gmail.com', NULL, 'Lima, Perú', 'NO RESPONDIÓ LAS PREGUNTAS\n¿ Cuánto tiempo tienes en desarrollo y en específico con PHP?\n\n¿Tiempo de experiencia con SQL Server ?\n\n¿Tienes disponibilidad para trabajar híbrido, 2 veces por semana en oficina en San Isidro?\n\n¿Cuáles son tus expectativas económicas en recibos por honorarios?', NULL, 'Admin', '2024-04-24 14:50:02', 'admin', '2024-04-24 14:50:02', 'CV_FLORES_ARANA_MIDORY.pdf', 'ruta archivo', '1', '1', '1.0', 1, 3, 12, 12),
(6, 'INÉS KATIA', 'HUAMÁN LIMA', 'INÉS KATIA HUAMÁN LIMA', 'HUAMÁN LIMA INÉS KATIA', '2019-10-01', '4', 'Full Stack Developer SEMI-SENIOR', NULL, NULL, 'Full Stack Developer SEMI-SENIOR', 'Data Analyst JUNIOR', NULL, '951-985-585', NULL, NULL, 'ineshuamanlima@gmail.com', NULL, 'Cusco, Perú', '¿ Cuánto tiempo tienes en desarrollo y en específico con PHP?\r\n0\r\n\r\n¿Tiempo de experiencia con SQL Server ?\r\n3\r\n\r\n¿Tienes disponibilidad para trabajar híbrido, 2 veces por semana en oficina en San Isidro?\r\nNO\r\n\r\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\r\n2500', NULL, 'admin', '2024-04-24 16:36:24', 'admin', '2024-04-24 16:36:24', 'CV_HUAMÁN_LIMA_INÉS_KATIA.pdf', 'ruta archivo', '1', '1', '1.0', 1, 3, 12, 2),
(7, 'MIGUEL ANGEL', 'LUNA VIGO', 'MIGUEL ANGEL LUNA VIGO', 'LUNA VIGO MIGUEL ANGEL ', '2007-12-01', '16', 'Full Stack Developer SEMI-SENIOR', NULL, NULL, 'Full Stack Developer SEMI-SENIOR', NULL, NULL, '919-689-870', '575-5095', NULL, 'miguel.luna@outlook.com', NULL, 'Jr. Tacna Nro. 3870 – San Martín de Porres, Lima, Perú', '', '1985-10-06', 'admin', '2024-04-24 17:24:05', 'admin', '2024-04-24 17:24:05', 'CV_LUNA_VIGO_MIGUEL_ANGEL.pdf ', 'ruta archivo', '1', '1', '1.0', 1, 3, 12, 4),
(8, 'JUAN PABLO', 'MAZEKINA OSHIRO', 'JUAN PABLO MAZEKINA OSHIRO', 'MAZEKINA OSHIRO JUAN PABLO', '2015-09-01', '8.00', 'Full Stack Developer JUNIOR', NULL, NULL, 'Full Stack Developer JUNIOR', 'Technical Support SEMI-SENIOR', NULL, '', NULL, NULL, NULL, NULL, 'Comas, Lima, Perú', '¿Cuánto tiempo de experiencia en .Net y Javascript?\r\n3 años\r\n\r\n¿Cuáles son tus expectativas económicas en recibos por honorarios?\r\n4500\r\n\r\n¿Tienes disponibilidad para trabajar de manera híbrida, 2 veces por semana en San Isidro?\r\nSi\r\n\r\n¿Cuál es tu disponibilidad para empezar a trabajar con nosotros?\r\nInmediata', NULL, 'admin', '2024-04-24 18:19:34', 'admin', '2024-04-24 18:19:34', 'CV_MAZEKINA_OSHIRO_JUAN_PABLO.pdf', 'ruta archivo', '1', '1', '1.0', 1, 3, 12, 4),
(14, 'Maria Arias', 'Arias', 'Maria Arias', 'Arias Maria ', '2020-01-01', '4', '1', '2', '3', '97', '96', '95', '111', '222', '333', 'correo', 'correo2', 'Por san ptmre', 'comentario editado', '1996-04-16', '7', '2024-06-02 18:37:33', '4', '2024-06-07 03:38:24', 'CV_ARIAS_MARIA.pdf', 'uploads/', '5', '5', '1.1.', 1, 17, 3, 10),
(16, NULL, NULL, ' ', ' ', '2016-01-01', '8', '50', '51', '52', '54', '55', '66', '3333', '5555555', '4444444', 'correo@gmail.com', 'correo222@gmail.com', NULL, 'comentario editadooowww', NULL, '7', '2024-06-08 12:23:22', '4', '2024-06-14 01:45:54', NULL, 'uploads/', NULL, NULL, '1.1.', 1, 6, NULL, NULL),
(18, 'Paola', 'Maldonado', 'Paola Maldonado', 'Maldonado Paola', '2020-01-01', '3', '8', '9', '14', '97', '94', '92', '123456', '4321', '121212', 'coreooooo', 'correo2222', 'Av. Alfonso Ugarte 1483', 'comentario candidato', '2000-03-14', '7', '2024-06-14 08:48:25', '4', '2024-06-14 10:37:28', '', 'uploads/', '1', '2', '1.1.', 1, 15, 9, 12),
(22, 'Juan', 'Perez', 'Juan Perez', 'Perez Juan', '2020-01-01', '3', '1', '2', '3', '97', '96', '95', '123456', '654321', '1212121', 'correo1', 'correo2', 'direc', 'comentario carlos', '2000-12-12', '7', '2024-06-14 10:43:52', '4', '2024-06-14 10:53:20', '', 'uploads/', '1', '1', '1.1.', 1, 10, 3, 10),
(23, 'Marcos Andres', 'Romero', 'Marcos Andres Romero', 'Romero Marcos Andres', '2018-01-01', '6', '4', '5', '6', '82', '83', '84', '999999', '888888', '132453', 'correo', 'correo2', 'direccion', 'comentario ', '1998-05-01', '7', '2024-06-14 10:57:08', '4', '2024-06-14 11:00:47', '', 'uploads/', '1', '2', '1.1.', 1, 1, 10, 1),
(24, 'Ana Maria', 'Lopez', 'Ana Maria Lopez', 'Lopez Ana Maria', '2020-01-01', '3', '1', '2', '3', '72', '51', '58', '123456', '22222', '4444444', 'correo', 'correo2', 'direccion', 'comentariooooo', '2000-10-10', '7', '2024-06-14 11:16:46', '4', '2024-06-14 11:19:51', '', 'uploads/', '2', '1', '1.1.', 1, 10, 9, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente_final`
--

CREATE TABLE `tbl_cliente_final` (
  `id_cliente_final` int(11) NOT NULL,
  `id_operacion_cliente` int(11) DEFAULT NULL,
  `nombre_cliente_final` varchar(100) DEFAULT NULL,
  `direccion_cliente_final` varchar(255) DEFAULT NULL,
  `telefono_cliente_final` varchar(20) DEFAULT NULL,
  `email_cliente_final` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_cliente_final`
--

INSERT INTO `tbl_cliente_final` (`id_cliente_final`, `id_operacion_cliente`, `nombre_cliente_final`, `direccion_cliente_final`, `telefono_cliente_final`, `email_cliente_final`) VALUES
(1, 1, 'WIN', 'DIRECCION CLIENTE FINAL', '888888888', 'EMAIL@CLIENTEFINAL'),
(2, 2, 'PACIFICO', 'DIRECCION', '121212121', 'EMAIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_configuracion`
--

CREATE TABLE `tbl_configuracion` (
  `id_configuracion` int(11) NOT NULL,
  `dias_buscar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_configuracion`
--

INSERT INTO `tbl_configuracion` (`id_configuracion`, `dias_buscar`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_alertas`
--

CREATE TABLE `tbl_conf_alertas` (
  `id_alertas` int(8) NOT NULL,
  `estado_alertas` varchar(1) NOT NULL,
  `condicion_alertas` varchar(30) NOT NULL,
  `cuerpo_alertas` varchar(300) DEFAULT NULL,
  `remite_alertas` varchar(30) DEFAULT NULL,
  `asunto_alertas` varchar(100) DEFAULT NULL,
  `modulo_alertas` varchar(150) DEFAULT NULL,
  `correo_asunto_prefijo` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_conf_alertas`
--

INSERT INTO `tbl_conf_alertas` (`id_alertas`, `estado_alertas`, `condicion_alertas`, `cuerpo_alertas`, `remite_alertas`, `asunto_alertas`, `modulo_alertas`, `correo_asunto_prefijo`) VALUES
(1, 'A', '5', 'Estimado/a,\r\n\r\nPor favor, actualice su reporte de horas hasta la fecha, ya que no contamos con ningún registro de actividades en los últimos 5 días.\r\n\r\nSi tiene alguna duda o consulta, comuníquese conmigo.', 'Omar.navarro@digitalhub.pe', 'Reporte de horas', 'staffingReporteActividadesConsultor', '[DIGITALHUB - SOAINT - WIN]'),
(2, 'A', '1', 'Primer dia del mes , ', 'Omar.navarro@digitalhub.pe', 'Recordatorio del Reporte mensual', 'staffingReporteActividadesConsultor', '[DIGITALHUB - SOAINT - WIN]'),
(3, 'A', 'Lunes', 'Hoy Lunes empezar a registrar sus actividades', 'Omar.navarro@digitalhub.pe', 'Recordatorio de actividad Semanal', 'staffingReporteActividadesConsultor', '[DIGITALHUB - SOAINT - WIN]'),
(4, 'A', '3', 'Estimado,\r\nPor favor actualizar su reporte de horas a la fecha para proceder con la facturación mensual con nuestro cliente. \r\nsi tienes alguna duda o consulta, comunicate conmigo.', 'Omar.navarro@digitalhub.pe', 'Actualizar reporte de horas mensual', 'staffingReporteActividadesConsultor', '[DIGITALHUB - SOAINT - WIN]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_asistencia_laboral`
--

CREATE TABLE `tbl_conf_asistencia_laboral` (
  `id_asistencia_laboral` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_asistencia_laboral` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_asistencia_laboral`
--

INSERT INTO `tbl_conf_asistencia_laboral` (`id_asistencia_laboral`, `opcion_habilitada`, `descripcion_asistencia_laboral`) VALUES
(1, 1, 'Presencial'),
(2, 1, 'Remoto'),
(3, 1, 'Híbrido/1 día a la semana'),
(4, 1, 'Híbrido/2 días a la semana'),
(5, 1, 'Híbrido/3 días a la semana'),
(6, 1, 'Híbrido/4 días a la semana'),
(7, 1, 'Híbrido/1 semana al mes'),
(8, 1, 'Híbrido/2 semanas al mes'),
(9, 1, 'Híbrido/3 semanas al mes'),
(10, 1, 'Híbrido'),
(11, 1, 'Remoto/Híbrido'),
(12, 1, 'CONSULTAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_disponibilidad`
--

CREATE TABLE `tbl_conf_disponibilidad` (
  `id_disponibilidad` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_disponibilidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_disponibilidad`
--

INSERT INTO `tbl_conf_disponibilidad` (`id_disponibilidad`, `opcion_habilitada`, `descripcion_disponibilidad`) VALUES
(1, 1, '1 mes'),
(2, 1, '1 mes/según oferta'),
(3, 1, '1 semana'),
(4, 1, '2 semanas'),
(5, 1, '3 semanas'),
(6, 1, '1-2 semanas'),
(7, 1, '2-3 semanas'),
(8, 1, '3-4 semanas'),
(9, 1, 'Inmediata'),
(10, 1, '<5 días'),
(11, 1, 'Cada fin de mes'),
(12, 1, 'CONSULTAR'),
(13, 1, 'NO DISPONIBLE'),
(14, 1, 'STAND-BY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_documento_identidad`
--

CREATE TABLE `tbl_conf_documento_identidad` (
  `id_documento_identidad` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_documento_identidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_documento_identidad`
--

INSERT INTO `tbl_conf_documento_identidad` (`id_documento_identidad`, `opcion_habilitada`, `descripcion_documento_identidad`) VALUES
(1, 1, 'DOCUMENTO NACIONAL DE IDENTIDAD'),
(2, 1, 'CARNE DE EXTRANJERIA'),
(3, 1, 'PASAPORTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_ingles_conversacional`
--

CREATE TABLE `tbl_conf_ingles_conversacional` (
  `id_ingles_conversacional` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_ingles_conversacional` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_ingles_conversacional`
--

INSERT INTO `tbl_conf_ingles_conversacional` (`id_ingles_conversacional`, `opcion_habilitada`, `descripcion_ingles_conversacional`) VALUES
(1, 1, 'Básico'),
(2, 1, 'Básico-Intermedio'),
(3, 1, 'Intermedio'),
(4, 1, 'Intermedio-Avanzado'),
(5, 1, 'Avanzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_modalidad`
--

CREATE TABLE `tbl_conf_modalidad` (
  `id_modalidad` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_modalidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_modalidad`
--

INSERT INTO `tbl_conf_modalidad` (`id_modalidad`, `opcion_habilitada`, `descripcion_modalidad`) VALUES
(1, 1, 'PRESENCIAL'),
(2, 1, 'REMOTO'),
(3, 1, 'HIBRIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_modalidad_facturacion`
--

CREATE TABLE `tbl_conf_modalidad_facturacion` (
  `id_modalidad_facturacion` int(6) NOT NULL,
  `opcion_habilitada` int(6) NOT NULL,
  `descripcion_modalidad_facturacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_conf_modalidad_facturacion`
--

INSERT INTO `tbl_conf_modalidad_facturacion` (`id_modalidad_facturacion`, `opcion_habilitada`, `descripcion_modalidad_facturacion`) VALUES
(1, 1, 'MENSUAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_perfil`
--

CREATE TABLE `tbl_conf_perfil` (
  `id_perfil` int(5) NOT NULL,
  `descripcion_perfil` varchar(255) NOT NULL,
  `estado_perfil` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_conf_perfil`
--

INSERT INTO `tbl_conf_perfil` (`id_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'Adobe Consultant JUNIOR', 1),
(2, 'Adobe Consultant SEMI-SENIOR', 1),
(3, 'Adobe Consultant SENIOR', 1),
(4, 'Android Mobile Developer: Kotlin JUNIOR', 1),
(5, 'Android Mobile Developer: Kotlin SEMI-SENIOR', 1),
(6, 'Android Mobile Developer: Kotlin SENIOR', 1),
(7, 'APPIAN Developer JUNIOR', 1),
(8, 'APPIAN Developer SEMI-SENIOR', 1),
(9, 'APPIAN Developer SENIOR', 1),
(10, 'AWS Architec JUNIOR', 1),
(11, 'AWS Architec SEMI-SENIOR', 1),
(12, 'AWS Architec SENIOR', 1),
(13, 'AWS Architec SPECIALIST', 1),
(14, 'AWS Consultant JUNIOR', 1),
(15, 'AWS Consultant SEMI-SENIOR', 1),
(16, 'AWS Consultant SENIOR', 1),
(17, 'AWS Consultant SPECIALIST', 1),
(18, 'AWS Developer JUNIOR', 1),
(19, 'AWS Developer SEMI-SENIOR', 1),
(20, 'AWS Developer SENIOR', 1),
(21, 'AWS Developer SPECIALIST', 1),
(22, 'Back End Developer JUNIOR', 1),
(23, 'Back End Developer SEMI-SENIOR', 1),
(24, 'Back End Developer SENIOR', 1),
(25, 'Back End Developer SPECIALIST', 1),
(26, 'Business Analyst JUNIOR', 1),
(27, 'Business Analyst SEMI-SENIOR', 1),
(28, 'Business Analyst SENIOR', 1),
(29, 'CCM OpenText Exstream JUNIOR', 1),
(30, 'CCM OpenText Exstream SEMI-SENIOR', 1),
(31, 'CCM OpenText Exstream SENIOR', 1),
(32, 'CCM OpenText Exstream SPECIALIST', 1),
(33, 'Cross-Platform Mobile Developer: Flutter JUNIOR', 1),
(34, 'Cross-Platform Mobile Developer: Flutter SEMI-SENIOR', 1),
(35, 'Cross-Platform Mobile Developer: Flutter SENIOR', 1),
(36, 'Cross-Platform Mobile Developer: React Native JUNIOR', 1),
(37, 'Cross-Platform Mobile Developer: React Native SEMI-SENIOR', 1),
(38, 'Cross-Platform Mobile Developer: React Native SENIOR', 1),
(39, 'Data Analyst JUNIOR', 1),
(40, 'Data Analyst SEMI-SENIOR', 1),
(41, 'Data Analyst SENIOR', 1),
(42, 'Data Analyst SPECIALIST', 1),
(43, 'Data Engineer JUNIOR', 1),
(44, 'Data Engineer SEMI-SENIOR', 1),
(45, 'Data Engineer SENIOR', 1),
(46, 'Data Engineer SPECIALIST', 1),
(47, 'DevOps Engineer JUNIOR', 1),
(48, 'DevOps Engineer SEMI-SENIOR', 1),
(49, 'DevOps Engineer SENIOR', 1),
(50, 'Front End Developer JUNIOR', 1),
(51, 'Front End Developer SEMI-SENIOR', 1),
(52, 'Front End Developer SENIOR', 1),
(53, 'Front End Developer SPECIALIST', 1),
(54, 'Full Stack Developer JUNIOR', 1),
(55, 'Full Stack Developer SEMI-SENIOR', 1),
(56, 'Full Stack Developer SENIOR', 1),
(57, 'Full Stack Developer SPECIALIST', 1),
(58, 'iOS Mobile Developer: Swift JUNIOR', 1),
(59, 'iOS Mobile Developer: Swift SEMI-SENIOR', 1),
(60, 'iOS Mobile Developer: Swift SENIOR', 1),
(61, 'Mobile Developer: Kotlin (Android)/Swift (iOS) SEMI-SENIOR', 1),
(62, 'Mobile Developer: Kotlin (Android)/Swift (iOS) SENIOR', 1),
(63, 'Mobile Developer: Kotlin (Android)/Swift (iOS) SPECIALIST', 1),
(64, 'Process Consultant JUNIOR', 1),
(65, 'Process Consultant SEMI-SENIOR', 1),
(66, 'Process Consultant SENIOR', 1),
(67, 'Process Consultant SPECIALIST', 1),
(68, 'Project Manager JUNIOR', 1),
(69, 'Project Manager SEMI-SENIOR', 1),
(70, 'Project Manager SENIOR', 1),
(71, 'Project Manager SPECIALIST', 1),
(72, 'QA Automation Engineer JUNIOR', 1),
(73, 'QA Automation Engineer SEMI-SENIOR', 1),
(74, 'QA Automation Engineer SENIOR', 1),
(75, 'QA Manual (Functional) Engineer JUNIOR', 1),
(76, 'QA Manual (Functional) Engineer SEMI-SENIOR', 1),
(77, 'QA Manual (Functional) Engineer SENIOR', 1),
(78, 'Salesforce Consultant JUNIOR', 1),
(79, 'Salesforce Consultant SEMI-SENIOR', 1),
(80, 'Salesforce Consultant SENIOR', 1),
(81, 'Salesforce Consultant SPECIALIST', 1),
(82, 'Scrum Master JUNIOR', 1),
(83, 'Scrum Master SEMI-SENIOR', 1),
(84, 'Scrum Master SENIOR', 1),
(85, 'Solutions Architect SPECIALIST', 1),
(86, 'Solutions Architect TECH LEAD', 1),
(87, 'Technical Support JUNIOR', 1),
(88, 'Technical Support SEMI-SENIOR', 1),
(89, 'Technical Support SENIOR', 1),
(90, 'Technical Support SPECIALIST', 1),
(91, 'Technical Writer JUNIOR', 1),
(92, 'Technical Writer SEMI-SENIOR', 1),
(93, 'Tecnhical Leader', 1),
(94, 'UX/UI Designer JUNIOR', 1),
(95, 'UX/UI Designer SEMI-SENIOR', 1),
(96, 'UX/UI Designer SENIOR', 1),
(97, 'UX/UI Designer SPECIALIST', 1),
(98, 'NO ESPECIFICADO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_reclutador`
--

CREATE TABLE `tbl_conf_reclutador` (
  `id_reclutador` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `nombre_plataforma_reclutador` varchar(255) DEFAULT NULL,
  `opcion_habilitada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_conf_reclutador`
--

INSERT INTO `tbl_conf_reclutador` (`id_reclutador`, `nombres`, `apellidos`, `nombre_plataforma_reclutador`, `opcion_habilitada`) VALUES
(1, 'Carlos Felipe', 'Hinope', NULL, 1),
(2, NULL, NULL, 'Email', 1),
(3, NULL, NULL, 'Indeed', 1),
(4, 'Jorge', 'Bernal', NULL, 1),
(6, 'Julio Ángel', 'Astocaza', NULL, 1),
(10, 'Karla', 'Sullon', NULL, 1),
(11, NULL, NULL, 'LinkedIn', 1),
(12, NULL, NULL, 'CompuTrabajo', 1),
(15, 'Omar', 'Navarro', NULL, 1),
(16, 'Oswaldo', 'Zamora', NULL, 1),
(17, 'Úrsula', 'Donayre', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conocimiento`
--

CREATE TABLE `tbl_conocimiento` (
  `id_conocimiento` int(11) NOT NULL,
  `descripcion_conocimiento` varchar(255) DEFAULT NULL,
  `estado_conocimiento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_conocimiento`
--

INSERT INTO `tbl_conocimiento` (`id_conocimiento`, `descripcion_conocimiento`, `estado_conocimiento`) VALUES
(1, 'CONOCIMIENTO 1', '1'),
(2, 'CONOCIMIENTO 2', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_consultor`
--

CREATE TABLE `tbl_consultor` (
  `id_consultor` int(6) NOT NULL,
  `id_operacion_servicio` int(6) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `id_documento_identidad` int(6) NOT NULL,
  `numero_documento_identidad` int(15) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `correo_personal` varchar(255) NOT NULL,
  `correo_dh` varchar(255) NOT NULL,
  `correo_cliente` varchar(255) NOT NULL,
  `correo_clienteFinal` varchar(255) NOT NULL,
  `nombre_cv` varchar(255) NOT NULL,
  `id_disponibilidad` int(6) NOT NULL,
  `id_asistencia_laboral` int(6) NOT NULL,
  `id_ingles_conversacional` int(6) NOT NULL,
  `estado_consultor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_consultor`
--

INSERT INTO `tbl_consultor` (`id_consultor`, `id_operacion_servicio`, `nombres`, `apellidos`, `id_documento_identidad`, `numero_documento_identidad`, `direccion`, `correo_personal`, `correo_dh`, `correo_cliente`, `correo_clienteFinal`, `nombre_cv`, `id_disponibilidad`, `id_asistencia_laboral`, `id_ingles_conversacional`, `estado_consultor`) VALUES
(1, 1, 'MANUEL ANTONIO', 'ALCALDE CASTANEDA', 1, 74824444, 'DIRECCION ', 'flavioalexandro17@GMAIL.COM', 'flavioperezhaya98@GMAIL.COM', 'CORREO_CLIENTE@GMAIL.COM', 'CLIENTE_FINAL@GMAIL.COM', 'DIGITALHUB_PEREZ_GONZALES_JUAN_ALBERTO_CV', 1, 1, 1, 'A'),
(2, 2, 'JULIA ALESSANDRA', 'BAUTISTA ROCA', 1, 12121212, 'DIRECCION', 'flavioperezhaya98@GMAIL.COM', 'JULIA@DH.PE', 'CORREO_CLIENTE_JULIA', 'CORREO_CLIENTE_FINAL_JULIA', 'JULIA_CV', 2, 4, 2, 'A'),
(4, 1, 'GIORDAN ISRAEL', 'ARREDONDO PALOMINO', 1, 71504889, 'DIRECCION2', 'CORREO_GIORDAN', 'CORREO_DH', 'CORREO_CLIENTE', 'CORREO_CLIENTE_FINAL', 'GIORDAN_CV', 1, 1, 1, 'A'),
(5, 1, 'VÍCTOR MANUEL ', 'CUADRADO HIDALGO', 1, 71619310, 'DIRECCION', 'CORREO_PERSONAL', 'CORREO_DH', 'CORREO_CLIENTE', 'CORREO_FINAL', 'VICTOR_CV', 1, 1, 1, 'A'),
(6, 1, 'MIGUEL ANGEL ', 'LOPEZ SANABRIA', 1, 40000650, 'DIRECCION', 'CORREO', 'CORREO_DH', 'CLIENTE', 'CLIENTE_FINAL', 'MIGUEL_CV', 1, 2, 2, 'A'),
(7, 1, 'CLEVER LUIS', 'MARTINEZ HUAMANLAZO', 1, 20566887, 'DIRECCION', 'CORREO', 'CORREO_DH', 'CORREO', 'CORREO FINAL', 'CLEVER_CV', 1, 3, 3, 'A'),
(8, 1, 'CARLOS AGUSTO', 'MATTA VIGO', 1, 45519550, 'DIRECCION', 'CORREO', 'CORREO DH', 'CORREO CLIENTE', 'CORREO FINAL', 'CARLOS_CV', 1, 1, 2, 'A'),
(9, 1, 'HENRY ', 'MEDINA MURAYARI', 1, 43552653, 'DIRECCION', 'CORREO', 'CORREO DH', 'CORREO CLIENTE', 'CORREO FINAL', 'HENRY_CV', 1, 2, 2, 'A'),
(10, 1, 'ELIAS ENOC', 'OBESO VALVERDE', 1, 45941486, 'DIRECCION', 'CORREO', 'CORREO DH', 'CORREO', 'CORREO FINAL', 'ELIAS_CV', 1, 2, 2, 'A'),
(11, 1, 'JOSÉ ANTONIO ', 'PERALTA CASTAÑEDA', 1, 44665203, 'DIRECCION', 'CORREO', 'CORREO DH ', 'CORREO', 'CORREO FINAL', 'JOSE_CV', 1, 2, 2, 'A'),
(12, 1, 'JUAN CARLOS', 'QUINTANILLA DE LA CRUZ', 1, 41363363, 'DIRECCION', 'CORREO', 'CORREO DH ', 'CORREO ', 'CORREO FINAL', 'JUAN_CV', 1, 1, 2, 'A'),
(13, 1, 'SEGUNDO WILLIAM', 'GUZMAN CORREA', 1, 40100369, 'DIRECCION', 'CORREO', 'CORREO DH ', 'CORREO CLIENTE ', 'CORREO FINAL ', 'SEGUNDO_CV', 1, 2, 3, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_perfil_buscado_candidato`
--

CREATE TABLE `tbl_detalle_perfil_buscado_candidato` (
  `id_detalle_perfil_buscado_candidato` int(11) NOT NULL,
  `descripcion_perfil_buscado` varchar(255) DEFAULT NULL,
  `anio_experiencia_perfil_buscado` varchar(100) DEFAULT NULL,
  `estado_perfil_buscado` tinyint(1) DEFAULT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `id_perfil_solicitado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_detalle_perfil_buscado_candidato`
--

INSERT INTO `tbl_detalle_perfil_buscado_candidato` (`id_detalle_perfil_buscado_candidato`, `descripcion_perfil_buscado`, `anio_experiencia_perfil_buscado`, `estado_perfil_buscado`, `id_candidato`, `id_perfil_solicitado`) VALUES
(4, 'PERFIL BUSCADO 1', '7.00', 1, 2, 31),
(5, 'PERFIL BUSCADO 2', NULL, 1, 2, 30),
(6, 'PERFIL BUSCADO 1', '0.00\r\n', 1, 3, 31),
(7, 'PERFIL BUSCADO 2', NULL, 1, 4, 30),
(8, 'PERFIL BUSCADO 1', '0.00', 1, 4, 31),
(9, 'PERFIL BUSCADO 2', NULL, 1, 5, 30),
(10, 'PERFIL BUSCADO 1', '0.00', 1, 5, 31),
(11, 'PERFIL BUSCADO 2', NULL, 1, 6, 30),
(12, 'PERFIL BUSCADO 1', '0.00', 1, 5, 31),
(13, 'PERFIL BUSCADO 2', NULL, 1, 7, 30),
(14, 'PERFIL BUSCADO 1', '3.00', 1, 7, 31),
(15, 'PERFIL BUSCADO 2', NULL, 1, 7, 30),
(16, 'PERFIL BUSCADO 1', '3.00', 1, 8, 31),
(60, 'PERFIL BUSCADO 1', '3', 1, 14, 25),
(61, 'PERFIL BUSCADO 2', '4', 1, 14, 25),
(62, 'PERFIL BUSCADO 3', '5', 1, 14, 31),
(75, 'PERFIL BUSCADO 1', '2', 1, 16, 25),
(76, 'PERFIL BUSCADO 2', '3', 1, 16, 30),
(77, 'PERFIL BUSCADO 3', '3', 1, 16, 31),
(108, 'PERFIL BUSCADO 1', '5.00', 1, 1, 31),
(109, 'PERFIL BUSCADO 2', '3', 1, 1, 30),
(110, 'PERFIL BUSCADO 3', '2.00', 1, 1, 25),
(114, 'PERFIL BUSCADO 1', '1', 1, 18, 25),
(115, 'PERFIL BUSCADO 2', '1', 1, 18, 30),
(116, 'PERFIL BUSCADO 3', '1', 1, 18, 31),
(126, 'PERFIL BUSCADO 1', '1', 1, 22, 25),
(127, 'PERFIL BUSCADO 2', '1', 1, 22, 30),
(128, 'PERFIL BUSCADO 3', '1', 1, 22, 31),
(135, 'PERFIL BUSCADO 1', '1', 1, 23, 25),
(136, 'PERFIL BUSCADO 2', '2', 1, 23, 30),
(137, 'PERFIL BUSCADO 3', '3', 1, 23, 31),
(144, 'PERFIL BUSCADO 1', '1', 1, 24, 25),
(145, 'PERFIL BUSCADO 2', '1', 1, 24, 30),
(146, 'PERFIL BUSCADO 3', '1', 1, 24, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operacion_cliente`
--

CREATE TABLE `tbl_operacion_cliente` (
  `id_operacion_cliente` int(11) NOT NULL,
  `codigo_operacion_cliente` varchar(50) DEFAULT NULL,
  `nombre_operacion_cliente` varchar(100) DEFAULT NULL,
  `direccion_operacion_cliente` varchar(255) DEFAULT NULL,
  `telefono_operacion_cliente` varchar(20) DEFAULT NULL,
  `email_operacion_cliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_operacion_cliente`
--

INSERT INTO `tbl_operacion_cliente` (`id_operacion_cliente`, `codigo_operacion_cliente`, `nombre_operacion_cliente`, `direccion_operacion_cliente`, `telefono_operacion_cliente`, `email_operacion_cliente`) VALUES
(1, '1', 'SOAINT', 'DIRECCION', '999999999', 'EMAIL'),
(2, '2', 'SOAINT', 'DIRECCION CLIENTE 2', '222222222', 'cliente2_email');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operacion_servicio`
--

CREATE TABLE `tbl_operacion_servicio` (
  `id_operacion_servicio` int(6) NOT NULL,
  `nombre_servicio` varchar(255) NOT NULL,
  `id_cliente` int(6) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `id_cliente_final` int(6) DEFAULT NULL,
  `nombre_cliente_final` varchar(255) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_delivery_manager` int(6) NOT NULL,
  `delivery_manager_nombre` varchar(255) NOT NULL,
  `id_account_manager` int(6) NOT NULL,
  `account_manager_nombre` varchar(255) NOT NULL,
  `id_modalidad_facturacion` int(6) NOT NULL,
  `delivery_manager_cliente_nombre` varchar(255) NOT NULL,
  `delivery_manager_cliente_correo_corporativo` varchar(255) NOT NULL,
  `delivery_manager_cliente_correo_personal` varchar(255) NOT NULL,
  `delivery_manager_cliente_celular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_operacion_servicio`
--

INSERT INTO `tbl_operacion_servicio` (`id_operacion_servicio`, `nombre_servicio`, `id_cliente`, `nombre_cliente`, `id_cliente_final`, `nombre_cliente_final`, `fecha_inicio`, `fecha_fin`, `id_delivery_manager`, `delivery_manager_nombre`, `id_account_manager`, `account_manager_nombre`, `id_modalidad_facturacion`, `delivery_manager_cliente_nombre`, `delivery_manager_cliente_correo_corporativo`, `delivery_manager_cliente_correo_personal`, `delivery_manager_cliente_celular`) VALUES
(1, 'STAFFING', 1, 'SOAINT', 1, 'WIN', '2024-02-01', NULL, 1, 'LUIS UCEDA RODRIGUEZ', 1, 'LAURA FAJARDO PEÑA', 1, 'PEDRO FLORES DIAZ', 'CORREO@GMAIL.COM', 'CORREO1@GMAIL.COM', '999999999'),
(2, 'STAFFING', 2, 'INDRA', NULL, NULL, '2024-02-01', NULL, 2, 'ROCIO LOPEZ', 2, 'EDUARDO GUERRERO', 1, 'MANUEL RONCEROS', 'CORREO_CLIENTE@GMAIL.COM', 'ORREO_CLIENTE@GMAIL.COM', '111111111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operacion_servicio_actividades`
--

CREATE TABLE `tbl_operacion_servicio_actividades` (
  `id_servicio_actividad` int(6) NOT NULL,
  `id_operacion_servicio` int(6) NOT NULL,
  `id_consultor` int(6) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `esfuerzo_hrs` float(10,2) NOT NULL,
  `id_modalidad` int(6) NOT NULL,
  `actividad_tarea` varchar(2000) NOT NULL,
  `solicitante` varchar(1000) NOT NULL,
  `resultado` varchar(3000) NOT NULL,
  `notas` varchar(5000) DEFAULT NULL,
  `id_delivery_manager` int(6) NOT NULL,
  `delivery_manager_aprobacion` int(1) NOT NULL,
  `delivery_manager_cliente_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_operacion_servicio_actividades`
--

INSERT INTO `tbl_operacion_servicio_actividades` (`id_servicio_actividad`, `id_operacion_servicio`, `id_consultor`, `fecha_inicio`, `hora_inicio`, `hora_fin`, `esfuerzo_hrs`, `id_modalidad`, `actividad_tarea`, `solicitante`, `resultado`, `notas`, `id_delivery_manager`, `delivery_manager_aprobacion`, `delivery_manager_cliente_nombre`) VALUES
(4, 1, 2, '2024-02-01', '04:44:00', '05:44:00', 1.00, 1, 'aaaa', 'NO INFORMADO', 'NO INFORMADO', 'aaaaa', 1, 0, 'PEDRO FLORES DIAZ'),
(8, 2, 2, '2024-02-08', '09:34:00', '10:34:00', 1.00, 3, 'ACTIVIDAD1', 'NO INFORMADO', 'NO INFORMADO', 'COMENTARIO1', 2, 0, 'MANUEL RONCEROS'),
(10, 1, 1, '2024-01-02', '14:00:00', '18:00:00', 4.00, 2, 'Sin actividad', 'NO INFORMADO', 'NO INFORMADO', 'A la espera del usuario para inicio de actividades', 1, 0, 'PEDRO FLORES DIAZ'),
(11, 1, 1, '2024-01-03', '09:00:00', '13:00:00', 4.00, 2, 'Reunión', 'POD-INSTALACIONES', 'NO INFORMADO', 'Me reuní con el equipo de POD-Instalaciones, para la configuración de la laptop y conexión a la VPN de WIN', 1, 0, 'PEDRO FLORES DIAZ'),
(12, 1, 1, '2024-01-03', '14:00:00', '18:00:00', 4.00, 2, 'Reunión', 'POD-INSTALACIONES', '-', 'Explicación por parte del equipo de POD-Instalaciones del código e instalación de programas y  aplicaciones a usar.', 1, 0, 'PEDRO FLORES DIAZ'),
(13, 1, 1, '2024-01-04', '09:00:00', '13:00:00', 4.00, 2, 'Reunión', 'POD-INSTALACIONES', '-', 'Explicación de la herramienta nod-red y visualización de un curso de Udemy proporcionado por WIN', 1, 0, 'PEDRO FLORES DIAZ'),
(14, 1, 1, '2024-01-04', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', '-', 'Revisión de un BOT en Telegram ya realizado por WIN para verificar el proceso de validación de ingreso al BOT.', 1, 0, 'PEDRO FLORES DIAZ'),
(15, 1, 1, '2024-01-05', '09:00:00', '18:00:00', 8.00, 1, 'Desarrollo', 'POD-INSTALACIONES', 'Se entrego un avance de un JSON generado', 'Realización del desarrollo de un BOT con Telegram usando nod-red para el proceso de validación de instalaciones', 1, 0, 'PEDRO FLORES DIAZ'),
(16, 1, 1, '2024-01-08', '09:00:00', '13:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se entrego un avance de un JSON generado', 'Se migró el bot realizado en local a un servidor de pruebas para integración con API\'s de WIN', 1, 0, 'PEDRO FLORES DIAZ'),
(17, 1, 1, '2024-01-08', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se entrego un avance de un JSON generado', 'Se migró el bot realizado en local a un servidor de pruebas para integración con API\'s de WIN', 1, 0, 'PEDRO FLORES DIAZ'),
(18, 1, 1, '2024-01-09', '09:00:00', '13:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se entrego un avance de un JSON generado', 'Se agregaron más funcionalidades al bot del servidor de pruebas', 1, 0, 'PEDRO FLORES DIAZ'),
(19, 1, 1, '2024-01-09', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se entrego un avance de un JSON generado', 'Se agregaron más funcionalidades al bot del servidor de pruebas', 1, 0, 'PEDRO FLORES DIAZ'),
(20, 1, 1, '2024-01-10', '09:00:00', '13:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se realizaron cambios en la web de WIN para operadores con las mismas condiciones usadas en el bot y mostrando los datos ', 1, 0, 'PEDRO FLORES DIAZ'),
(21, 1, 1, '2024-01-10', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se realizaron cambios en la web de WIN para operadores con las mismas condiciones usadas en el bot y mostrando los datos ', 1, 0, 'PEDRO FLORES DIAZ'),
(22, 1, 1, '2024-01-11', '09:00:00', '13:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se agregó un endpoint para la web y nuevas validaciones', 1, 0, 'PEDRO FLORES DIAZ'),
(23, 1, 1, '2024-01-11', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se agregó un endpoint para la web y nuevas validaciones', 1, 0, 'PEDRO FLORES DIAZ'),
(24, 1, 1, '2024-01-12', '09:00:00', '13:00:00', 4.00, 2, 'Revisión', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se revisó un módulo que se usará para el registro de técnicos y el bot avanzado en la semana', 1, 0, 'PEDRO FLORES DIAZ'),
(25, 1, 1, '2024-01-12', '14:00:00', '18:00:00', 4.00, 2, 'Revisión', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se revisó un módulo que se usará para el registro de técnicos y el bot avanzado en la semana', 1, 0, 'PEDRO FLORES DIAZ'),
(26, 1, 1, '2024-01-15', '09:00:00', '13:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se realzaron cambios en el módulo revisado el viernes agregando requerimiento en la web \"WhiteList\"', 1, 0, 'PEDRO FLORES DIAZ'),
(28, 1, 1, '2024-01-15', '14:00:00', '18:00:00', 4.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se realzaron cambios en el módulo revisado el viernes agregando requerimiento en la web \"WhiteList\"', 1, 0, 'PEDRO FLORES DIAZ'),
(29, 1, 1, '2024-01-16', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'Se subió lo avanzado a la rama asignada de git', 'Se complementaron más cambios en el requerimiento web \"WhiteList\"', 1, 0, 'PEDRO FLORES DIAZ'),
(30, 1, 1, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se realizó la integración de un validación del proyecto \"WhiteList\" con el bot de validación de portencia', 1, 0, 'PEDRO FLORES DIAZ'),
(31, 1, 1, '2024-01-18', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se revisó código para el envío de correos electrónicos para la validación de token\'s en el bot.', 1, 0, 'PEDRO FLORES DIAZ'),
(32, 1, 1, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se realizaron cambios en el bot de validación de potencia para el uso de dos token\'s de validaciones', 1, 0, 'PEDRO FLORES DIAZ'),
(33, 1, 1, '2024-01-22', '09:00:00', '18:00:00', 9.00, 1, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se realizó la presentación del bot hasta el momento del desarrollo y se implementaron algunas indicaciones de la reunión realizada (validaciones adicionales)', 1, 0, 'PEDRO FLORES DIAZ'),
(34, 1, 1, '2024-01-23', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se migraron tablas de Mysql a Sql Server para la validación de ingreso al bot.', 1, 0, 'PEDRO FLORES DIAZ'),
(35, 1, 1, '2024-01-24', '09:00:00', '18:00:00', 9.00, 1, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se presentó el bot y se realizaron las pruebas unitarias de este para la creación de su documentación', 1, 0, 'PEDRO FLORES DIAZ'),
(36, 1, 1, '2024-01-25', '09:00:00', '18:00:00', 9.00, 1, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se comenzó a implementar en el bot el poder ver las consultas de potencia a través de bloques de consultas.', 1, 0, 'PEDRO FLORES DIAZ'),
(37, 1, 1, '2024-01-26', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'En desarrollo', 'Se culminó lo desarrollado desde el día anterior, esta funcionalidad permite poder realizar consultas por bloques que ayudará a los técnicos a revisar consultas realizadas con anterioridad.', 1, 0, 'PEDRO FLORES DIAZ'),
(38, 1, 1, '2024-01-29', '09:00:00', '18:00:00', 9.00, 1, 'Desarrollo', 'POD-INSTALACIONES', 'Se entregó el JSON y scripts del bot realizado', 'Se derivó el desarrollo del bot con Telegram al encargado de un bot realizado con anterioridad para la unificación de este. Se revisó el desarrollo del día 10/01 en cual se modificó el proyecto WinCore para complementar más funcionalidades', 1, 0, 'PEDRO FLORES DIAZ'),
(39, 1, 1, '2024-01-30', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'NO INFORMADO', 'Se revisó el proyecto llamado NCE Integración en el cual junto con el proyecto WinCore se creará una funcionalidad para acelerar la peticiones de potencia ', 1, 0, 'PEDRO FLORES DIAZ'),
(40, 1, 1, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, 'Desarrollo', 'POD-INSTALACIONES', 'NO INFORMADO', 'Se revisó el proyecto antes mencionado y se explicó el bot realizado a la personas encargado brindándole además un documento de pruebas unitarias ', 1, 0, 'PEDRO FLORES DIAZ'),
(741, 1, 5, '2024-01-02', '09:00:00', '13:00:00', 4.00, 3, 'Presentación Cliente', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(742, 1, 5, '2024-01-02', '14:00:00', '18:00:00', 4.00, 2, 'Validación y configuración de accesos', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(743, 1, 5, '2024-01-03', '09:00:00', '13:00:00', 4.00, 2, 'Instalación y configuración de programas ', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(744, 1, 5, '2024-01-03', '14:00:00', '18:00:00', 4.00, 2, 'Configuración de VPN', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(745, 1, 5, '2024-01-04', '09:00:00', '13:00:00', 4.00, 2, 'Configuración de VPN y desbloqueo de usuario', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(746, 1, 5, '2024-01-04', '14:00:00', '18:00:00', 4.00, 2, 'Obtención de código fuente Gitlab y revisión de Node-red', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(747, 1, 5, '2024-01-05', '09:00:00', '13:00:00', 4.00, 2, 'Revisión de código fuente de mejora en el reporte de factibilidad provincia', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(748, 1, 5, '2024-01-05', '14:00:00', '18:00:00', 4.00, 2, 'Reunión de revisión de requerimiento de agregación de 9 campos en reporte de factibilidad', 'Jorge Gonzales', 'NO INFORMADO', NULL, 1, 0, '0'),
(749, 1, 5, '2024-01-08', '09:00:00', '13:00:00', 4.00, 1, 'Agregación a nivel de frontend de 9 campos en el reporte de factibilidad', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(750, 1, 5, '2024-01-08', '14:00:00', '18:00:00', 4.00, 1, 'Agregación a nivel de reporte en el archivo xls la exportación de reporte y configuración de usuario para visualización de campos', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(751, 1, 5, '2024-01-09', '09:00:00', '13:00:00', 4.00, 2, 'Reunión de revisión de flujo de registro de ticket y visualización de 5 campos (opex, cadex, mantto, post, trans)', 'Jorge Gonzales, Carlos Bruno', 'NO INFORMADO', NULL, 1, 0, '0'),
(752, 1, 5, '2024-01-09', '14:00:00', '18:00:00', 4.00, 2, 'Configuración de flujo de registro de tickets y evaluación de registro a nivel de base de datos campos de OPEX, CADEX, MANTTO, POST, TRANS', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(753, 1, 5, '2024-01-10', '09:00:00', '13:00:00', 4.00, 2, 'Reunión con usuario sobre revisión del flujo de reporte de factibilidad incluyendo los 9 campos', 'Jorge Gonzales, Kennedy Atilio', 'NO INFORMADO', NULL, 1, 0, '0'),
(754, 1, 5, '2024-01-10', '14:00:00', '18:00:00', 4.00, 2, 'Preparación de documentos para pase a QA (Documento de prueba unitaria, y RFC)', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(755, 1, 5, '2024-01-11', '09:00:00', '13:00:00', 4.00, 2, 'Reunión con equipo de infraestructura para la revisión de carpeta compartida', 'Jhon Castañeda', 'NO INFORMADO', NULL, 1, 0, '0'),
(756, 1, 5, '2024-01-11', '14:00:00', '18:00:00', 4.00, 2, 'Pruebas y envió de validación de Arquitectura y QA para pase puesta a producción', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(757, 1, 5, '2024-01-12', '09:00:00', '13:00:00', 4.00, 2, 'Reunión de Transferencia - Mejoras en el Formulario de Mantenimiento de Planta Externa', 'Jorge Gonzales, Vanessa del Rocio, Giordan Arredondo', 'NO INFORMADO', NULL, 1, 0, '0'),
(758, 1, 5, '2024-01-12', '14:00:00', '18:00:00', 4.00, 2, 'Revisión de código fuente y flujo de mantenimiento de planta externa', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(759, 1, 5, '2024-01-15', '09:00:00', '13:00:00', 4.00, 1, 'Desarrollo de nuevo reporte de planta de ticket externo a nivel de frontend', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(760, 1, 5, '2024-01-15', '14:00:00', '18:00:00', 4.00, 1, 'Desarrollo de métodos para la carga de filtros de búsqueda, diseño de grilla', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(761, 1, 5, '2024-01-16', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Reunión de Mejoras de Módulo de Mantenimiento de Planta Externa', 'Carlos Bruno', 'Avance', NULL, 1, 0, '0'),
(762, 1, 5, '2024-01-16', '14:00:00', '18:00:00', 4.00, 2, '- Configuración de los inputs según control_name para lógica de filtro por área\r\n- Reunión sobre reporte de factibilidad 9 campos con usuario (Elias)', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(763, 1, 5, '2024-01-17', '09:00:00', '13:00:00', 4.00, 2, '- Validación de desarrollo sobre el reporte de mantenimiento ticket, búsqueda por fecha y filtros.\r\n- Lógica de limpiado de filtros de búsqueda', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(764, 1, 5, '2024-01-17', '14:00:00', '18:00:00', 4.00, 2, '- Validación de desarrollo sobre reporte de mantenimiento ticket, exportar en un archivo XLS', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(765, 1, 5, '2024-01-18', '09:00:00', '13:00:00', 4.00, 1, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Reunión sobre reporte de factibilidad prueba QA', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(766, 1, 5, '2024-01-18', '14:00:00', '18:00:00', 4.00, 1, '- Configuración de tipo de solicitud, subtipo de solicitud y categoría según filtros de área de reporte para visualización de ítems\r\n- Configuración de maestros para enlazar relación con área que reporta', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(767, 1, 5, '2024-01-19', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Reunión sobre observaciones de requerimiento sobre área responsable, área que reporta o área quien resuelve', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(768, 1, 5, '2024-01-19', '14:00:00', '18:00:00', 4.00, 2, '- Agregación a nivel de reporte en el archivo xls la exportación de reporte y configuración de usuario para visualización de campos.\r\n- Agregación de nuevo campo en tabla maestra de tipo de elemento, modificación de lógica que permita enviar parámetro', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(769, 1, 5, '2024-01-22', '09:00:00', '13:00:00', 4.00, 1, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Reunión de Mejoras de Módulo de Mantenimiento de Planta Externa\r\n- Adecuación de registro de ticket para asignación de valores por defecto', 'Carlos Bruno', 'NO INFORMADO', NULL, 1, 0, '0'),
(770, 1, 5, '2024-01-22', '14:00:00', '18:00:00', 4.00, 1, 'Se adecua los siugiente valores por defecto\r\n\r\n- Buscar Tipo de Solicitud: PETICION\r\n- Buscar sub Tipo de Solicitud:  ELEMENTOS OBSERVADOS\r\n- Buscar Categoría de Ticket: PET-PEXT\r\n\r\nAsimismo, se realiza configuración de tipo de elemento PUERTO OLD según el área que reporta', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(771, 1, 5, '2024-01-23', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Reunión de Mejoras de Módulo de Mantenimiento de Planta Externa', 'Carlos Bruno', 'Avance', NULL, 1, 0, '0'),
(772, 1, 5, '2024-01-23', '14:00:00', '18:00:00', 4.00, 2, '- Se procede a configurar para que pueda visualizarse los siguientes inputs\r\n\r\n|-- Subtipo de solicitud\r\n|-- Categoria Ticket\r\n\r\nAsimismo, se realiza configuración de tipo de elemento TENDIDOS según el área que reporta', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(773, 1, 5, '2024-01-24', '09:00:00', '13:00:00', 4.00, 1, '- Elaboración de scripts de Commints & Rollback para envió de pase a QA\r\n\r\n- Envió de correo para validación por parte de ingenieria de datos', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(774, 1, 5, '2024-01-24', '14:00:00', '18:00:00', 4.00, 1, '- Levantamiento de observaciones reportados por parte de ingeniera de datos referente a los scripts para envio a pase QA\r\n\r\n- Elaboración de documentos para pase a QA (RFC, PU)', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(775, 1, 5, '2024-01-25', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Levantamiento y actualización de documentos de pase a QA (RFC, PU)', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(776, 1, 5, '2024-01-25', '14:00:00', '18:00:00', 4.00, 2, '- Configuración y elaboración de manual para la creación de providers, interface para el funcionamiento de la consulta de información y visualización de información de reporte', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(777, 1, 5, '2024-01-26', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Levantamiento de observaciones según informe de Inspección de Código', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(778, 1, 5, '2024-01-26', '14:00:00', '18:00:00', 4.00, 2, '- Modificación de documento de pase, según el levantamiento de observaciones del informe de Inspección de Código\r\n- Actualización de código fuente sobre las modificación según informe de Inspección de Código', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(779, 1, 5, '2024-01-29', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Levantamiento de observaciones según informe de Inspección de Código', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(780, 1, 5, '2024-01-29', '14:00:00', '18:00:00', 4.00, 2, '- Modificación de RFC, incluyendo los archivos modificados por el informe de inspección de código.\r\n- Actualización de fuente en la carpeta de pase y actualización en la rama de de Mantenimiento PEXT.\r\n- Actualización de PST sobre las mejoras que fueron pasados al Sprint 2', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(781, 1, 5, '2024-01-30', '09:00:00', '13:00:00', 4.00, 2, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Levantamiento de observaciones según informe de Inspección de Código', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(782, 1, 5, '2024-01-30', '14:00:00', '18:00:00', 4.00, 2, '- Levantamiento de observación en el reporte de grilla, modificación en la consulta a la base de datos y sus condiciones.\r\n- Levantamiento de observación en el filtro de búsqueda, condicionamiento de búsqueda máximo de 7 días', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(783, 1, 5, '2024-01-31', '09:00:00', '13:00:00', 4.00, 3, '- Dayling de estatus de avance: ¿Qué hicimos ayer?, ¿Qué se realizara hoy?\r\n- Levantamiento de observación sobre cierre de ticket, no permitia actualizar el cierre ticket y tenia que actualizarse.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(784, 1, 5, '2024-01-31', '14:00:00', '18:00:00', 4.00, 3, '- Evaluación y estimación de tiempo en mejoras de Sprint 2 - Mantenimiento PEXT\r\n- Actualización de documento de pase sobre carpeta requerida en la sección de log para cierre de ticket', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(785, 1, 4, '2024-01-02', '09:00:00', '18:00:00', 9.00, 1, 'OnBoarding', 'Claudia Miranda', 'Finalizado', NULL, 1, 0, '0'),
(786, 1, 4, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Accesos', 'Claudia Miranda', 'Finalizado', NULL, 1, 0, '0'),
(787, 1, 4, '2024-01-04', '09:00:00', '18:00:00', 9.00, 2, 'Revisión de proyectos', 'Claudia Miranda', 'Finalizado', NULL, 1, 0, '0'),
(788, 1, 4, '2024-01-05', '09:00:00', '18:00:00', 9.00, 2, 'Revisión de proyectos', 'Claudia Miranda', 'Finalizado', NULL, 1, 0, '0'),
(789, 1, 4, '2024-01-08', '09:00:00', '18:00:00', 9.00, 1, 'OpticalCore', 'Jorge Gonzales', 'Avance', 'Solución de las propuestas de mejora del Formulario de mantenimiento de planta externa', 1, 0, '0'),
(790, 1, 4, '2024-01-09', '09:00:00', '18:00:00', 9.00, 2, 'OpticalCore', 'Jorge Gonzales', 'Avance', 'Solución de las propuestas de mejora del Formulario de mantenimiento de planta externa', 1, 0, '0'),
(791, 1, 4, '2024-01-10', '09:00:00', '18:00:00', 9.00, 2, 'OpticalCore', 'Jorge Gonzales', 'Avance', 'Solución de las propuestas de mejora del Formulario de mantenimiento de planta externa', 1, 0, '0'),
(792, 1, 4, '2024-01-11', '09:00:00', '18:00:00', 9.00, 2, 'OpticalCore', 'Jorge Gonzales', 'Avance', 'Solución de las propuestas de mejora del Formulario de mantenimiento de planta externa', 1, 0, '0'),
(793, 1, 4, '2024-01-12', '09:00:00', '18:00:00', 9.00, 2, 'OpticalCore', 'Jorge Gonzales', 'Avance', 'Solución de las propuestas de mejora del Formulario de mantenimiento de planta externa', 1, 0, '0'),
(794, 1, 4, '2024-01-15', '09:00:00', '18:00:00', 9.00, 1, 'Win.Accesos', 'Ralf Vivanco', 'Avance', 'Se me asignó otro proyecto', 1, 0, '0'),
(795, 1, 4, '2024-01-16', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Validación de almacenamiento en Redis', 1, 0, '0'),
(796, 1, 4, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Configuración para levantamiento de proyecto nuevo ambiente de desarrollo e Incorporación y configuración de los proyectos Redis y Selección de aplicaciones en el nuevo ambiente', 1, 0, '0'),
(797, 1, 4, '2024-01-18', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Generación de logeo por Gmail, Oulook en ambiente local', 1, 0, '0'),
(798, 1, 4, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Generación de logeo por Gmail, Oulook en ambiente local continuación', 1, 0, '0'),
(799, 1, 4, '2024-01-22', '09:00:00', '18:00:00', 9.00, 2, 'Accesos Win', 'Ralf Vivanco', 'Avance', 'Generación de logeo por Gmail, Oulook en ambiente local continuación', 1, 0, '0'),
(800, 1, 4, '2024-01-23', '09:00:00', '18:00:00', 9.00, 2, 'Accesos Win', 'Ralf Vivanco', 'Avance', 'Generación de logeo por Gmail, Oulook en ambiente local continuación', 1, 0, '0'),
(801, 1, 4, '2024-01-24', '09:00:00', '18:00:00', 9.00, 2, 'Accesos Win', 'Ralf Vivanco', 'Avance', 'Generación de logeo por Gmail, Oulook en ambiente local continuación', 1, 0, '0'),
(802, 1, 4, '2024-01-25', '09:00:00', '18:00:00', 9.00, 2, 'Accesos Win', 'Ralf Vivanco', 'Avance', 'Traspaso de proyecto e introducción a Win Core', 1, 0, '0'),
(803, 1, 4, '2024-01-26', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Revisión del proyecto y casos de uso', 1, 0, '0'),
(804, 1, 4, '2024-01-29', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Resolución de issues WinCore', 1, 0, '0'),
(805, 1, 4, '2024-01-30', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Resolución de issues WinCore', 1, 0, '0'),
(806, 1, 4, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, 'Win.Core', 'Ralf Vivanco', 'Avance', 'Resolución de issues WinCore', 1, 0, '0'),
(807, 1, 6, '2024-01-02', '09:00:00', '12:00:00', 3.00, 3, 'Presentación inicial', 'SOAINT', 'Conocer al equipo de WIN, POD Problemas', NULL, 1, 0, '0'),
(808, 1, 6, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Configuración de permisos', 'WIN', 'Configuración de accesos a repositorios, pruebas de conexión', NULL, 1, 0, '0'),
(809, 1, 6, '2024-01-04', '09:00:00', '18:00:00', 9.00, 1, 'Asignación de ticket .net, se deberá de instalar localmente el sistema LOG y el AUTH para la depuración', 'WIN', 'No se terminó la configuración de los sistemas en el local por problemas de acceso y errores de controladores y del en el levantamiento del proyecto', 'hay mucha demora en responder las solicitudes de ayuda, por eso la tarea de levantar los dos sistemas esta demorando', 1, 0, '0'),
(810, 1, 6, '2024-01-05', '09:00:00', '18:30:00', 9.00, 2, 'Corrección de errores de los sistemas AUTH y LOG para la depuración de los proyectos.', 'WIN', 'No se terminó el levantamiento del proyecto ', 'hay mucha demora en responder las solicitudes de ayuda, por eso la tarea de levantar los dos sistemas esta demorando.', 1, 0, '0'),
(811, 1, 6, '2024-01-08', '09:00:00', '12:57:00', 3.00, 2, 'Proy. ERP Netsuite - Oracle || Capacitación: Entrenamiento Técnico.', 'Víctor Manuel Torres Godoy', 'Conocer el funcionamiento y consultas en los eventos', NULL, 1, 0, '0'),
(812, 1, 6, '2024-01-08', '11:15:00', '13:00:00', 1.00, 2, 'Proy. ERP Netsuite - Oracle || Capacitación: Entrenamiento Técnico.', 'Víctor Manuel Torres Godoy', 'Plugins y librerías', NULL, 1, 0, '0'),
(813, 1, 6, '2024-01-08', '13:01:00', '14:30:00', 1.00, 2, 'Unión a una reunión existente del levantamiento del modulo AUTH', 'Jhon Giron', 'recisión del modulo y se retomara después de refrigerio', NULL, 1, 0, '0'),
(814, 1, 6, '2024-01-08', '14:30:00', '18:30:00', 4.00, 2, 'Unión a una reunión existente del levantamiento del modulo AUTH', 'Jhon Giron', 'continuación del modulo auth', 'son las 15:00 aun no se conectan los encargados de la reunión', 1, 0, '0'),
(815, 1, 6, '2024-01-08', '21:30:00', '23:59:00', 2.00, 2, 'Descarga, configuración y  preparación del proyecto Winet.Winforce para el día siguiente después de la capacitación', 'Jhon Giron', 'revisión del modulo Winet.Winforce', NULL, 1, 0, '0'),
(816, 1, 6, '2024-01-09', '09:00:00', '13:00:00', 4.00, 1, 'Proy. ERP Netsuite - Oracle || Capacitación: Entrenamiento Técnico.', 'Víctor Manuel Torres Godoy', 'Conocer el funcionamiento y consultas en los eventos', NULL, 1, 0, '0'),
(817, 1, 6, '2024-01-09', '14:00:00', '17:00:00', 3.00, 1, 'conectado en el POD de PROBLEMAS', 'Jhon Giron', 'Ver los casos del día y asignación de ticket 95598', NULL, 1, 0, '0'),
(818, 1, 6, '2024-01-09', '17:01:00', '18:00:00', 0.00, 1, 'capacitación WIN CORE', 'Jhon Giron', 'funcionamiento del sistema', 'no se concluyo la capacitación se indico que se continuara mañana', 1, 0, '0'),
(819, 1, 6, '2024-01-09', '21:00:00', '23:50:00', 2.00, 1, 'descarga del proyecto de win Core del repositorio en mi local para la capacitación del mañana', 'Jhon Giron', 'no se llego a levantar el proyecto por que necesitaba configuraciones de la conexión de la base de datos', NULL, 1, 0, '0'),
(820, 1, 6, '2024-01-10', '09:00:00', '12:30:00', 3.00, 2, 'capacitación WIN CORE continuación', 'Jhon Giron', '- configuración del archivo de configuración database.php\r\n- revisión inicial del ticket 95598\r\nNO APARECE LOS SVA DE LOS SERVICIOS - PRODUCTO WIN NEGOCIOS - PLANTA', 'se grabo el video de la reunión para la revisión del seguimiento a realizar para el debug del problema', 1, 0, '0'),
(821, 1, 6, '2024-01-10', '14:00:00', '17:00:00', 3.00, 2, 'revisión del video de la capacitación de WIN CORE', 'Jhon Giron', 'con la revisión del video procederé a depurar el ticket asignado', 'luego de la revisión del video procederé con la depuración del proyecto en PHP', 1, 0, '0'),
(822, 1, 6, '2024-01-10', '20:00:00', '23:59:00', 3.00, 2, 'debug del ticket asignado del sistema WIN CORE', 'Jhon Giron', 'se encontró que falta un token de aplicativo crm al cual se comunica , eso lo solicitare el día de mañana', NULL, 1, 0, '0'),
(823, 1, 6, '2024-01-10', '00:00:00', '02:00:00', 2.00, 2, 'debug del ticket asignado del sistema WIN CORE', 'Jhon Giron', 'se encontró que falta un token de aplicativo crm al cual se comunica , eso lo solicitare el día de mañana', NULL, 1, 0, '0'),
(824, 1, 6, '2024-01-11', '09:00:00', '13:00:00', 4.00, 1, 'debug del ticket asignado del sistema WIN CORE', 'Jhon Giron', '- con el token recibido se procede a realizar la revisión\r\n- se genero otro inconveniente en la utilización del nomo Developer parala invocación del api en SQL', NULL, 1, 0, '0'),
(825, 1, 6, '2024-01-11', '14:00:00', '18:00:00', 4.00, 1, 'debug del ticket asignado del sistema WIN CORE', 'Jhon Giron', '- se inicio la revisión con el monodeveloper', NULL, 1, 0, '0'),
(826, 1, 6, '2024-01-11', '17:30:00', '18:00:00', 0.00, 1, 'capacitación win crm', 'Jhon Giron', '- capacitación', NULL, 1, 0, '0'),
(827, 1, 6, '2024-01-12', '09:00:00', '13:00:00', 4.00, 2, 'levantamiento del proyecto win Core', 'Jhon Giron', '- modificación de conexión de bd con nuevas indicaciones', 'se probo y si se pudo conectar el sistema wincore', 1, 0, '0'),
(828, 1, 6, '2024-01-12', '14:00:00', '17:00:00', 3.00, 2, 'levantamiento del proyecto win Core y captura de información según código de pedido de prueba', 'Jhon Giron', '- recién cargo la información de los pedidos indicados en el proyecto local', 'se conocieron los parámetros requeridos para levantar el proyecto', 1, 0, '0'),
(829, 1, 6, '2024-01-12', '17:00:00', '18:00:00', 1.00, 2, '- reunión de informe de estados de ticket', 'Jhon Giron', 'conocer el nuevo procedimiento de trabajo y entregables en los nuevos proyectos', NULL, 1, 0, '0'),
(830, 1, 6, '2024-01-15', '09:00:00', '13:00:00', 4.00, 1, 'reunión presencial de inducción a operaciones', 'Gisela Vilca', 'no se pudo conectar el sistema, se reviso todas las funciones pero parece que es alguna configuración adicional', 'el requerimiento se solicito a Jhon Giron pero por las reuniones que se tuvieron se complico que me indiquen la solución del error', 1, 0, '0'),
(831, 1, 6, '2024-01-15', '14:00:00', '18:00:00', 4.00, 1, 'revisión del sistema wincore con otros códigos de tipo 5XXXXX', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(832, 1, 6, '2024-01-16', '09:00:00', '13:00:00', 4.00, 2, 'revisión del ticket y seguimiento de servicios involucrados en la búsqueda de pedido', 'Jhon Giron', 'se debe modificar el procedimiento almacenado para la solución requerida', 'el día de mañana se procederá con la generación de los rfc y pu para el pase a producción', 1, 0, '0'),
(833, 1, 6, '2024-01-16', '14:00:00', '19:00:00', 5.00, 2, 'detección del error en el procedimiento de almacenado para la solución del ticket', 'Jhon Giron', 'documentaron de lo realizado en las notas de mesade ayuda', NULL, 1, 0, '0'),
(834, 1, 6, '2024-01-16', '21:00:00', '23:00:00', 2.00, 2, 'generación de las notas del caso en la mesa de ayuda asignada al ticket 95598', 'Jhon Giron', 'indicación e llenado del documento rfc para pase a producción', NULL, 1, 0, '0'),
(835, 1, 6, '2024-01-17', '09:00:00', '11:00:00', 2.00, 2, 'capacitación de llenado de documento de entrega RFC para el pase a producción', 'Jhon Giron', 'se revisaron los casos y todo quedo conforme', NULL, 1, 0, '0'),
(836, 1, 6, '2024-01-17', '11:00:00', '15:00:00', 4.00, 2, 'revisión de procesos para la preparación del correo para el pase a producción', 'Jhon Giron', 'se enviaron correo a ingeniería de datos y arquitectura para su verificación y aprobación', 'una vez recibido los correos de aprobación se procederá con el envió de correo a Gobierno de TI para que planifiquen el pase a producción\r\n\r\nson las 6.60 y aún estamos a la espera del correo, seguro lo enviaran el día de mañana', 1, 0, '0'),
(837, 1, 6, '2024-01-17', '15:00:00', '17:40:00', 2.00, 2, 'creación de correo para las distintas áreas previas al pase de producción', 'Jhon Giron', 'se esta revisando el procedimiento almacenado asociado al proceso', NULL, 1, 0, '0'),
(838, 1, 6, '2024-01-18', '09:00:00', '11:50:00', 2.00, 2, 'capacitación de sistema ecom con un ticket asignado a José Peralta', 'Jhon Giron', 'se revisa el correo y el historial del caso asignado', 'Se revisa los antecedentes para estar preparado en la reunión', 1, 0, '0'),
(839, 1, 6, '2024-01-18', '11:56:00', '12:30:00', 0.00, 2, 'revisión de nuevo caso asignado PORY-0009-2023', 'Jhon Giron', 'envió de correo para la preparación final de envió de correo a gobierno de TI', 'se envió el correo pero estamos a la espera de la confirmación del pod para la autorización al pase de producción de la solución del ticket asignado 95598', 1, 0, '0'),
(840, 1, 6, '2024-01-18', '12:40:00', '13:00:00', 0.00, 2, 'hacer correo de evidencia del ticket cerrado y enviarlo por correo al POD problemas', 'Jhon Giron', 'se revisa el correo y el historial del caso asignado', 'Se revisa los antecedentes para estar preparado en la reunión', 1, 0, '0'),
(841, 1, 6, '2024-01-18', '13:00:00', '17:00:00', 4.00, 2, 'revisión de nuevo caso asignado PORY-0009-2023', 'Jhon Giron', 'aprendizaje de funcionamiento de sistema SAN en los puntos indicados de la mejora', NULL, 1, 0, '0'),
(842, 1, 6, '2024-01-18', '17:00:00', '18:00:00', 1.00, 2, 'demostración de proyecto de mejora PROY-0009-2023', 'Roger Coba', 'NO INFORMADO', 'Por la hora el día de mañana se procederá a la descarga del proyecto y a la revisión del caso', 1, 0, '0'),
(843, 1, 6, '2024-01-18', '18:00:00', '19:00:00', 1.00, 2, 'revisión de tickets y asignación de uno nuevo 96671', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(844, 1, 6, '2024-01-19', '09:00:00', '11:00:00', 2.00, 2, 'reunión de seguimiento de tareas y tickets asignados', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(845, 1, 6, '2024-01-19', '11:00:00', '12:00:00', 1.00, 2, 'llenado de información en los Excel compartidos de los tickets asignados', 'Jhon Giron', 'se demostró la solución del del problema', NULL, 1, 0, '0'),
(846, 1, 6, '2024-01-19', '12:00:00', '13:00:00', 1.00, 2, 'explicación y demostración de solución encontrada para la tarea 96671', 'Jhon Giron', 'se realizo la documentación del PU del problema 96671', NULL, 1, 0, '0'),
(847, 1, 6, '2024-01-19', '14:00:00', '17:00:00', 3.00, 2, 'se documento la solución del problema del ticket 96671 de win Experiencias', 'Jhon Giron', 'Se inicio el análisis del problema', NULL, 1, 0, '0'),
(848, 1, 6, '2024-01-19', '17:00:00', '17:30:00', 0.00, 2, 'se asigno un nuevo caso el ticket 97045 de Win Experiencias', 'Jhon Giron', 'Se esta exponiendo el pase a producción del caso', NULL, 1, 0, '0'),
(849, 1, 6, '2024-01-19', '17:30:00', '18:00:00', 0.00, 2, 'reunión previa al pase de producción del ticket 95598', 'Jhon Giron', 'NO INFORMADO', 'se envía correo y se esta a la espera de la respuesta de usuario final', 1, 0, '0'),
(850, 1, 6, '2024-01-19', '18:00:00', '18:30:00', 0.00, 2, 'indicaciones de como enviar el correo para la aprobación de usuario final del ticket 95598', 'Jhon Giron', 'NO INFORMADO', 'se envía correo y se esta a la espera de la respuesta de usuario final', 1, 0, '0'),
(851, 1, 6, '2024-01-19', '18:30:00', '19:00:00', 0.00, 2, 'actualización de Excel de tickets asignados\r\nactualización denotas en la web de mesa de ayuda con la solución al ticket 95598', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(852, 1, 6, '2024-01-22', '09:00:00', '13:00:00', 4.00, 2, 'revisión de casos de prueba con código modificado y generación de documentación para pruebas internas e inicio de envío de correos de solución', 'Jhon Giron', '- se lleno el documento  PU\r\n- se creo el correo de LOG para las pruebas internas', NULL, 1, 0, '0'),
(853, 1, 6, '2024-01-22', '14:00:00', '15:30:00', 1.00, 2, 'generación de txt de prueba para enviárselo al líder técnico', 'Jhon Giron', '- se genero los txt para que se realicen las pruebas y comparen los códigos antes y después del cambio en PHP', NULL, 1, 0, '0'),
(854, 1, 6, '2024-01-22', '15:30:00', '16:00:00', 0.00, 2, 'revisión y pruebas de script automático de creación de índices', 'Jhon Giron', '- se genero los scripts en formato txt para la generación de índices en MySQL , con sus respectivos roolback\r\n- se realizaron las pruebas del script enviado en el ambiente pruebas', NULL, 1, 0, '0'),
(855, 1, 6, '2024-01-22', '16:00:00', '17:00:00', 1.00, 2, 'revisión de requerimiento 97045 de CRM Experiencias', 'Jhon Giron', 'NO INFORMADO', 'no fue asignado directamente pero me indicaron que lo vaya revisando', 1, 0, '0'),
(856, 1, 6, '2024-01-22', '17:50:00', '18:30:00', 0.00, 2, 'reunión de estatus de puntos pendientes', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(857, 1, 6, '2024-01-23', '09:00:00', '13:00:00', 4.00, 2, '- actualización de estatus de Excel de win\r\n- revisión de nuevo ticket 97045 de CRM Experiencias\r\n- se migro el proyecto al sistema local y se esta levantando el sistema para las pruebas solicitadas', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(858, 1, 6, '2024-01-23', '14:00:00', '18:00:00', 4.00, 2, '- se levanto el sistema y se esta realizando el seguimiento del caso 97045', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(859, 1, 6, '2024-01-24', '09:00:00', '11:30:00', 2.00, 2, '- se levanto el sistema y se esta realizando el seguimiento del caso 97045', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(860, 1, 6, '2024-01-24', '11:30:00', '12:00:00', 0.00, 2, 'capacitación proyecto QA - plan de cuentas v2 crm empresas', 'Orestes Aron', 'conocer el funcionamiento del sistema para futuros soportes de problemas', NULL, 1, 0, '0'),
(861, 1, 6, '2024-01-24', '12:00:00', '13:00:00', 1.00, 2, 'revisión del caso 97045 identificando el problema', 'Jhon Giron', 'NO INFORMADO', 'se realiza el seguimiento en PHP el seguimiento de la consulta a la BD con problemas', 1, 0, '0'),
(862, 1, 6, '2024-01-24', '14:00:00', '18:00:00', 4.00, 2, 'nevos casos de prueba del ticket 96671\r\n\r\nnuevas evidencias de tiempo y revisión de otras llaves para mejora de la consulta\r\n\r\nnuevas evidencias a nivel de aplicación mostrando el tiempo de respuesta\r\n\r\ngeneración del PU actualizado', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(863, 1, 6, '2024-01-24', '17:15:00', '17:49:00', 0.00, 2, 'reunión EXPLICACIÓN REGISTRO  NUEVA PLANTILLA RFC - PASE A PRODUCCIÓN', 'Wilmer Ramos Aguardo', 'explicación de llenado de nuevo formato RFC', NULL, 1, 0, '0'),
(864, 1, 6, '2024-01-24', '17:49:00', '18:00:00', 0.00, 2, 'generación del correo de LOG del caso 96671', 'Jhon Giron', 'envío de pruebas por correo al POD de problemas con el LOG de pruebas realizadas, como evidencia ante cualquier consulta de otras áreas', NULL, 1, 0, '0'),
(865, 1, 6, '2024-01-25', '09:00:00', '11:00:00', 2.00, 2, 'creación de documento RC y actualización de correo de LOG caso 96671', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(866, 1, 6, '2024-01-25', '11:00:00', '12:15:00', 1.00, 2, 'reunión de revisión de estatus de tickets a todo el POD\r\nAsignación de nuevo ticket 97514 - Problemas con exporte de reporte - CRM', 'Gisela Vilca', 'NO INFORMADO', 'se me asigno el cuarto ticket 97514', 1, 0, '0'),
(867, 1, 6, '2024-01-25', '12:15:00', '13:00:00', 0.00, 2, 'continuación de creación de documento RC y actualización de correo de LOG caso 96671', 'Jhon Giron', 'NO INFORMADO', 'se continuó la documentación después de la reunión anterior', 1, 0, '0'),
(868, 1, 6, '2024-01-25', '14:00:00', '17:00:00', 3.00, 2, 'preparación y envío de correo a ingeniería de datos, infraestructura y pod de experiencia del ticket 96671\r\n', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(869, 1, 6, '2024-01-25', '17:00:00', '17:30:00', 0.00, 2, 'explicación de solución de ticket 97045 - QUITAR OPCIONES VENTANA GENERACIÓN DEL CASO CANALES DE DIRECTV\r\n', 'Jhon Giron', 'se explico al líder técnico la solución del tercer ticket asignado, el cual aprobó la solución y luego del envío del segundo ticket a Gobierno de Ti se procederá a documentarse y enviar los respectivos correos', NULL, 1, 0, '0'),
(870, 1, 6, '2024-01-25', '17:30:00', '18:00:00', 0.00, 2, 'preparación de correo a Gobierno de TI con el caso 96671 para su aprobación para el pase a producción.\r\n', 'Jhon Giron', 'NO INFORMADO', 'estamos a la espera del correo de aprobación del pod experiencia, para hacer el envío del correo para el pase final a producción.', 1, 0, '0'),
(871, 1, 6, '2024-01-26', '09:00:00', '09:30:00', 0.00, 2, 'Reenvió de correo a POD Experiencia solicitando validación de pruebas', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(872, 1, 6, '2024-01-26', '09:30:00', '12:00:00', 2.00, 2, 'Revisión de casos pendientes con todo el POD de Problemas\r\nRevisión de ticket 97045 con Líder Técnico', 'Jhon Giron', 'Se revisó el caso 97045 y se quedo en modificar el PU adicionando los casos que no sean usuarios de DIRECTV y adicionar fotos del logeo para capturar el código 59 de subárea', NULL, 1, 0, '0'),
(873, 1, 6, '2024-01-26', '12:00:00', '12:49:00', 0.00, 2, 'PROY-0003-2024TI-WIN ERP - Generación de reporte de cobranzas y comprobantes | Realización de Pruebas - Ambiente Desarrollo', 'Sergio Castillón Zapata', 'NO INFORMADO', NULL, 1, 0, '0'),
(874, 1, 6, '2024-01-26', '12:49:00', '13:47:00', 0.00, 2, 'reunión caso DIRECTV\r\n', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(875, 1, 6, '2024-01-26', '14:47:00', '18:00:00', 3.00, 2, 'Modificación del PU 97045\r\n', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(876, 1, 6, '2024-01-29', '09:00:00', '10:30:00', 1.00, 2, 'Preparación y envío de correo del segundo pase a producción ticket 96671\r\nEnvío de correo de LOG actualizado al pod de problemas.', 'Jhon Giron', 'Se envió correo de pase a producción a gobierno de TI', 'estaremos a la espera de la autorización puesto que el pase lo realizarían recién el martes 30.01.2024', 1, 0, '0'),
(877, 1, 6, '2024-01-29', '10:30:00', '11:30:00', 1.00, 2, 'Capacitación PROY-0011-2023-Mejoras en el Módulo de Mantenimiento – Planta Externa', 'Elías Joel Cruz Rojas', 'NO INFORMADO', NULL, 1, 0, '0'),
(878, 1, 6, '2024-01-30', '09:00:00', '13:00:00', 4.00, 2, 'Revisión de nuevo Ticket asignado: 98111 - Incidencia en el registro de las programaciones y reprogramaciones de la bandeja de VT', 'Jhon Giron', 'Se instalo correctamente el sistema y se procede con la revisión del ticket y de todos los tickets asociados al 98111', NULL, 1, 0, '0'),
(879, 1, 6, '2024-01-30', '14:00:00', '17:30:00', 3.00, 2, 'Seguimiento de nuevo Ticket asignado: 98111 - Incidencia en el registro de las programaciones y reprogramaciones de la bandeja de VT', 'Jhon Giron', 'Se esta revisando el código PHP del caso solicitado', NULL, 1, 0, '0'),
(880, 1, 6, '2024-01-30', '17:30:00', '18:46:00', 1.00, 2, 'Capacitación: PROY-005-2024/EXP-WIN-Actualización de textos y links de Mi  Portal WIN', 'Milagros Rojas Vargas', 'NO INFORMADO', NULL, 1, 0, '0'),
(881, 1, 6, '2024-01-30', '18:46:00', '19:30:00', 0.00, 2, 'Seguimiento de nuevo Ticket asignado: 98111 - Incidencia en el registro de las programaciones y reprogramaciones de la bandeja de VT', 'Jhon Giron', 'Se esta analizando el problema encontrado.', NULL, 1, 0, '0'),
(882, 1, 6, '2024-01-31', '09:00:00', '10:00:00', 1.00, 2, 'Revisión del ticket 98111', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(883, 1, 6, '2024-01-31', '10:00:00', '13:00:00', 3.00, 2, 'Reunión de Estados de tickets por usuario', 'Jhon Giron', 'NO INFORMADO', NULL, 1, 0, '0'),
(884, 1, 6, '2024-01-31', '14:00:00', '16:00:00', 2.00, 2, 'Se esta modificando el RFC del ticket 97045 con los últimos cambios solicitados', 'Jhon Giron', 'NO INFORMADO', 'Después de la reunión de la mañana se esta realizando los cambios solicitados por el LT, seguimiento el RFC y el PU que se había terminado.', 1, 0, '0'),
(885, 1, 6, '2024-01-31', '16:00:00', '19:00:00', 3.00, 2, 'Reunión con LT para la revisión del RFC y PU previos al pase a producción del ticket 97045', 'Jhon Giron', 'Se terminaron los documentos y se realizaron mas pruebas de validación con los nuevos cambios en la rama del sistema CRM Experiencia puesto que modificaron los accesos de ingreso al sistema, el día de mañana se continuara puesto que el encargado del modulo estará actualizando en producción hoy en la noche el tema de los accesos.', NULL, 1, 0, '0'),
(886, 1, 7, '2024-01-02', '09:00:00', '18:00:00', 9.00, 3, 'confraternidad', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(887, 1, 7, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(888, 1, 7, '2024-01-04', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(889, 1, 7, '2024-01-05', '09:00:00', '18:00:00', 9.00, 2, 'Revisión y análisis WINFORCE', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(890, 1, 7, '2024-01-08', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(891, 1, 7, '2024-01-09', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(892, 1, 7, '2024-01-10', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(893, 1, 7, '2024-01-11', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(894, 1, 7, '2024-01-12', '09:00:00', '18:00:00', 9.00, 1, 'Análisis documento DEF -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'SE IDENTIFICAN DOS GRUPOS DE CLIENTES. RUC20 Y LOSOTROS TIPO. LA INFORMACION ES CARGADA DE OTROS CAMPOS DEL SERVICIO EQUIFAX', 1, 0, '0'),
(895, 1, 7, '2024-01-15', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento PS -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(896, 1, 7, '2024-01-16', '09:00:00', '18:00:00', 9.00, 2, 'Documentación PS -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'SE PRESENTA DOCUMENTO DE AVANCE', 1, 0, '0'),
(897, 1, 7, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento PS -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(898, 1, 7, '2024-01-18', '09:00:00', '18:00:00', 9.00, 2, 'Análisis documento PS -SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(899, 1, 7, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, 'WINFORCE Revision tecnica - CODIGO-SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE', 1, 0, '0'),
(900, 1, 7, '2024-01-22', '09:00:00', '18:00:00', 9.00, 2, 'WINFORCE Revision tecnica - CODIGO-SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE', 1, 0, '0'),
(901, 1, 7, '2024-01-23', '09:00:00', '18:00:00', 9.00, 2, 'WINFORCE Revision tecnica - CODIGO-SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE - REUNION', 1, 0, '0'),
(902, 1, 7, '2024-01-24', '09:00:00', '18:00:00', 9.00, 2, 'WINFORCE Revision tecnica - CODIGO-SERVICIO EQUIFAX -SCRORE CREDITICIO', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE', 1, 0, '0'),
(903, 1, 7, '2024-01-25', '09:00:00', '18:00:00', 9.00, 2, 'SCRENSQLLING configuracion y revision tecnica - CODIGO-SERVICIO EQUIFAX - API WINCER', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE - REUNION', 1, 0, '0'),
(904, 1, 7, '2024-01-26', '09:00:00', '18:00:00', 9.00, 1, 'SCRENSQLLING Revision tecnica - CODIGO-SERVICIO EQUIFAX - API CRMWIN', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE', 1, 0, '0'),
(905, 1, 7, '2024-01-29', '09:00:00', '18:00:00', 9.00, 2, 'SCRENSQLLING Revision tecnica - CODIGO-SERVICIO EQUIFAX - API CRMWIN', 'José Galindo', 'NO INFORMADO', 'REVISION DE CODIGO PHP - MODULO WINFORE - REUNION', 1, 0, '0'),
(906, 1, 7, '2024-01-30', '09:00:00', '18:00:00', 9.00, 2, 'PERMISO', 'José Galindo', 'NO INFORMADO', 'Por lesión en el pie, le solicité el permiso a José Galindo.', 1, 0, '0'),
(907, 1, 7, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, 'CRONOGRAMA TENTATIVO', 'José Galindo', 'NO INFORMADO', NULL, 1, 0, '0'),
(908, 1, 8, '2024-01-02', '09:00:00', '18:00:00', 9.00, 3, 'Inducción WIN, Coordinaciones con el equipo, entrega de laptop y contrato.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(909, 1, 8, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Descarga, Instalación de app (Visual, SQL, postman, Gitlab, PosgreSQL, Office, FortClient, Team), configuración.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(910, 1, 8, '2024-01-04', '09:00:00', '18:00:00', 9.00, 1, 'Verificación de credenciales, coordinación de accesos, capacitación.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(911, 1, 8, '2024-01-05', '09:00:00', '18:00:00', 9.00, 2, 'Capacitación y  resolución de tickets', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(912, 1, 8, '2024-01-08', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket  94730, Capacitación.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(913, 1, 8, '2024-01-09', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket  95482, Capacitación., Reunión', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(914, 1, 8, '2024-01-10', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket  95676, Capacitación.', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(915, 1, 8, '2024-01-11', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket  94820,94761', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(916, 1, 8, '2024-01-12', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket  95676, 96596 Reunión', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(917, 1, 8, '2024-01-15', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket  96554, 96553 Reunión', 'Usuario', 'Resuelto', NULL, 1, 0, '0'),
(918, 1, 8, '2024-01-16', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket  96555, 96551', 'Usuario', 'Resuelto', NULL, 1, 0, '0'),
(919, 1, 8, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, 'Capacitación', 'Usuario', 'Resuelto', NULL, 1, 0, '0'),
(920, 1, 8, '2024-01-18', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket  96555, 96551, 96387', 'Usuario', 'Resuelto', NULL, 1, 0, '0'),
(921, 1, 8, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, 'Capacitación y resolución de ticket 96026, 97117', 'Usuario', 'Resuelto', NULL, 1, 0, '0'),
(922, 1, 8, '2024-01-22', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket 97251 97252', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(923, 1, 8, '2024-01-23', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket 97254 Capacitación', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(924, 1, 8, '2024-01-24', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket 97563, 97566 ', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0');
INSERT INTO `tbl_operacion_servicio_actividades` (`id_servicio_actividad`, `id_operacion_servicio`, `id_consultor`, `fecha_inicio`, `hora_inicio`, `hora_fin`, `esfuerzo_hrs`, `id_modalidad`, `actividad_tarea`, `solicitante`, `resultado`, `notas`, `id_delivery_manager`, `delivery_manager_aprobacion`, `delivery_manager_cliente_nombre`) VALUES
(925, 1, 8, '2024-01-25', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket 97684 97685 97708 ', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(926, 1, 8, '2024-01-26', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket 97853 Capacitación', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(928, 1, 8, '2024-01-29', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket 97964 98041', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(929, 1, 8, '2024-01-30', '09:00:00', '18:00:00', 9.00, 1, 'Resolución  de ticket 97964  982014 Capacitación', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(930, 1, 8, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, 'Resolución  de ticket 98201 98283 98369', 'NO INFORMADO', 'NO INFORMADO', NULL, 1, 0, '0'),
(931, 1, 9, '2024-01-02', '09:00:00', '18:00:00', 9.00, 3, 'Capacitación, reunión con lideres y segmentación de equipos', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(932, 1, 9, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Instalación y configuración de programas Visual studio, SQL Server, Visual studio Code, ETC', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(933, 1, 9, '2024-01-04', '09:00:00', '18:00:00', 9.00, 2, 'Pruebas de los equipos con la VPN, Conexión a BASES DE DATOS SQL, etc. ', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(934, 1, 9, '2024-01-05', '09:00:00', '18:00:00', 9.00, 2, 'Pruebas de los equipos con la VPN, Conexión a BASES DE DATOS SQL, etc. ', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(935, 1, 9, '2024-01-08', '09:00:00', '18:00:00', 9.00, 2, '-', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(936, 1, 9, '2024-01-09', '09:00:00', '18:00:00', 9.00, 2, 'Reunión de capacitación\r\nVideos de capacitación ERP NETSUI', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(937, 1, 9, '2024-01-10', '09:00:00', '18:00:00', 9.00, 2, 'Reunión de capacitación\r\nVideos de capacitación ERP NETSUI', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(938, 1, 9, '2024-01-11', '09:00:00', '18:00:00', 9.00, 2, 'Mapeo de campos de flujo de proceso de FACTURA\r\nRevisión de flujo de procedimientos y tablas', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(939, 1, 9, '2024-01-12', '09:00:00', '18:00:00', 9.00, 2, 'Mapeo de campos de flujo de proceso de PAGOS\r\nRevisión de flujo de procedimientos y tablas', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(940, 1, 9, '2024-01-15', '09:00:00', '18:00:00', 9.00, 2, 'Mapeo de campos de flujo de proceso de RECIBOS\r\nRevisión de flujo de procedimientos y tablas', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(941, 1, 9, '2024-01-16', '09:00:00', '18:00:00', 9.00, 2, 'Revisión de Documentación de APIS REST WEB Service\r\nCapacitación de consumo de servicio API REST', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(942, 1, 9, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, '1. Creación de procedimientos almacenado [BANK].[BANKB_PA_LISTA_PAGOS_CONTABILIDAD_WIN_DEMO] \r\n2. Creación de procedimientos almacenado [ECOM].[ECOMB_PA_BUSCAR_PCONCAR_COMPROBANTE_CAB_DEMO]\r\n3. Instalación y Configuración de NODE RED\r\n4. Capacitación de Consumo y creación de servicios REST desde NET SUI', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(943, 1, 9, '2024-01-18', '09:00:00', '18:00:00', 9.00, 2, '1. Optimización de procedimientos almacenado [BANK].[BANKB_PA_LISTA_PAGOS_CONTABILIDAD_WIN_DEMO] \r\n2. Optimización de procedimientos almacenado [ECOM].[ECOMB_PA_BUSCAR_PCONCAR_COMPROBANTE_CAB_DEMO]\r\n3. Creación de Flujo de proceso de exportar información de Comprobantes en NODE-RED\r\n4. Creación de Flujo de proceso de exportar información de Pagos en NODE-RED\r\n5. Pruebas en ambientes http://10.1.2.18:1884/ de los flujos de node RED, cobranza y pagos.', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(944, 1, 9, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, '1. Modificación de Flujo de proceso de exportar información de Comprobantes en NODE-RED\r\n2. Modificación de Flujo de proceso de exportar información de Pagos en NODE-RED\r\n3. Optimización de procedimientos almacenados [BANK].[BANKB_PA_LISTA_PAGOS_CONTABILIDAD_WIN_DEMO] , [ECOM].[ECOMB_PA_BUSCAR_PCONCAR_COMPROBANTE_CAB_DEMO]\r\n4. Pruebas de Exportación de información de a ambientes LINUX y Actualización de Información de Pagos y cobranzas en Base de datos. (25K)', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(945, 1, 9, '2024-01-22', '09:00:00', '18:00:00', 9.00, 2, '1. Seguimiento de flujo de cobranzas y pagos en NODE-RED\r\n2. Modificación de nombres de procedimientos almacenados [BANK].[BANKB_PA_LISTA_PAGOS_CONTABILIDAD_NETSUITE] y [ECOM].[ECOMB_PA_BUSCAR_NETSUITE_COMPROBANTE_CAB]\r\n3. Documentación de cambios realizados en los procedimientos almacenados mencionados en el punto 2.\r\n4. Definición de valores en HARD-CORE dentro de los procedimientos almacenados mencionados en el punto 2.\r\n5. Se optimizó el documento de pase para su revisión para calidad PS-PROY-0003-2024TI-WIN ERP- Generación de reporte de cobranzas y comprobantes.', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(946, 1, 9, '2024-01-23', '09:00:00', '18:00:00', 9.00, 2, '1. Pruebas de montaje de unidades para que el reporte de Pagos y Cobranzas(Archivos CSV) se descarguen en la ruta.\r\n2. Generación de documento de Casos de Prueba Unitarias ([PU] PROY-0003-2024TI-WIN ERP - Generación de reporte de cobranzas y comprobantes)\r\n3. Preparación de correos de conformidad de ambientes y conformidad de calidad para los procedimientos almacenados.', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(947, 1, 9, '2024-01-24', '09:00:00', '18:00:00', 9.00, 2, '1. Reunión con líder para la explicación del armado de script de la Carga Masiva de comprobantes de pago.\r\n2. Creación de script de plantilla para la carga Masiva de comprobantes de Pago\r\n3. Pruebas de validación de script de plantilla', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(948, 1, 9, '2024-01-25', '09:00:00', '18:00:00', 9.00, 2, '1. Creación de tablas de Clases, Departamentos y Ubicaciones \r\n2. Alteración de tabla de TIPO_COMPROBANTE, adición de 2 campos para el control de Descripción\r\n3. Creación de SCRIPT de carga masiva para las tablas de Clases, Departamentos y Ubicaciones\r\n4. Generación de SCRIPT de Carga masiva INICIAL haciendo referencia a las nuevas tablas.\r\n5. Alteración y modificación de procedimientos almacenados [BANK].[BANKB_PA_LISTA_PAGOS_CONTABILIDAD_NETSUITE] y [ECOM].[ECOMB_PA_BUSCAR_NETSUITE_COMPROBANTE_CAB]', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(949, 1, 9, '2024-01-26', '09:00:00', '18:00:00', 9.00, 2, '1. Se realizo prueba con usuarios de ambientes de QA, de la extracción de información de los archivos CSV de Pagos y Cobranzas.\r\n2. Se realizo actualización de documentos PS y CU', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(951, 1, 9, '2024-01-29', '09:00:00', '18:00:00', 9.00, 2, '1. Reunión de capacitación\r\nVideos de capacitación ERP NETSUI', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(952, 1, 9, '2024-01-30', '09:00:00', '18:00:00', 9.00, 2, '1. Reunión de capacitación\r\nVideos de capacitación ERP NETSUI ', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(953, 1, 9, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, '1. Reunión de capacitación\r\nVideos de capacitación ERP NETSUI\r\n2. Actualización de ruta nueva \\10.1.2.112\reportes_netsuite en el archivo de monunt.sh de compartida para la descarga de los archivos CSV de PAGOS Y COBRANZAS. \r\n3. Reunión de asignación de Tarea y explicación del proceso de SUSPENSIÓN DE INTERNET', 'ROGER JIMENEZ MALPARTIDA', 'NO INFORMADO', NULL, 1, 0, '0'),
(954, 1, 10, '2024-01-02', '09:00:00', '18:00:00', 9.00, 1, 'Capacitación', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Capacitación Oracle Administración y nueva integración', 1, 0, '0'),
(955, 1, 10, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Capacitación', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Capacitación Oracle Administración y nueva integración', 1, 0, '0'),
(956, 1, 10, '2024-01-04', '09:00:00', '18:00:00', 9.00, 2, 'Capacitación', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Capacitación Oracle Administración y nueva integración', 1, 0, '0'),
(957, 1, 10, '2024-01-05', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Propuesta de Solución DNI consulta por APP BCP etc.', 1, 0, '0'),
(958, 1, 10, '2024-01-08', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Propuesta de Solución DNI consulta por APP BCP etc.', 1, 0, '0'),
(959, 1, 10, '2024-01-09', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Propuesta de Solución DNI consulta por APP BCP etc.', 1, 0, '0'),
(960, 1, 10, '2024-01-10', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(961, 1, 10, '2024-01-11', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(962, 1, 10, '2024-01-12', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(963, 1, 10, '2024-01-15', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(964, 1, 10, '2024-01-16', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(965, 1, 10, '2024-01-17', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en Ticket', 1, 0, '0'),
(966, 1, 10, '2024-01-18', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en Ticket', 1, 0, '0'),
(967, 1, 10, '2024-01-19', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Levantar aplicativo mi Portal', 1, 0, '0'),
(968, 1, 10, '2024-01-22', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en Ticket', 1, 0, '0'),
(969, 1, 10, '2024-01-23', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(970, 1, 10, '2024-01-24', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(971, 1, 10, '2024-01-25', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(972, 1, 10, '2024-01-26', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(973, 1, 10, '2024-01-29', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', 'Apoyo en proyecto ECOM 1 Empresa', 1, 0, '0'),
(974, 1, 10, '2024-01-30', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', ' \r\n - Creación de PK de comprobantes, clientes, cobranzas y conciliación para PE_WIN_ADM, las PK sería una numeración mayor a 500millones.\r\n\r\n- Nuevo repositorio para BANK', 1, 0, '0'),
(975, 1, 10, '2024-01-31', '09:00:00', '18:00:00', 9.00, 2, 'Proyecto ECOM', 'ROGER ANDRE JIMENEZ', 'NO INFORMADO', '-  Job para truncar las tablas deudas para WIN y WINEMPRESAS a ejecutarse antes de las 12-15am este proceso debe ejecutarse antes del proceso masivo \r\n- Modificar SP deudas masivas WIN y WINEMPRESAS, retirando el TRUNCATE, el JOB se ejecutaría después de las 12-30am', 1, 0, '0'),
(976, 1, 11, '2024-01-02', '10:00:00', '12:00:00', 2.00, 1, 'Presentación con el equipo WIN', 'SOAINT', 'Conocimiento de todo el equipo de WIN. Inducción del proceso de atención. Asignación de equipo de trabajo.', NULL, 1, 0, '0'),
(977, 1, 11, '2024-01-03', '09:00:00', '18:20:00', 9.00, 2, 'Instalación de Programas para atención de problemas. Inducción simple de accesos. Descarga de Proyectos de .Net', 'WIN', 'Se realizó la instalación de programas: POSTMAN, XAMP, PHP, Visual Net 2019, Management SQL Server, PostgreSQL. ', 'Se realizo la instalación de los programas solicitados por el usuarios. Usuario realizó coordinaciones para solicitar accesos a los repositorios del GIT y base de datos.', 1, 0, '0'),
(978, 1, 11, '2024-01-04', '09:00:00', '18:42:00', 9.00, 1, 'Inducción para el levantamiento de los proyectos por parte del equipo de incidencias. Configuración de proyectos.', 'WIN', 'Se realizó la descarga de los proyectos del repositorio. No se finalizó con la configuración del proyecto para levantarlo de manera local.', 'Falto accesos a algunos repositorios para descargar los proyectos. Problemas de configuración de los ambientes.', 1, 0, '0'),
(979, 1, 11, '2024-01-05', '09:00:00', '18:35:00', 9.00, 2, 'Reunión Inducción de Problema presentado en el Portal, Módulo AUTH. Configuración de proyectos LOG y AUTH', 'WIN', 'No se finalizó con la configuración del proyecto de LOG. Si se termina con la configuración del proyecto AUTH.', NULL, 1, 0, '0'),
(980, 1, 11, '2024-01-08', '09:00:00', '11:00:00', 2.00, 2, 'Configuración del Módulo de AUTH.', 'Jhon Giron', 'Se realiza el levantamiento del módulo de AUTH para la inducción.', NULL, 1, 0, '0'),
(981, 1, 11, '2024-01-08', '11:00:00', '12:30:00', 1.00, 2, 'Reunión inducción de Módulo AUTH. ', 'Aaron La Cunza', 'Conocimiento del funcionamiento del Módulo AUTH', NULL, 1, 0, '0'),
(982, 1, 11, '2024-01-08', '12:30:00', '15:30:00', 3.00, 2, 'Configuración del proyecto LOG', 'Jhon Giron', 'Se realiza la configuración del módulo de LOG con apoyo de Aaron y de Jhon.', NULL, 1, 0, '0'),
(983, 1, 11, '2024-01-08', '15:30:00', '18:30:00', 3.00, 2, 'Revisión de solicitudes con incidencias en el módulo Log', 'Jhon Giron', 'Se realiza el flujo de atención de las solicitudes para asignarlos al módulo AUTH,', NULL, 1, 0, '0'),
(984, 1, 11, '2024-01-09', '09:00:00', '12:00:00', 3.00, 1, 'Revisión de ticket de N° 95270', 'Jhon Giron', 'Se realiza la configuración del ambiente para las pruebas.', NULL, 1, 0, '0'),
(985, 1, 11, '2024-01-09', '12:00:00', '18:20:00', 6.00, 1, 'Realización de flujo de atención de las solicitudes con incidencias.', 'Jhon Giron', 'Se realiza el flujo de atención de las solicitudes para asignarlos al módulo AUTH,', NULL, 1, 0, '0'),
(986, 1, 11, '2024-01-10', '09:00:00', '13:00:00', 4.00, 2, 'Debbugeo de las solicitudes con incidencias', 'Jhon Giron', 'Se realiza el debuggeo verificando si los parámetros son ingresados correctos.', NULL, 1, 0, '0'),
(987, 1, 11, '2024-01-10', '14:00:00', '18:15:00', 4.00, 2, 'Documentación de Pruebas realizadas.', 'Jhon Giron', 'Se realiza documentación de las pruebas realizadas, se agrega notas al ticket.', NULL, 1, 0, '0'),
(988, 1, 11, '2024-01-11', '09:00:00', '13:00:00', 4.00, 2, 'Realización de pruebas de nueva solicitud con la misma incidencia,', 'Jhon Giron', 'Se realiza pruebas de incidencia presentada con ticket de requerimientos. Debugger en Net y Profile. Se realiza el flujo de la incidencia.', NULL, 1, 0, '0'),
(989, 1, 11, '2024-01-11', '14:00:00', '18:30:00', 4.00, 2, 'Documentación de Pruebas realizadas.', 'Jhon Giron', 'Se realiza documentación de las pruebas realizadas, se agrega notas al ticket.', NULL, 1, 0, '0'),
(990, 1, 11, '2024-01-12', '09:00:00', '13:00:00', 4.00, 2, 'Realización de pruebas de solicitud por el proceso de CRM.', 'Jhon Giron', 'Se realiza las pruebas de incidencia por el proceso CRM.', NULL, 1, 0, '0'),
(991, 1, 11, '2024-01-12', '14:00:00', '18:10:00', 4.00, 2, 'Realización de pruebas adicionales del flujo AUTH', 'Jhon Giron', 'Se coordina con Víctor Loayza de Infraestructura para verificar log de errores en AUTH. Se realiza pruebas de histórico del usuario Nilton.', NULL, 1, 0, '0'),
(992, 1, 11, '2024-01-15', '09:00:00', '10:30:00', 1.00, 1, 'Documentación de plan de ejecución de Pruebas.', 'Jhon Giron', 'Se envía plan de ejecución de pruebas de ticket asignado N° 95270 . Se completa pruebas adicionales.', NULL, 1, 0, '0'),
(993, 1, 11, '2024-01-15', '10:30:00', '13:00:00', 2.00, 1, 'Reunión con Gisela Vilca, nueva procedimiento para el POD de Problemas.', 'Gisela Vilca', 'Reglas de trabajo para POD de Problemas. Nuevas procesos de trabajo.', NULL, 1, 0, '0'),
(994, 1, 11, '2024-01-15', '14:00:00', '16:30:00', 2.00, 1, 'Revisión de documentación de PROY-0015-2023/PPL-WIN Mejora en el reporte de factibilidad.', 'Jhon Giron', 'Se verifica la documentación del usuario antes de la reunión de revisión.', NULL, 1, 0, '0'),
(995, 1, 11, '2024-01-15', '16:30:00', '17:30:00', 1.00, 1, 'Reunión de Explicación de Flujo PROY-0015-2023/PPL-WIN Mejora en el reporte de factibilidad.', 'Miguel López', 'Se realiza las preguntas con las dudas de la explicación del proyecto.', NULL, 1, 0, '0'),
(996, 1, 11, '2024-01-15', '17:30:00', '20:00:00', 2.00, 1, 'Revisión de incidencia presentada de ticket de Nilton Rodríguez.', 'Jhon Giron', 'Se envía pruebas para verificar el proceso de aprobación de ticket de Nilton Rodríguez.', 'Se realiza 2 horas extras para apoyo del revisión de incidencia.', 1, 0, '0'),
(997, 1, 11, '2024-01-16', '09:00:00', '13:00:00', 4.00, 2, 'Pruebas adicionales del ticket N°  95270', 'Jhon Giron', 'Se realiza pruebas de funcionalidades en móvil, además de documentación de pruebas .', NULL, 1, 0, '0'),
(998, 1, 11, '2024-01-16', '14:00:00', '16:30:00', 2.00, 2, 'Reunión de explicación de atención de tickets de POD de Problemas', 'Jhon Giron', 'Se realiza la explicación de forma de trabajo para atender los tickets de atención-.', NULL, 1, 0, '0'),
(999, 1, 11, '2024-01-16', '16:30:00', '19:00:00', 2.00, 2, 'Documentación de Pruebas realizadas del ticket N°  95270', 'Jhon Giron', 'Se actualiza la documentación de ticket N° 95270 referente a pruebas adicionales.', NULL, 1, 0, '0'),
(1000, 1, 11, '2024-01-17', '09:00:00', '10:00:00', 1.00, 2, 'Reunión con Jhon Giron referencia a tickets en Proceso.', 'Jhon Giron', 'Asignación de Ticket N° 95767.', NULL, 1, 0, '0'),
(1001, 1, 11, '2024-01-17', '10:00:00', '11:00:00', 1.00, 2, 'Inducción de Saulo Lima referente a ECOM.', 'Saulo Lima', 'Explicación de proceso de facturación de ventas acumuladas.', NULL, 1, 0, '0'),
(1002, 1, 11, '2024-01-17', '11:00:00', '13:00:00', 2.00, 2, 'Revisión de Proceso de migración de tablas para obtener ventas acumuladas.', 'Jhon Giron', 'Se realiza el revisión de información generada con pedidos en nulo, verificación de relación al generar data de prueba para ver la incidencia.', NULL, 1, 0, '0'),
(1003, 1, 11, '2024-01-17', '14:00:00', '18:40:00', 4.00, 2, 'Pruebas de consultas en la migración de información de ventas acumuladas.', 'Jhon Giron', 'Se verifica los log de creación de migración de información, relación de inconsistencia de información. Verificación de fecha de emisión de documentos, contratos y pedidos.', NULL, 1, 0, '0'),
(1004, 1, 11, '2024-01-18', '09:00:00', '10:00:00', 1.00, 2, 'Reunión con Jhon Giron referencia a tickets en Proceso.', 'Jhon Giron', 'Revisión de avances de tickets pendientes.', NULL, 1, 0, '0'),
(1005, 1, 11, '2024-01-18', '10:00:00', '11:00:00', 1.00, 2, 'Inducción a Miguel López de ticket N° 95767.', 'Miguel López', 'Se realiza la revisión del ticket n° 95767, levantamientos del proyecto ECOM, revisión de incidencia presentada de facturación de ventas acumuladas.', NULL, 1, 0, '0'),
(1006, 1, 11, '2024-01-18', '11:00:00', '13:00:00', 2.00, 2, 'Pruebas de creación de pedidos, servicios y comprobantes del proceso de migración.', 'Jhon Giron', 'Realización de documentación de pruebas de ticket N° 95767. Se realiza la revisión de los procedimientos de creación de data del proceso de migración de facturación de ventas.', NULL, 1, 0, '0'),
(1007, 1, 11, '2024-01-18', '14:00:00', '19:00:00', 5.00, 2, 'Pruebas de información generada en facturación de ventas acumuladas, adicionales de proceso de llenado de tablas.', 'Jhon Giron', 'Verificación de proceso de llenado de tabla de ECOM.ECOM_LISTADO_VENTAACUMULADAS_WIN, se verifica como se construye el campo ID_PEDIDO verificando muestra del universo generado con la relación de datos generados en la migración. Pruebas con los detalles de venta generada, revisión de registros generados.', NULL, 1, 0, '0'),
(1008, 1, 11, '2024-01-19', '09:00:00', '10:00:00', 1.00, 2, 'Reunión con Jhon Giron referencia a tickets en Proceso.', 'Jhon Giron', 'Se realiza el proceso de avances de los tickets asignados al POD de Problemas.', NULL, 1, 0, '0'),
(1009, 1, 11, '2024-01-19', '10:00:00', '11:00:00', 1.00, 2, 'Prueba adicional de ticket N° 95767, revisión de datos proporcionados por Kevin.', 'Jhon Giron', 'Se verifica la información de comprobantes de facturas de ventas con pedidos nulos. Se revisa relación de los datos.', NULL, 1, 0, '0'),
(1010, 1, 11, '2024-01-19', '11:00:00', '13:00:00', 2.00, 2, 'Revisión con Jhon Giron del avance del ticket N° 95767, se verifica el proceso de migración y construcción de data ', 'Jhon Giron', 'Se realiza la revisión del proceso de migración y construcción de data en la tabla de reporte de facturación de ventas acumuladas.', NULL, 1, 0, '0'),
(1011, 1, 11, '2024-01-19', '14:00:00', '18:00:00', 4.00, 2, 'Pruebas adicionales en la construcción de data de tabla ECOM.ECOM_LISTADO_VENTAACUMULADAS_WIN. Documentación de pruebas.', 'Jhon Giron', 'Se realiza pruebas adicionales en la construcción de información de tabla de listado de ventas acumuladas. Se analiza la inconsistencia de la información con datos proporcionados del POD de incidencias. Se realiza documentación de pruebas adicionales.', NULL, 1, 0, '0'),
(1012, 1, 11, '2024-01-22', '09:00:00', '11:00:00', 2.00, 2, 'Revisión de información de caso particular al registrar pedidos en el proceso de migración ventas acumuladas.', 'Jhon Giron', 'Se realiza revisión en el proceso de migración al registrar el contrato, verifica que asume último registro insertado por fecha de creación, no valida si existe un proceso alterno que inserte un nuevo registro, deja sin una relación el código de contrato en tabla de documentos.', NULL, 1, 0, '0'),
(1013, 1, 11, '2024-01-22', '11:00:00', '13:00:00', 2.00, 2, 'Revisión de exportación de facturas de ventas acumuladas por aplicativo ECOM', 'Jhon Giron', 'Se realiza la revisión del aplicativo ECOM, en el reporte de ventas acumuladas, se realiza el debbugeo de exportación a excel, verificando que se exporta según la cantidad de informaci´n en varios archivos de excel comprimidos. La información se exporta de manera plana en una cadena, pero realiza el código de pedido de aquellos que estan en nulo con el formato en cero.', NULL, 1, 0, '0'),
(1014, 1, 11, '2024-01-22', '14:00:00', '15:00:00', 1.00, 2, 'Reunión con POD de incidencias para revisar incidencia de aprobación de solicitudes en el AUTH.', 'Freddy Herrera', 'Pruebas de flujo de aprobación en el módulo AUTH, se realiza debuggeo y verificación de aprobación de solicitudes. Se revisa archivo log de incidencia verificando que se cayo por timeout de la base de datos.', NULL, 1, 0, '0'),
(1015, 1, 11, '2024-01-22', '15:00:00', '18:00:00', 3.00, 2, 'Revisión de información general del proceso de migración de facturas acumuladas.', 'Jhon Giron', 'Se realiza la revisión del universo del proceso de migración de facturas acumuladas, revisando el filtro de los estados, se realiza el cambio de estado de algunos pedidos cambiandole a estado anulado para verificar el comportamiento del proceso, se verifica que el proceso no lo toma como parte del universo de la información, pero al realizar la actualización del campo pedido con la tabla de documentos no toma el correcto, tomando pedidos que estan en estado anulados.', NULL, 1, 0, '0'),
(1016, 1, 11, '2024-01-23', '09:00:00', '13:00:00', 4.00, 2, 'Pruebas adicionales realizadas al ticket N° 95767.', 'Jhon Giron', 'Se realiza pruebas de datos en el proceso de actualización de pedidos en tabla ECOM_LISTADO_VENTASACUMULADAS_WIN, verificación de la relación de JOINS para generar la actualización del campo de ID_PEDIDOS.', NULL, 1, 0, '0'),
(1017, 1, 11, '2024-01-23', '14:00:00', '16:00:00', 2.00, 2, 'Documentación de pruebas adicionales, actualización de excel del POD y Notas del ticket.', 'Jhon Giron', 'Se realiza documentación de las pruebas realizadas adicionales. Actualización de excel del POD de Problemas, se agrega notas al ticket de las pruebas realizadas.', NULL, 1, 0, '0'),
(1018, 1, 11, '2024-01-23', '16:00:00', '18:00:00', 2.00, 2, 'Pruebas de validación de información al momento de migrar contratos y actualizar el campo de pedido en tabla de documentos de CRM', 'Jhon Giron', 'Se realiza pruebas adicionales para validar la migración de contratos, detalle del flujo de migración de ventas acumuladas, no se crean pedidos repetitivos porque el flujo valida que se tome el último registro. Se verifica el universo de construcción de la información, no existe duplicidad de registros. Se realiza documentación de las pruebas.', NULL, 1, 0, '0'),
(1019, 1, 11, '2024-01-24', '09:00:00', '11:00:00', 2.00, 2, 'Revisión de información de datos con documentos que tienen más de un código de cliente.', 'Jhon Giron', 'Se realiza la revisión en el proceso de migración de facturación de ventas acumuladas, verificando que los datos filtran la información de los documentos , tomando el código de cliente más reciente, con este código se registra el contrato del cliente.', NULL, 1, 0, '0'),
(1020, 1, 11, '2024-01-24', '11:00:00', '12:00:00', 1.00, 2, 'Reunión Transferencia proyecto QA - Plan de cuentas V2 CRM EMPRESAS', 'Orestes La Cunza', 'Reunión del POD de Problemas para revisar desarrollo de plan de cuentas. Revisión del flujo y se verifica el desarrollo planeado para atender el proyecto.', NULL, 1, 0, '0'),
(1021, 1, 11, '2024-01-24', '12:00:00', '13:00:00', 1.00, 2, 'Revisión de información al realizar la actualización de datos de la tabla de pedidos.', 'Jhon Giron', 'Se realiza la revisión en la tabla de pedidos, verificando los estados que se encuentran confirmados, el proceso toma aquellos mencionados para actualizarlo en el campo ID_PEDIDO, pero al encontrar un valor de código de pedido erroneo no actualiza la información dejando el valor  del campo en nulo.', NULL, 1, 0, '0'),
(1022, 1, 11, '2024-01-24', '14:00:00', '17:50:00', 4.00, 2, 'Revisión de casos particulares de la lista de ventas acumuladas.', 'Jhon Giron', 'Se realiza la revisión para identificar la relación de información de las tablas ECOM y tabla WIN. Se verifica la actualizacion de la información de los registros en las tablas de ECOM. Se toma casos particulares donde los documentos se generan en valor nulo con ID_PEDIDO.', NULL, 1, 0, '0'),
(1023, 1, 11, '2024-01-24', '17:30:00', '18:00:00', 0.00, 2, 'EXPLICACIÓN REGISTRO NUEVA PLANTILLA RFC - PASE A PRODUCCIÓN', 'Rosa Carrillo', 'Reunión de la empresa para explicar el nuevo formato de RFC, se expone los cambios del documento a todo el equipo.', NULL, 1, 0, '0'),
(1024, 1, 11, '2024-01-25', '09:00:00', '12:00:00', 3.00, 2, 'Revisión de Cesión Contractual.', 'Jhon Giron', 'Se realiza la revisión de la cesión contractual, detectando la actualización de la información en la tabla de cliente, empresa documentos y contratos, no genera duplicidad de registros en la tabla de pedidos, El proceso se genera a demanda por el sistema.', NULL, 1, 0, '0'),
(1025, 1, 11, '2024-01-25', '12:00:00', '13:00:00', 1.00, 2, 'Reunión con Gisela Vilca sobre tickets pendientes de la bandeja de tickets.', 'Gisela Vilca', 'Se revisa los tickets que se encuentran abiertos en la bandeja de tickets, se verifica el seguimiento de los analístas y se acuerda cerrar tickets que se encuentran asignados.', NULL, 1, 0, '0'),
(1026, 1, 11, '2024-01-25', '14:00:00', '17:00:00', 3.00, 2, 'Pruebas adicionales para verificar como se actualiza los campos de la tabla de LISTADO_VENTAS_ACUMULADAS.', 'Jhon Giron', 'Revisión de comprobantes generados para documentos con pedidos en nulos, se verifica la construcción de los comprobantes. Se verifica que en el proceso de migración genera duplicidad de registros, tomando un ID incorrecto el cual al momento de realizar la relación para actualizar el campo de pedido lo deja en valor nulo.', NULL, 1, 0, '0'),
(1027, 1, 11, '2024-01-25', '18:00:00', '19:00:00', 1.00, 2, 'Revisión de incidencia con Roger Jimenez.', 'Roger Jimenez', 'Reunión programada a las 6PM se realiza la revisión de un caso especifico de la incidencia presentada, identificando la duplicidad de registros en los contratos. Explicación de Cesión contractual de facturación de ventas acumuladas.', 'Se determina que hay que realizar mejoras al proceso de migración de ventas acumuladas y verificar de un documento en especifico el flujo completo para visualizarlo en el reporte como se muestra.', 1, 0, '0'),
(1028, 1, 11, '2024-01-26', '09:40:00', '12:00:00', 2.00, 1, 'Revisión de proceso completo para generar el reporte de  ventas acumuladas.', 'Jhon Giron', 'Se realiza el proceso completo para generar el reporte de ventas acumuladas, desde la migración de los datos hasta el llenado de la tabla de LISTADO_VENTAS_ACUMULADAS. Verificando que los IDPEDIDOS del reporte se generan de manera correcta. Se identifica que el proceso es díario ya que toma los datos del día. No se mantiene un historico de la data que se genera con duplicados y valores nulos.', NULL, 1, 0, '0'),
(1029, 1, 11, '2024-01-26', '12:00:00', '13:00:00', 1.00, 1, 'Reunión PROY-0003-2024TI-WIN ERP - Generación de reporte de cobranzas y comprobantes ', 'Roger Jimenez', 'Reunión del POD de Problemas para revisar desarrollo de Reporte de cobranzas y comprobants. Revisión del flujo y se verifica el desarrollo planeado para atender el proyecto. Explicación de Node Red para realizar las tareas programadas.', NULL, 1, 0, '0'),
(1030, 1, 11, '2024-01-26', '14:00:00', '18:00:00', 4.00, 1, 'Documentación de casos de pruebas del ticket N° 95767', 'Jhon Giron', 'Se realiza la documentación de pruebas adicionales del ticket N° 95767, actualizando el excel de actividades del POD y realizando las notas del ticket asignado. Revisión de flujo completo.', NULL, 1, 0, '0'),
(1031, 1, 11, '2024-01-29', '09:30:00', '10:00:00', 0.00, 2, 'Reunión de status de tickets asignados.', 'Jhon Giron', 'Se realiza la reunión para verificar el status de los tickets del POD de problemas asignados a cada uno de los analístas.', NULL, 1, 0, '0'),
(1032, 1, 11, '2024-01-29', '10:00:00', '13:00:00', 3.00, 2, 'Revisión de pruebas adicionales del ticket  N° 95767', 'Jhon Giron', 'Se realiza una comparación entre los datos generados del backup diario de la tabla ecom.ECOM_LISTADO_VENTASACUMULADAS_WIN y del proceso ejecutado de manera manual. Se identifica la procedencia de valores nulos en el campo de servicio de la tabla ECOM.ECOM_SERVICIO. Se revisa que no existe relacion al momento de generar data para la tabla de ECOM.ECOM_LISTADO_VENTASACUMULADAS_WIN ', NULL, 1, 0, '0'),
(1033, 1, 11, '2024-01-29', '14:00:00', '18:50:00', 4.00, 2, 'Revisión del proceso de migración de facturas ventas acumuladas. Ticket N° 955767.', 'Jhon Giron', 'Se realiza la revisión al proceso de migración de facturas de ventas acumuladas. Al realizar la ejecución de manera manual se identifica que existe errores del proceso. Se identifica en el LOG del proceso errores de truncamiento de la información, identificando que el campo de dirección tiene una longitud de 500 caracteres que esta tratando de insertarse en el campo de dirección que tiene 200 caracteres. Se identifica ademas que a pesar del error el proceso sigue ejecutandose con los errores, debido a que no tiene un control de ROLLBACK. Se debe validar modificar la longitud del parámetro del procedimiento o cambiar la longitud del campo de la tabla ECOM.ECOM_CONTRATO y ECOM.ECOM_SERVICIO.', NULL, 1, 0, '0'),
(1034, 1, 11, '2024-01-30', '09:00:00', '10:00:00', 1.00, 1, 'Documentación de casos de pruebas del ticket N° 95767', 'Jhon Giron', 'Se realiza la documentación de las pruebas adicionales del ticket N° 95767, se agregan notas de las pruebas y se actualiza excel del POD de Problemas.', NULL, 1, 0, '0'),
(1035, 1, 11, '2024-01-30', '10:00:00', '13:00:00', 3.00, 1, 'Prueba adicional de ticket N° 95767, se corrije error de truncamiento de la información.', 'Jhon Giron', 'Se realiza la modificación del procedimiento almacenado \"CRM_MIGRACION_WINCRM_ECOM\", respecto al campo de dirección. Se verifica que la información generada del proceso de migración cree los ID_PEDIDOS correctos. Se realiza pruebas de la corrección. Se realiza documentación y casos de pruebas. Se registra los casos de pruebas como notas del ticket.', NULL, 1, 0, '0'),
(1036, 1, 11, '2024-01-30', '14:00:00', '15:30:00', 1.00, 1, 'Creación de ambiente de prueba para replicar casos de corrección.', 'Jhon Giron', 'Se realiza adaptación al ambiente, creando scripts para replicar las incidencias de pruebas realizando modificaciones al procedimiento. Para exposici', NULL, 1, 0, '0'),
(1037, 1, 11, '2024-01-30', '15:30:00', '16:00:00', 0.00, 1, 'Reunión de explicación de incidencia del ticket N° 98131', 'Edith Zeña/ Orestes La Cunza', 'Se realiza reunión para explicar las incidencias presentadas en el ambiente NOC y ECOM, actualmente existe inconsistencia con los estados de servicios, los datos del cruce de la información son proporcionados por tabla por el POD de BI. El usuario cruza la información de manera mannual por base de datos. No existe una opcion por sistema que  realice el proceso.', NULL, 1, 0, '0'),
(1038, 1, 11, '2024-01-30', '16:00:00', '18:00:00', 2.00, 1, 'Se realiza documentación de la incidencias realizadas del ticket N° 98131', 'Jhon Giron', 'Se registra ac', NULL, 1, 0, '0'),
(1039, 1, 11, '2024-01-30', '18:00:00', '19:00:00', 1.00, 1, 'Reunión con Roger Jimenez.', 'Roger Jimenez', 'Se realiza la reunión con Roger Jimenez referente al ticket N° 95767, explicación del proceso de migración de ventas acumuladas. Se realiza pruebas para verificar contratos que se generan de manera incorrecta.', NULL, 1, 0, '0'),
(1040, 1, 11, '2024-01-31', '09:00:00', '10:00:00', 1.00, 2, 'Reunión de revisión de status de tickets asignados', 'Jhon Giron', 'Se realiza reunión para saber el status de los tickets asignados al POD de Problemas. Se coordina pruebas a realizar.', NULL, 1, 0, '0'),
(1041, 1, 11, '2024-01-31', '10:00:00', '13:00:00', 3.00, 2, 'Pruebas adicionales del ticket N° 95767.', 'Jhon Giron', 'Se realiza pruebas de comportamiento de invocación de procedimientos anidados entre servidores con linked server. Se verifica como se realiza el registro de la información, creación de ambientes de pruebas para actualizar la información.', NULL, 1, 0, '0'),
(1042, 1, 11, '2024-01-31', '14:00:00', '15:30:00', 1.00, 2, 'Pruebas de bucle de migración de ventas acumuladas.', 'Jhon Giron', 'Se realiza pruebas de registro de detalle de servicios en el proceso de migración de ventas acumuladas. Se revisa la creación del universo de servicios. Se revisa que no existe inconsistencia de los registros. Flujo de pruebas con un documento generado con pedidos sin relacion.', NULL, 1, 0, '0'),
(1043, 1, 11, '2024-01-31', '17:00:00', '19:00:00', 2.00, 2, 'Documentación de pruebas adicionales, actualización de excel del POD y Notas del ticket.', 'Jhon Giron', 'Se realiza documentación de las pruebas realizadas en el proceso de migración de ventas acumuladas. Registro de pruebas en el excel del POD y notas del ticket. Revisión de otros 2 casos con documentos que tienen pedidos sin relación.', NULL, 1, 0, '0'),
(1044, 1, 12, '2024-01-02', '09:00:00', '13:30:00', 4.00, 3, 'Inducción', 'Gisela Vilca', 'NO INFORMADO', NULL, 1, 0, '0'),
(1045, 1, 12, '2024-01-03', '09:00:00', '18:00:00', 9.00, 2, 'Instalación de software y herramientas de desarrollo, vpn y bases de datos', 'Gisela Vilca', 'NO INFORMADO', NULL, 1, 0, '0'),
(1046, 1, 12, '2024-01-04', '09:00:00', '18:45:00', 9.00, 1, 'Puesta en marcha de proyecto .Net AUTH y LOG en ambiente local se tuvo reunión con Claudia Miranda para replicar el error en el proyecto, se resolvieron errores y ajustes a BD. Luego se comenzó a hacer debug sobre el flujo.', 'Gisela Vilca', 'NO INFORMADO', 'Hubo algunos inconvenientes para levantar el proyecto ya que algunas dependencias lo manejaban por separado diferentes programadores del equipo.', 1, 0, '0'),
(1047, 1, 12, '2024-01-05', '09:00:00', '19:30:00', 10.00, 1, 'Se tuvo que volver a levantar el ambiente de desarrollo local por los backups diarios y los ajustes del día anterior se borraron, luego de esto se procedió a retomar el debug', 'Gisela Vilca', 'NO INFORMADO', 'Se encontraron nuevos errores en la aplicación como funciones de BD que debian ser actualizados y nuevas dependencias en el proyecto.', 1, 0, '0'),
(1048, 1, 12, '2024-01-08', '11:45:00', '20:00:00', 8.00, 2, 'Se continua la atención del ticket para la aprobación de solicitudes internas con debug del proyecto', 'Gisela Vilca', 'NO INFORMADO', NULL, 1, 0, '0'),
(1049, 1, 12, '2024-01-09', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95589', 'Gisela Vilca', 'Análisis e instalación de ambiente local', NULL, 1, 0, '0'),
(1050, 1, 12, '2024-01-10', '09:00:00', '16:00:00', 7.00, 1, 'Ticket 95589', 'Gisela Vilca', 'Primeras pruebas y entrega de diagnóstico', NULL, 1, 0, '0'),
(1051, 1, 12, '2024-01-11', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Análisis e instalación de ambiente local', NULL, 1, 0, '0'),
(1052, 1, 12, '2024-01-12', '09:00:00', '19:30:00', 10.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Pruebas en ambiente local', NULL, 1, 0, '0'),
(1053, 1, 12, '2024-01-15', '09:00:00', '19:30:00', 10.00, 1, 'Ticket 95592', 'Gisela Vilca', 'Pruebas de la consulta de validación del  cliente', NULL, 1, 0, '0'),
(1054, 1, 12, '2024-01-16', '09:00:00', '18:30:00', 9.00, 1, 'Ticket 95592', 'Gisela Vilca', 'Pruebas del score del cliente', NULL, 1, 0, '0'),
(1055, 1, 12, '2024-01-17', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Continuar el flujo de la venta proceso de lead', NULL, 1, 0, '0'),
(1056, 1, 12, '2024-01-18', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Revisión de la función de buen pagador', NULL, 1, 0, '0'),
(1057, 1, 12, '2024-01-19', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Pruebas de validación de antigüedad de cliente', NULL, 1, 0, '0'),
(1058, 1, 12, '2024-01-22', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Validación de antigüedad de cliente', NULL, 1, 0, '0'),
(1059, 1, 12, '2024-01-23', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Modificar reglas de validación score buen pagador y antigüedad', NULL, 1, 0, '0'),
(1060, 1, 12, '2024-01-24', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Modificar reglas de validación score buen pagador y antigüedad', NULL, 1, 0, '0'),
(1061, 1, 12, '2024-01-25', '09:00:00', '18:30:00', 9.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Modificar reglas de validación score buen pagador y antigüedad', NULL, 1, 0, '0'),
(1062, 1, 12, '2024-01-26', '09:00:00', '20:00:00', 11.00, 2, 'Ticket 95592', 'Gisela Vilca', 'Pruebas finales y ampliación de las reglas de validación junto con el equipo mejorando el análisis inicial, creación de documentación para solicitar pase', NULL, 1, 0, '0'),
(1063, 1, 12, '2024-01-29', '09:45:00', '19:00:00', 9.00, 1, 'Ticket 95592', 'Gisela Vilca', 'Se armaron pruebas adicionales para documento PU y redacción de solicitud de validación de pase a producción', NULL, 1, 0, '0'),
(1064, 1, 12, '2024-01-30', '09:00:00', '18:45:00', 9.00, 1, 'Ticket 95592', 'Gisela Vilca', 'Se completaron las pruebas adicionales en ambiente local, se reenvió el documento de validación según formato.', NULL, 1, 0, '0'),
(1065, 1, 12, '2024-01-31', '09:00:00', '18:30:00', 9.00, 1, 'Ticket 97647', 'Gisela Vilca', 'Se inició el análisis de incidencia y se entregó el plan de ejecución para el desarrollo de la solución', NULL, 1, 0, '0'),
(1066, 1, 13, '2024-01-02', '10:00:00', '12:30:00', 2.00, 1, 'presentación e\r\n inducción', 'Roselena Leaño', 'NO INFORMADO', NULL, 1, 0, '0'),
(1067, 1, 13, '2024-01-03', '09:00:00', '18:00:00', 9.00, 1, 'dailing\r\ninfra\r\n', 'Angel Luis Albinagorta Vargas', 'levantar ambiente de desarrollo\r\nconfigurar vpn\r\nprobar permiso y acceso a repositorio', 'esperar validación\r\ncon infraestructura', 1, 0, '0'),
(1068, 1, 13, '2024-01-04', '09:00:00', '18:00:00', 9.00, 2, 'dailing\r\nprobar acceso\r\n', 'Angel Luis Albinagorta Vargas', 'configuración vpn\r\nprobar acceso a las redes y servidor de BD', 'se obtuvo el repositorio', 1, 0, '0'),
(1069, 1, 13, '2024-01-05', '09:00:00', '18:00:00', 9.00, 1, 'dailing\r\ndesarrollo\r\n', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd.\r\nInducción del requerimiento.\r\nRevisar código', 'se identifico los 3 archivos a modificar', 1, 0, '0'),
(1070, 1, 13, '2024-01-08', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\ndesarrollo\r\n', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd\r\nimplementación del método AccionSolicitudAPC para mostrar motivos de suspensión', 'se muestra el modal rf01', 1, 0, '0'),
(1071, 1, 13, '2024-01-09', '09:00:00', '20:00:00', 11.00, 2, 'dailing\r\ndesarrollo\r\n', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd\r\nimplementación del método UpdateSolicitudSuspAPC para mostrar actualizar de suspensión\r\nimplementación del método AnulacionSuspensionAPC para mostrar la anulación', 'se valido el rf02 y rf03', 1, 0, '0'),
(1072, 1, 13, '2024-01-10', '09:00:00', '19:00:00', 10.00, 1, 'dailing\r\ndesarrollo\r\n', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd.\r\nRevisar que guarde las tipificaciones', 'se valido el rf04,rf05 y rf06', 1, 0, '0'),
(1073, 1, 13, '2024-01-11', '09:00:00', '18:00:00', 9.00, 2, 'dailing\r\ninfra\r\n', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd\r\nbloqueante de 6hr por tema de acceso a la vpn y a las redes', NULL, 1, 0, '0'),
(1074, 1, 13, '2024-01-12', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\nvalidación casos de pruebas', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd\r\nculminación el desarrollo elaboración documento de pruebas unitarias', NULL, 1, 0, '0'),
(1075, 1, 13, '2024-01-15', '09:00:00', '19:50:00', 10.00, 2, 'dailing\r\nvalidación casos de pruebas', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd.\r\nValidación de casuísticas del documento funcional', NULL, 1, 0, '0'),
(1076, 1, 13, '2024-01-16', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\nDocumentación PU y RFC', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd.\r\nDocumentación del documento PU y RFC', NULL, 1, 0, '0'),
(1077, 1, 13, '2024-01-17', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\nSeguimiento del pase', 'Angel Luis Albinagorta Vargas', 'correr script por restauración diaria de bd.\r\nPase de fuentes y script de bd', NULL, 1, 0, '0'),
(1078, 1, 13, '2024-01-18', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Carmen Galíndez', 'Entrega documento PS PROY-0005-2022OPE-WIN\r\nAnálisis del documento de los requerimientos', NULL, 1, 0, '0'),
(1079, 1, 13, '2024-01-19', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Carmen Galíndez', 'instalación de las fuentes win crm en net\r\ninstalación SQL server configuración con BD', NULL, 1, 0, '0'),
(1080, 1, 13, '2024-01-22', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Angel Luis Albinagorta Vargas', 'entrega documento PS PROY-173-2023-exp-WIN modulo de reclamos\r\nAnálisis del documento de los requerimientos', NULL, 1, 0, '0'),
(1081, 1, 13, '2024-01-23', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Angel Luis Albinagorta Vargas', 'entrega documento PS para cambios de etiquetas y estilos de la plataforma MIPORTAL', NULL, 1, 0, '0'),
(1082, 1, 13, '2024-01-24', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Angel Luis Albinagorta Vargas', 'configuración e instalación del ambiente para laravel\r\nbackend y autentificación', NULL, 1, 0, '0'),
(1083, 1, 13, '2024-01-25', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Angel Luis Albinagorta Vargas', 'elaboración del documento de pruebas unitarias y documento RFC', NULL, 1, 0, '0'),
(1084, 1, 13, '2024-01-26', '09:00:00', '19:00:00', 10.00, 2, 'dailing', 'Angel Luis Albinagorta Vargas', 'maquetación de las pantallas welcome en la plataforma de experiencia', NULL, 1, 0, '0'),
(1085, 1, 13, '2024-01-29', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\nreuniones en sala de equipo', 'Angel Luis Albinagorta Vargas', 'presentación del proyecto MIPortal al área de ingeniería de datos como el área de calidad', 'se coloco toda en la ruta del servidor los documentos que se va a pasar', 1, 0, '0'),
(1086, 1, 13, '2024-01-30', '09:00:00', '19:00:00', 10.00, 2, 'dailing\r\nreuniones en sala de equipo', 'Angel Luis Albinagorta Vargas', 'retoma del proyecto de maquetación de las pantallas de welcome', 'se valido con las rf01,rf02,rf03,rf04 y rf05', 1, 0, '0'),
(1087, 1, 13, '2024-01-31', '09:00:00', '18:30:00', 9.00, 2, 'dailing\r\nreuniones en sala de equipo', 'Angel Luis Albinagorta Vargas', 'revisión de los procedimientos almacenados de la aplicación win net', 'se probo y documento la acción de los store procedure en SQL server', 1, 0, '0'),
(1088, 1, 1, '2024-01-02', '09:00:00', '12:00:00', 3.00, 1, 'Inducción', 'NO INFORMADO', 'NO INFORMADO', '-', 1, 0, 'PEDRO FLORES DIAZ'),
(1089, 1, 1, '2024-02-14', '15:12:00', '16:12:00', 1.00, 1, 'tarea', 'NO INFORMADO', 'NO INFORMADO', '', 1, 0, 'PEDRO FLORES DIAZ'),
(1091, 1, 1, '2024-02-14', '15:25:00', '16:25:00', 1.00, 2, 'asss', 'sssss', 'NO INFORMADO', 'asdfg', 1, 0, 'PEDRO FLORES DIAZ'),
(1092, 1, 1, '2024-02-15', '19:09:00', '20:09:00', 1.00, 1, 'eeee', 'NO INFORMADO', 'NO INFORMADO', '', 1, 0, 'PEDRO FLORES DIAZ'),
(1093, 1, 1, '2024-02-15', '19:10:00', '20:10:00', 1.00, 3, 'SDDDDDD', 'DDDDDD', 'NO INFORMADO', 'DDDD', 1, 0, 'PEDRO FLORES DIAZ'),
(1094, 1, 1, '2024-02-15', '14:11:00', '16:11:00', 2.00, 2, '1111', '1111', '1111', 'EDITADO', 1, 0, 'PEDRO FLORES DIAZ'),
(1096, 1, 1, '2024-02-15', '09:39:00', '10:39:00', 1.00, 1, 'RRR', 'TTTT', 'YYYY', 'UUU', 1, 0, 'PEDRO FLORES DIAZ'),
(1097, 1, 1, '2024-02-16', '09:40:00', '10:40:00', 1.00, 1, 'QQQ', 'WWWW', 'EEEEE', 'FFFFF', 1, 0, 'PEDRO FLORES DIAZ'),
(1098, 1, 1, '2024-02-16', '10:09:00', '11:09:00', 1.00, 3, '1111', '2222', 'NO INFORMADO', '1234567', 1, 0, 'PEDRO FLORES DIAZ'),
(1099, 2, 2, '2024-02-16', '10:12:00', '11:12:00', 1.00, 2, '8888', '777', '666666', 'COMENTARIO', 2, 0, 'MANUEL RONCEROS'),
(1100, 1, 1, '2024-02-21', '12:47:00', '13:47:00', 1.00, 1, 'q', 'q', 'NO INFORMADO', 'q', 1, 0, 'PEDRO FLORES DIAZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operacion_servicio_consultor`
--

CREATE TABLE `tbl_operacion_servicio_consultor` (
  `id_OS_consultor` int(6) NOT NULL,
  `id_operacion_servicio` int(6) NOT NULL,
  `id_consultor` int(6) NOT NULL,
  `id_cliente` int(6) NOT NULL,
  `id_cliente_final` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_operacion_servicio_consultor`
--

INSERT INTO `tbl_operacion_servicio_consultor` (`id_OS_consultor`, `id_operacion_servicio`, `id_consultor`, `id_cliente`, `id_cliente_final`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, NULL),
(3, 1, 4, 1, 1),
(4, 1, 5, 1, 1),
(5, 1, 6, 1, 1),
(6, 1, 7, 1, 1),
(7, 1, 8, 1, 1),
(8, 1, 9, 1, 1),
(9, 1, 10, 1, 1),
(10, 1, 11, 1, 1),
(11, 1, 12, 1, 1),
(12, 1, 13, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operacion_servicio_consultor_detalle`
--

CREATE TABLE `tbl_operacion_servicio_consultor_detalle` (
  `id_OS_consultor_detalle` int(6) NOT NULL,
  `id_OS_consultor` int(6) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `equipo_trabajo_asignado` varchar(255) DEFAULT NULL,
  `lider_equipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_operacion_servicio_consultor_detalle`
--

INSERT INTO `tbl_operacion_servicio_consultor_detalle` (`id_OS_consultor_detalle`, `id_OS_consultor`, `area`, `equipo_trabajo_asignado`, `lider_equipo`) VALUES
(1, 1, NULL, 'POD-INSTALACIONES', 'RICARDO SERRUDO'),
(2, 2, 'FrontEnd', 'FrontEnd1', 'Andrea Lopez Fajardo'),
(3, 3, 'TI', 'TRANSVERSAL', 'Claudia Miranda'),
(4, 4, NULL, 'Transversal', 'Ricardo Serrudo/Carlos Bruno'),
(5, 5, 'TI', 'POR GESTION DE PROBLEMAS', 'GISELA VILCA'),
(6, 6, NULL, NULL, 'JOSÉ GALINDO'),
(7, 7, NULL, 'Mesa de Ayuda', 'María Fernández'),
(8, 8, 'TI', 'POD REVENUE - COBRANZAS Y CONTABILIDAD', 'ROGER ANDRE JIMENEZ MALPARTIDA'),
(9, 9, 'TI', 'COBRANZA', 'ROGER ANDRE JIMENEZ'),
(10, 10, 'TI', 'POD GESTIÓN DE PROBLEMAS', 'GISELA VILCA'),
(11, 11, 'QA', 'POD PROBLEMAS', 'Gisela Vilca'),
(12, 12, NULL, 'PODS EXPERIENCIA Y COMISIONES', 'Angel Luis Albinagorta Vargas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfil_solicitado`
--

CREATE TABLE `tbl_perfil_solicitado` (
  `Id_perfil_solicitado` int(11) NOT NULL,
  `descripcion_perfil_solicitado` varchar(255) NOT NULL,
  `estado_perfil_solicitado` varchar(50) DEFAULT NULL,
  `salario_perfil_solicitado` decimal(10,2) DEFAULT NULL,
  `nivel_academico_perfil_solicitado` varchar(100) DEFAULT NULL,
  `cant_consultores_perf_solicitado` int(11) DEFAULT NULL,
  `duracion_servicio_per_solicitado` int(11) DEFAULT NULL,
  `modalidad_perfil_solicitado` varchar(100) DEFAULT NULL,
  `requisitos_perfil_solicitado` text DEFAULT NULL,
  `otros_perfil_solicitado` text DEFAULT NULL,
  `certificacion_perfil_solicitado` varchar(100) DEFAULT NULL,
  `funciones_perfil_solicitado` text DEFAULT NULL,
  `id_cliente_final` int(11) DEFAULT NULL,
  `id_conocimiento` int(11) DEFAULT NULL,
  `id_ingles_conversacional` int(11) DEFAULT NULL,
  `id_reclutador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_perfil_solicitado`
--

INSERT INTO `tbl_perfil_solicitado` (`Id_perfil_solicitado`, `descripcion_perfil_solicitado`, `estado_perfil_solicitado`, `salario_perfil_solicitado`, `nivel_academico_perfil_solicitado`, `cant_consultores_perf_solicitado`, `duracion_servicio_per_solicitado`, `modalidad_perfil_solicitado`, `requisitos_perfil_solicitado`, `otros_perfil_solicitado`, `certificacion_perfil_solicitado`, `funciones_perfil_solicitado`, `id_cliente_final`, `id_conocimiento`, `id_ingles_conversacional`, `id_reclutador`) VALUES
(25, 'Desarrollador APPIAN/BPM', '1', '1500.00', 'NIVEL ACADEMICO', 2, 3, 'REMOTO', 'REQUISITOS', 'OTROS PERFILES', 'CERTIFICACION', 'FUNCIONES', 2, 1, 2, 4),
(30, 'Desarrollador Full Stack NET', '1', '100.00', 'NIVEL ACADEMICO', 3, 1, 'HIBRIDO', 'REQUISITOS', 'OTROS PERFIL SOLICITADO', 'CERTIFICACION PERFIL SOLICITADO', 'FUNCIONES PERFIL SOLICITADO', 1, 1, 1, 1),
(31, 'Desarrollador Full Stack PHP', '1', '1000.00', 'nivel academico', 4, 2, 'remoto', 'requisitos', 'otros', 'certificacion', 'funciones', 1, 2, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_remuneracion_candidato`
--

CREATE TABLE `tbl_remuneracion_candidato` (
  `id_remuneracion_candidato` int(11) NOT NULL,
  `limite_inferior_remuneracion_candidato` varchar(20) DEFAULT NULL,
  `limite_superior_remuneracion_candidato` varchar(20) DEFAULT NULL,
  `estado_remuneracion_candidato` tinyint(1) DEFAULT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `id_tipo_remuneracion` int(11) DEFAULT NULL,
  `id_tipo_moneda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_remuneracion_candidato`
--

INSERT INTO `tbl_remuneracion_candidato` (`id_remuneracion_candidato`, `limite_inferior_remuneracion_candidato`, `limite_superior_remuneracion_candidato`, `estado_remuneracion_candidato`, `id_candidato`, `id_tipo_remuneracion`, `id_tipo_moneda`) VALUES
(2, '4,500.00', '5,500.00', 1, 2, 1, 1),
(3, '-', '5,500.00', 1, 3, 1, 1),
(4, '-', '5,000.00', 1, 4, 1, 1),
(5, '-', '2,500.00', 1, 6, 1, 1),
(6, '-', '6,500.00', 1, 7, 1, 1),
(7, '-', '4,500.00', 1, 8, 1, 1),
(11, '1,500.00', '2,500.00', 1, 2, 2, 2),
(28, '1', '2', 1, 16, 1, 1),
(35, '5', '6', 1, 1, 1, 1),
(38, '100', '1800', 1, 18, 1, 1),
(39, '100', '2005', 1, 18, 3, 1),
(50, '500', '1000', 1, 22, 2, 1),
(58, '1000', '1500', 1, 23, 1, 1),
(59, '800', '1200', 1, 23, 2, 2),
(60, '600', '1000', 1, 23, 3, 3),
(65, '1000', '2500', 1, 24, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_moneda`
--

CREATE TABLE `tbl_tipo_moneda` (
  `id_tipo_moneda` int(11) NOT NULL,
  `nombre_tipo_moneda` varchar(100) DEFAULT NULL,
  `codigo_tipo_moneda` varchar(10) DEFAULT NULL,
  `simbolo_tipo_moneda` varchar(10) DEFAULT NULL,
  `estado_tipo_moneda` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_moneda`
--

INSERT INTO `tbl_tipo_moneda` (`id_tipo_moneda`, `nombre_tipo_moneda`, `codigo_tipo_moneda`, `simbolo_tipo_moneda`, `estado_tipo_moneda`) VALUES
(1, 'Nuevos soles peruanos', 'PEN', 'S/', 1),
(2, 'Dólares americanos', 'USD', '$', 1),
(3, 'Euro', 'EURO', '€', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_remuneracion`
--

CREATE TABLE `tbl_tipo_remuneracion` (
  `id_tipo_remuneracion` int(11) NOT NULL,
  `descripcion_tipo_remuneracion` varchar(100) DEFAULT NULL,
  `estado_tipo_remuneracion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_remuneracion`
--

INSERT INTO `tbl_tipo_remuneracion` (`id_tipo_remuneracion`, `descripcion_tipo_remuneracion`, `estado_tipo_remuneracion`) VALUES
(1, 'RECIBO POR HONORARIOS', 1),
(2, 'PLANILLA COMPLETA', 1),
(3, 'PLANILLA MYPE', 1),
(4, 'COSTO POR HORA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena_usuario` varchar(255) NOT NULL,
  `nombre_completo_usuario` varchar(100) DEFAULT NULL,
  `email_usuario` varchar(100) NOT NULL,
  `fecha_creacion_usuario` datetime DEFAULT current_timestamp(),
  `estado_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `nombre_usuario`, `contrasena_usuario`, `nombre_completo_usuario`, `email_usuario`, `fecha_creacion_usuario`, `estado_usuario`) VALUES
(1, 'martha', '$2y$10$EjazGgST3eAhJF53augiDuGqUVUmENM.iDgbFyfdpIGNu8QHONpme', 'Martha Arias', 'martha@gmail.com', '2024-06-10 01:12:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_version_perfil`
--

CREATE TABLE `tbl_version_perfil` (
  `id_version_perfil` int(11) NOT NULL,
  `id_perfil_solicitado` int(11) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  `fecha_hora_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_candidato`
--
ALTER TABLE `tbl_candidato`
  ADD PRIMARY KEY (`id_candidato`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`),
  ADD KEY `id_asistencia_laboral` (`id_asistencia_laboral`),
  ADD KEY `tbl_candidato_ibfk_4` (`id_reclutador`);

--
-- Indices de la tabla `tbl_cliente_final`
--
ALTER TABLE `tbl_cliente_final`
  ADD PRIMARY KEY (`id_cliente_final`),
  ADD KEY `id_operacion_cliente` (`id_operacion_cliente`);

--
-- Indices de la tabla `tbl_configuracion`
--
ALTER TABLE `tbl_configuracion`
  ADD PRIMARY KEY (`id_configuracion`);

--
-- Indices de la tabla `tbl_conf_alertas`
--
ALTER TABLE `tbl_conf_alertas`
  ADD PRIMARY KEY (`id_alertas`);

--
-- Indices de la tabla `tbl_conf_asistencia_laboral`
--
ALTER TABLE `tbl_conf_asistencia_laboral`
  ADD PRIMARY KEY (`id_asistencia_laboral`),
  ADD KEY `id_asistencia_laboral` (`id_asistencia_laboral`);

--
-- Indices de la tabla `tbl_conf_disponibilidad`
--
ALTER TABLE `tbl_conf_disponibilidad`
  ADD PRIMARY KEY (`id_disponibilidad`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`);

--
-- Indices de la tabla `tbl_conf_documento_identidad`
--
ALTER TABLE `tbl_conf_documento_identidad`
  ADD PRIMARY KEY (`id_documento_identidad`),
  ADD KEY `id_documento_identidad` (`id_documento_identidad`);

--
-- Indices de la tabla `tbl_conf_ingles_conversacional`
--
ALTER TABLE `tbl_conf_ingles_conversacional`
  ADD PRIMARY KEY (`id_ingles_conversacional`),
  ADD KEY `id_ingles_conversacional` (`id_ingles_conversacional`);

--
-- Indices de la tabla `tbl_conf_modalidad`
--
ALTER TABLE `tbl_conf_modalidad`
  ADD PRIMARY KEY (`id_modalidad`),
  ADD KEY `id_modalidad` (`id_modalidad`);

--
-- Indices de la tabla `tbl_conf_modalidad_facturacion`
--
ALTER TABLE `tbl_conf_modalidad_facturacion`
  ADD PRIMARY KEY (`id_modalidad_facturacion`),
  ADD KEY `id_modalidad_facturacion` (`id_modalidad_facturacion`);

--
-- Indices de la tabla `tbl_conf_perfil`
--
ALTER TABLE `tbl_conf_perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `tbl_conf_reclutador`
--
ALTER TABLE `tbl_conf_reclutador`
  ADD PRIMARY KEY (`id_reclutador`);

--
-- Indices de la tabla `tbl_conocimiento`
--
ALTER TABLE `tbl_conocimiento`
  ADD PRIMARY KEY (`id_conocimiento`);

--
-- Indices de la tabla `tbl_consultor`
--
ALTER TABLE `tbl_consultor`
  ADD PRIMARY KEY (`id_consultor`),
  ADD KEY `id_documento_identidad` (`id_documento_identidad`),
  ADD KEY `id_disponibilidad` (`id_disponibilidad`),
  ADD KEY `id_asistancia_laboral` (`id_asistencia_laboral`,`id_ingles_conversacional`),
  ADD KEY `id_ingles_conversacional` (`id_ingles_conversacional`),
  ADD KEY `id_operacion_servicio` (`id_operacion_servicio`) USING BTREE;

--
-- Indices de la tabla `tbl_detalle_perfil_buscado_candidato`
--
ALTER TABLE `tbl_detalle_perfil_buscado_candidato`
  ADD PRIMARY KEY (`id_detalle_perfil_buscado_candidato`),
  ADD KEY `tbl_detalle_perfil_buscado_candidato_ibfk_3` (`id_candidato`),
  ADD KEY `tbl_detalle_perfil_buscado_candidato_ibfk_4` (`id_perfil_solicitado`);

--
-- Indices de la tabla `tbl_operacion_cliente`
--
ALTER TABLE `tbl_operacion_cliente`
  ADD PRIMARY KEY (`id_operacion_cliente`);

--
-- Indices de la tabla `tbl_operacion_servicio`
--
ALTER TABLE `tbl_operacion_servicio`
  ADD PRIMARY KEY (`id_operacion_servicio`),
  ADD KEY `id_operacion_servicio` (`id_operacion_servicio`),
  ADD KEY `id_modalidad_facturacion` (`id_modalidad_facturacion`);

--
-- Indices de la tabla `tbl_operacion_servicio_actividades`
--
ALTER TABLE `tbl_operacion_servicio_actividades`
  ADD PRIMARY KEY (`id_servicio_actividad`),
  ADD KEY `id_consultor` (`id_consultor`),
  ADD KEY `id_modalidad` (`id_modalidad`),
  ADD KEY `id_delivery_manager` (`id_delivery_manager`),
  ADD KEY `id_delivery_manager_2` (`id_delivery_manager`);

--
-- Indices de la tabla `tbl_operacion_servicio_consultor`
--
ALTER TABLE `tbl_operacion_servicio_consultor`
  ADD PRIMARY KEY (`id_OS_consultor`),
  ADD KEY `id_operacion_servicio` (`id_operacion_servicio`,`id_consultor`),
  ADD KEY `id_consultor` (`id_consultor`),
  ADD KEY `id_OS_consultor` (`id_OS_consultor`);

--
-- Indices de la tabla `tbl_operacion_servicio_consultor_detalle`
--
ALTER TABLE `tbl_operacion_servicio_consultor_detalle`
  ADD PRIMARY KEY (`id_OS_consultor_detalle`),
  ADD KEY `id_OS_consultor` (`id_OS_consultor`);

--
-- Indices de la tabla `tbl_perfil_solicitado`
--
ALTER TABLE `tbl_perfil_solicitado`
  ADD PRIMARY KEY (`Id_perfil_solicitado`),
  ADD KEY `id_cliente_final` (`id_cliente_final`),
  ADD KEY `id_conocimiento` (`id_conocimiento`),
  ADD KEY `id_ingles_conversacional` (`id_ingles_conversacional`),
  ADD KEY `tbl_perfil_solicitado_ibfk_4` (`id_reclutador`);

--
-- Indices de la tabla `tbl_remuneracion_candidato`
--
ALTER TABLE `tbl_remuneracion_candidato`
  ADD PRIMARY KEY (`id_remuneracion_candidato`),
  ADD KEY `tbl_remuneracion_candidato_ibfk_4` (`id_tipo_remuneracion`),
  ADD KEY `tbl_remuneracion_candidato_ibfk_5` (`id_candidato`),
  ADD KEY `tbl_remuneracion_candidato_ibfk_6` (`id_tipo_moneda`);

--
-- Indices de la tabla `tbl_tipo_moneda`
--
ALTER TABLE `tbl_tipo_moneda`
  ADD PRIMARY KEY (`id_tipo_moneda`);

--
-- Indices de la tabla `tbl_tipo_remuneracion`
--
ALTER TABLE `tbl_tipo_remuneracion`
  ADD PRIMARY KEY (`id_tipo_remuneracion`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`);

--
-- Indices de la tabla `tbl_version_perfil`
--
ALTER TABLE `tbl_version_perfil`
  ADD PRIMARY KEY (`id_version_perfil`),
  ADD KEY `tbl_detalle_perfil_buscado_candidato_ibfk_2` (`id_perfil_solicitado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_candidato`
--
ALTER TABLE `tbl_candidato`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tbl_configuracion`
--
ALTER TABLE `tbl_configuracion`
  MODIFY `id_configuracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_alertas`
--
ALTER TABLE `tbl_conf_alertas`
  MODIFY `id_alertas` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_asistencia_laboral`
--
ALTER TABLE `tbl_conf_asistencia_laboral`
  MODIFY `id_asistencia_laboral` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_disponibilidad`
--
ALTER TABLE `tbl_conf_disponibilidad`
  MODIFY `id_disponibilidad` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_documento_identidad`
--
ALTER TABLE `tbl_conf_documento_identidad`
  MODIFY `id_documento_identidad` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_ingles_conversacional`
--
ALTER TABLE `tbl_conf_ingles_conversacional`
  MODIFY `id_ingles_conversacional` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_modalidad`
--
ALTER TABLE `tbl_conf_modalidad`
  MODIFY `id_modalidad` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_modalidad_facturacion`
--
ALTER TABLE `tbl_conf_modalidad_facturacion`
  MODIFY `id_modalidad_facturacion` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_perfil`
--
ALTER TABLE `tbl_conf_perfil`
  MODIFY `id_perfil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `tbl_conf_reclutador`
--
ALTER TABLE `tbl_conf_reclutador`
  MODIFY `id_reclutador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_consultor`
--
ALTER TABLE `tbl_consultor`
  MODIFY `id_consultor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_perfil_buscado_candidato`
--
ALTER TABLE `tbl_detalle_perfil_buscado_candidato`
  MODIFY `id_detalle_perfil_buscado_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT de la tabla `tbl_operacion_cliente`
--
ALTER TABLE `tbl_operacion_cliente`
  MODIFY `id_operacion_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_operacion_servicio`
--
ALTER TABLE `tbl_operacion_servicio`
  MODIFY `id_operacion_servicio` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_operacion_servicio_actividades`
--
ALTER TABLE `tbl_operacion_servicio_actividades`
  MODIFY `id_servicio_actividad` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT de la tabla `tbl_operacion_servicio_consultor`
--
ALTER TABLE `tbl_operacion_servicio_consultor`
  MODIFY `id_OS_consultor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_operacion_servicio_consultor_detalle`
--
ALTER TABLE `tbl_operacion_servicio_consultor_detalle`
  MODIFY `id_OS_consultor_detalle` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_remuneracion_candidato`
--
ALTER TABLE `tbl_remuneracion_candidato`
  MODIFY `id_remuneracion_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_moneda`
--
ALTER TABLE `tbl_tipo_moneda`
  MODIFY `id_tipo_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_remuneracion`
--
ALTER TABLE `tbl_tipo_remuneracion`
  MODIFY `id_tipo_remuneracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_candidato`
--
ALTER TABLE `tbl_candidato`
  ADD CONSTRAINT `tbl_candidato_ibfk_2` FOREIGN KEY (`id_disponibilidad`) REFERENCES `tbl_conf_disponibilidad` (`id_disponibilidad`),
  ADD CONSTRAINT `tbl_candidato_ibfk_3` FOREIGN KEY (`id_asistencia_laboral`) REFERENCES `tbl_conf_asistencia_laboral` (`id_asistencia_laboral`),
  ADD CONSTRAINT `tbl_candidato_ibfk_4` FOREIGN KEY (`id_reclutador`) REFERENCES `tbl_conf_reclutador` (`id_reclutador`);

--
-- Filtros para la tabla `tbl_cliente_final`
--
ALTER TABLE `tbl_cliente_final`
  ADD CONSTRAINT `id_operacion_cliente` FOREIGN KEY (`id_operacion_cliente`) REFERENCES `tbl_operacion_cliente` (`id_operacion_cliente`);

--
-- Filtros para la tabla `tbl_consultor`
--
ALTER TABLE `tbl_consultor`
  ADD CONSTRAINT `tbl_consultor_ibfk_1` FOREIGN KEY (`id_operacion_servicio`) REFERENCES `tbl_operacion_servicio` (`id_operacion_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_consultor_ibfk_2` FOREIGN KEY (`id_documento_identidad`) REFERENCES `tbl_conf_documento_identidad` (`id_documento_identidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_consultor_ibfk_3` FOREIGN KEY (`id_disponibilidad`) REFERENCES `tbl_conf_disponibilidad` (`id_disponibilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_consultor_ibfk_4` FOREIGN KEY (`id_asistencia_laboral`) REFERENCES `tbl_conf_asistencia_laboral` (`id_asistencia_laboral`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_consultor_ibfk_5` FOREIGN KEY (`id_ingles_conversacional`) REFERENCES `tbl_conf_ingles_conversacional` (`id_ingles_conversacional`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_detalle_perfil_buscado_candidato`
--
ALTER TABLE `tbl_detalle_perfil_buscado_candidato`
  ADD CONSTRAINT `tbl_detalle_perfil_buscado_candidato_ibfk_3` FOREIGN KEY (`id_candidato`) REFERENCES `tbl_candidato` (`id_candidato`),
  ADD CONSTRAINT `tbl_detalle_perfil_buscado_candidato_ibfk_4` FOREIGN KEY (`id_perfil_solicitado`) REFERENCES `tbl_perfil_solicitado` (`Id_perfil_solicitado`);

--
-- Filtros para la tabla `tbl_operacion_servicio`
--
ALTER TABLE `tbl_operacion_servicio`
  ADD CONSTRAINT `tbl_operacion_servicio_ibfk_1` FOREIGN KEY (`id_modalidad_facturacion`) REFERENCES `tbl_conf_modalidad_facturacion` (`id_modalidad_facturacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_operacion_servicio_actividades`
--
ALTER TABLE `tbl_operacion_servicio_actividades`
  ADD CONSTRAINT `tbl_operacion_servicio_actividades_ibfk_1` FOREIGN KEY (`id_consultor`) REFERENCES `tbl_consultor` (`id_consultor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_operacion_servicio_actividades_ibfk_2` FOREIGN KEY (`id_modalidad`) REFERENCES `tbl_conf_modalidad` (`id_modalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_operacion_servicio_consultor`
--
ALTER TABLE `tbl_operacion_servicio_consultor`
  ADD CONSTRAINT `tbl_operacion_servicio_consultor_ibfk_1` FOREIGN KEY (`id_operacion_servicio`) REFERENCES `tbl_operacion_servicio` (`id_operacion_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_operacion_servicio_consultor_ibfk_2` FOREIGN KEY (`id_consultor`) REFERENCES `tbl_consultor` (`id_consultor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_operacion_servicio_consultor_detalle`
--
ALTER TABLE `tbl_operacion_servicio_consultor_detalle`
  ADD CONSTRAINT `tbl_operacion_servicio_consultor_detalle_ibfk_1` FOREIGN KEY (`id_OS_consultor`) REFERENCES `tbl_operacion_servicio_consultor` (`id_OS_consultor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_perfil_solicitado`
--
ALTER TABLE `tbl_perfil_solicitado`
  ADD CONSTRAINT `tbl_perfil_solicitado_ibfk_1` FOREIGN KEY (`id_cliente_final`) REFERENCES `tbl_cliente_final` (`id_cliente_final`),
  ADD CONSTRAINT `tbl_perfil_solicitado_ibfk_2` FOREIGN KEY (`id_conocimiento`) REFERENCES `tbl_conocimiento` (`id_conocimiento`),
  ADD CONSTRAINT `tbl_perfil_solicitado_ibfk_3` FOREIGN KEY (`id_ingles_conversacional`) REFERENCES `tbl_conf_ingles_conversacional` (`id_ingles_conversacional`),
  ADD CONSTRAINT `tbl_perfil_solicitado_ibfk_4` FOREIGN KEY (`id_reclutador`) REFERENCES `tbl_conf_reclutador` (`id_reclutador`);

--
-- Filtros para la tabla `tbl_remuneracion_candidato`
--
ALTER TABLE `tbl_remuneracion_candidato`
  ADD CONSTRAINT `tbl_remuneracion_candidato_ibfk_4` FOREIGN KEY (`id_tipo_remuneracion`) REFERENCES `tbl_tipo_remuneracion` (`id_tipo_remuneracion`),
  ADD CONSTRAINT `tbl_remuneracion_candidato_ibfk_5` FOREIGN KEY (`id_candidato`) REFERENCES `tbl_candidato` (`id_candidato`),
  ADD CONSTRAINT `tbl_remuneracion_candidato_ibfk_6` FOREIGN KEY (`id_tipo_moneda`) REFERENCES `tbl_tipo_moneda` (`id_tipo_moneda`);

--
-- Filtros para la tabla `tbl_version_perfil`
--
ALTER TABLE `tbl_version_perfil`
  ADD CONSTRAINT `tbl_detalle_perfil_buscado_candidato_ibfk_2` FOREIGN KEY (`id_perfil_solicitado`) REFERENCES `tbl_perfil_solicitado` (`Id_perfil_solicitado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
