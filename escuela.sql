-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-11-2022 a las 18:56:41
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `usuario`, `password`) VALUES
(1, 'ivan', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'sandra', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'ivan', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'sandra', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'celeste', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Alerta máxima en la selección argentina: Lionel Messi no jugará este domingo en el PSG por una inflamación en el tendón', 'Así lo informó el club francés durante las últimas horas por intermedio de un parte médico', 'Lionel Messi encendió las últimas alarmas que faltaban en la selección argentina a días del Mundial: no jugará este domingo para el París Saint Germain a raíz de un problema en el tendón y será puesto bajo un tratamiento por “precaución”, según difundió el propio club.\r\n\r\n“Víctima de una inflamación en el tendón de Aquiles, Leo Messi permanecerá en tratamiento por precaución. Reanudará los entrenamientos colectivos la próxima semana”, detalló el parte médico que difundió en las últimas horas la entidad francesa.\r\n\r\nEl capitán del equipo argentino faltará a un encuentro del PSG por tercera vez en el semestre, teniendo en cuenta que a comienzos de octubre sufrió una molestia en el gemelo en el primer duelo ante Benfica por la fase de grupos de la UEFA Champions League, por lo que decidió descansar ante Reims (0-0) en la Ligue 1 y luego en la revancha contra los portugueses (1-1).\r\n\r\nEl PSG visitará este domingo 6 de noviembre al Lorient (desde las 9, hora Argentina) por la 14ª fecha del campeonato francés, que lo tiene como líder absoluto con cinco puntos de diferencia sobre su escolta, el Lens. A 15 días del inicio del Mundial de Qatar, sólo quedará una presentación posible para la Pulga en París durante este semestre: el domingo 13 recibirán al Auxerre en el Parque de los Príncipes por la jornada 15 del torneo.\r\n\r\nEl parte médico que difundió en este fin de semana el PSG también causó preocupación en otras selecciones, ya que quedaron marginados el costarricense Keylor Navas (dolor de espalda), el francés Presnel Kimpembe y el español Fabián Ruiz (lesión en el aductor izquierdo).'),
(3, 'G7 coordinará la reparación de infraestructuras críticas de Ucrania dañadas por los bombardeos rusos ', ' Durante su reunión en Muenster, al oeste de Alemania, el grupo condenó la represión a las protestas en Irán y las pruebas de misiles de Corea del Norte\r\n ', ' Los principales diplomáticos de los países del G7 han acordado la necesidad de un mecanismo de coordinación para ayudar a Ucrania a reparar y defender su energía e infraestructuras críticas de los ataques de Rusia, dijo el viernes un alto funcionario del Departamento de Estado de Estados Unidos.\r\n\r\nLos países del G7 se han reunido esta semana en la ciudad de Muenster, al oeste de Alemania, con la invasión rusa de Ucrania el 24 de febrero, la profundización del alineamiento militar de Irán con Moscú a causa de la guerra y la creciente asertividad de China como temas principales de la agenda.\r\n\r\nLos países también discutieron el estado del campo de batalla para determinar qué armas proporcionar a Kiev, aunque esta vez el enfoque se centró más en la asistencia que permitiría a Ucrania defenderse de la intensificación de los ataques rusos a su infraestructura de energía y agua, dijo el funcionario bajo condición de anonimato.\r\n\r\nEl G7 condenó la escalada de ataques por parte de Rusia contra infraestructuras críticas y otros objetivos civiles en Ucrania, así como el uso de drones iraníes en esas operaciones.\r\n\r\n '),
(7, 'Tite anunció la lista de 26 jugadores de Brasil para el Mundial de Qatar con la presencia de Dani Alves y varias ausencias de peso', 'La selección brasileña contará con: tres arqueros, siete defensores, siete mediocampistas y nueve delanteros', 'A falta de 13 días para el inicio del Mundial de Qatar 2022, las selecciones participantes continúan haciendo oficial sus listas de convocados. Después de Japón y Costa Rica, que fueron los primeros en presentar a sus 26 protagonistas, este lunes fue el turno del combinado de Tite.\r\n\r\nEn una conferencia de prensa, el seleccionador agradeció a los 84 jugadores que participaron del ciclo desde el 2018 hasta este momento. Posteriormente hizo una mención aparte sobre las nuevas generaciones de jóvenes y se adentró en la nómina de futbolistas para la cita mundialista.\r\n\r\nLos arqueros serán: Alison (Liverpool), Ederson (Manchester City), Weverton (Palmeiras)\r\n\r\nLos defensores: Danilo (Juventus), Dani Alves (Pumas de la UNAM), Alex Sandro (Juventus), Alex Telles (Sevilla), Eder Militao (Real Madrid), Marquinhos (PSG) y Thiago Silva (Chelsea)\r\n\r\nLos mediocampistas: Bremer (Juventus), Casemiro (Manchester United), B. Guimaraes (Newcastle), Everton Ribeiro (Flamengo), Fabinho (Liverpool), Fred (Manchester United) y Lucas Paqueta (West Ham)\r\n\r\nLos delanteros: Antony (Manchester United), Gabriel Jesus (Arsenal), Gabriel Martinelli (Arsenal), Neymar (PSG), Pedro (Flamengo), Raphinha (Barcelona), Richarlison (Tottenham), Rodrygo (Real Madrid) y Vinicius Jr (Real Madrid).\r\n\r\nLa lista de Brasil para el Mundial de Qatar 2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'ivan', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'sandra', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'ivan654', '12345654'),
(4, 'ivan543', '12345543'),
(5, 'ivan654', '12345654'),
(6, 'rogelio', '12345'),
(7, 'celeste', '12345'),
(8, 'carina', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'alejandro', '12345'),
(10, 'josefina', '12345'),
(11, 'rogelio', '¿we78hr87wwq');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
