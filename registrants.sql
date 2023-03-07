-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 09:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE `registrants` (
  `id` int(6) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `business_type` varchar(30) NOT NULL,
  `actual_occupant` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `stall_occupant` varchar(50) NOT NULL,
  `stall_rental` decimal(10,2) NOT NULL,
  `lot_rental` decimal(10,2) NOT NULL,
  `slaughter_fee` decimal(10,2) NOT NULL,
  `electric_bill` decimal(10,2) NOT NULL,
  `water_bill` decimal(10,2) NOT NULL,
  `month` date NOT NULL,
  `monthly_rentals` decimal(10,2) NOT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`id`, `first_name`, `last_name`, `business_type`, `actual_occupant`, `location`, `stall_occupant`, `stall_rental`, `lot_rental`, `slaughter_fee`, `electric_bill`, `water_bill`, `month`, `monthly_rentals`, `remarks`) VALUES
(25, 'Ofelia', 'Cabildo', 'Refreshment', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(26, 'Iglesia', 'Teresa', 'Refreshment', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(27, 'Clarita', 'Trondillo', 'Refreshment', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(28, 'Edmark', 'Buscas', 'Restaurant', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1800.00', ''),
(29, 'Geraldine ', 'Cruz', 'Restaurant', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1800.00', ''),
(30, 'Charito', 'Agcaoili', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(31, 'Ramon', 'Agcaoili', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(32, 'romel', 'ascuncion', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(33, 'jeffrey', 'atalip', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(34, 'jockey', 'atalip', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(35, 'maggie', 'bunuan', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(36, 'mila', 'cababag', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(37, 'noel', 'campo', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(38, 'alfonzo', 'cruz', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(39, 'menchie', 'domingo', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(40, 'alfonso', 'dunuan', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(41, 'joan ', 'dunuan', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(42, 'eneria ', 'lanie', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(43, 'fonetwist', '   ', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(44, 'grace', 'De leon', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(45, 'jessielou', 'ifurung', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(46, 'lydia', 'iquin', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(47, 'm.', 'lhuiller', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(48, 'lerissa', 'madriaga', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(49, 'dondon', 'martin', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(50, 'jackilou', 'martin', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(51, 'jayjay', 'martin', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(52, 'marilou', 'martin', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(53, 'abelardo', 'membrere', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(54, 'myrna', 'miguel', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(55, 'diana gay', 'nadera', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(56, 'gaspar', 'godoy', 'Pansiteria', 'n/a', 'Tallang', '', '3060.00', '0.00', '0.00', '8340.00', '0.00', '2022-01-01', '0.00', 'January 2022 last payment, December last payment\r\n'),
(57, 'marina', 'oñate', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(58, 'aileen ', 'palomares', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '8000.00', ''),
(59, 'marilyn', 'pelajo', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(60, 'salve', 'raguingan', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(61, 'juanita', 'soriano', 'Sari-Sari', 'n/a', 'Tallang', '', '700.00', '0.00', '0.00', '0.00', '0.00', '2022-11-01', '0.00', 'November last payment'),
(62, 'lara', 'siringan', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(63, 'meryl', 'soriano', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(64, 'mary joy', 'talbo', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1400.00', ''),
(65, 'christeta', 'tama', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(66, 'manita', 'tata', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(67, 'cristina', 'transmontero', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '4000.00', ''),
(68, 'lilet', 'baysa', 'SSS/Fruit and Vegetable', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '11916.00', '0.00', '2022-03-01', '0.00', 'March 2022 last payment, December last payment'),
(69, 'gilbert', 'trondillo', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(70, 'marites', 'tumaneng', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(71, 'maricris', 'anzia', 'Dry Goods', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', ''),
(72, 'villa', 'bosas', 'Dry Goods', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(73, 'benneth', 'antonio', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(74, 'meliton', 'adriano', 'Dry Goods', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(75, 'meryen', 'cagalingan', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1800.00', ''),
(76, 'diana', 'domingo', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(77, 'evelyn', 'pattung', 'Dry Goods', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a\r\n'),
(78, 'joseph', 'eslabra', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1400.00', ''),
(79, 'jaunito', 'gacias', 'Dry Goods', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(80, 'margielou', 'gabuyo', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2400.00', ''),
(81, 'rhea', 'herrera', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(82, 'rosalinda', 'javier', 'Tailoring', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(83, 'sonia', 'ibia', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(84, 'florelyn', 'lagua', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(85, 'maricel', 'cancejo', 'Sari-Sari', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(86, 'lorilee', 'awing', 'Tailoring', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(87, 'rodeliza', 'macadangdang', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1200.00', ''),
(88, 'colorna', 'domingo', 'Food Product', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(89, 'jhoey', 'bueno', 'Remitance', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', 'n/a'),
(90, 'dianita ', 'cabucana', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2400.00', ''),
(91, 'analyn', 'salas', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(92, 'norman', 'salas', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(93, 'james', 'salvador', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '1800.00', ''),
(94, 'soledad', 'ragual', 'Meat Stall', 'n/a', 'Tallang', '', '1560.00', '0.00', '0.00', '2366.00', '0.00', '1970-01-01', '0.00', 'last payment june 2022, september last payment'),
(95, 'saturnino', 'yago', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2400.00', ''),
(96, 'erlinda', 'tupas', 'Grocery', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '2000.00', ''),
(97, 'maribel', 'capitly', 'Meat Stall', 'n/a', 'Tallang', '', '2600.00', '0.00', '0.00', '4065.00', '0.00', '1970-01-01', '0.00', 'March 2022 last payment, July last payment'),
(98, 'maria', 'adversalo', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '300.00', '0'),
(99, 'gerardo', 'arazon', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2022-01-01', '300.00', '0'),
(100, 'salina', 'baltazar', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '300.00', '0'),
(101, 'virgilio', 'velasco', 'Meat Stall', 'n/a', 'Tallang', '', '6240.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', '0'),
(102, 'maria', 'barbosa', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-01-01', '300.00', '0'),
(103, 'crispina', 'barcena', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(104, 'digna', 'tapia', 'Meat Stall', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '326.43', '0.00', '1970-01-01', '0.00', '0'),
(105, 'veronica', 'barcena', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(106, 'constantino', 'bosas', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(107, 'visitacion', 'butay', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(108, 'estelita', 'tollas', 'Meat Stall', 'n/a', 'Tallang', '', '4160.00', '0.00', '0.00', '10422.00', '0.00', '1970-01-01', '0.00', '0'),
(109, 'mel', 'cannu', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(110, 'valentin', 'cannu', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(111, 'florida', 'villegas', 'Meat Stall', 'n/a', 'Tallang', '', '4680.00', '0.00', '0.00', '7847.00', '0.00', '1970-01-01', '0.00', '0'),
(112, 'lisa', 'castillejos', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(113, 'jenelyn', 'catuiran', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(114, 'jocelyn', 'duran', 'Fish Stall', 'n/a', 'Tallang', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '0.00', '0'),
(115, 'marites', 'butacan', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(116, 'nancy', 'dinico', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(117, 'visitacion', 'madrid', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(118, 'feliza', 'magat', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(119, 'donna', 'maggay', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(120, 'orlino', 'marcos', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '900.00', '0'),
(121, 'jeremias', 'naraja', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(122, 'maria', 'nuñez', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(123, 'imelda', 'ortiz', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(124, 'fraida', 'pedralvez', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(125, 'estrelia', 'tuazon', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(126, 'evelyn', 'valdez', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(127, 'carmelita', 'venus', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '300.00', '0'),
(128, 'rudy jay', 'villegas', 'Fruits & Vegetable', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '600.00', '0'),
(130, 'hilario', 'arogar', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(131, 'cristina', 'arquero', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(132, 'eddie', 'battung', 'Meat Stall', '123456', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(133, 'relie', 'bayubay', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(134, 'narcisa', 'cabbab', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(135, 'nimfa', 'abalos', 'Dry Goods', 'n/a', 'Poblacion', '', '1470.00', '0.00', '0.00', '11225.51', '0.00', '1970-01-01', '1470.00', '0'),
(136, 'pedro', 'camacam', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(137, 'may', 'castillo', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(138, 'celia', 'doliente', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(139, 'myrna', 'gannaban', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(140, 'melita', 'herrera', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(141, 'madelyn', 'jacobe', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(142, 'epher', 'macapulay', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(143, 'jonamay', 'macarubbo', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(144, 'constante', 'madriaga', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(145, 'ryan', 'madriaga', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(146, 'analiza', 'maggay', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(147, 'benedick', 'marcos', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(148, 'gloria', 'marcos', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(149, 'rodelita', 'morota', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(150, 'regina', 'pacion', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(151, 'elmo', 'salvador', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(152, 'teresita', 'tumaneng', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(153, 'marlon', 'valdcez', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(154, 'reyma', 'banzali', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(155, 'mark', 'cagalingan', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(156, 'edralyn', 'castillo', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(157, 'julita', 'centeno', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(158, 'violeta', 'de vera', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(159, 'florida', 'dimaya', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(160, 'raniel may', 'dumaguin', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(161, 'jovelyn ', 'eduarte', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(162, 'cristine', 'abalos', 'Grocery', 'Nita Cue', 'Poblacion', '', '0.00', '864.00', '0.00', '0.00', '0.00', '1970-01-01', '864.00', '0'),
(163, 'beverly', 'lasaca', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(164, 'ederlina', 'luis', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(165, 'bonifacio', 'manuel', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(166, 'lita', 'marcos', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(167, 'lina', 'pagaruigan', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(168, 'arcelia', 'pascual', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(169, 'juluis', 'quilang', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(170, 'brendalie', 'abarientos', 'Salon', 'n/a', 'Poblacion', '', '4410.00', '0.00', '0.00', '549.62', '0.00', '1970-01-01', '1470.00', '0'),
(171, 'nerissa ', 'remodo', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(174, 'regina', 'salv ador', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(175, 'efraim', 'saquing', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(176, 'candelaria', 'silawan', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '1300.00', '0'),
(177, 'jean claire', 'tabbada', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(178, 'hermogenes', 'taccad jr.', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(179, 'pedro', 'tomas', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(180, 'virginia', 'ubinia', 'Fish Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(181, 'remalyn', 'viernes', 'Meat Stall', 'n/a', 'San Jose', '', '0.00', '0.00', '0.00', '0.00', '0.00', '1970-01-01', '650.00', '0'),
(182, 'rhealyn', 'antonio', 'Vegetable', 'n/a', 'Poblacion', '', '0.00', '1800.00', '0.00', '0.00', '0.00', '1970-01-01', '360.00', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrants`
--
ALTER TABLE `registrants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrants`
--
ALTER TABLE `registrants`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
