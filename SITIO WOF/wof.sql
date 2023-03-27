-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-03-2023 a las 15:26:56
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wof`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(10, ' Felices 12 años a la abuela de nuestra manada', 'Olivia fue rescatada de un basural cuando era solo una bebé ', 'Doce años de encontrar a mi musa en un basural. En ese entonces cerca de casa había un basural donde además de tirar y quemar desechos también era y lamentablemente sigue siendo “normal” que la gente abandone todo tipo de animales \r\n\r\nFui a dar vueltas buscando sobrevivientes y allí, desde el espejo retrovisor vi su cabecita negra y blanca moverse entre bolsas de basura.\r\n\r\nCuando te tuve en mis manos sentí que jamás nadie me cuido y me persiguió tanto, entiendo tus miedos y agradezco a la vida poder acompañarte en este proceso de abuela. \r\n\r\nMuy Feliz Cumple Olivia!! \r\n', 'lw1axjrqqatzr86jbsvv'),
(9, ' ¿Sabías que los perros de pelaje negro son los más discriminados a la hora de adoptar?', 'Una de las cosas maravillosas que nos enseñan los animales y de las cuales aún mucho humanos no aprendimos  ¡ NO DISCRIMINAR !\r\n', 'Si creímos que la discriminación sólo la aplicábamos entre humanos estamos equivocados ¡Los animales TAMBIÉN sufren nuestra discriminación! Y no hablamos sólo a la hora de elegir comprar un “perro de raza” por que para algunos se ve más “hegemónico”.\r\n\r\nLamentablemente también hay quienes discriminan a la hora de adoptar “Eligiendo”, buscando y adoptando solamente animales “blancos, claritos o rubios”, cerrando toda posibilidad de brindarle un hogar a aquellos animales que presenten pelaje negro, como si el color cambiara su forma de sentir y necesitad de una familia \r\n', 'wkvwi4ocugszsrcncqrg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(4, 'laura', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
