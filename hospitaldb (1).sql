-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2024 a las 12:36:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha_cita` date NOT NULL,
  `motivo_consulta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_cita`, `id_paciente`, `id_medico`, `fecha_cita`, `motivo_consulta`) VALUES
(56, 1, 1, '2024-12-01', 'Chequeo general.'),
(57, 2, 2, '2024-12-02', 'Dolor de cabeza persistente.'),
(58, 3, 3, '2024-12-03', 'Evaluación postoperatoria.'),
(59, 4, 4, '2024-12-04', 'Dolor abdominal.'),
(60, 5, 5, '2024-12-05', 'Control de hipertensión.'),
(61, 6, 6, '2024-12-06', 'Consulta para alergias.'),
(62, 7, 7, '2024-12-07', 'Chequeo anual.'),
(63, 8, 8, '2024-12-08', 'Evaluación de visión.'),
(64, 9, 9, '2024-12-09', 'Tratamiento de migraña.'),
(65, 10, 10, '2024-12-10', 'Consulta para diabetes.'),
(66, 11, 11, '2024-12-11', 'Tratamiento de infecciones respiratorias.'),
(67, 12, 12, '2024-12-12', 'Control postquirúrgico.'),
(68, 13, 13, '2024-12-13', 'Revisión de medicamentos.'),
(69, 14, 14, '2024-12-14', 'Evaluación para colesterol alto.'),
(70, 15, 15, '2024-12-15', 'Consulta para osteoporosis.'),
(71, 16, 16, '2024-12-16', 'Chequeo cardíaco.'),
(72, 17, 17, '2024-12-17', 'Control de asma.'),
(73, 18, 18, '2024-12-18', 'Evaluación para cirugía.'),
(74, 19, 19, '2024-12-19', 'Consulta para dolor lumbar.'),
(75, 20, 20, '2024-12-20', 'Revisión de presión arterial.'),
(76, 21, 21, '2024-12-21', 'Chequeo pediátrico.'),
(77, 22, 22, '2024-12-22', 'Tratamiento de artritis.'),
(78, 23, 23, '2024-12-23', 'Evaluación ginecológica.'),
(79, 24, 24, '2024-12-24', 'Control de enfermedades crónicas.'),
(80, 25, 25, '2024-12-25', 'Consulta para trastornos de sueño.'),
(81, 26, 26, '2024-12-26', 'Revisión general.'),
(82, 27, 27, '2024-12-27', 'Chequeo postoperatorio.'),
(83, 28, 28, '2024-12-28', 'Tratamiento de dermatitis.'),
(84, 29, 29, '2024-12-29', 'Evaluación para cirugía de rodilla.'),
(85, 30, 30, '2024-12-30', 'Consulta para control de epilepsia.'),
(86, 31, 31, '2024-12-31', 'Chequeo general de salud.'),
(87, 32, 32, '2025-01-01', 'Control de hipertensión.'),
(88, 33, 33, '2025-01-02', 'Revisión ortopédica.'),
(89, 34, 34, '2025-01-03', 'Consulta para alergias.'),
(90, 35, 35, '2025-01-04', 'Chequeo para colesterol alto.'),
(91, 36, 36, '2025-01-05', 'Consulta para control de peso.'),
(92, 37, 37, '2025-01-06', 'Evaluación pediátrica.'),
(93, 38, 38, '2025-01-07', 'Tratamiento de infecciones urinarias.'),
(94, 39, 39, '2025-01-08', 'Evaluación oftalmológica.'),
(95, 40, 40, '2025-01-09', 'Consulta para ansiedad.'),
(96, 41, 41, '2025-01-10', 'Chequeo postquirúrgico.'),
(97, 42, 42, '2025-01-11', 'Tratamiento de hipertensión.'),
(98, 43, 43, '2025-01-12', 'Control de artritis.'),
(99, 44, 44, '2025-01-13', 'Evaluación respiratoria.'),
(100, 45, 45, '2025-01-14', 'Consulta para diabetes.'),
(101, 46, 46, '2025-01-15', 'Tratamiento para dolores musculares.'),
(102, 47, 47, '2025-01-16', 'Control de osteoporosis.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id_enfermedad` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id_enfermedad`, `nombre`, `descripcion`) VALUES
(1, 'Diabetes', 'Enfermedad crónica que afecta el uso de azúcar en el cuerpo.'),
(2, 'Hipertensión', 'Presión arterial alta persistente.'),
(3, 'Asma', 'Afección que causa dificultad para respirar.'),
(4, 'Artritis', 'Inflamación de las articulaciones.'),
(5, 'Gripe', 'Infección viral respiratoria.'),
(6, 'COVID-19', 'Enfermedad causada por el coronavirus SARS-CoV-2.'),
(7, 'Migraña', 'Dolor de cabeza intenso y recurrente.'),
(8, 'Anemia', 'Deficiencia de glóbulos rojos o hemoglobina.'),
(9, 'Bronquitis', 'Inflamación de los bronquios pulmonares.'),
(10, 'Neumonía', 'Infección de los pulmones.'),
(11, 'Sinusitis', 'Inflamación de los senos paranasales.'),
(12, 'Cáncer de pulmón', 'Tumor maligno en los pulmones.'),
(13, 'Cataratas', 'Opacidad en el cristalino del ojo.'),
(14, 'EPOC', 'Enfermedad pulmonar obstructiva crónica.'),
(15, 'Gastritis', 'Inflamación del revestimiento del estómago.'),
(16, 'Hepatitis B', 'Infección viral que afecta el hígado.'),
(17, 'Esclerosis múltiple', 'Enfermedad autoinmune que afecta el sistema nervioso central.'),
(18, 'Fibromialgia', 'Dolor muscular crónico generalizado.'),
(19, 'Hernia discal', 'Protrusión del disco intervertebral.'),
(20, 'Parkinson', 'Trastorno neurodegenerativo progresivo.'),
(21, 'Colitis', 'Inflamación del colon.'),
(22, 'Insuficiencia renal', 'Pérdida de la capacidad de los riñones para filtrar desechos.'),
(23, 'Epilepsia', 'Trastorno cerebral que provoca convulsiones.'),
(24, 'Varicela', 'Infección viral caracterizada por erupciones cutáneas.'),
(25, 'Psoriasis', 'Enfermedad de la piel con placas escamosas.'),
(26, 'Alergias', 'Reacciones del sistema inmunitario a sustancias específicas.'),
(27, 'Lupus', 'Enfermedad autoinmune que afecta múltiples sistemas del cuerpo.'),
(28, 'Dengue', 'Infección viral transmitida por mosquitos.'),
(29, 'Malaria', 'Enfermedad parasitaria transmitida por mosquitos.'),
(30, 'Hepatitis C', 'Infección viral crónica del hígado.'),
(31, 'VIH/SIDA', 'Enfermedad que afecta el sistema inmunitario.'),
(32, 'Tos ferina', 'Infección respiratoria bacteriana.'),
(33, 'Hernia inguinal', 'Protrusión del intestino a través del abdomen.'),
(34, 'Cáncer de piel', 'Crecimiento anormal de células cutáneas.'),
(35, 'Cáncer de mama', 'Tumor maligno en el tejido mamario.'),
(36, 'Alzhéimer', 'Demencia progresiva que afecta la memoria y el comportamiento.'),
(37, 'Enfisema', 'Daño a los alvéolos pulmonares.'),
(38, 'Cistitis', 'Inflamación de la vejiga urinaria.'),
(39, 'Depresión', 'Trastorno del estado de ánimo que provoca tristeza persistente.'),
(40, 'Ansiedad', 'Trastorno mental caracterizado por miedo excesivo.'),
(41, 'Esquizofrenia', 'Trastorno mental grave que afecta el pensamiento y el comportamiento.'),
(42, 'Hipotiroidismo', 'Producción insuficiente de hormonas tiroideas.'),
(43, 'Hiperactividad', 'Trastorno de comportamiento caracterizado por actividad excesiva.'),
(44, 'Cáncer de próstata', 'Tumor maligno en la próstata.'),
(45, 'Esclerosis lateral', 'Degeneración de las neuronas motoras.'),
(46, 'Tétanos', 'Infección bacteriana grave que causa rigidez muscular.'),
(47, 'Zika', 'Infección viral transmitida por mosquitos.'),
(48, 'Enfermedad de Lyme', 'Infección bacteriana transmitida por garrapatas.'),
(49, 'Diabetes', 'Enfermedad crónica que afecta el uso de azúcar en el cuerpo.'),
(50, 'Hipertensión', 'Presión arterial alta persistente.'),
(51, 'Asma', 'Afección que causa dificultad para respirar.'),
(52, 'Artritis', 'Inflamación de las articulaciones.'),
(53, 'Gripe', 'Infección viral respiratoria.'),
(54, 'COVID-19', 'Enfermedad causada por el coronavirus SARS-CoV-2.'),
(55, 'Migraña', 'Dolor de cabeza intenso y recurrente.'),
(56, 'Anemia', 'Deficiencia de glóbulos rojos o hemoglobina.'),
(57, 'Bronquitis', 'Inflamación de los bronquios pulmonares.'),
(58, 'Neumonía', 'Infección de los pulmones.'),
(59, 'Sinusitis', 'Inflamación de los senos paranasales.'),
(60, 'Cáncer de pulmón', 'Tumor maligno en los pulmones.'),
(61, 'Cataratas', 'Opacidad en el cristalino del ojo.'),
(62, 'EPOC', 'Enfermedad pulmonar obstructiva crónica.'),
(63, 'Gastritis', 'Inflamación del revestimiento del estómago.'),
(64, 'Hepatitis B', 'Infección viral que afecta el hígado.'),
(65, 'Esclerosis múltiple', 'Enfermedad autoinmune que afecta el sistema nervioso central.'),
(66, 'Fibromialgia', 'Dolor muscular crónico generalizado.'),
(67, 'Hernia discal', 'Protrusión del disco intervertebral.'),
(68, 'Parkinson', 'Trastorno neurodegenerativo progresivo.'),
(69, 'Colitis', 'Inflamación del colon.'),
(70, 'Insuficiencia renal', 'Pérdida de la capacidad de los riñones para filtrar desechos.'),
(71, 'Epilepsia', 'Trastorno cerebral que provoca convulsiones.'),
(72, 'Varicela', 'Infección viral caracterizada por erupciones cutáneas.'),
(73, 'Psoriasis', 'Enfermedad de la piel con placas escamosas.'),
(74, 'Alergias', 'Reacciones del sistema inmunitario a sustancias específicas.'),
(75, 'Lupus', 'Enfermedad autoinmune que afecta múltiples sistemas del cuerpo.'),
(76, 'Dengue', 'Infección viral transmitida por mosquitos.'),
(77, 'Malaria', 'Enfermedad parasitaria transmitida por mosquitos.'),
(78, 'Hepatitis C', 'Infección viral crónica del hígado.'),
(79, 'VIH/SIDA', 'Enfermedad que afecta el sistema inmunitario.'),
(80, 'Tos ferina', 'Infección respiratoria bacteriana.'),
(81, 'Hernia inguinal', 'Protrusión del intestino a través del abdomen.'),
(82, 'Cáncer de piel', 'Crecimiento anormal de células cutáneas.'),
(83, 'Cáncer de mama', 'Tumor maligno en el tejido mamario.'),
(84, 'Alzhéimer', 'Demencia progresiva que afecta la memoria y el comportamiento.'),
(85, 'Enfisema', 'Daño a los alvéolos pulmonares.'),
(86, 'Cistitis', 'Inflamación de la vejiga urinaria.'),
(87, 'Depresión', 'Trastorno del estado de ánimo que provoca tristeza persistente.'),
(88, 'Ansiedad', 'Trastorno mental caracterizado por miedo excesivo.'),
(89, 'Esquizofrenia', 'Trastorno mental grave que afecta el pensamiento y el comportamiento.'),
(90, 'Hipotiroidismo', 'Producción insuficiente de hormonas tiroideas.'),
(91, 'Hiperactividad', 'Trastorno de comportamiento caracterizado por actividad excesiva.'),
(92, 'Cáncer de próstata', 'Tumor maligno en la próstata.'),
(93, 'Esclerosis lateral', 'Degeneración de las neuronas motoras.'),
(94, 'Tétanos', 'Infección bacteriana grave que causa rigidez muscular.'),
(95, 'Zika', 'Infección viral transmitida por mosquitos.'),
(96, 'Enfermedad de Lyme', 'Infección bacteriana transmitida por garrapatas.'),
(97, 'Diabetes', 'Enfermedad crónica que afecta el uso de azúcar en el cuerpo.'),
(98, 'Hipertensión', 'Presión arterial alta persistente.'),
(99, 'Asma', 'Afección que causa dificultad para respirar.'),
(100, 'Artritis', 'Inflamación de las articulaciones.'),
(101, 'Gripe', 'Infección viral respiratoria.'),
(102, 'COVID-19', 'Enfermedad causada por el coronavirus SARS-CoV-2.'),
(103, 'Migraña', 'Dolor de cabeza intenso y recurrente.'),
(104, 'Anemia', 'Deficiencia de glóbulos rojos o hemoglobina.'),
(105, 'Bronquitis', 'Inflamación de los bronquios pulmonares.'),
(106, 'Neumonía', 'Infección de los pulmones.'),
(107, 'Sinusitis', 'Inflamación de los senos paranasales.'),
(108, 'Cáncer de pulmón', 'Tumor maligno en los pulmones.'),
(109, 'Cataratas', 'Opacidad en el cristalino del ojo.'),
(110, 'EPOC', 'Enfermedad pulmonar obstructiva crónica.'),
(111, 'Gastritis', 'Inflamación del revestimiento del estómago.'),
(112, 'Hepatitis B', 'Infección viral que afecta el hígado.'),
(113, 'Esclerosis múltiple', 'Enfermedad autoinmune que afecta el sistema nervioso central.'),
(114, 'Fibromialgia', 'Dolor muscular crónico generalizado.'),
(115, 'Hernia discal', 'Protrusión del disco intervertebral.'),
(116, 'Parkinson', 'Trastorno neurodegenerativo progresivo.'),
(117, 'Colitis', 'Inflamación del colon.'),
(118, 'Insuficiencia renal', 'Pérdida de la capacidad de los riñones para filtrar desechos.'),
(119, 'Epilepsia', 'Trastorno cerebral que provoca convulsiones.'),
(120, 'Varicela', 'Infección viral caracterizada por erupciones cutáneas.'),
(121, 'Psoriasis', 'Enfermedad de la piel con placas escamosas.'),
(122, 'Alergias', 'Reacciones del sistema inmunitario a sustancias específicas.'),
(123, 'Lupus', 'Enfermedad autoinmune que afecta múltiples sistemas del cuerpo.'),
(124, 'Dengue', 'Infección viral transmitida por mosquitos.'),
(125, 'Malaria', 'Enfermedad parasitaria transmitida por mosquitos.'),
(126, 'Hepatitis C', 'Infección viral crónica del hígado.'),
(127, 'VIH/SIDA', 'Enfermedad que afecta el sistema inmunitario.'),
(128, 'Tos ferina', 'Infección respiratoria bacteriana.'),
(129, 'Hernia inguinal', 'Protrusión del intestino a través del abdomen.'),
(130, 'Cáncer de piel', 'Crecimiento anormal de células cutáneas.'),
(131, 'Cáncer de mama', 'Tumor maligno en el tejido mamario.'),
(132, 'Alzhéimer', 'Demencia progresiva que afecta la memoria y el comportamiento.'),
(133, 'Enfisema', 'Daño a los alvéolos pulmonares.'),
(134, 'Cistitis', 'Inflamación de la vejiga urinaria.'),
(135, 'Depresión', 'Trastorno del estado de ánimo que provoca tristeza persistente.'),
(136, 'Ansiedad', 'Trastorno mental caracterizado por miedo excesivo.'),
(137, 'Esquizofrenia', 'Trastorno mental grave que afecta el pensamiento y el comportamiento.'),
(138, 'Hipotiroidismo', 'Producción insuficiente de hormonas tiroideas.'),
(139, 'Hiperactividad', 'Trastorno de comportamiento caracterizado por actividad excesiva.'),
(140, 'Cáncer de próstata', 'Tumor maligno en la próstata.'),
(141, 'Esclerosis lateral', 'Degeneración de las neuronas motoras.'),
(142, 'Tétanos', 'Infección bacteriana grave que causa rigidez muscular.'),
(143, 'Zika', 'Infección viral transmitida por mosquitos.'),
(144, 'Enfermedad de Lyme', 'Infección bacteriana transmitida por garrapatas.'),
(145, 'Diabetes', 'Enfermedad crónica que afecta el uso de azúcar en el cuerpo.'),
(146, 'Hipertensión', 'Presión arterial alta persistente.'),
(147, 'Asma', 'Afección que causa dificultad para respirar.'),
(148, 'Artritis', 'Inflamación de las articulaciones.'),
(149, 'Gripe', 'Infección viral respiratoria.'),
(150, 'COVID-19', 'Enfermedad causada por el coronavirus SARS-CoV-2.'),
(151, 'Migraña', 'Dolor de cabeza intenso y recurrente.'),
(152, 'Anemia', 'Deficiencia de glóbulos rojos o hemoglobina.'),
(153, 'Bronquitis', 'Inflamación de los bronquios pulmonares.'),
(154, 'Neumonía', 'Infección de los pulmones.'),
(155, 'Sinusitis', 'Inflamación de los senos paranasales.'),
(156, 'Cáncer de pulmón', 'Tumor maligno en los pulmones.'),
(157, 'Cataratas', 'Opacidad en el cristalino del ojo.'),
(158, 'EPOC', 'Enfermedad pulmonar obstructiva crónica.'),
(159, 'Gastritis', 'Inflamación del revestimiento del estómago.'),
(160, 'Hepatitis B', 'Infección viral que afecta el hígado.'),
(161, 'Esclerosis múltiple', 'Enfermedad autoinmune que afecta el sistema nervioso central.'),
(162, 'Fibromialgia', 'Dolor muscular crónico generalizado.'),
(163, 'Hernia discal', 'Protrusión del disco intervertebral.'),
(164, 'Parkinson', 'Trastorno neurodegenerativo progresivo.'),
(165, 'Colitis', 'Inflamación del colon.'),
(166, 'Insuficiencia renal', 'Pérdida de la capacidad de los riñones para filtrar desechos.'),
(167, 'Epilepsia', 'Trastorno cerebral que provoca convulsiones.'),
(168, 'Varicela', 'Infección viral caracterizada por erupciones cutáneas.'),
(169, 'Psoriasis', 'Enfermedad de la piel con placas escamosas.'),
(170, 'Alergias', 'Reacciones del sistema inmunitario a sustancias específicas.'),
(171, 'Lupus', 'Enfermedad autoinmune que afecta múltiples sistemas del cuerpo.'),
(172, 'Dengue', 'Infección viral transmitida por mosquitos.'),
(173, 'Malaria', 'Enfermedad parasitaria transmitida por mosquitos.'),
(174, 'Hepatitis C', 'Infección viral crónica del hígado.'),
(175, 'VIH/SIDA', 'Enfermedad que afecta el sistema inmunitario.'),
(176, 'Tos ferina', 'Infección respiratoria bacteriana.'),
(177, 'Hernia inguinal', 'Protrusión del intestino a través del abdomen.'),
(178, 'Cáncer de piel', 'Crecimiento anormal de células cutáneas.'),
(179, 'Cáncer de mama', 'Tumor maligno en el tejido mamario.'),
(180, 'Alzhéimer', 'Demencia progresiva que afecta la memoria y el comportamiento.'),
(181, 'Enfisema', 'Daño a los alvéolos pulmonares.'),
(182, 'Cistitis', 'Inflamación de la vejiga urinaria.'),
(183, 'Depresión', 'Trastorno del estado de ánimo que provoca tristeza persistente.'),
(184, 'Ansiedad', 'Trastorno mental caracterizado por miedo excesivo.'),
(185, 'Esquizofrenia', 'Trastorno mental grave que afecta el pensamiento y el comportamiento.'),
(186, 'Hipotiroidismo', 'Producción insuficiente de hormonas tiroideas.'),
(187, 'Hiperactividad', 'Trastorno de comportamiento caracterizado por actividad excesiva.'),
(188, 'Cáncer de próstata', 'Tumor maligno en la próstata.'),
(189, 'Esclerosis lateral', 'Degeneración de las neuronas motoras.'),
(190, 'Tétanos', 'Infección bacteriana grave que causa rigidez muscular.'),
(191, 'Zika', 'Infección viral transmitida por mosquitos.'),
(192, 'Enfermedad de Lyme', 'Infección bacteriana transmitida por garrapatas.'),
(193, 'Diabetes', 'Enfermedad crónica que afecta el uso de azúcar en el cuerpo.'),
(194, 'Hipertensión', 'Presión arterial alta persistente.'),
(195, 'Asma', 'Afección que causa dificultad para respirar.'),
(196, 'Artritis', 'Inflamación de las articulaciones.'),
(197, 'Gripe', 'Infección viral respiratoria.'),
(198, 'COVID-19', 'Enfermedad causada por el coronavirus SARS-CoV-2.'),
(199, 'Migraña', 'Dolor de cabeza intenso y recurrente.'),
(200, 'Anemia', 'Deficiencia de glóbulos rojos o hemoglobina.'),
(201, 'Bronquitis', 'Inflamación de los bronquios pulmonares.'),
(202, 'Neumonía', 'Infección de los pulmones.'),
(203, 'Sinusitis', 'Inflamación de los senos paranasales.'),
(204, 'Cáncer de pulmón', 'Tumor maligno en los pulmones.'),
(205, 'Cataratas', 'Opacidad en el cristalino del ojo.'),
(206, 'EPOC', 'Enfermedad pulmonar obstructiva crónica.'),
(207, 'Gastritis', 'Inflamación del revestimiento del estómago.'),
(208, 'Hepatitis B', 'Infección viral que afecta el hígado.'),
(209, 'Esclerosis múltiple', 'Enfermedad autoinmune que afecta el sistema nervioso central.'),
(210, 'Fibromialgia', 'Dolor muscular crónico generalizado.'),
(211, 'Hernia discal', 'Protrusión del disco intervertebral.'),
(212, 'Parkinson', 'Trastorno neurodegenerativo progresivo.'),
(213, 'Colitis', 'Inflamación del colon.'),
(214, 'Insuficiencia renal', 'Pérdida de la capacidad de los riñones para filtrar desechos.'),
(215, 'Epilepsia', 'Trastorno cerebral que provoca convulsiones.'),
(216, 'Varicela', 'Infección viral caracterizada por erupciones cutáneas.'),
(217, 'Psoriasis', 'Enfermedad de la piel con placas escamosas.'),
(218, 'Alergias', 'Reacciones del sistema inmunitario a sustancias específicas.'),
(219, 'Lupus', 'Enfermedad autoinmune que afecta múltiples sistemas del cuerpo.'),
(220, 'Dengue', 'Infección viral transmitida por mosquitos.'),
(221, 'Malaria', 'Enfermedad parasitaria transmitida por mosquitos.'),
(222, 'Hepatitis C', 'Infección viral crónica del hígado.'),
(223, 'VIH/SIDA', 'Enfermedad que afecta el sistema inmunitario.'),
(224, 'Tos ferina', 'Infección respiratoria bacteriana.'),
(225, 'Hernia inguinal', 'Protrusión del intestino a través del abdomen.'),
(226, 'Cáncer de piel', 'Crecimiento anormal de células cutáneas.'),
(227, 'Cáncer de mama', 'Tumor maligno en el tejido mamario.'),
(228, 'Alzhéimer', 'Demencia progresiva que afecta la memoria y el comportamiento.'),
(229, 'Enfisema', 'Daño a los alvéolos pulmonares.'),
(230, 'Cistitis', 'Inflamación de la vejiga urinaria.'),
(231, 'Depresión', 'Trastorno del estado de ánimo que provoca tristeza persistente.'),
(232, 'Ansiedad', 'Trastorno mental caracterizado por miedo excesivo.'),
(233, 'Esquizofrenia', 'Trastorno mental grave que afecta el pensamiento y el comportamiento.'),
(234, 'Hipotiroidismo', 'Producción insuficiente de hormonas tiroideas.'),
(235, 'Hiperactividad', 'Trastorno de comportamiento caracterizado por actividad excesiva.'),
(236, 'Cáncer de próstata', 'Tumor maligno en la próstata.'),
(237, 'Esclerosis lateral', 'Degeneración de las neuronas motoras.'),
(238, 'Tétanos', 'Infección bacteriana grave que causa rigidez muscular.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id_medicamento`, `nombre`, `descripcion`) VALUES
(1, 'Paracetamol', 'Alivia el dolor y reduce la fiebre.'),
(2, 'Ibuprofeno', 'Antiinflamatorio no esteroideo.'),
(3, 'Amoxicilina', 'Antibiótico usado para infecciones bacterianas.'),
(4, 'Omeprazol', 'Reduce la producción de ácido estomacal.'),
(5, 'Losartán', 'Tratamiento para la hipertensión.'),
(6, 'Aspirina', 'Alivia el dolor, fiebre e inflamación.'),
(7, 'Metformina', 'Medicamento para el control de la diabetes.'),
(8, 'Salbutamol', 'Broncodilatador para el asma.'),
(9, 'Clonazepam', 'Tratamiento para trastornos de ansiedad.'),
(10, 'Atorvastatina', 'Disminuye el colesterol en sangre.'),
(11, 'Captopril', 'Tratamiento para insuficiencia cardíaca e hipertensión.'),
(12, 'Dexametasona', 'Corticosteroide para reducir inflamación.'),
(13, 'Ranitidina', 'Tratamiento para la acidez estomacal.'),
(14, 'Diclofenaco', 'Alivia el dolor y la inflamación.'),
(15, 'Azitromicina', 'Antibiótico de amplio espectro.'),
(16, 'Insulina', 'Regula los niveles de azúcar en sangre.'),
(17, 'Cetirizina', 'Antihistamínico para alergias.'),
(18, 'Bromuro de ipratropio', 'Tratamiento para enfermedades pulmonares obstructivas.'),
(19, 'Fluoxetina', 'Antidepresivo para trastornos del ánimo.'),
(20, 'Naproxeno', 'Analgésico y antiinflamatorio.'),
(21, 'Warfarina', 'Anticoagulante para prevenir coágulos.'),
(22, 'Furosemida', 'Diurético para reducir la retención de líquidos.'),
(23, 'Levotiroxina', 'Tratamiento para el hipotiroidismo.'),
(24, 'Carbamazepina', 'Tratamiento para epilepsia y neuralgia.'),
(25, 'Prednisona', 'Corticosteroide para inflamaciones severas.'),
(26, 'Alprazolam', 'Tratamiento para la ansiedad y pánico.'),
(27, 'Gabapentina', 'Tratamiento para neuropatía periférica.'),
(28, 'Enalapril', 'Controla la hipertensión y falla cardíaca.'),
(29, 'Lorazepam', 'Ansiolítico para el insomnio y ansiedad.'),
(30, 'Vitamina D', 'Suplemento para el metabolismo óseo.'),
(31, 'Rosuvastatina', 'Reduce el colesterol LDL.'),
(32, 'Montelukast', 'Controla los síntomas del asma y alergias.'),
(33, 'Claritromicina', 'Antibiótico para infecciones respiratorias.'),
(34, 'Zolpidem', 'Tratamiento para el insomnio.'),
(35, 'Tramadol', 'Analgésico para el dolor moderado a severo.'),
(36, 'Bisoprolol', 'Tratamiento para hipertensión y arritmias.'),
(37, 'Pantoprazol', 'Inhibidor de la acidez estomacal.'),
(38, 'Meloxicam', 'Antiinflamatorio para la artritis.'),
(39, 'Levofloxacino', 'Antibiótico para infecciones bacterianas.'),
(40, 'Topiramato', 'Control de migrañas y epilepsia.'),
(41, 'Celecoxib', 'Tratamiento para dolores articulares.'),
(42, 'Esomeprazol', 'Reductor de ácido estomacal.'),
(43, 'Amlodipino', 'Control de la hipertensión.'),
(44, 'Duloxetina', 'Tratamiento para depresión y dolor neuropático.'),
(45, 'Tamsulosina', 'Mejora la micción en hipertrofia prostática.'),
(46, 'Metoprolol', 'Control de la hipertensión y angina.'),
(47, 'Rivastigmina', 'Tratamiento para Alzheimer y Parkinson.'),
(48, 'Budesonida', 'Corticosteroide para inflamaciones respiratorias.'),
(49, 'Vildagliptina', 'Control de la diabetes tipo 2.'),
(50, 'Simvastatina', 'Reducción del colesterol en sangre.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `años_experiencia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id_medico`, `nombre`, `especialidad`, `telefono`, `años_experiencia`) VALUES
(1, 'Dr. Juan Pérez', 'Cardiología', '123456789', 15),
(2, 'Dra. María López', 'Pediatría', '987654321', 10),
(3, 'Dr. Carlos Gómez', 'Neurología', '567890123', 8),
(4, 'Dra. Ana Torres', 'Dermatología', '345678901', 12),
(5, 'Dr. Juan Pérez', 'Cardiología', '123456789', 20),
(6, 'Dra. María López', 'Pediatría', '987654321', 5),
(7, 'Dr. Carlos Gómez', 'Neurología', '567890123', 18),
(8, 'Dra. Ana Torres', 'Dermatología', '345678901', 6),
(9, 'Dr. Luis Martínez', 'Oftalmología', '789012345', 9),
(10, 'Dra. Elena Ruiz', 'Oncología', '654321789', 14),
(11, 'Dr. Pablo Rivas', 'Endocrinología', '123987456', 11),
(12, 'Dra. Silvia Fernández', 'Ginecología', '321654987', 7),
(13, 'Dr. Manuel Ortega', 'Urología', '159753468', 3),
(14, 'Dra. Laura Sánchez', 'Traumatología', '951357846', 25),
(15, 'Dr. Pedro Jiménez', 'Nefrología', '123654789', 2),
(16, 'Dra. Claudia Morales', 'Psiquiatría', '789456123', 16),
(17, 'Dr. Jorge Hernández', 'Geriatría', '456789321', 4),
(18, 'Dra. Rosa Vargas', 'Reumatología', '987321654', 9),
(19, 'Dr. Antonio Díaz', 'Hematología', '321987456', 13),
(20, 'Dra. Gabriela Ramírez', 'Gastroenterología', '654123987', 8),
(21, 'Dr. Rafael Torres', 'Infectología', '852741963', 10),
(22, 'Dra. Patricia Gómez', 'Neumología', '963852741', 5),
(23, 'Dr. Ernesto Vega', 'Cirugía General', '741852963', 11),
(24, 'Dra. Marta Rojas', 'Medicina Interna', '369258147', 7),
(25, 'Dr. Rodrigo Pérez', 'Cardiología', '159357852', 6),
(26, 'Dra. Karla Navarro', 'Pediatría', '753159846', 12),
(27, 'Dr. Enrique Salazar', 'Neurología', '147258369', 20),
(28, 'Dra. Daniela Cruz', 'Dermatología', '258369147', 15),
(29, 'Dr. Francisco Ruiz', 'Oftalmología', '369147258', 9),
(30, 'Dra. Julia Núñez', 'Oncología', '753951654', 8),
(31, 'Dr. Samuel Orozco', 'Endocrinología', '654789951', 18),
(32, 'Dra. Isabel Ortiz', 'Ginecología', '951654753', 4),
(33, 'Dr. Hugo Mendoza', 'Urología', '852963741', 10),
(34, 'Dra. Alicia Chávez', 'Traumatología', '147852369', 14),
(35, 'Dr. Joaquín Reyes', 'Nefrología', '369258741', 5),
(36, 'Dra. Leticia Lozano', 'Psiquiatría', '258147369', 16),
(37, 'Dr. Vicente Flores', 'Geriatría', '456321789', 3),
(38, 'Dra. Carolina Castillo', 'Reumatología', '654987321', 11),
(39, 'Dr. Alberto Ramos', 'Hematología', '123789654', 13),
(40, 'Dra. Laura Méndez', 'Gastroenterología', '789654123', 9),
(41, 'Dr. Mario Álvarez', 'Infectología', '951753159', 7),
(42, 'Dra. Teresa Gutiérrez', 'Neumología', '159357456', 15),
(43, 'Dr. José Esquivel', 'Cirugía General', '456789951', 12),
(44, 'Dra. Cecilia Palacios', 'Medicina Interna', '753951852', 8),
(45, 'Dr. Cristian Romero', 'Cardiología', '321456987', 4),
(46, 'Dra. Fátima Herrera', 'Pediatría', '987654321', 10),
(47, 'Dr. Diego Blanco', 'Neurología', '456123789', 14),
(48, 'Dra. Fernanda Zamora', 'Dermatología', '123456789', 20),
(49, 'Dr. Sergio Ruiz', 'Oftalmología', '951357654', 6),
(50, 'Dra. Mónica Aguilar', 'Oncología', '852741963', 9),
(51, 'Dr. Andrés Peña', 'Endocrinología', '369741258', 0),
(52, 'Dra. Paula López', 'Ginecología', '741852369', 0),
(53, 'Dr. Miguel Morales', 'Urología', '147258963', 0),
(54, 'Dra. Mariana León', 'Traumatología', '456987123', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nombre`, `fecha_nacimiento`, `telefono`) VALUES
(1, 'Pedro García', '1985-03-12', '789456123'),
(2, 'Luisa Torres', '1995-07-23', '456789123'),
(3, 'Mario López', '2003-11-18', '951753123'),
(4, 'Sofía Martínez', '1998-02-15', '159357456'),
(5, 'Andrés Gutiérrez', '1980-12-01', '753951456'),
(6, 'Carla Ramos', '1950-10-10', '654789123'),
(7, 'Luis Ortega', '1992-08-05', '321456789'),
(8, 'Daniela Pérez', '2000-09-20', '159753852'),
(9, 'Javier Vargas', '1987-06-18', '753159456'),
(10, 'Laura Navarro', '1993-04-25', '852369147'),
(11, 'Ricardo Gómez', '1983-01-30', '789654123'),
(12, 'Diana Chávez', '1975-09-18', '951357852'),
(13, 'Camila Rojas', '1999-11-22', '456789951'),
(14, 'Miguel Fernández', '1986-06-03', '123456789'),
(15, 'Sara Romero', '1994-02-17', '852963741'),
(16, 'Alejandro Díaz', '1997-08-12', '951753456'),
(17, 'Valeria Moreno', '2002-03-21', '321654987'),
(18, 'Juan Hernández', '1981-07-14', '159753468'),
(19, 'Patricia Ruiz', '1979-05-09', '753951258'),
(20, 'Héctor Jiménez', '1988-04-18', '456123789'),
(21, 'Gloria Sánchez', '1989-12-07', '789456321'),
(22, 'Esteban Morales', '1982-02-24', '951357654'),
(23, 'Carolina Ortiz', '1990-09-15', '159357852'),
(24, 'María Vega', '1971-11-10', '753951852'),
(25, 'Diego Palacios', '1996-03-05', '852741963'),
(26, 'Ana Méndez', '2001-12-13', '321456951'),
(27, 'Sebastián Orozco', '1991-07-27', '456789123'),
(28, 'Teresa Castillo', '1984-06-30', '951357123'),
(29, 'Raúl Ramírez', '1978-01-01', '123456789'),
(30, 'Paula Álvarez', '1999-04-15', '159753123'),
(31, 'César Gutiérrez', '2003-08-20', '753951789'),
(32, 'Martín Navarro', '1987-05-29', '456321987'),
(33, 'Lucía Vargas', '1995-09-23', '789654321'),
(34, 'Fernando López', '1980-11-30', '951753852'),
(35, 'Gabriela Torres', '2000-01-25', '852963741'),
(36, 'Rosa Pérez', '1992-03-17', '123456951'),
(37, 'Antonio Ruiz', '1989-06-28', '753159456'),
(38, 'Mónica Díaz', '1976-08-11', '456123987'),
(39, 'Pablo Sánchez', '1993-10-19', '852963258'),
(40, 'Isabel Gómez', '1985-12-05', '951357456'),
(41, 'Santiago Romero', '1994-11-09', '159753258'),
(42, 'Ángel Chávez', '2001-02-16', '753951789'),
(43, 'Lorena Rojas', '1998-07-06', '951357258'),
(44, 'Manuel Fernández', '1982-10-14', '852741369'),
(45, 'Claudia Méndez', '1986-01-09', '951357123'),
(46, 'Hugo Vargas', '1997-09-03', '852963147'),
(47, 'Elena Díaz', '1991-04-26', '456123258'),
(48, 'Natalia Jiménez', '1983-03-20', '753951123'),
(49, 'Guillermo Ortiz', '1988-08-07', '321456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medicamento` int(11) NOT NULL,
  `id_enfermedad` int(11) NOT NULL,
  `fecha_receta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_receta`, `id_paciente`, `id_medicamento`, `id_enfermedad`, `fecha_receta`) VALUES
(401, 1, 1, 1, '2024-11-01'),
(402, 2, 2, 2, '2024-11-02'),
(403, 3, 3, 3, '2024-11-03'),
(404, 4, 4, 4, '2024-11-04'),
(405, 5, 5, 5, '2024-11-05'),
(406, 6, 6, 6, '2024-11-06'),
(407, 7, 7, 7, '2024-11-07'),
(408, 8, 8, 8, '2024-11-08'),
(409, 9, 9, 9, '2024-11-09'),
(410, 10, 10, 10, '2024-11-10'),
(411, 11, 11, 11, '2024-11-11'),
(412, 12, 12, 12, '2024-11-12'),
(413, 13, 13, 13, '2024-11-13'),
(414, 14, 14, 14, '2024-11-14'),
(415, 15, 15, 15, '2024-11-15'),
(416, 16, 16, 16, '2024-11-16'),
(417, 17, 17, 17, '2024-11-17'),
(418, 18, 18, 18, '2024-11-18'),
(419, 19, 19, 19, '2024-11-19'),
(420, 20, 20, 20, '2024-11-20'),
(421, 21, 21, 21, '2024-11-21'),
(422, 22, 22, 22, '2024-11-22'),
(423, 23, 23, 23, '2024-11-23'),
(424, 24, 24, 24, '2024-11-24'),
(425, 25, 25, 25, '2024-11-25'),
(426, 26, 26, 26, '2024-11-26'),
(427, 27, 27, 27, '2024-11-27'),
(428, 28, 28, 28, '2024-11-28'),
(429, 29, 29, 29, '2024-11-29'),
(430, 30, 30, 30, '2024-11-30'),
(431, 31, 31, 31, '2024-12-01'),
(432, 32, 32, 32, '2024-12-02'),
(433, 33, 33, 33, '2024-12-03'),
(434, 34, 34, 34, '2024-12-04'),
(435, 35, 35, 35, '2024-12-05'),
(436, 36, 36, 36, '2024-12-06'),
(437, 37, 37, 37, '2024-12-07'),
(438, 38, 38, 38, '2024-12-08'),
(439, 39, 39, 39, '2024-12-09'),
(440, 40, 40, 40, '2024-12-10'),
(441, 41, 41, 41, '2024-12-11'),
(442, 42, 42, 42, '2024-12-12'),
(443, 43, 43, 43, '2024-12-13'),
(444, 44, 44, 44, '2024-12-14'),
(445, 45, 45, 45, '2024-12-15'),
(446, 46, 46, 46, '2024-12-16'),
(447, 47, 47, 47, '2024-12-17'),
(448, 48, 48, 48, '2024-12-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id_enfermedad`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_medico`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medicamento` (`id_medicamento`),
  ADD KEY `id_enfermedad` (`id_enfermedad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `id_enfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `recetas_ibfk_2` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`),
  ADD CONSTRAINT `recetas_ibfk_3` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedades` (`id_enfermedad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
