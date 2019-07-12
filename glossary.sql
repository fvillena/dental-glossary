-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-07-2019 a las 17:45:32
-- Versión del servidor: 5.7.26-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `glossary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Glosario', '<u><b><i>Súper Glosario</i><b></u>'),
(2, 'Rehabilitación Oral', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `concept` varchar(27) DEFAULT NULL,
  `description_short` varchar(261) DEFAULT NULL,
  `description_long` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `category_id`, `concept`, `description_short`, `description_long`) VALUES
(2, 1, 'Absceso periodontal', 'Infección purulenta localizada en los tejidos que rodean el diente.', ''),
(3, 1, 'Acrílica', 'material plástico rígido.', ''),
(4, 1, 'Acrilizado', 'cambiar un material por el acrílico.', ''),
(5, 1, 'Aislación', 'Es apartar el diente del resto de la boca mediante una goma dique o tórulas de algodón. Dejando la pieza dental sin contacto  con la saliva, la humedad y los microbios que se encuentran en la boca.', ''),
(6, 1, 'Agente Blanqueador', 'Material dental que se utiliza para aclarar o blanquear uno o mas dientes.', ''),
(7, 1, 'Agente bloqueador', 'Material que permite bloquear el ingreso de algo.', ''),
(8, 1, 'Anestesiar', 'Producir la pérdida temporal de la sensibilidad de una parte del cuerpo mediante la administración de un líquido anestésico(1)', ''),
(9, 1, 'Blanqueamiento', 'aclaramiento del color de diente.', ''),
(10, 1, 'Biopulpectomia', 'Consiste en la extirpación total del tejido pulpar vital, preparando lacavidad radicular para su sellado definitivo. Esta indicada en estadospulpares irreversibles y en exposiciones amplias de la pulpa', ''),
(11, 1, 'Caries incipiente', 'Caries dental en su etapa inicial de desarrollo, se ve un cambio de coloración y/o rugosidad de la superficie del diente, confinada solo en <a href=term.php?id=29 data-toggle=\'tooltip\' title=\'testin\'>esmalte</a>.', ''),
(12, 1, 'Caries', 'enfermedad dental que causa la destrucción del esmalte, la dentina y / o el cemento; La etiología generalmente se atribuye a bacterias productoras de ácido(1)', ''),
(13, 1, 'Carpule', 'Instrumento utilizado para inyectar el líquido anestésico.', ''),
(14, 1, 'Cementación', '1. El proceso de fijación de piezas mediante cemento. 2. Acoplar una restauración a los dientes naturales mediante un cemento(1)', ''),
(15, 1, 'Clamps', 'Abrazaderas metálicas que se posicionan alrededor del diente para proporcionar junto a la goma dique una correcta aislación.', ''),
(16, 1, 'Comunicar', 'Abrir el diente y exponer la pulpa dental.', ''),
(17, 1, 'Composite de resina', 'Masilla de color similar al diente que permite devolver la estética del diente, la cual se perdió por caries o algún trauma mecánico.', ''),
(18, 1, 'Corona dental', 'Colocar sobre un diente, implante o pilar una funda que sea de características similares al diente tanto en función, como estética.(1)', ''),
(19, 1, 'Cuchareta de caries', 'Instrumento metálico el cual en sus extremos posee unas mini cucharitas con filo, las cuales sirven para la eliminación de caries.', ''),
(20, 1, 'Debridación', 'Proceso que consiste en separar el diente de la encía mediante una sonda de caries.', ''),
(21, 1, 'Dentina afectada', 'Dentina con mínima invasión bacteriana la cual se encuentra vital, responde a estímulos y es más bien de consistencia dura.', ''),
(22, 1, 'Dentina infectada', 'Dentina totalmente invadida por bacterias la cual se encuentra no vital, no responde a estímulos y es más bien de consistencia blanda.', ''),
(23, 1, 'Dentina', 'Tejido ubicado al interior del diente, de dureza intermedia, más blando que el esmalte y más duro que la pulpa.', ''),
(24, 1, 'Destartraje', 'mecanismo mediante el cual se remueve de manera mecánica los depósitos calcáreos (placa dental bacteriana calcificada) llamados cálculo dental o sarros', ''),
(25, 1, 'Dieta cariogénica', 'Dieta de consistencia blanda con alto contenido de hidratos de carbono refinados y de azucares, la cual es potencialmente predisponente a formar caries.', ''),
(26, 1, 'Educacion estomatognatica', 'Enseñanza sobre todo lo que tiene que ver con la cavidad oral, musculos, nervios, funcionamiento que la rodean.', ''),
(27, 0, 'Endodónticamente', 'referente a endodoncia (tratamiento de conducto).', ''),
(28, 0, 'Epitelio de unión', 'Consta de una banda que rodea el diente a modo de collar, constituida por epitelio.', ''),
(29, 0, 'Esmalte', 'Tejido duro, delgado y translúcido calcificado que envuelve el exterior del diente y protege la dentina(1)', ''),
(30, 0, 'Exploracion', 'Es recorrer las raíces del diente', ''),
(31, 0, 'Extracciones', 'remoción de diente/s de la boca.', ''),
(32, 0, 'Fascie adenoidea', 'Rasgos faciales con características de boca entreabierta, cara alargada, mirada adormecida, ojeras pronunciadas, labio superior prominente, entre otras características.', ''),
(33, 0, 'Fotocurado', 'herramienta utilizada para endurecer o polimerizar materiales restauradores.', ''),
(34, 0, 'Fresa endo z', 'Elemento metalico cuya función es eliminar el techo cameral para tener un mejor acceso y visibilidad a los conductos radiculares.', ''),
(35, 0, 'Goma dique', 'instrumento utilizado para aislar el campo operatorio y apartar el diente del resto de la boca, está confeccionada de látex de diferentes grosores y colores, para mejorar el contraste con los dientes', ''),
(36, 0, 'Granuloma', 'Masa de células que se asemejan a las células del epitelio rodeadas por un borde de células.', ''),
(37, 0, 'GUNA', 'Gingivitis úlcero-necrotizante aguda, es una infección de la encía, dolorosa y de causa compleja.', ''),
(38, 0, 'Hipersensibilidad', 'sensación exagerada ante un estímulo que normalmente no se siente tan intenso.', ''),
(39, 0, 'Hueso', 'Parte dura del tejido conectivo que constituye la mayoría del esqueleto, tiene una parte inorgánica y organica.(1)', ''),
(40, 0, 'Impresión', 'técnica para reproducir en negativo dientes y tejidos adyacentes.', ''),
(41, 0, 'Índice gingival', 'Técnica que se utiliza para valorar la intensidad y cantidad de inflamación gingival.', ''),
(42, 0, 'Infección', 'Acción y efecto de infectar o infectarse.', ''),
(43, 0, 'Injertos', 'trozo de piel u otro órgano que traslada a otro lugar del cuerpo.', ''),
(44, 0, 'Inserto gingival', 'instrumento ocupado en periodoncia.', ''),
(45, 0, 'Liquido anestésico', 'Sustancia química utilizada para producir pérdida temporal de la sensibilidad de una parte del cuerpo.', ''),
(46, 0, 'Medicacion en endodoncia', 'Es poner un medicamento al interior del diente en forma de pasta.', ''),
(47, 0, 'Micromotor', 'máquina que efectúa movimientos rotatorios a diferentes velocidades.', ''),
(48, 0, 'Movilidad dental patológica', 'La movilidad dental patológica puede ser el resultado de enfermedad periodontal, aunque no es la única causa absoluta.', ''),
(49, 0, 'Mucosa', 'Membrana compuesta por epitelio, membrana basal y lamina propia.(1)', ''),
(50, 0, 'Necropulpectomía', 'Tratamiento de los conductos radiculares de dientes con necrosis pulpar sin reacción periapical crónica evidenciable radiográficamente, esto es un órgano dentario sin vida, infectado parcialmente y ausencia de respuesta positiva a los estímulos.', ''),
(51, 0, 'Obturación', 'Material que restaura o reemplaza la estructura dental perdida, los dientes o los tejidos orales(1)', ''),
(52, 0, 'Obturar', 'Cerrar o tapar una abertura o un conducto.', ''),
(53, 0, 'Ortodoncia', 'Rama de la odontología que se ocupa de corregir los defectos y las irregularidades de posición de los dientes', ''),
(54, 0, 'Papel articular', 'Papel utilizado para registrar  donde las fuerzas masticatorias están muy fuertes y sobrecargadas según la intensidad del color queda marcado sobre la superficie del diente.', ''),
(55, 0, 'Perno', 'estructura de metal u otro material que se coloca dentro de la raíz del diente para que sostenga la corona.', ''),
(56, 0, 'Placa bacteriana', 'Capa blanda de bacterias que se encuentra adherida al diente u otras superficies duras en la boca, entre ellas las restauraciones (tapaduras) removibles y fijas.', ''),
(57, 0, 'Plano de relajación', 'Placa de plástico con la forma de los dientes del paciente, que se utiliza en tratamientos como el bruxismo.', ''),
(58, 0, 'Profilaxis', 'limpieza dental que involucra la remoción de la placa dental de los dientes con la intención de prevenir las caries.', ''),
(59, 0, 'Provisorio', 'estructura con la que se restaura de forma temporaria la pieza hasta su rehabilitación definitiva.', ''),
(60, 0, 'Pulpa', 'Tejido ubicado al interior del diente de aspecto gelatinoso, el cual le da la vitalidad al diente.', ''),
(61, 0, 'PUNA', 'Periodiontitis ulcero-necrotizante aguda, infección caracterizada por muerte de los tejidos de la encía y del hueso que rodea el diente.', ''),
(62, 0, 'Radiografía', 'Técnica que consiste en someter un cuerpo o un objeto a la acción de los rayos X para obtener una imagen sobre una placa fotográfica.', ''),
(63, 0, 'Recesión gingival', 'Exposición de la superficie radicular por el desplazamiento en apical de la encía.', ''),
(64, 0, 'Retratamiento endodontico', 'Consiste en la eliminación de material existente, nueva limpieza y conformación del conducto, suele realizarse cuando el tratamiento inicial es inadecuado o ha fracasado o el conducto se ve contaminado nuevamente por una exposición prolongada con el medio oral.', ''),
(65, 0, 'Saco periodontal', 'Surco gingival profundizado de manera patológica, rasgo clínico de la enfermedad periodontal y que en su interior contiene principalmente microorganismos restos de alimentos, mucina saliva', ''),
(66, 0, 'Sonda de caries', 'Instrumento metálico que se utiliza para explorar la superficie dental.', ''),
(67, 0, 'Sonda periodontal', 'instrumento utilizado en periodoncia, que se presenta milimetrada.', ''),
(68, 0, 'Supurar', 'Que forma PUS', ''),
(69, 0, 'Techo cameral', 'parte más superior de la cámara pulpar, la cual si se perfora nos comunica con la pulpa.', ''),
(70, 0, 'Tecnica de desobturacion', 'Eliminar el material obturador de forma total desde el interior de la raíz del diente.', ''),
(71, 0, 'Tratamiento endodontico', 'Es un procedimiento que actúa en el interior del diente y permite conservar la pieza dental, el hueso, la encía que le rodea y su funcionalidad.', ''),
(72, 0, 'Trepanación', 'acceso/apertura terapéutica de una pieza dentaria que permite comunicar la pulpa con el medio ambiente oral y poder realizar la Endodoncia.', ''),
(73, 0, 'Valor estratégico', 'importancia masticatoria de una pieza dental en la boca.', ''),
(74, 2, 'Incrustación', 'Gran tapadura del color del diente que se realiza en el laboratorio y se hace a partir de un molde tomado de la boca.', '<p style=\"text-align: justify;\"><span style=\"text-decoration: underline;\"><strong>Incrustaci&oacute;n</strong></span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li>&iquest;Cu&aacute;ndo se hace?:\r\n<ul>\r\n<li>En presencia de caries, fractura de diente, reemplazo de tapaduras grandes, en zonas de dif&iacute;cil acceso, molar con tratamiento de conducto, modificaci&oacute;n de la forma y/o altura de dientes.</li>\r\n</ul>\r\n</li>\r\n<li>&iquest;C&oacute;mo se hace?:\r\n<ol>\r\n<li>Se aplica anestesia en la zona del diente a tratar con el fin de que dejes de sentir. Se coloca goma elasticada alrededor del diente, para separado del resto de la boca, mejorar visi&oacute;n y mantenerlo seco. Se elimina caries u obturaci&oacute;n antigua con el micromotor o turbina, estos instrumentos producen ruidos muy fuertes y el primero tira agua. Se le da la forma necesaria al diente para una incrustaci&oacute;n. Se toma impresi&oacute;n con material con consistencia de masilla. Se env&iacute;a trabajo al laboratorio.</li>\r\n<li>Se prueba la incrustaci&oacute;n. En caso de que la prueba no calce con la forma del diente, la impresi&oacute;n debe ser tomada nuevamente y enviada al laboratorio una segunda vez.</li>\r\n<li>Se cementa con un material para fijar este de forma definitiva. Se quitan los restos y, para que endurezca se utiliza una luz de color azul. Se pule la superficie eliminando excesos y dejando el diente liso y brillante.</li>\r\n<li>Se le dan indicaciones al paciente.&nbsp; &nbsp;&nbsp;</li>\r\n</ol>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li style=\"text-align: justify;\">Costo seg&uacute;n Colegio de Dentistas/N&deg; de sesiones: $160.254 - $178.060 / 2 sesiones o m&aacute;s</li>\r\n</ul>\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
