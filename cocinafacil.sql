-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2017 a las 15:01:51
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
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `id` int(11) NOT NULL,
  `nombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Arroz', 'El arroz (del árabe أرز, Ar-ruzz) es la semilla de la planta Oryza sativa. Se trata de un cereal considerado alimento básico en muchas culturas culinarias (en especial la cocina asiática), así como en algunas partes de América Latina.\r\nEl arroz es el segundo cereal más producido en el mundo, tras el maíz. Debido a que el maíz es producido con otros muchos propósitos aparte del consumo humano, se puede decir que el arroz es el cereal más importante en la alimentación humana y que contribuye de forma muy efectiva al aporte calórico de la dieta humana actual; es fuente de una quinta parte de las calorías consumidas en el mundo.'),
(2, 'Solomillo', 'El solomillo es una pieza de carne procedente de la parte lumbar, alojado entre las costillas inferiores y la columna vertebral; más concretamente, encima de los riñones y debajo del lomo bajo; de ahí el nombre de so-lomillo. Se entiende por solomillo la pieza correspondiente al vacuno o al porcino, pues en otros animales el músculo es tan pequeño que no se despieza separadamente. El solomillo se considera en la cocina una pieza selecta de carne que se prepara de diversas formas.'),
(3, 'Bacalao', 'El bacalao común, bacalao del Atlántico o bacalao de Noruega (Gadus morhua) es una de las cerca de 60 especies de una misma familia de peces migratorios. Vive en mares fríos del norte. Por lo general el bacalao es de tamaño pequeño, aunque algunos ejemplares pueden llegar a alcanzar los cien kilogramos de peso con un tamaño de hasta casi dos metros. Se alimenta de otros peces más pequeños, como el arenque.'),
(4, 'Pollo', 'El gallo y la gallina (Gallus gallus domesticus) son la subespecie doméstica de la especie Gallus gallus, una especie de ave galliforme de la familia Phasianidae procedente del sudeste asiático. Los nombres comunes son: gallo, para el macho; gallina, para la hembra, y pollo, para los subadultos. Es el ave más numerosa del planeta, pues se calcula que supera los 16 000 millones de ejemplares.'),
(5, 'Ensalada', 'Una ensalada es, en líneas generales, un plato frío con hortalizas mezcladas, cortadas en trozos y aderezadas, fundamentalmente con sal, jugo de limón, aceite de oliva y vinagre. Puede tomarse como plato único, antes o después del plato principal e incluso como complemento (para picar).\r\nTambién puede ser de una sola hortaliza.'),
(6, 'Gamba', 'Gamba es el nombre que reciben los crustáceos marinos del orden decapoda, abdomen desarrollado y caparazón flexible que son consumidos como mariscos.​ Es muy similar a los camarones y a los langostinos.'),
(7, 'Chocolate', 'El chocolate (en náhuatl: xocolātl) es el alimento que se obtiene mezclando azúcar con dos productos derivados de la manipulación de las semillas del cacao: la masa del cacao y la manteca de cacao. A partir de esta combinación básica, se elaboran los distintos tipos de chocolate, que dependen de la proporción entre estos elementos y de su mezcla, o no, con otros productos tales como leche y frutos secos.'),
(8, 'Queso', 'El queso es un alimento sólido elaborado a partir de la leche cuajada de vaca, cabra, oveja, búfala, camella u otros mamíferos rumiantes. La leche es inducida a cuajarse usando una combinación de cuajo (o algún sustituto) y acidificación. Las bacterias beneficiosas se encargan de acidificar la leche, y tienen también un papel importante en la definición de la textura y el sabor de la mayoría de los quesos. Algunos también contienen mohos, tanto en la superficie exterior como en el interior.'),
(9, 'Calabacín', 'Cucurbita pepo es el nombre científico de una especie de plantas cucurbitáceas originaria de Mesoamérica y sur de Estados Unidos, que junto con otras especies emparentadas (Cucurbita maxima, C. moschata, C. argyrosperma) forman un grupo de especies de calabazas cuyas variedades cultivadas, de las que se cosecha su fruto maduro o inmaduro, poseen usos culinarios indistinguibles (son los zapallos, calabacines, zapallitos, auyamas, ahuyamas, pipianes, ayotes, etc). '),
(10, 'Lentejas', 'Lens culinaris, la lenteja (International Feed Nº 5-02-506) es una planta anual herbácea de la familia fabaceae, con tallos de 30 a 40 cm, endebles, ramosos y estriados, hojas oblongas, estípulas lanceoladas, zarcillos poco arrollados, flores blancas con venas moradas, sobre un pedúnculo axilar, y fruto en vaina pequeña, con dos o tres semillas pardas en forma de disco de medio centímetro de diámetro, aproximadamente.'),
(11, 'Huevo', 'Los huevos de las aves constituyen un alimento habitual en la alimentación de los humanos. Se presentan protegidos por una cáscara y son ricos en proteínas (principalmente albúmina, que es la clara o parte blanca del huevo) y lípidos. Son un alimento de fácil digestión, componente principal de múltiples platos dulces y salados, y una parte imprescindible en muchos otros debido a sus propiedades aglutinantes.'),
(12, 'Agua', 'El agua (del latín aqua) es una sustancia cuya molécula está formada por dos átomos de hidrógeno y uno de oxígeno (H2O). El término agua generalmente se refiere a la sustancia en su estado líquido, aunque la misma puede hallarse en su forma sólida llamada hielo y en su forma gaseosa denominada vapor. Es una sustancia bastante común en el universo y el sistema solar, donde se encuentra principalmente en forma de vapor o de hielo. Es esencial para la supervivencia de todas las formas conocidas de vida.');

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
(1, 'Entrante', 'Ensalada de pasta al pesto con tomates cherry', 'Ingredientes:\r\n- 300 g de fusili\r\n- 1 pastilla de Avecrem Caldo de Pollo\r\n- 100 g de jamón de pavo\r\n- 40 g de filetes de anchoa\r\n- 10 tomates cherry\r\n- 12 aceitunas verdes sin hueso\r\n- 12 aceitunas negras sin hueso\r\n- 50 g de pimiento morrón\r\n- 250 g de queso parmesano rallado\r\n- Salsa pesto', 'Paso 1\r\nPon un cazo con agua al fuego y, cuando rompa a hervir, añade la pastilla de Avecrem Caldo de Pollo Gallina Blanca desmenuzada y la pasta. Cuece la pasta el tiempo indicado por el fabricante hasta que quede al dente y escúrrela.\r\n\r\nPaso 2\r\nMientras, pica el jamón, el pimiento y las anchoas en trozos pequeños. Lava los tomates cherry y pártelos por la mitad, y corta también las aceitunas por la mitad. Mezcla todos estos ingredientes en un bol y añade la pasta. Remueve bien para que quede todo bien mezclado.\r\n\r\nPaso 3\r\nPrepara la salsa pesto. Para empezar, tuesta los piñones en una sartén sin aceite durante un par o tres de minutos. Pásalos al vaso de la batidora y agrega la albahaca y los dientes de ajo pelados.\r\n\r\nPaso 4\r\nTritura los ingredientes y añade, poco a poco, el aceite de oliva para que emulsione. Finalmente, sazona con pimienta al gusto y añade el pesto a la pasta, removiendo bien, para terminar el plato.\r\n\r\n'),
(2, 'Entrante', 'Cóctel de Gambas', 'Ingredientes:\r\n- 16 langostinos\r\n- 450 g de gambas peladas\r\n- 1 Avecrem 100% Natural 8 verduras Gallina Blanca\r\n- Una pizca de sal\r\n- 200 g de lechuga iceberg\r\n- 175 g de piña\r\n- 180 g de naranja\r\n- 120 g de kiwi\r\n- 30 g de coco rallado\r\n- Unas hojas de cebollino\r\n- 200 g de mayonesa\r\n- 50 g de kétchup\r\n- 10 ml de brandy\r\n- 30 ml de zumo de naranja\r\n- Unas gotas de salsa Tabasco\r\n- Unas gotas de salsa Worcestershire', 'Paso 1\r\nPela los langostinos, procurando dejarles la cabeza adherida al cuerpo. Hierve las gambas y los langostinos en agua con la pastilla de Avecrem 100% Natural 8 verduras y una pizca de sal. Una vez cocidas refréscalas en agua con hielo. Escúrrelas y resérvalas.\r\n\r\nPaso 2\r\nCorta la lechuga a tiras finas. Para que te seas más fácil, sepárale algunas hojas y enróllalas sobre sí mismas. A continuación solo tendrás que laminar la hoja de la hortaliza. Lávala, escúrrela y resérvala.\r\n\r\nPaso 3\r\nPela la naranja de manera que no le queden restos blancos de piel adheridos a la carne. Luego, con cuidado, realiza cortes en la línea que separa cada gajo. De esta manera, los extraerás sin ningún resto de piel. Resérvalos.\r\n\r\nPaso 4\r\nPela la piña y elimínale los \"ojos\" (los puntos negros que pueden quedar entre la piel y la carne de la fruta). Córtala en láminas de medio centímetro aproximadamente y acabala troceando a dados. Resérvala.\r\n\r\nPaso 5\r\nPela el kiwi y córtalo en cuartos. Resérvalo.\r\n\r\nPaso 6\r\nPrepara la salsa rosa: Mezcla todos los ingredientes y remuévelos hasta que tengas una salsa lisa y homogénea.\r\n\r\nPaso 7\r\nColoca una base de lechuga sobre una copa ancha. Nápala ligeramente con salsa rosa. Colócale las gambas por encima y nápalas de nuevo con salsa rosa. Decora con las frutas y los langostinos pelados. Para terminar el plato espolvoréale un poco de coco rallado y cebollino.\r\n\r\n'),
(3, 'Principal', 'Paella de marisco', 'Ingredientes:\r\n- 250 g de arroz bomba\r\n- 125 g de sepia, gambón, mejillones y almejas\r\n- 1 brick de Caldo para Paella Fácil 100% Natural\r\n- 1 diente de ajo\r\n- 1 pimiento verde\r\n- 1 pimiento rojo\r\n- 1 cebolla\r\n- 1 tomate\r\n- Aceite de oliva virgen extra', 'Paso 1\r\nAñade un poco de aceite en la paella y sofríe la sepia y el marisco. Cuando estén, apártalos y resérvalos en un plato. Pica el diente de ajo y ponlo a sofreír.\r\n\r\nPaso 2\r\nIncorpora los pimientos, el tomate y la cebolla picados en la paella. Remueve con la espátula. Después agrega el marisco y sofríelo todo junto. A continuación, pon el arroz.\r\n\r\nPaso 3\r\nAñade el Caldo para Paella Fácil de Marisco y sofríe durante unos 18 minutos. Apaga entonces el fuego y deja reposar 5 minutos antes de servir.\r\n\r\n'),
(4, 'Principal', 'Sopa de legumbres y cereales', 'Ingredientes:\r\n- 200 g de espelta\r\n- 150 g de mijo\r\n- 150 g de lentejas\r\n- 1 tallo de apio\r\n- 1 pastilla de Avecrem Dúo Legumbres Estofadas\r\n- 2 cdas de aceite de oliva virgen extra\r\n- 1 brick de Caldo Casero de Verduras 100% Natural\r\n- 2 zanahorias\r\n- Salvia\r\n- Pimienta', 'Paso 1\r\nLava las zanahorias y el apio y córtalos en trozos; limpia las cebolletas y córtalas en rodajas. En un wok, prepara una salsa las zanahorias, el apio y una cucharada de aceite de oliva virgen extra; a continuación, añade el mijo y déjalo cocer durante unos minutos. Vierte el mismo contenidos de agua que de mijo y una cucharada de caldo elaborado con Avecrem y continua la cocción durante 10 minutos.\r\n\r\nPaso 2\r\nRehoga la cebolla con una cucharada de aceite de oliva virgen extra; después añade las lentejas y la espelta. Agrega ½ litro de caldo Casero de Verduras 100% Natural y cuece durante 20 minutos. Por último, agrega el mijo a la sopa y la salvia fresca picada. Sazona con pimienta y sirve.\r\n\r\n'),
(5, 'Postre', 'Bizcocho rápido de chocolate', 'Ingredientes:\r\n- 1 yogur natural\r\n- 2 medidas de yogur de harina\r\n- 2 medidas de yogur azúcar\r\n- 1 medida de yogur de cacao en polvo\r\n- 1 medida de yogur de aceite\r\n- 3-4 huevos\r\n- 1 sobre levadura\r\n- 80g nueces', 'Paso 1\r\nMezcla todos los ingredientes en un bol, menos las nueces, con la ayuda de la batidora. Cortar las nueces a trocitos, enharínalas ligeramente para que no se bajen al fondo, y añádelas a la masa.\r\n\r\nPaso 2\r\nPrecalienta el horno a 180º Mientras tanto, enharina un molde de unos 24 cm. un poco alto y vierte la preparación anterior.\r\n\r\nPaso 3\r\nHornea el bizcocho a 180º durante 30-35 minutos aproximadamente. Recuerda que cada horno es diferente y que deberás comprobar el grado de cocción pinchando con un palillo en el centro del bizcocho. Si sale limpio, es que está hecho. Si no es así, será señal de que necesita unos minutos más de cocción. Saca del horno, deja templar y desmolda sobre una rejilla para que se enfríe. Sirve espolvoreado con azúcar glass.\r\n\r\n'),
(6, 'Postre', 'Tarta de queso fresco y fresas', 'Ingredientes:\r\n- 500 g de harina floja\r\n- 200 g de mantequilla\r\n- 5 g de sal\r\n- 2 huevos\r\n- 10 g de azúcar lustre\r\n- 500 g de fresones\r\n- 250 g de chocolate blanco\r\n- 80 ml de nata para montar\r\n- 450 g de queso fresco\r\n- 70 g de azúcar\r\n- 2 huevos\r\n- 10 ml de zumo de limón', 'Paso 1\r\nMezcla la harina con la mantequilla derretida. Añade los huevos, el azúcar lustre y la sal y mezcla hasta que la pasta este fina. No debes mezclarla en exceso.\r\n\r\nPaso 2\r\nEstírala con la ayuda de un rodillo de pastelería, cubre un molde rectangular con esta pasta quebrada, por abajo y por los laterales. Debe quedarte una capa muy fina.\r\n\r\nPaso 3\r\nLimpia los fresones, quita el rabito y pártelos por la mitad. Guarda 100 g para decorar.\r\n\r\nPaso 4\r\nVierte la nata en un cazo y ponla en el fuego. Cuando empiece a calentarse, retírala del fuego y añade el chocolate blanco. Deja que se derrita y se enfríe.\r\n\r\nPaso 5\r\nAñade a la nata y el chocolate los fresones y tritura con la ayuda de una batidora eléctrica.\r\n\r\nPaso 6\r\nEn un cuenco echa el queso fresco, el azúcar y los huevos. Mezcla suavemente y añade la mezcla de nata, chocolate blanco y fresones y el zumo de limón. Mezcla el conjunto hasta que esté bien cremoso.\r\n\r\nPaso 7\r\nVierte la mezcla dentro del molde con la pasta quebrada y cuece el conjunto en un horno precalentado a 150 ºC durante 1 h.\r\n\r\nPaso 8\r\nUna vez cocida (si la pinchas en el centro con un cuchillo la punta debe salir limpia), sácala del horno y déjala enfriar.\r\n\r\nPaso 9\r\nDesmolda la tarta, decórala con unos fresones por encima y un poco de salsa de fresones alrededor.\r\n\r\n\r\n'),
(7, 'Principal', 'Risotto cuatro quesos', 'Ingredientes:\r\n- 40 g de mantequilla\r\n- 1 cebolla\r\n- 350 g de arroz arborio\r\n- 1 l de Caldo Casero de Verduras 100% Natural\r\n- 200 ml de vino blanco seco\r\n- 50 g de queso Gorgonzola\r\n- 50 g de queso Taleggio\r\n- 50 g de queso Fontina\r\n- 50 g de queso Parmesano\r\n- Sal\r\n- Pimienta\r\n- 2 cdas. de perejil picado', 'Paso 1\r\nCalienta la mantequilla en una cazuela de base gruesa. Pica la cebolla y sofríela durante 5 minutos, removiendo de vez en cuando, hasta que esté tierna pero sin dejar que tome demasiado color.\r\n\r\nPaso 2\r\nAñade el arroz y rehógalo durante 3 minutos sin dejar de remover. Los granos deben quedar bien impregnados de mantequilla y casi transparentes.\r\n\r\nPaso 3\r\nVierte el vino a la cazuela y, sin dejar de remover, deja que vaya cociendo hasta que se evapore por completo.\r\n\r\nPaso 4\r\nPon a calentar el Caldo Casero de Verduras 100% Natural Gallina Blanca en un cazo. Cuando esté bien caliente, añade un cucharón del mismo a la cazuela con el arroz y deja cocer, removiendo constantemente, hasta que haya absorbido todo el caldo. Sigue incorporando el caldo, a cucharones, hasta un total de 20 minutos y dejando que absorba por completo el caldo antes de añadir otro cucharón.\r\n\r\nPaso 5\r\nRetira la cazuela del fuego y añade los quesos, recién rallados. Remueve bien hasta que el queso quede incorporado y salpimienta al gusto. Pasa el risotto a una fuente para servir y espolvorea con el perejil y un poco de parmesano rallado. Sirve caliente.\r\n\r\n'),
(8, 'Principal', 'Risotto de espárragos', 'Ingredientes:\r\n- 150 g de arroz Arborio o similar\r\n- 50 g de queso parmesano rallado\r\n- 40 g de mantequilla\r\n- 1 l de Caldo Casero de Verduras 100% Natural Gallina Blanca\r\n- 4 hojas de albahaca fresca para decorar\r\n- 2 manojos de espárragos verdes\r\n- 2 dientes de ajo\r\n- 1 vaso de vino blanco seco\r\n- Sal (al gusto)', 'Paso 1\r\nCalienta el Caldo Casero de Verduras 100% Natural Gallina Blanca en un cazo y manténlo a punto de ebullición.\r\n\r\nPaso 2\r\nCorta la parte fibrosa de los espárragos y lávalos. Separa las yemas del tallo de los espárragos y resérvalas. Trocea los tallos en rodajas de unos 5 milímetros de grosor.\r\n\r\nPaso 3\r\nFunde la mantequilla en una cazuela baja. Incorpora el ajo previamente pelado y cortado a láminas. Sofríelo a fuego lento sin que llegue a dorarse.\r\n\r\nPaso 4\r\nAñade las rodajas de espárrago y remueve con una cuchara de madera durante unos 5 minutos. Incorpora el arroz y sigue removiendo. Vierte por encima el vino blanco y deja que se evapore.\r\n\r\nPaso 5\r\nVierte en la cazuela dos cucharones de caldo Casero de Verduras 100% Natural Gallina Blanca y una pizca de sal y remueve. En total, el arroz deberá cocer durante cerca de 20 minutos a fuego medio, vertiendo en él el caldo poco a poco y sin dejar de remover. A mitad de la cocción, añádele las yemas de los espárragos.\r\n\r\nPaso 6\r\nPrueba unos granos de arroz para comprobar su textura. Cuando esté al dente, retira la cazuela del fuego, espolvorea por encima el queso parmesano rallado y remueve hasta que se funda.\r\n\r\nPaso 7\r\nPresenta el risotto en un plato hondo y adorna con las hojas de albahaca.\r\n\r\n'),
(9, 'Entrante', 'Crema de calabacín con zanahorias', 'Ingredientes:\r\n- 4 calabacines\r\n- 1 cebolla\r\n- 4 zanahorias\r\n- 1 vasito de vino blanco\r\n- 150 g de jamón serrano\r\n- 1 l de Caldo Casero de Pollo 100% Natural Gallina Blanca\r\n- 1 diente de ajo\r\n- 6 clavos de olor\r\n- 4 cucharadas de aceite de oliva virgen extra', 'Paso 1\r\nPela, lava y trocea los calabacines y las zanahorias. Sofríe la cebolla con los clavos de olor en el aceite junto con el diente de ajo, añade el vino y deja evaporar.\r\n\r\nPaso 2\r\nIncorpora las verduras y el caldo, y deja cocer hasta que las verduras estén tiernas.\r\n\r\nPaso 3\r\nTritura todo con la batidora eléctrica. Antes de servir añade por encima el jamón serrano picadito. Se puede servir el puré frío o en caliente.\r\n\r\n'),
(10, 'Entrante', 'Ensalada César', 'Ingredientes:\r\n- 300 g de pollo\r\n- 80 g de aceitunas\r\n- 1 lechuga romana\r\n- 60 g de pan tostado\r\n- 1 cucharada de aceite de oliva virgen extra\r\n- Para preparar la salsa César:\r\n- 100 ml. de leche entera\r\n- 3 anchoas en aceite\r\n- 1/2 diente de ajo\r\n- 200 ml de aceite de oliva virgen extra\r\n- 1 pastilla de Avecrem Caldo de Pollo\r\n- 100 g de queso parmesano\r\n- 1 chorrito de limón exprimido', 'Paso 1\r\nPon una cucharada de aceite de oliva virgen extra en una plancha y, cuando esté bien caliente, cocina el pollo hasta que esté dorado por fuera y cocido por dentro.\r\n\r\nPaso 2\r\nCorta el pan en dados. Lava la lechuga y córtala.\r\n\r\nPaso 3\r\nPara preparar la salsa césar, coloca la leche entera y el aceite de oliva virgen extra en el vaso de la batidora. Introduce el túrmix en el fondo, ponlo en marcha y, sin moverlo, deja que la mezcla de aceite y leche emulsione. Cuando la salsa empiece a montar, sube lentamente el brazo del túrmix para que toda la salsa emulsione bien. A continuación, añade las anchoas, un poco de pimienta molida, la pastilla de Avecrem Caldo de Pollo, el ajo y un chorrito de limón. A continuación, monta la ensalada con todos los ingredientes, incluido el pollo cortado a trocitos y el parmesano rallado. Antes de servir la ensalada, alíñala con la salsa césar.\r\n\r\n'),
(11, 'Postre', 'Flan de huevo', 'Ingredientes:\r\n- 4 huevos enteros\r\n- Naranja confitada\r\n- Puré de castañas\r\n- Para decorar:\r\n- 100 gr. de azúcar\r\n- 1 vaina de vainilla\r\n- 1 l de leche\r\n- 200 gr. de azúcar\r\n- 4 yemas de huevo\r\n- 4 huevos enteros', 'Paso 1\r\nPoner a hervir la leche con la vaina de vainilla. Cuando empiece a hervir apagar el fuego y dejar infusionar tapado unos minutos.\r\n\r\nPaso 2\r\nPoner a hervir la leche con la vaina de vainilla. Cuando empiece a hervir, apagar el fuego y dejar infusionar tapado durante unos minutos.\r\n\r\nPaso 3\r\nMezclar en un bol los huevos enteros, las yemas y los 200 g de azúcar. Añadir la leche tibia sin dejar de mezclar.\r\n\r\nPaso 4\r\nmezclar en un bol los huevos enteros, las yemas y los 200 gr. de azúcar. Añadir la leche tibia sin dejar de mezclar.\r\n\r\nPaso 5\r\nCon los 100 g de azúcar hacer un caramelo: ponerlo en un cazo al fuego y dejar que cueza hasta que adquiera un color oscuro. Disponerlo rápidamente en la base de los moldes.\r\n\r\nPaso 6\r\nCon los 100 gr. de azúcar hacer un caramelo: ponerlo en un cazo al fuego y dejar que cueza hasta que adquiera un color oscuro. Disponerlo rápidamente en la base de los moldes.\r\n\r\nPaso 7\r\nAcabar de rellenar los moldes con la masa de flan y poner en un baño maría al horno a 200ºC durante unos 30 minutos. Una vez cocidos, reservar en el frigorífico.\r\n\r\nPaso 8\r\nAcabar de rellenar los moldes con la masa de flan y poner en un baño maría al horno a 200º durante unos 30 minutos. Una vez cocidos, reservar en el frigorífico.\r\n\r\nPaso 9\r\nDesmoldar y servir en un plato con un poco de puré de castañas, naranja y membrillo.\r\n\r\n'),
(12, 'Postre', 'Buñuelos de viento', 'Ingredientes:\r\n- 250 c.c. de agua\r\n- 150 gr. de harina\r\n- 100 gr. de mantequilla\r\n- 2 cdas de azúcar\r\n- 3 huevos\r\n- Azúcar y canela molida\r\n- Aceite\r\n- Sal', 'Paso 1\r\nPon al fuego un cazo con el agua, el azúcar, la mantequilla y una pizca de sal. Cuando hierva, vierte la harina, previamente tamizada, de golpe y cuece 2-3 minutos.\r\n\r\nPaso 2\r\nMezcla con una cuchara de madera hasta obtener una pasta fina. Continúa removiendo hasta que la pasta se desprenda del cazo unos 3 minutos. Deja enfriar a temperatura ambiente unos 10 minutos. Añade los huevos uno a uno, no incorpores el siguiente hasta que se haya absorbido bien el anterior.\r\n\r\nPaso 3\r\nCuando la pasta se vuelva brillante y cueste trabajo desprenderla de la cucharas, se cogen montoncitos de masa a los que se les da forma con dos cucharillas y se fríen en abundante aceite caliente. Escurrir sobre papel de cocina y espolvorear con azúcar.\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts_ingredientes`
--

CREATE TABLE `posts_ingredientes` (
  `post_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `posts_ingredientes`
--

INSERT INTO `posts_ingredientes` (`post_id`, `ingrediente_id`) VALUES
(1, 5),
(2, 6),
(3, 1),
(4, 10),
(5, 7),
(6, 8),
(7, 1),
(8, 1),
(9, 9),
(10, 5),
(11, 11),
(12, 12);

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
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts_ingredientes`
--
ALTER TABLE `posts_ingredientes`
  ADD PRIMARY KEY (`post_id`,`ingrediente_id`),
  ADD KEY `IDX_430573834B89032C` (`post_id`),
  ADD KEY `IDX_43057383769E458D` (`ingrediente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Filtros para la tabla `posts_ingredientes`
--
ALTER TABLE `posts_ingredientes`
  ADD CONSTRAINT `FK_430573834B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_43057383769E458D` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingrediente` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
