-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2017 a las 12:04:29
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cocinafacil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `categoria`, `nombre`, `descripcion`) VALUES
(1, 'Postre', 'Crepes', 'Ingredientes:\r\n1 huevo\r\n1/2 vaso de leche\r\n50 gr de harina\r\n\r\nBatir el huevo. Añadir la leche e ir añadiendo la harina poco a poco.\r\nDeber quedar líquido, y debe de correr por la sartén precalentada y donde se le ha añadido un chorrito de aceite. Si te a quedado un poco espeso y no corre la pasta añade un poco de leche a la pasta para hacerla fluida, si es al contrario que corre demasiado añadele una cucharada de harina.\r\n\r\nPuedes usarlos tanto con relleno salado como dulce. En aperitivo son perfectos. Como postres deliciosos.\r\n'),
(2, 'Segundo', 'Pizza', 'Ingredientes:\r\n400 gr de Harina\r\n200 ml de Agua\r\n15 gr de Levadura\r\nsal\r\nchorrito de aceite\r\norégano (opcional)\r\n\r\n\r\nMezclar todos los ingredientes hasta obtener una masa homogénea y manejable.\r\n\r\nAñadir sobre la base una fina capa de tomate frito. Sobre éste los ingredientes que desees a tu gusto. No sobrecargues con una cantidad excesiva. Encima de todos los ingredientes añadir queso rallado.\r\n'),
(3, 'Primero', 'Arroz a la cubana', 'Ingredientes para 4 personas:\r\n4 dientes de ajo\r\n1 litro de agua\r\nsal\r\n400gr de arroz\r\ntomate frito (1bote)\r\n4 huevos\r\n1 plátano (opcional)\r\n\r\nPicar o cortar al gusto 4 dientes de ajo (en algunas familias no les gusta tropezar con el ajo a la hora de comer, eso hace que tu mismo/a decidas el tamaño que quedará) y pocharlos con aceite sin que lleguen a dorar.\r\n\r\nAñadir 1 litro de agua y llevar a ebullición unos 15 minutos.\r\n\r\nCon ésto consigues que el agua tome todo el sabor y propiedades de los ajos.\r\n\r\nAñadir sal y el arroz. En 20 minutos el arroz está listo.\r\n\r\nCalentar el bote de tomate frito, y freir los 4 huevos.\r\n\r\nSi te gustan los contrastes de sabores el plátano es ideal para éste plátano. Fríe unas lonchas de plátano.\r\n\r\nEn la presentación de los platos, servir el arroz, encima el tomate frito y sobre él un huevo. Decora el lateral de plato con el plátano.\r\n'),
(4, 'Postre', 'Flan de queso y leche condensada', 'Ingredientes:\r\n2 cucharaditas de esencia de vinilla.\r\n5 huevos de tamaño regular.\r\nDos tazas caramelo líquido.\r\n120 g. de queso crema\r\n380 ml. De leche evaporada.\r\n320 ml. De leche condensada.\r\n\r\nAgregamos en la base del molde el caramelo líquido.\r\nEn un recipiente batimos los huevos hasta que lleguen al punto de nieve.\r\nAgregamos el queso, la leche condensada o dulce de leche y la leche evaporada; de uno a uno sin dejar de batir mientras agregamos cada uno de los ingredientes ya que así evitamos los grumos.\r\n'),
(5, 'Segundo', 'Tortilla de espinacas', 'Ingredientes:\r\n500 g de espinacas congeladas\r\n1 cebolla grande picada groseramente\r\n200 g de tomates cortados en cubitos\r\n200 g de chauchas hernidas y procesadas\r\n3 huevos\r\nsal\r\npimienta\r\n1 pizca de pimentón y orégano.\r\n \r\nSaltear la cebolla en rocío vegetal sabor orégano, mezclar con los tomates. Descongelar la espinaca cocinándola por 3 minutos en agua salada hirviendo, escurrirla y prensarla para que salga todo el excedente de líquido. Mezclar con las verduras anteriores, las chauchas procesadas, salpimentar y agregar los huevos batidos, el pimentón y el orégano. Cocinar en sartén de teflón rociada con spray vegetal del mismo sabor de ambos lados.\r\n'),
(6, 'Primero', 'Croquetas de pollo casera', 'Ingredientes:\r\nPan rallado casero.\r\nHuevo batido.\r\n1 cubito de caldo de pollo.\r\n250 gr. de restos de pollo asado.\r\n50 gr. de harina.\r\n25 gr. de maicena.\r\n80 gr. de aceite de oliva o mantequilla.\r\n1 lt. de leche\r\nIniciamos deshilachando los restos de pollo con las manos, debemos quitar bien los huesitos.\r\nLuego en una cazuela de tamaño regular ponemos a derretir la mantequilla (sin quemarse) para luego agregar la harina y la maicena, ponemos a freír para que las croquetas no salgan con saborcito a harina cruda.\r\nSeguidamente agregamos el pollo deshilachado y el cubito de caldo, revolvemos hasta formar una masita.\r\nA continuación añadimos poco a poco la leche sin dejar de remover. Después de esto dejamos cocer a fuego medio hasta que notemos que la masa comience a despegarse de los costados, luego de esto agregamos sal al gusto.\r\nCuando el proceso de cocción haya terminado, retiramos y pasamos la masita a un recipiente y ponemos a refrigerar. Una vez que la masa esté fría podemos comenzar a darle forma a nuestras croquetas.\r\nUna vez que ya están formadas las pasamos por pan rallado, huevo batido y otra vez pan rallado para que las croquetas no pierdan la textura. Y luego a freír.\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
