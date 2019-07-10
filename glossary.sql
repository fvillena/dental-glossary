-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-06-2019 a las 17:59:43
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
CREATE DATABASE IF NOT EXISTS `glossary` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `glossary`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `concept` varchar(27) DEFAULT NULL,
  `description_short` varchar(261) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `concept`, `description_short`) VALUES
(2, 'Absceso periodontal', 'Infección purulenta localizada en los tejidos que rodean el diente.'),
(3, 'Acrílica', 'material plástico rígido.'),
(4, 'Acrilizado', 'cambiar un material por el acrílico.'),
(5, 'Aislación', 'Es apartar el diente del resto de la boca mediante una goma dique o tórulas de algodón. Dejando la pieza dental sin contacto  con la saliva, la humedad y los microbios que se encuentran en la boca.'),
(6, 'Agente Blanqueador', 'Material dental que se utiliza para aclarar o blanquear uno o mas dientes.'),
(7, 'Agente bloqueador', 'Material que permite bloquear el ingreso de algo.'),
(8, 'Anestesiar', 'Producir la pérdida temporal de la sensibilidad de una parte del cuerpo mediante la administración de un líquido anestésico(1)'),
(9, 'Blanqueamiento', 'aclaramiento del color de diente.'),
(10, 'Biopulpectomia', 'Consiste en la extirpación total del tejido pulpar vital, preparando lacavidad radicular para su sellado definitivo. Esta indicada en estadospulpares irreversibles y en exposiciones amplias de la pulpa'),
(11, 'Caries incipiente', 'Caries dental en su etapa inicial de desarrollo, se ve un cambio de coloración y/o rugosidad de la superficie del diente, confinada solo en esmalte.'),
(12, 'Caries', 'enfermedad dental que causa la destrucción del esmalte, la dentina y / o el cemento; La etiología generalmente se atribuye a bacterias productoras de ácido(1)'),
(13, 'Carpule', 'Instrumento utilizado para inyectar el líquido anestésico.'),
(14, 'Cementación', '1. El proceso de fijación de piezas mediante cemento. 2. Acoplar una restauración a los dientes naturales mediante un cemento(1)'),
(15, 'Clamps', 'Abrazaderas metálicas que se posicionan alrededor del diente para proporcionar junto a la goma dique una correcta aislación.'),
(16, 'Comunicar', 'Abrir el diente y exponer la pulpa dental.'),
(17, 'Composite de resina', 'Masilla de color similar al diente que permite devolver la estética del diente, la cual se perdió por caries o algún trauma mecánico.'),
(18, 'Corona dental', 'Colocar sobre un diente, implante o pilar una funda que sea de características similares al diente tanto en función, como estética.(1)'),
(19, 'Cuchareta de caries', 'Instrumento metálico el cual en sus extremos posee unas mini cucharitas con filo, las cuales sirven para la eliminación de caries.'),
(20, 'Debridación', 'Proceso que consiste en separar el diente de la encía mediante una sonda de caries.'),
(21, 'Dentina afectada', 'Dentina con mínima invasión bacteriana la cual se encuentra vital, responde a estímulos y es más bien de consistencia dura.'),
(22, 'Dentina infectada', 'Dentina totalmente invadida por bacterias la cual se encuentra no vital, no responde a estímulos y es más bien de consistencia blanda.'),
(23, 'Dentina', 'Tejido ubicado al interior del diente, de dureza intermedia, más blando que el esmalte y más duro que la pulpa.'),
(24, 'Destartraje', 'mecanismo mediante el cual se remueve de manera mecánica los depósitos calcáreos (placa dental bacteriana calcificada) llamados cálculo dental o sarros'),
(25, 'Dieta cariogénica', 'Dieta de consistencia blanda con alto contenido de hidratos de carbono refinados y de azucares, la cual es potencialmente predisponente a formar caries.'),
(26, 'Educacion estomatognatica', 'Enseñanza sobre todo lo que tiene que ver con la cavidad oral, musculos, nervios, funcionamiento que la rodean.'),
(27, 'Endodónticamente', 'referente a endodoncia (tratamiento de conducto).'),
(28, 'Epitelio de unión', 'Consta de una banda que rodea el diente a modo de collar, constituida por epitelio.'),
(29, 'Esmalte', 'Tejido duro, delgado y translúcido calcificado que envuelve el exterior del diente y protege la dentina(1)'),
(30, 'Exploracion', 'Es recorrer las raíces del diente'),
(31, 'Extracciones', 'remoción de diente/s de la boca.'),
(32, 'Fascie adenoidea', 'Rasgos faciales con características de boca entreabierta, cara alargada, mirada adormecida, ojeras pronunciadas, labio superior prominente, entre otras características.'),
(33, 'Fotocurado', 'herramienta utilizada para endurecer o polimerizar materiales restauradores.'),
(34, 'Fresa endo z', 'Elemento metalico cuya función es eliminar el techo cameral para tener un mejor acceso y visibilidad a los conductos radiculares.'),
(35, 'Goma dique', 'instrumento utilizado para aislar el campo operatorio y apartar el diente del resto de la boca, está confeccionada de látex de diferentes grosores y colores, para mejorar el contraste con los dientes'),
(36, 'Granuloma', 'Masa de células que se asemejan a las células del epitelio rodeadas por un borde de células.'),
(37, 'GUNA', 'Gingivitis úlcero-necrotizante aguda, es una infección de la encía, dolorosa y de causa compleja.'),
(38, 'Hipersensibilidad', 'sensación exagerada ante un estímulo que normalmente no se siente tan intenso.'),
(39, 'Hueso', 'Parte dura del tejido conectivo que constituye la mayoría del esqueleto, tiene una parte inorgánica y organica.(1)'),
(40, 'Impresión', 'técnica para reproducir en negativo dientes y tejidos adyacentes.'),
(41, 'Índice gingival', 'Técnica que se utiliza para valorar la intensidad y cantidad de inflamación gingival.'),
(42, 'Infección', 'Acción y efecto de infectar o infectarse.'),
(43, 'Injertos', 'trozo de piel u otro órgano que traslada a otro lugar del cuerpo.'),
(44, 'Inserto gingival', 'instrumento ocupado en periodoncia.'),
(45, 'Liquido anestésico', 'Sustancia química utilizada para producir pérdida temporal de la sensibilidad de una parte del cuerpo.'),
(46, 'Medicacion en endodoncia', 'Es poner un medicamento al interior del diente en forma de pasta.'),
(47, 'Micromotor', 'máquina que efectúa movimientos rotatorios a diferentes velocidades.'),
(48, 'Movilidad dental patológica', 'La movilidad dental patológica puede ser el resultado de enfermedad periodontal, aunque no es la única causa absoluta.'),
(49, 'Mucosa', 'Membrana compuesta por epitelio, membrana basal y lamina propia.(1)'),
(50, 'Necropulpectomía', 'Tratamiento de los conductos radiculares de dientes con necrosis pulpar sin reacción periapical crónica evidenciable radiográficamente, esto es un órgano dentario sin vida, infectado parcialmente y ausencia de respuesta positiva a los estímulos.'),
(51, 'Obturación', 'Material que restaura o reemplaza la estructura dental perdida, los dientes o los tejidos orales(1)'),
(52, 'Obturar', 'Cerrar o tapar una abertura o un conducto.'),
(53, 'Ortodoncia', 'Rama de la odontología que se ocupa de corregir los defectos y las irregularidades de posición de los dientes'),
(54, 'Papel articular', 'Papel utilizado para registrar  donde las fuerzas masticatorias están muy fuertes y sobrecargadas según la intensidad del color queda marcado sobre la superficie del diente.'),
(55, 'Perno', 'estructura de metal u otro material que se coloca dentro de la raíz del diente para que sostenga la corona.'),
(56, 'Placa bacteriana', 'Capa blanda de bacterias que se encuentra adherida al diente u otras superficies duras en la boca, entre ellas las restauraciones (tapaduras) removibles y fijas.'),
(57, 'Plano de relajación', 'Placa de plástico con la forma de los dientes del paciente, que se utiliza en tratamientos como el bruxismo.'),
(58, 'Profilaxis', 'limpieza dental que involucra la remoción de la placa dental de los dientes con la intención de prevenir las caries.'),
(59, 'Provisorio', 'estructura con la que se restaura de forma temporaria la pieza hasta su rehabilitación definitiva.'),
(60, 'Pulpa', 'Tejido ubicado al interior del diente de aspecto gelatinoso, el cual le da la vitalidad al diente.'),
(61, 'PUNA', 'Periodiontitis ulcero-necrotizante aguda, infección caracterizada por muerte de los tejidos de la encía y del hueso que rodea el diente.'),
(62, 'Radiografía', 'Técnica que consiste en someter un cuerpo o un objeto a la acción de los rayos X para obtener una imagen sobre una placa fotográfica.'),
(63, 'Recesión gingival', 'Exposición de la superficie radicular por el desplazamiento en apical de la encía.'),
(64, 'Retratamiento endodontico', 'Consiste en la eliminación de material existente, nueva limpieza y conformación del conducto, suele realizarse cuando el tratamiento inicial es inadecuado o ha fracasado o el conducto se ve contaminado nuevamente por una exposición prolongada con el medio oral.'),
(65, 'Saco periodontal', 'Surco gingival profundizado de manera patológica, rasgo clínico de la enfermedad periodontal y que en su interior contiene principalmente microorganismos restos de alimentos, mucina saliva'),
(66, 'Sonda de caries', 'Instrumento metálico que se utiliza para explorar la superficie dental.'),
(67, 'Sonda periodontal', 'instrumento utilizado en periodoncia, que se presenta milimetrada.'),
(68, 'Supurar', 'Que forma PUS'),
(69, 'Techo cameral', 'parte más superior de la cámara pulpar, la cual si se perfora nos comunica con la pulpa.'),
(70, 'Tecnica de desobturacion', 'Eliminar el material obturador de forma total desde el interior de la raíz del diente.'),
(71, 'Tratamiento endodontico', 'Es un procedimiento que actúa en el interior del diente y permite conservar la pieza dental, el hueso, la encía que le rodea y su funcionalidad.'),
(72, 'Trepanación', 'acceso/apertura terapéutica de una pieza dentaria que permite comunicar la pulpa con el medio ambiente oral y poder realizar la Endodoncia.'),
(73, 'Valor estratégico', 'importancia masticatoria de una pieza dental en la boca.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
