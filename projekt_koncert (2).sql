-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2025 at 06:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt_koncert`
--

-- --------------------------------------------------------

--
-- Table structure for table `koncerti`
--

CREATE TABLE `koncerti` (
  `id_k` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opis` text DEFAULT NULL,
  `datum` date NOT NULL,
  `cena_vstopnine` decimal(10,2) NOT NULL,
  `stevilo_obiskov` int(11) NOT NULL,
  `id_l` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `koncerti`
--

INSERT INTO `koncerti` (`id_k`, `naziv`, `opis`, `datum`, `cena_vstopnine`, `stevilo_obiskov`, `id_l`) VALUES
(12, 'KONCERT1', '-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a li', '2025-06-19', 300.00, 10000, 6),
(13, 'KONCERT2', '-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a li', '2025-06-20', 200.00, 20000, 7),
(14, 'KONCERT3', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-21', 35.00, 5500, 1),
(15, 'KONCERT4', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-22', 140.05, 50000, 4),
(16, 'KONCERT5', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-23', 50.00, 200000, 9),
(17, 'KONCERT6', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-25', 15.00, 1000, 5),
(18, 'KONCERT7', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-26', 35.00, 3000, 3),
(19, 'KONCERT8', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-29', 120.00, 4500, 2),
(20, 'KONCERT9', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-06-30', 55.00, 2500, 8),
(21, 'KONCERT10', 'aliquet. Suspendisse ac facilisis lacus. Quisque nunc nibh, accumsan et ex porta, viverra feugiat tortor. Vestibulum semper ipsum sed odio gravida, non pharetra dolor tristique. Duis ullamcorper efficitur interdum. Maecenas dapibus eleifend interdum. Cras sagittis cursus lacinia. Maecenas malesuada mollis nunc sed faucibus. Nullam imperdiet purus metus, et interdum nisi lobortis eget. Nullam molestie dolor ut turpis luctus elementum. Nunc hendrerit auctor condimentum. Etiam in nisi euismod, laoreet ipsum in, tincidunt nunc. Cras quis erat vestibulum, sagittis sem sed, mattis turpis. Nullam nulla velit, pulvinar vitae nulla vitae, pharetra convallis nibh. Ut mollis justo eu odio hendrerit, id fermentum metus sagittis. Donec dui sapien, hendrerit ut erat ac, blandit pulvinar velit.\r\nInteger mi turpis, facilisis at ipsum ac, scelerisque vehicula elit. Aliquam', '2025-07-01', 150.00, 80000, 10),
(22, 'KONCERT11', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id eleifend ligula. Nullam eu dictum tortor, at vehicula nisl. Suspendisse laoreet convallis justo, et euismod libero ornare ac. Donec dapibus magna convallis, lobortis eros id, venenatis dui. Aliquam erat volutpat. Nullam elementum vitae mi in venenatis. Morbi tempor pellentesque sem et pretium. Sed mauris est, varius id congue elementum, auctor vitae ipsum. Aenean posuere libero sollicitudin mauris fermentum venenatis. Curabitur luctus purus malesuada aliquam tincidunt. Nunc turpis purus, auctor non augue sed, aliquet accumsan erat.\r\n\r\nInteger ut nisl enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque at vulputate turpis. Integer feugiat felis id euismod rhoncus. Aliquam ultricie', '2025-07-01', 50.00, 4550, 4);

-- --------------------------------------------------------

--
-- Table structure for table `koncert_skupina`
--

CREATE TABLE `koncert_skupina` (
  `id_ks` int(11) NOT NULL,
  `id_k` int(11) DEFAULT NULL,
  `id_s` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `koncert_skupina`
--

INSERT INTO `koncert_skupina` (`id_ks`, `id_k`, `id_s`) VALUES
(10, 13, 13),
(12, 14, 3),
(13, 15, 12),
(14, 16, 19),
(15, 17, 9),
(16, 18, 14),
(17, 19, 17),
(18, 20, 4),
(19, 21, 15),
(20, 22, 16),
(22, 12, 18);

-- --------------------------------------------------------

--
-- Table structure for table `kraji`
--

CREATE TABLE `kraji` (
  `id_kraj` int(11) NOT NULL,
  `ime` varchar(200) NOT NULL,
  `postna_st` varchar(20) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `kraji`
--

INSERT INTO `kraji` (`id_kraj`, `ime`, `postna_st`, `opis`) VALUES
(1, 'Adlešiči', '8341', NULL),
(2, 'Ajdovščina', '5270', NULL),
(3, 'Ankaran/Ancarano', '6280', NULL),
(4, 'Apače', '9253', NULL),
(5, 'Artiče', '8253', NULL),
(6, 'Begunje na Gorenjskem', '4275', NULL),
(7, 'Begunje pri Cerknici', '1382', NULL),
(8, 'Beltinci', '9231', NULL),
(9, 'Benedikt', '2234', NULL),
(10, 'Bistrica ob Dravi', '2345', NULL),
(11, 'Bistrica ob Sotli', '3256', NULL),
(12, 'Bizeljsko', '8259', NULL),
(13, 'Blagovica', '1223', NULL),
(14, 'Blanca', '8283', NULL),
(15, 'Bled', '4260', NULL),
(16, 'Blejska Dobrava', '4273', NULL),
(17, 'Bodonci', '9265', NULL),
(18, 'Bogojina', '9222', NULL),
(19, 'Bohinjska Bela', '4263', NULL),
(20, 'Bohinjska Bistrica', '4264', NULL),
(21, 'Bohinjsko jezero', '4265', NULL),
(22, 'Borovnica', '1353', NULL),
(23, 'Boštanj', '8294', NULL),
(24, 'Bovec', '5230', NULL),
(25, 'Branik', '5295', NULL),
(26, 'Braslovče', '3314', NULL),
(27, 'Breginj', '5223', NULL),
(28, 'Brestanica', '8280', NULL),
(29, 'Bresternica', '2354', NULL),
(30, 'Brezje', '4243', NULL),
(31, 'Brezovica pri Ljubljani', '1351', NULL),
(32, 'Brežice', '8250', NULL),
(33, 'Brnik - Aerodrom', '4210', NULL),
(34, 'Brusnice', '8321', NULL),
(35, 'Buče', '3255', NULL),
(36, 'Bučka ', '8276', NULL),
(37, 'Cankova', '9261', NULL),
(38, 'Celje ', '3000', NULL),
(39, 'Celje - poštni predali', '3001', NULL),
(40, 'Cerklje na Gorenjskem', '4207', NULL),
(41, 'Cerklje ob Krki', '8263', NULL),
(42, 'Cerknica', '1380', NULL),
(43, 'Cerkno', '5282', NULL),
(44, 'Cerkvenjak', '2236', NULL),
(45, 'Ceršak', '2215', NULL),
(46, 'Cirkovce', '2326', NULL),
(47, 'Cirkulane', '2282', NULL),
(48, 'Col', '5273', NULL),
(49, 'Čatež ob Savi', '8251', NULL),
(50, 'Čemšenik', '1413', NULL),
(51, 'Čepovan', '5253', NULL),
(52, 'Črenšovci', '9232', NULL),
(53, 'Črna na Koroškem', '2393', NULL),
(54, 'Črni Kal', '6275', NULL),
(55, 'Črni Vrh nad Idrijo', '5274', NULL),
(56, 'Črniče', '5262', NULL),
(57, 'Črnomelj', '8340', NULL),
(58, 'Dekani', '6271', NULL),
(59, 'Deskle', '5210', NULL),
(60, 'Destrnik', '2253', NULL),
(61, 'Divača', '6215', NULL),
(62, 'Dob', '1233', NULL),
(63, 'Dobje pri Planini', '3224', NULL),
(64, 'Dobova', '8257', NULL),
(65, 'Dobovec', '1423', NULL),
(66, 'Dobravlje', '5263', NULL),
(67, 'Dobrna', '3204', NULL),
(68, 'Dobrnič', '8211', NULL),
(69, 'Dobrova', '1356', NULL),
(70, 'Dobrovnik/Dobronak ', '9223', NULL),
(71, 'Dobrovo v Brdih', '5212', NULL),
(72, 'Dol pri Hrastniku', '1431', NULL),
(73, 'Dol pri Ljubljani', '1262', NULL),
(74, 'Dole pri Litiji', '1273', NULL),
(75, 'Dolenja vas', '1331', NULL),
(76, 'Dolenjske Toplice', '8350', NULL),
(77, 'Domžale', '1230', NULL),
(78, 'Dornava', '2252', NULL),
(79, 'Dornberk', '5294', NULL),
(80, 'Draga', '1319', NULL),
(81, 'Dragatuš', '8343', NULL),
(82, 'Dramlje', '3222', NULL),
(83, 'Dravograd', '2370', NULL),
(84, 'Duplje', '4203', NULL),
(85, 'Dutovlje', '6221', NULL),
(86, 'Dvor', '8361', NULL),
(87, 'Fala', '2343', NULL),
(88, 'Fokovci', '9208', NULL),
(89, 'Fram', '2313', NULL),
(90, 'Frankolovo', '3213', NULL),
(91, 'Gabrovka', '1274', NULL),
(92, 'Globoko', '8254', NULL),
(93, 'Godovič', '5275', NULL),
(94, 'Golnik', '4204', NULL),
(95, 'Gomilsko', '3303', NULL),
(96, 'Gorenja vas', '4224', NULL),
(97, 'Gorica pri Slivnici', '3263', NULL),
(98, 'Gorišnica', '2272', NULL),
(99, 'Gornja Radgona', '9250', NULL),
(100, 'Gornji Grad', '3342', NULL),
(101, 'Gozd Martuljek', '4282', NULL),
(102, 'Gračišče', '6272', NULL),
(103, 'Grad', '9264', NULL),
(104, 'Gradac', '8332', NULL),
(105, 'Grahovo', '1384', NULL),
(106, 'Grahovo ob Bači', '5242', NULL),
(107, 'Grgar', '5251', NULL),
(108, 'Griže', '3302', NULL),
(109, 'Grobelno', '3231', NULL),
(110, 'Grosuplje', '1290', NULL),
(111, 'Hajdina', '2288', NULL),
(112, 'Hinje', '8362', NULL),
(113, 'Hoče', '2311', NULL),
(114, 'Hodoš/Hodos', '9205', NULL),
(115, 'Horjul', '1354', NULL),
(116, 'Hotedršica', '1372', NULL),
(117, 'Hrastnik', '1430', NULL),
(118, 'Hruševje', '6225', NULL),
(119, 'Hrušica', '4276', NULL),
(120, 'Idrija', '5280', NULL),
(121, 'Ig', '1292', NULL),
(122, 'Ilirska Bistrica', '6250', NULL),
(123, 'Ilirska Bistrica-Trnovo', '6251', NULL),
(124, 'Ivančna Gorica', '1295', NULL),
(125, 'Ivanjkovci', '2259', NULL),
(126, 'Izlake', '1411', NULL),
(127, 'Izola/Isola', '6310', NULL),
(128, 'Jakobski Dol', '2222', NULL),
(129, 'Jarenina', '2221', NULL),
(130, 'Jelšane', '6254', NULL),
(131, 'Jesenice', '4270', NULL),
(132, 'Jesenice na Dolenjskem', '8261', NULL),
(133, 'Jurklošter', '3273', NULL),
(134, 'Jurovski Dol', '2223', NULL),
(135, 'Juršinci', '2256', NULL),
(136, 'Kal nad Kanalom', '5214', NULL),
(137, 'Kalobje', '3233', NULL),
(138, 'Kamna Gorica', '4246', NULL),
(139, 'Kamnica', '2351', NULL),
(140, 'Kamnik', '1241', NULL),
(141, 'Kanal', '5213', NULL),
(142, 'Kapele', '8258', NULL),
(143, 'Kapla', '2362', NULL),
(144, 'Kidričevo', '2325', NULL),
(145, 'Kisovec', '1412', NULL),
(146, 'Knežak', '6253', NULL),
(147, 'Kobarid', '5222', NULL),
(148, 'Kobilje', '9227', NULL),
(149, 'Kočevje', '1330', NULL),
(150, 'Kočevska Reka', '1338', NULL),
(151, 'Kog', '2276', NULL),
(152, 'Kojsko', '5211', NULL),
(153, 'Komen', '6223', NULL),
(154, 'Komenda', '1218', NULL),
(155, 'Koper/Capodistria ', '6000', NULL),
(156, 'Koper/Capodistria - poštni predali', '6001', NULL),
(157, 'Koprivnica', '8282', NULL),
(158, 'Kostanjevica na Krasu', '5296', NULL),
(159, 'Kostanjevica na Krki', '8311', NULL),
(160, 'Kostel', '1336', NULL),
(161, 'Košana', '6256', NULL),
(162, 'Kotlje', '2394', NULL),
(163, 'Kozina', '6240', NULL),
(164, 'Kozje', '3260', NULL),
(165, 'Kranj ', '4000', NULL),
(166, 'Kranj - poštni predali', '4001', NULL),
(167, 'Kranjska Gora', '4280', NULL),
(168, 'Kresnice', '1281', NULL),
(169, 'Križe', '4294', NULL),
(170, 'Križevci', '9206', NULL),
(171, 'Križevci pri Ljutomeru', '9242', NULL),
(172, 'Krka', '1301', NULL),
(173, 'Krmelj', '8296', NULL),
(174, 'Kropa', '4245', NULL),
(175, 'Krška vas', '8262', NULL),
(176, 'Krško', '8270', NULL),
(177, 'Kuzma', '9263', NULL),
(178, 'Laporje', '2318', NULL),
(179, 'Laško', '3270', NULL),
(180, 'Laze v Tuhinju', '1219', NULL),
(181, 'Lenart v Slovenskih goricah', '2230', NULL),
(182, 'Lendava/Lendva', '9220', NULL),
(183, 'Lesce', '4248', NULL),
(184, 'Lesično', '3261', NULL),
(185, 'Leskovec pri Krškem', '8273', NULL),
(186, 'Libeliče', '2372', NULL),
(187, 'Limbuš', '2341', NULL),
(188, 'Litija', '1270', NULL),
(189, 'Ljubečna', '3202', NULL),
(190, 'Ljubljana ', '1000', NULL),
(191, 'Ljubljana - poštni predali', '1001', NULL),
(192, 'Ljubljana - Črnuče', '1231', NULL),
(193, 'Ljubljana - Dobrunje', '1261', NULL),
(194, 'Ljubljana - Polje', '1260', NULL),
(195, 'Ljubljana - Šentvid', '1210', NULL),
(196, 'Ljubljana - Šmartno', '1211', NULL),
(197, 'Ljubno ob Savinji', '3333', NULL),
(198, 'Ljutomer', '9240', NULL),
(199, 'Loče', '3215', NULL),
(200, 'Log pod Mangartom', '5231', NULL),
(201, 'Log pri Brezovici', '1358', NULL),
(202, 'Logatec', '1370', NULL),
(203, 'Logatec', '1371', NULL),
(204, 'Loka pri Zidanem Mostu', '1434', NULL),
(205, 'Loka pri Žusmu', '3223', NULL),
(206, 'Lokev', '6219', NULL),
(207, 'Loški Potok', '1318', NULL),
(208, 'Lovrenc na Dravskem polju', '2324', NULL),
(209, 'Lovrenc na Pohorju', '2344', NULL),
(210, 'Luče', '3334', NULL),
(211, 'Lukovica', '1225', NULL),
(212, 'Mačkovci', '9202', NULL),
(213, 'Majšperk', '2322', NULL),
(214, 'Makole', '2321', NULL),
(215, 'Mala Nedelja', '9243', NULL),
(216, 'Malečnik', '2229', NULL),
(217, 'Marezige', '6273', NULL),
(218, 'Maribor ', '2000', NULL),
(219, 'Maribor - poštni predali', '2001', NULL),
(220, 'Marjeta na Dravskem polju', '2206', NULL),
(221, 'Markovci', '2281', NULL),
(222, 'Martjanci', '9221', NULL),
(223, 'Materija', '6242', NULL),
(224, 'Mavčiče', '4211', NULL),
(225, 'Medvode', '1215', NULL),
(226, 'Mengeš', '1234', NULL),
(227, 'Metlika', '8330', NULL),
(228, 'Mežica', '2392', NULL),
(229, 'Miklavž na Dravskem polju', '2204', NULL),
(230, 'Miklavž pri Ormožu', '2275', NULL),
(231, 'Miren', '5291', NULL),
(232, 'Mirna', '8233', NULL),
(233, 'Mirna Peč', '8216', NULL),
(234, 'Mislinja', '2382', NULL),
(235, 'Mojstrana', '4281', NULL),
(236, 'Mokronog', '8230', NULL),
(237, 'Moravče', '1251', NULL),
(238, 'Moravske Toplice', '9226', NULL),
(239, 'Most na Soči', '5216', NULL),
(240, 'Motnik', '1221', NULL),
(241, 'Mozirje', '3330', NULL),
(242, 'Murska Sobota ', '9000', NULL),
(243, 'Murska Sobota - poštni predali', '9001', NULL),
(244, 'Muta', '2366', NULL),
(245, 'Naklo', '4202', NULL),
(246, 'Nazarje', '3331', NULL),
(247, 'Notranje Gorice', '1357', NULL),
(248, 'Nova Cerkev', '3203', NULL),
(249, 'Nova Gorica ', '5000', NULL),
(250, 'Nova Gorica - poštni predali', '5001', NULL),
(251, 'Nova vas', '1385', NULL),
(252, 'Novo mesto', '8000', NULL),
(253, 'Novo mesto - poštni predali', '8001', NULL),
(254, 'Obrov', '6243', NULL),
(255, 'Odranci', '9233', NULL),
(256, 'Oplotnica', '2317', NULL),
(257, 'Orehova vas', '2312', NULL),
(258, 'Ormož', '2270', NULL),
(259, 'Ortnek', '1316', NULL),
(260, 'Osilnica', '1337', NULL),
(261, 'Otočec', '8222', NULL),
(262, 'Ožbalt', '2361', NULL),
(263, 'Pernica', '2231', NULL),
(264, 'Pesnica pri Mariboru', '2211', NULL),
(265, 'Petrovci', '9203', NULL),
(266, 'Petrovče', '3301', NULL),
(267, 'Piran/Pirano', '6330', NULL),
(268, 'Pišece', '8255', NULL),
(269, 'Pivka', '6257', NULL),
(270, 'Planina', '6232', NULL),
(271, 'Planina pri Sevnici', '3225', NULL),
(272, 'Pobegi', '6276', NULL),
(273, 'Podbočje', '8312', NULL),
(274, 'Podbrdo', '5243', NULL),
(275, 'Podčetrtek', '3254', NULL),
(276, 'Podgorci', '2273', NULL),
(277, 'Podgorje', '6216', NULL),
(278, 'Podgorje pri Slovenj Gradcu', '2381', NULL),
(279, 'Podgrad', '6244', NULL),
(280, 'Podkum', '1414', NULL),
(281, 'Podlehnik', '2286', NULL),
(282, 'Podnanos', '5272', NULL),
(283, 'Podnart', '4244', NULL),
(284, 'Podplat', '3241', NULL),
(285, 'Podsreda', '3257', NULL),
(286, 'Podvelka', '2363', NULL),
(287, 'Pohorje', '2208', NULL),
(288, 'Polenšak', '2257', NULL),
(289, 'Polhov Gradec', '1355', NULL),
(290, 'Poljane nad Škofjo Loko', '4223', NULL),
(291, 'Poljčane', '2319', NULL),
(292, 'Polšnik', '1272', NULL),
(293, 'Polzela', '3313', NULL),
(294, 'Ponikva', '3232', NULL),
(295, 'Portorož/Portorose', '6320', NULL),
(296, 'Postojna', '6230', NULL),
(297, 'Pragersko', '2331', NULL),
(298, 'Prebold', '3312', NULL),
(299, 'Preddvor', '4205', NULL),
(300, 'Prem', '6255', NULL),
(301, 'Preserje', '1352', NULL),
(302, 'Prestranek', '6258', NULL),
(303, 'Prevalje', '2391', NULL),
(304, 'Prevorje', '3262', NULL),
(305, 'Primskovo ', '1276', NULL),
(306, 'Pristava pri Mestinju', '3253', NULL),
(307, 'Prosenjakovci/Partosfalva', '9207', NULL),
(308, 'Prvačina', '5297', NULL),
(309, 'Ptuj', '2250', NULL),
(310, 'Ptujska Gora', '2323', NULL),
(311, 'Puconci', '9201', NULL),
(312, 'Rače', '2327', NULL),
(313, 'Radeče', '1433', NULL),
(314, 'Radenci', '9252', NULL),
(315, 'Radlje ob Dravi', '2360', NULL),
(316, 'Radomlje', '1235', NULL),
(317, 'Radovljica', '4240', NULL),
(318, 'Raka', '8274', NULL),
(319, 'Rakek', '1381', NULL),
(320, 'Rateče - Planica', '4283', NULL),
(321, 'Ravne na Koroškem', '2390', NULL),
(322, 'Rečica ob Savinji', '3332', NULL),
(323, 'Renče', '5292', NULL),
(324, 'Ribnica', '1310', NULL),
(325, 'Ribnica na Pohorju', '2364', NULL),
(326, 'Rimske Toplice', '3272', NULL),
(327, 'Rob', '1314', NULL),
(328, 'Ročinj', '5215', NULL),
(329, 'Rogaška Slatina', '3250', NULL),
(330, 'Rogašovci', '9262', NULL),
(331, 'Rogatec', '3252', NULL),
(332, 'Rovte', '1373', NULL),
(333, 'Ruše', '2342', NULL),
(334, 'Sava', '1282', NULL),
(335, 'Sečovlje/Sicciole', '6333', NULL),
(336, 'Selca', '4227', NULL),
(337, 'Selnica ob Dravi', '2352', NULL),
(338, 'Semič', '8333', NULL),
(339, 'Senovo', '8281', NULL),
(340, 'Senožeče', '6224', NULL),
(341, 'Sevnica', '8290', NULL),
(342, 'Sežana', '6210', NULL),
(343, 'Sladki Vrh', '2214', NULL),
(344, 'Slap ob Idrijci', '5283', NULL),
(345, 'Slovenj Gradec', '2380', NULL),
(346, 'Slovenska Bistrica', '2310', NULL),
(347, 'Slovenske Konjice', '3210', NULL),
(348, 'Smlednik', '1216', NULL),
(349, 'Soča', '5232', NULL),
(350, 'Sodražica', '1317', NULL),
(351, 'Solčava', '3335', NULL),
(352, 'Solkan', '5250', NULL),
(353, 'Sorica', '4229', NULL),
(354, 'Sovodenj', '4225', NULL),
(355, 'Spodnja Idrija', '5281', NULL),
(356, 'Spodnji Duplek', '2241', NULL),
(357, 'Spodnji Ivanjci', '9245', NULL),
(358, 'Središče ob Dravi', '2277', NULL),
(359, 'Srednja vas v Bohinju', '4267', NULL),
(360, 'Sromlje ', '8256', NULL),
(361, 'Srpenica', '5224', NULL),
(362, 'Stahovica', '1242', NULL),
(363, 'Stara Cerkev', '1332', NULL),
(364, 'Stari trg ob Kolpi', '8342', NULL),
(365, 'Stari trg pri Ložu', '1386', NULL),
(366, 'Starše', '2205', NULL),
(367, 'Stoperce', '2289', NULL),
(368, 'Stopiče', '8322', NULL),
(369, 'Stranice', '3206', NULL),
(370, 'Straža', '8351', NULL),
(371, 'Struge', '1313', NULL),
(372, 'Studenec', '8293', NULL),
(373, 'Suhor', '8331', NULL),
(374, 'Sv. Ana v Slovenskih goricah', '2233', NULL),
(375, 'Sv. Trojica v Slovenskih goricah', '2235', NULL),
(376, 'Sveti Duh na Ostrem Vrhu', '2353', NULL),
(377, 'Sveti Jurij ob Ščavnici', '9244', NULL),
(378, 'Sveti Štefan', '3264', NULL),
(379, 'Sveti Tomaž', '2258', NULL),
(380, 'Šalovci', '9204', NULL),
(381, 'Šempas', '5261', NULL),
(382, 'Šempeter pri Gorici', '5290', NULL),
(383, 'Šempeter v Savinjski dolini', '3311', NULL),
(384, 'Šenčur', '4208', NULL),
(385, 'Šentilj v Slovenskih goricah', '2212', NULL),
(386, 'Šentjanž', '8297', NULL),
(387, 'Šentjanž pri Dravogradu', '2373', NULL),
(388, 'Šentjernej', '8310', NULL),
(389, 'Šentjur', '3230', NULL),
(390, 'Šentrupert', '3271', NULL),
(391, 'Šentrupert', '8232', NULL),
(392, 'Šentvid pri Stični', '1296', NULL),
(393, 'Škocjan', '8275', NULL),
(394, 'Škofije', '6281', NULL),
(395, 'Škofja Loka', '4220', NULL),
(396, 'Škofja vas', '3211', NULL),
(397, 'Škofljica', '1291', NULL),
(398, 'Šmarje', '6274', NULL),
(399, 'Šmarje - Sap', '1293', NULL),
(400, 'Šmarje pri Jelšah', '3240', NULL),
(401, 'Šmarješke Toplice', '8220', NULL),
(402, 'Šmartno na Pohorju', '2315', NULL),
(403, 'Šmartno ob Dreti', '3341', NULL),
(404, 'Šmartno ob Paki', '3327', NULL),
(405, 'Šmartno pri Litiji', '1275', NULL),
(406, 'Šmartno pri Slovenj Gradcu', '2383', NULL),
(407, 'Šmartno v Rožni dolini', '3201', NULL),
(408, 'Šoštanj', '3325', NULL),
(409, 'Štanjel', '6222', NULL),
(410, 'Štore', '3220', NULL),
(411, 'Tabor', '3304', NULL),
(412, 'Teharje', '3221', NULL),
(413, 'Tišina', '9251', NULL),
(414, 'Tolmin', '5220', NULL),
(415, 'Topolšica', '3326', NULL),
(416, 'Trbonje', '2371', NULL),
(417, 'Trbovlje', '1420', NULL),
(418, 'Trebelno ', '8231', NULL),
(419, 'Trebnje', '8210', NULL),
(420, 'Trnovo pri Gorici', '5252', NULL),
(421, 'Trnovska vas', '2254', NULL),
(422, 'Trojane', '1222', NULL),
(423, 'Trzin', '1236', NULL),
(424, 'Tržič', '4290', NULL),
(425, 'Tržišče', '8295', NULL),
(426, 'Turjak', '1311', NULL),
(427, 'Turnišče', '9224', NULL),
(428, 'Uršna sela', '8323', NULL),
(429, 'Vače', '1252', NULL),
(430, 'Velenje ', '3320', NULL),
(431, 'Velenje - poštni predali', '3322', NULL),
(432, 'Velika Loka', '8212', NULL),
(433, 'Velika Nedelja', '2274', NULL),
(434, 'Velika Polana', '9225', NULL),
(435, 'Velike Lašče', '1315', NULL),
(436, 'Veliki Gaber', '8213', NULL),
(437, 'Veržej', '9241', NULL),
(438, 'Videm - Dobrepolje', '1312', NULL),
(439, 'Videm pri Ptuju', '2284', NULL),
(440, 'Vinica', '8344', NULL),
(441, 'Vipava', '5271', NULL),
(442, 'Visoko', '4212', NULL),
(443, 'Višnja Gora', '1294', NULL),
(444, 'Vitanje', '3205', NULL),
(445, 'Vitomarci', '2255', NULL),
(446, 'Vodice', '1217', NULL),
(447, 'Vojnik', '3212', NULL),
(448, 'Volčja Draga', '5293', NULL),
(449, 'Voličina', '2232', NULL),
(450, 'Vransko', '3305', NULL),
(451, 'Vremski Britof', '6217', NULL),
(452, 'Vrhnika', '1360', NULL),
(453, 'Vuhred', '2365', NULL),
(454, 'Vuzenica', '2367', NULL),
(455, 'Zabukovje ', '8292', NULL),
(456, 'Zagorje ob Savi', '1410', NULL),
(457, 'Zagradec', '1303', NULL),
(458, 'Zavrč', '2283', NULL),
(459, 'Zdole ', '8272', NULL),
(460, 'Zgornja Besnica', '4201', NULL),
(461, 'Zgornja Korena', '2242', NULL),
(462, 'Zgornja Kungota', '2201', NULL),
(463, 'Zgornja Ložnica', '2316', NULL),
(464, 'Zgornja Polskava', '2314', NULL),
(465, 'Zgornja Velka', '2213', NULL),
(466, 'Zgornje Gorje', '4247', NULL),
(467, 'Zgornje Jezersko', '4206', NULL),
(468, 'Zgornji Leskovec', '2285', NULL),
(469, 'Zidani Most', '1432', NULL),
(470, 'Zreče', '3214', NULL),
(471, 'Žabnica', '4209', NULL),
(472, 'Žalec', '3310', NULL),
(473, 'Železniki', '4228', NULL),
(474, 'Žetale', '2287', NULL),
(475, 'Žiri', '4226', NULL),
(476, 'Žirovnica', '4274', NULL),
(477, 'Žužemberk', '8360', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `id_l` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `opis` text DEFAULT NULL,
  `id_kraj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`id_l`, `ime`, `opis`, `id_kraj`) VALUES
(1, 'Hala Tivoli', 'Dvorana za večje dogodke v Ljubljani', 1),
(2, 'Arena Bonifika', 'Večnamenska dvorana v Kopru', 2),
(3, 'Dvorana Zlatorog', 'Največja dvorana v Celju', 3),
(4, 'Ljudski vrt', 'Stadion v Mariboru za večje dogodke', 4),
(5, 'Športna dvorana Kranj', 'Mestna dvorana za koncerte in šport', 5),
(6, 'Mladinski center Velenje', 'Prizorišče za mlade in koncerte', 6),
(7, 'Kulturni dom Nova Gorica', 'Dvorana za kulturne dogodke', 7),
(8, 'Stari trg ob Kolpi Center', 'Manjše prizorišče v Beli krajini', 8),
(9, 'Park Škocjanske jame', 'Dogodki na prostem ob znamenitosti', 9),
(10, 'Festivalna dvorana Bled', 'Dvorana ob Blejskem jezeru', 10),
(13, 'Šolski center Velenje', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nastop`
--

CREATE TABLE `nastop` (
  `id_n` int(11) NOT NULL,
  `id_k` int(11) DEFAULT NULL,
  `id_s` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `id_r` int(11) NOT NULL,
  `stevilo_vstopnic` int(11) NOT NULL,
  `datum_rezervacije` datetime NOT NULL,
  `id_u` int(11) DEFAULT NULL,
  `id_k` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`id_r`, `stevilo_vstopnic`, `datum_rezervacije`, `id_u`, `id_k`) VALUES
(11, 2, '2025-06-17 00:00:00', 9, 14),
(19, 2, '2025-06-17 00:00:00', 7, 13),
(20, 1, '2025-06-17 00:00:00', 12, 22),
(21, 2, '2025-06-17 00:00:00', 12, 12),
(25, 2, '2025-06-17 00:00:00', 13, 12),
(26, 1, '2025-06-18 00:00:00', 10, 12),
(27, 4, '2025-06-18 00:00:00', 10, 12),
(28, 2, '2025-06-18 00:00:00', 7, 13),
(29, 1, '2025-06-18 00:00:00', 7, 12),
(30, 2, '2025-06-18 00:00:00', 7, 14);

-- --------------------------------------------------------

--
-- Table structure for table `skupina`
--

CREATE TABLE `skupina` (
  `id_s` int(11) NOT NULL,
  `ime_skupine` varchar(100) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `skupina`
--

INSERT INTO `skupina` (`id_s`, `ime_skupine`, `opis`) VALUES
(2, 'Lačni Franz', 'Slovenska rock skupina z značilnim humorjem in besedili.'),
(3, 'Siddharta', 'Alternativni rock bend z močnimi koncertnimi nastopi.'),
(4, 'Big Foot Mama', 'Ena najbolj znanih slovenskih rock skupin.'),
(5, 'Mi2', 'Rock skupina znana po satiričnih in družbeno kritičnih pesmih.'),
(6, 'Niet', 'Punk rock zasedba z družbeno kritičnimi besedili.'),
(7, 'Zmelkoow', 'Zabavna rock zasedba z ironičnim pogledom na življenje.'),
(8, 'Avtomobili', 'Skupina s pridihom novega vala in melodičnega rocka.'),
(9, 'Dan D', 'Skupina z mešanico rocka in popa, znana po skladbi \'Voda\'.'),
(10, 'Tabu', 'Pop rock skupina znana po spevnih refrenih in vokalih.'),
(11, 'Magnifico', 'Ekscentričen izvajalec z elementi funka, rocka in balkanskega stila.'),
(12, 'Metallica', 'Legendarna ameriška heavy metal skupina, znana po albumu \'Master of Puppets\'.'),
(13, 'Guns N Roses', 'Hard rock skupina iz Los Angelesa, poznana po hitu \'Sweet Child o Mine\'.'),
(14, 'Linkin Park', 'Ameriški nu-metal bend, ki združuje rock, rap in elektroniko.'),
(15, 'Deftones', 'Alternativna metal zasedba z ambientalnimi in agresivnimi elementi.'),
(16, 'Radiohead', 'Eksperimentalna rock skupina iz Anglije, znana po unikatnem zvoku.'),
(17, 'Arctic Monkeys', 'Britanski indie rock bend z močnim vplivom garažnega rocka.'),
(18, 'Nirvana', 'Grunge ikone iz Seattla, ki so zaznamovale 90. leta.'),
(19, 'Foo Fighters', 'Rock skupina, ki jo je ustanovil nekdanji bobnar Nirvane.'),
(21, 'Alice in Chains', 'Grunge/metal skupina z mračnim in emocionalnim zvokom.test');

-- --------------------------------------------------------

--
-- Table structure for table `skupina_zanr`
--

CREATE TABLE `skupina_zanr` (
  `id_sz` int(11) NOT NULL,
  `id_z` int(11) DEFAULT NULL,
  `id_s` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uporabniki`
--

CREATE TABLE `uporabniki` (
  `id_u` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `priimek` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `geslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Dumping data for table `uporabniki`
--

INSERT INTO `uporabniki` (`id_u`, `ime`, `priimek`, `email`, `geslo`) VALUES
(1, 'Blaž', 'Boškič', 'blaz.boskicpodrzavnik@scv.si', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'bo', 'po', 'blaz.boskicpodrzavnik@gm.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(7, 'Kasandra', 'K', 'kasandra.kotnik@gm.com', '184911b3f7af7b8aac99583da7ddfd77cc80c16c'),
(8, 'Živa', 'Županc', 'ziva@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab'),
(9, 'Vid', 'Podrzavnik', 'vid.bp@gmail.com', '279aeb14d59d8a36b60d2ad4a07fb063dc551897'),
(10, 'Blaž', 'admin', 'blaz@admin.user', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(12, 'miran', 'zevnik', 'miran.z@admin.user', 'e8cc564a5e9320d6c22647c5e6dab55005bf1e68'),
(13, 'zoran', 'b', 'zoran@gmail.si', '0bad9b9b4424e9e7553680aae61510f026553451'),
(15, 'test', 'test', 'test.test@gm.si', '184911b3f7af7b8aac99583da7ddfd77cc80c16c'),
(16, 'Blaž', 'Boškič', 'blaz@admin.userr', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(17, 'miran', 'zevnik', 'miran.z@gm.com', 'e8cc564a5e9320d6c22647c5e6dab55005bf1e68');

-- --------------------------------------------------------

--
-- Table structure for table `zanri`
--

CREATE TABLE `zanri` (
  `id_z` int(11) NOT NULL,
  `naziv` varchar(200) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovenian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `koncerti`
--
ALTER TABLE `koncerti`
  ADD PRIMARY KEY (`id_k`),
  ADD KEY `IX_Relationship6` (`id_l`);

--
-- Indexes for table `koncert_skupina`
--
ALTER TABLE `koncert_skupina`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `kraji`
--
ALTER TABLE `kraji`
  ADD PRIMARY KEY (`id_kraj`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`id_l`),
  ADD KEY `IX_Relationship5` (`id_kraj`);

--
-- Indexes for table `nastop`
--
ALTER TABLE `nastop`
  ADD PRIMARY KEY (`id_n`),
  ADD KEY `IX_Relationship3` (`id_k`),
  ADD KEY `IX_Relationship4` (`id_s`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`id_r`),
  ADD KEY `IX_Relationship1` (`id_u`),
  ADD KEY `IX_Relationship2` (`id_k`);

--
-- Indexes for table `skupina`
--
ALTER TABLE `skupina`
  ADD PRIMARY KEY (`id_s`);

--
-- Indexes for table `skupina_zanr`
--
ALTER TABLE `skupina_zanr`
  ADD PRIMARY KEY (`id_sz`),
  ADD KEY `IX_Relationship7` (`id_z`),
  ADD KEY `IX_Relationship8` (`id_s`);

--
-- Indexes for table `uporabniki`
--
ALTER TABLE `uporabniki`
  ADD PRIMARY KEY (`id_u`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `zanri`
--
ALTER TABLE `zanri`
  ADD PRIMARY KEY (`id_z`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `koncerti`
--
ALTER TABLE `koncerti`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `koncert_skupina`
--
ALTER TABLE `koncert_skupina`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kraji`
--
ALTER TABLE `kraji`
  MODIFY `id_kraj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `id_l` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nastop`
--
ALTER TABLE `nastop`
  MODIFY `id_n` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `skupina`
--
ALTER TABLE `skupina`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `skupina_zanr`
--
ALTER TABLE `skupina_zanr`
  MODIFY `id_sz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uporabniki`
--
ALTER TABLE `uporabniki`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `zanri`
--
ALTER TABLE `zanri`
  MODIFY `id_z` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `koncerti`
--
ALTER TABLE `koncerti`
  ADD CONSTRAINT `Relationship6` FOREIGN KEY (`id_l`) REFERENCES `lokacija` (`id_l`);

--
-- Constraints for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD CONSTRAINT `Relationship5` FOREIGN KEY (`id_kraj`) REFERENCES `kraji` (`id_kraj`);

--
-- Constraints for table `nastop`
--
ALTER TABLE `nastop`
  ADD CONSTRAINT `Relationship3` FOREIGN KEY (`id_k`) REFERENCES `koncerti` (`id_k`),
  ADD CONSTRAINT `Relationship4` FOREIGN KEY (`id_s`) REFERENCES `skupina` (`id_s`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `Relationship1` FOREIGN KEY (`id_u`) REFERENCES `uporabniki` (`id_u`),
  ADD CONSTRAINT `Relationship2` FOREIGN KEY (`id_k`) REFERENCES `koncerti` (`id_k`);

--
-- Constraints for table `skupina_zanr`
--
ALTER TABLE `skupina_zanr`
  ADD CONSTRAINT `Relationship7` FOREIGN KEY (`id_z`) REFERENCES `zanri` (`id_z`),
  ADD CONSTRAINT `Relationship8` FOREIGN KEY (`id_s`) REFERENCES `skupina` (`id_s`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
