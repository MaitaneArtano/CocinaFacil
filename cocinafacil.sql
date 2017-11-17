-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2017 a las 09:57:18
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
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user`, `comment`, `approved`, `created`, `updated`) VALUES
(1, 1, 'Juan', 'Muy buena receta', 1, '2017-11-16 13:52:32', '2017-11-16 13:52:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `categoria` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ingrediente` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `categoria`, `nombre`, `ingrediente`, `descripcion`) VALUES
(1, 'Entrante', 'Ensalada de pasta al pesto con tomates cherry', '300 g de fusili\r\n1 pastilla de Avecrem Caldo de Pollo\r\n100 g de jamón de pavo\r\n40 g de filetes de anchoa\r\n10 tomates cherry\r\n12 aceitunas verdes sin hueso\r\n12 aceitunas negras sin hueso\r\n50 g de pimiento morrón\r\n250 g de queso parmesano rallado\r\nSalsa pesto', 'Paso 1\r\nPon un cazo con agua al fuego y, cuando rompa a hervir, añade la pastilla de Avecrem Caldo de Pollo Gallina Blanca desmenuzada y la pasta. Cuece la pasta el tiempo indicado por el fabricante hasta que quede al dente y escúrrela.\r\n\r\nPaso 2\r\nMientras, pica el jamón, el pimiento y las anchoas en trozos pequeños. Lava los tomates cherry y pártelos por la mitad, y corta también las aceitunas por la mitad. Mezcla todos estos ingredientes en un bol y añade la pasta. Remueve bien para que quede todo bien mezclado.\r\n\r\nPaso 3\r\nPrepara la salsa pesto. Para empezar, tuesta los piñones en una sartén sin aceite durante un par o tres de minutos. Pásalos al vaso de la batidora y agrega la albahaca y los dientes de ajo pelados.\r\n\r\nPaso 4\r\nTritura los ingredientes y añade, poco a poco, el aceite de oliva para que emulsione. Finalmente, sazona con pimienta al gusto y añade el pesto a la pasta, removiendo bien, para terminar el plato.'),
(2, 'Entrante', 'Cóctel de Gambas', '16 langostinos\r\n450 g de gambas peladas\r\n1 Avecrem 100% Natural 8 verduras Gallina Blanca\r\nUna pizca de sal\r\n200 g de lechuga iceberg\r\n175 g de piña\r\n180 g de naranja\r\n120 g de kiwi\r\n30 g de coco rallado\r\nUnas hojas de cebollino\r\n200 g de mayonesa\r\n50 g de kétchup\r\n10 ml de brandy\r\n30 ml de zumo de naranja\r\nUnas gotas de salsa Tabasco\r\nUnas gotas de salsa Worcestershire', 'Paso 1\r\nPela los langostinos, procurando dejarles la cabeza adherida al cuerpo. Hierve las gambas y los langostinos en agua con la pastilla de Avecrem 100% Natural 8 verduras y una pizca de sal. Una vez cocidas refréscalas en agua con hielo. Escúrrelas y resérvalas.\r\n\r\nPaso 2\r\nCorta la lechuga a tiras finas. Para que te seas más fácil, sepárale algunas hojas y enróllalas sobre sí mismas. A continuación solo tendrás que laminar la hoja de la hortaliza. Lávala, escúrrela y resérvala.\r\n\r\nPaso 3\r\nPela la naranja de manera que no le queden restos blancos de piel adheridos a la carne. Luego, con cuidado, realiza cortes en la línea que separa cada gajo. De esta manera, los extraerás sin ningún resto de piel. Resérvalos.\r\n\r\nPaso 4\r\nPela la piña y elimínale los \"ojos\" (los puntos negros que pueden quedar entre la piel y la carne de la fruta). Córtala en láminas de medio centímetro aproximadamente y acabala troceando a dados. Resérvala.\r\n\r\nPaso 5\r\nPela el kiwi y córtalo en cuartos. Resérvalo.\r\n\r\nPaso 6\r\nPrepara la salsa rosa: Mezcla todos los ingredientes y remuévelos hasta que tengas una salsa lisa y homogénea.\r\n\r\nPaso 7\r\nColoca una base de lechuga sobre una copa ancha. Nápala ligeramente con salsa rosa. Colócale las gambas por encima y nápalas de nuevo con salsa rosa. Decora con las frutas y los langostinos pelados. Para terminar el plato espolvoréale un poco de coco rallado y cebollino.'),
(3, 'Principal', 'Paella de marisco', '250 g de arroz bomba\r\n125 g de sepia, gambón, mejillones y almejas\r\n1 brick de Caldo para Paella Fácil 100% Natural\r\n1 diente de ajo\r\n1 pimiento verde\r\n1 pimiento rojo\r\n1 cebolla\r\n1 tomate\r\nAceite de oliva virgen extra', 'Paso 1\r\nAñade un poco de aceite en la paella y sofríe la sepia y el marisco. Cuando estén, apártalos y resérvalos en un plato. Pica el diente de ajo y ponlo a sofreír.\r\n\r\nPaso 2\r\nIncorpora los pimientos, el tomate y la cebolla picados en la paella. Remueve con la espátula. Después agrega el marisco y sofríelo todo junto. A continuación, pon el arroz.\r\n\r\nPaso 3\r\nAñade el Caldo para Paella Fácil de Marisco y sofríe durante unos 18 minutos. Apaga entonces el fuego y deja reposar 5 minutos antes de servir.'),
(4, 'Principal', 'Sopa de legumbres y cereales', '200 g de espelta\r\n150 g de mijo\r\n150 g de lentejas\r\n1 tallo de apio\r\n1 pastilla de Avecrem Dúo Legumbres Estofadas\r\n2 cdas de aceite de oliva virgen extra\r\n1 brick de Caldo Casero de Verduras 100% Natural\r\n2 zanahorias\r\nSalvia\r\nPimienta', 'Paso 1\r\nLava las zanahorias y el apio y córtalos en trozos; limpia las cebolletas y córtalas en rodajas. En un wok, prepara una salsa las zanahorias, el apio y una cucharada de aceite de oliva virgen extra; a continuación, añade el mijo y déjalo cocer durante unos minutos. Vierte el mismo contenidos de agua que de mijo y una cucharada de caldo elaborado con Avecrem y continua la cocción durante 10 minutos.\r\n\r\nPaso 2\r\nRehoga la cebolla con una cucharada de aceite de oliva virgen extra; después añade las lentejas y la espelta. Agrega ½ litro de caldo Casero de Verduras 100% Natural y cuece durante 20 minutos. Por último, agrega el mijo a la sopa y la salvia fresca picada. Sazona con pimienta y sirve.'),
(5, 'Postre', 'Bizcocho rápido de chocolate', '1 yogur natural\r\n2 medidas de yogur de harina\r\n2 medidas de yogur azúcar\r\n1 medida de yogur de cacao en polvo\r\n1 medida de yogur de aceite\r\n3-4 huevos\r\n1 sobre levadura\r\n80g nueces', 'Paso 1\r\nMezcla todos los ingredientes en un bol, menos las nueces, con la ayuda de la batidora. Cortar las nueces a trocitos, enharínalas ligeramente para que no se bajen al fondo, y añádelas a la masa.\r\n\r\nPaso 2\r\nPrecalienta el horno a 180º Mientras tanto, enharina un molde de unos 24 cm. un poco alto y vierte la preparación anterior.\r\n\r\nPaso 3\r\nHornea el bizcocho a 180º durante 30-35 minutos aproximadamente. Recuerda que cada horno es diferente y que deberás comprobar el grado de cocción pinchando con un palillo en el centro del bizcocho. Si sale limpio, es que está hecho. Si no es así, será señal de que necesita unos minutos más de cocción. Saca del horno, deja templar y desmolda sobre una rejilla para que se enfríe. Sirve espolvoreado con azúcar glass.'),
(6, 'Postre', 'Tarta de queso fresco y fresas', '500 g de harina floja\r\n200 g de mantequilla\r\n5 g de sal\r\n2 huevos\r\n10 g de azúcar lustre\r\n500 g de fresones\r\n250 g de chocolate blanco\r\n80 ml de nata para montar\r\n450 g de queso fresco\r\n70 g de azúcar\r\n2 huevos\r\n10 ml de zumo de limón', 'Paso 1\r\nMezcla la harina con la mantequilla derretida. Añade los huevos, el azúcar lustre y la sal y mezcla hasta que la pasta este fina. No debes mezclarla en exceso.\r\n\r\nPaso 2\r\nEstírala con la ayuda de un rodillo de pastelería, cubre un molde rectangular con esta pasta quebrada, por abajo y por los laterales. Debe quedarte una capa muy fina.\r\n\r\nPaso 3\r\nLimpia los fresones, quita el rabito y pártelos por la mitad. Guarda 100 g para decorar.\r\n\r\nPaso 4\r\nVierte la nata en un cazo y ponla en el fuego. Cuando empiece a calentarse, retírala del fuego y añade el chocolate blanco. Deja que se derrita y se enfríe.\r\n\r\nPaso 5\r\nAñade a la nata y el chocolate los fresones y tritura con la ayuda de una batidora eléctrica.\r\n\r\nPaso 6\r\nEn un cuenco echa el queso fresco, el azúcar y los huevos. Mezcla suavemente y añade la mezcla de nata, chocolate blanco y fresones y el zumo de limón. Mezcla el conjunto hasta que esté bien cremoso.\r\n\r\nPaso 7\r\nVierte la mezcla dentro del molde con la pasta quebrada y cuece el conjunto en un horno precalentado a 150 ºC durante 1 h.\r\n\r\nPaso 8\r\nUna vez cocida (si la pinchas en el centro con un cuchillo la punta debe salir limpia), sácala del horno y déjala enfriar.\r\n\r\nPaso 9\r\nDesmolda la tarta, decórala con unos fresones por encima y un poco de salsa de fresones alrededor.\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
