-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 04:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_ventas`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `nit` int(9) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(80) DEFAULT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`nit`, `nombre`, `direccion`, `correo`, `telefono`) VALUES
(35165928, 'jose estuardo', '12 calle casa 6 Brisas del Valle Villa Canales', 'info@netronica.net', 47425528);

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `No_Factura` int(5) DEFAULT NULL,
  `NIT` int(6) DEFAULT NULL,
  `Nombre` varchar(75) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`No_Factura`, `NIT`, `Nombre`, `Fecha`, `Total`) VALUES
(1, 0, 'No hay resultados', '2022-08-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `codigo` int(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `cantidad` int(8) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `descripcion`, `cantidad`, `precio`) VALUES
(1, 'Energy Drink', 'Cremin and Sons', 36, '291.33'),
(2, 'Oil - Grapeseed Oil', 'Bednar, King and Kilback', 94, '697.88'),
(3, 'Tuna - Salad Premix', 'Green and Sons', 44, '692.84'),
(4, 'Pails With Lids', 'Jakubowski-Kling', 37, '906.07'),
(5, 'Sparkling Wine - Rose, Freixenet', 'Schowalter-Morissette', 46, '443.28'),
(6, 'Milk - Skim', 'Graham, Miller and Weissnat', 100, '259.72'),
(7, 'Herb Du Provence - Primerba', 'Emard, Haag and Larkin', 39, '100.02'),
(8, 'Cookies - Englishbay Wht', 'Keebler, Bogisich and Mann', 56, '621.50'),
(9, 'Coffee Cup 8oz 5338cd', 'Simonis-Mohr', 2, '777.46'),
(10, 'Lettuce - Boston Bib', 'Cremin-Hintz', 11, '987.36'),
(11, 'Noodles - Cellophane, Thin', 'Skiles, Block and Konopelski', 66, '570.74'),
(12, 'Mushroom - King Eryingii', 'Kilback, Goyette and Padberg', 64, '5.71'),
(13, 'Tortillas - Flour, 8', 'Mohr and Sons', 38, '774.83'),
(14, 'Chevere Logs', 'Macejkovic, Heathcote and Keeling', 37, '401.61'),
(15, 'Tea - Decaf Lipton', 'Ledner-Abshire', 2, '363.67'),
(16, 'Lettuce - Iceberg', 'Osinski-Runolfsdottir', 9, '83.41'),
(17, 'Chips Potato Salt Vinegar 43g', 'Mueller, Moen and Kirlin', 41, '978.92'),
(18, 'Mushroom - Oyster, Fresh', 'Hudson-Beahan', 44, '962.29'),
(19, 'Peas - Pigeon, Dry', 'Jakubowski, Morissette and Kulas', 35, '877.97'),
(20, 'Gatorade - Xfactor Berry', 'Kassulke-Hand', 79, '840.01'),
(21, 'Smoked Tongue', 'Haley LLC', 30, '667.36'),
(22, 'Carrots - Mini, Stem On', 'Gislason, Runolfsson and Murazik', 35, '192.86'),
(23, 'Cake - Pancake', 'Barrows Inc', 53, '501.09'),
(24, 'Sauce - Vodka Blush', 'Torp, Howe and Daniel', 30, '382.20'),
(25, 'Rice - Wild', 'Grant-Leffler', 13, '970.26'),
(26, 'Rolled Oats', 'Ward and Sons', 26, '348.35'),
(27, 'Miso - Soy Bean Paste', 'Leffler Inc', 28, '526.83'),
(28, 'Parsley Italian - Fresh', 'McCullough-Trantow', 86, '950.45'),
(29, 'Carroway Seed', 'Cummerata and Sons', 32, '993.18'),
(30, 'Beef - Bresaola', 'Jones LLC', 79, '789.28'),
(31, 'Sausage - Blood Pudding', 'Bailey, Powlowski and Hermiston', 53, '287.99'),
(32, 'Sausage - Blood Pudding', 'Morissette and Sons', 27, '905.24'),
(33, 'Appetizer - Mango Chevre', 'Bruen LLC', 73, '859.24'),
(34, 'Squeeze Bottle', 'Barton and Sons', 27, '692.33'),
(35, 'Ham - Virginia', 'Schowalter-Anderson', 62, '392.67'),
(36, 'Wine - Riesling Dr. Pauly', 'Wyman-Ritchie', 40, '634.37'),
(37, 'Pastrami', 'Kutch, Roberts and Koelpin', 92, '145.15'),
(38, 'Mince Meat - Filling', 'Crooks-Olson', 75, '597.80'),
(39, 'Mushroom - Crimini', 'Lockman, Hansen and Maggio', 20, '972.94'),
(40, 'Cookie Double Choco', 'Ryan LLC', 93, '130.25'),
(41, 'Pear - Packum', 'Ledner Inc', 2, '539.78'),
(42, 'Peach - Halves', 'VonRueden, Langworth and Ebert', 42, '604.14'),
(43, 'Radish - Black, Winter, Organic', 'Stiedemann, Jerde and Kilback', 45, '87.63'),
(44, 'Beets - Candy Cane, Organic', 'Walsh-Walter', 13, '314.46'),
(45, 'Juice - Propel Sport', 'Jast-Bogan', 2, '862.25'),
(46, 'Island Oasis - Banana Daiquiri', 'Kessler Inc', 33, '490.85'),
(47, 'Bread - White, Unsliced', 'Morar, Leuschke and Lehner', 77, '931.37'),
(48, 'Wine - Pinot Noir Stoneleigh', 'Keebler Inc', 83, '635.11'),
(49, 'Cake - Dulce De Leche', 'Daniel-Glover', 15, '348.24'),
(50, 'Bay Leaf Fresh', 'Koelpin Group', 19, '392.99'),
(51, 'Beer - Camerons Auburn', 'Osinski Group', 23, '679.63'),
(52, 'Potatoes - Yukon Gold, 80 Ct', 'Will-Hackett', 78, '644.59'),
(53, 'Soap - Hand Soap', 'Rempel-Romaguera', 10, '568.79'),
(54, 'Broom - Angled', 'Johnston, Gleason and Beatty', 82, '562.22'),
(55, 'Milk - Chocolate 500ml', 'Hayes-Harvey', 62, '264.26'),
(56, 'Chickhen - Chicken Phyllo', 'Bayer-Nolan', 95, '653.23'),
(57, 'Ecolab - Solid Fusion', 'Durgan, Welch and Leffler', 75, '941.05'),
(58, 'Relish', 'Hegmann, Rau and Thiel', 73, '172.85'),
(59, 'Beef Striploin Aaa', 'Maggio-Schiller', 50, '157.43'),
(60, 'Chicken - Livers', 'Hoppe-Mann', 12, '750.10'),
(61, 'Pepsi - Diet, 355 Ml', 'O\'Conner and Sons', 39, '277.89'),
(62, 'Yoplait Drink', 'Heidenreich, Braun and Kiehn', 24, '684.58'),
(63, 'Table Cloth 81x81 Colour', 'Huel and Sons', 37, '901.94'),
(64, 'Bandage - Fexible 1x3', 'Kihn Group', 17, '970.04'),
(65, 'Egg - Salad Premix', 'Anderson, Spencer and Legros', 30, '520.78'),
(66, 'Garbage Bag - Clear', 'Bergstrom, Witting and Lubowitz', 82, '585.55'),
(67, 'Bread - Dark Rye', 'VonRueden Inc', 34, '575.72'),
(68, 'Wine - Rosso Del Veronese Igt', 'Mohr-McDermott', 20, '600.37'),
(69, 'Pheasants - Whole', 'Waters Inc', 4, '117.06'),
(70, 'Cookie Dough - Chunky', 'Ondricka, Hauck and Runolfsdottir', 38, '665.90'),
(71, 'Soup Campbells Split Pea And Ham', 'Heidenreich Inc', 83, '811.43'),
(72, 'Coconut - Creamed, Pure', 'Huel and Sons', 11, '34.35'),
(73, 'Pastry - Chocolate Chip Muffin', 'Schuster-Runte', 39, '211.33'),
(74, 'Bagel - Everything', 'Tremblay, Goldner and Gislason', 77, '945.16'),
(75, 'Potatoes - Yukon Gold, 80 Ct', 'Rogahn and Sons', 6, '399.36'),
(76, 'Stainless Steel Cleaner Vision', 'Russel, Ruecker and Stehr', 82, '694.71'),
(77, 'Squash - Pepper', 'Osinski and Sons', 20, '396.93'),
(78, 'Pork - Back Ribs', 'Kertzmann, Abshire and Terry', 98, '343.27'),
(79, 'Wine - White, Riesling, Henry Of', 'Schuster-Dach', 5, '763.14'),
(80, 'Barramundi', 'Hodkiewicz Group', 57, '331.77'),
(81, 'Sesame Seed', 'Sauer, Murray and Haag', 64, '820.38'),
(82, 'Vol Au Vents', 'Sanford and Sons', 66, '552.05'),
(83, 'Sauce - Thousand Island', 'Runte Inc', 49, '281.66'),
(84, 'Sambuca - Opal Nera', 'Reinger LLC', 56, '950.94'),
(85, 'Soup Campbells Split Pea And Ham', 'Ondricka-Johns', 37, '196.48'),
(86, 'Lettuce - Lolla Rosa', 'Moore, Kshlerin and Hand', 26, '811.33'),
(87, 'Extract - Lemon', 'Lynch, Douglas and Dickens', 95, '981.16'),
(88, 'Bread - Sour Batard', 'Cartwright-Jacobson', 86, '581.50'),
(89, 'Juice - Grapefruit, 341 Ml', 'Grant, Hermiston and Kohler', 11, '542.09'),
(90, 'Shrimp - Black Tiger 16/20', 'Brown, Gerhold and Stracke', 53, '667.75'),
(91, 'Table Cloth 81x81 White', 'Murray-Homenick', 58, '190.71'),
(92, 'Chocolate - Dark Callets', 'Skiles-Lang', 71, '207.99'),
(93, 'Garlic Powder', 'Hills-Morar', 12, '897.49'),
(94, 'C - Plus, Orange', 'Runolfsdottir LLC', 91, '52.36'),
(95, 'Sproutsmustard Cress', 'Kohler, Mitchell and Stiedemann', 1, '625.16'),
(96, 'Bread - Sour Sticks With Onion', 'Klocko and Sons', 96, '157.39'),
(97, 'Chocolate - Unsweetened', 'Klein-Kuvalis', 90, '539.22'),
(98, 'Tomatoes - Roma', 'Parisian-Bauch', 24, '532.39'),
(99, 'Crab Brie In Phyllo', 'Auer Inc', 68, '180.36'),
(100, 'Chocolate Liqueur - Godet White', 'Beier-Kautzer', 13, '445.39'),
(101, 'Veal Inside - Provimi', 'VonRueden-Zulauf', 27, '537.15'),
(102, 'Muffin - Mix - Strawberry Rhubarb', 'Luettgen-Beer', 55, '167.36'),
(103, 'Pork - Butt, Boneless', 'Bruen-Friesen', 82, '572.87'),
(104, 'Mushroom - Shitake, Dry', 'Bartoletti Group', 19, '198.13'),
(105, 'Tomatillo', 'Batz Inc', 15, '597.27'),
(106, 'Crab Meat Claw Pasteurise', 'Olson-Cruickshank', 62, '971.62'),
(107, 'Soup - French Can Pea', 'Witting Inc', 14, '96.21'),
(108, 'Shichimi Togarashi Peppeers', 'Dietrich-Lang', 24, '794.79'),
(109, 'Halibut - Whole, Fresh', 'Gottlieb-Friesen', 4, '166.82'),
(110, 'Apricots Fresh', 'Tremblay, Halvorson and Reinger', 77, '974.43'),
(111, 'Cake - Box Window 10x10x2.5', 'Koss-Littel', 1, '776.74'),
(112, 'Russian Prince', 'Bernhard, Skiles and Green', 55, '211.16'),
(113, 'Appetizer - Sausage Rolls', 'Considine LLC', 30, '34.63'),
(114, 'Mushroom - Chanterelle, Dry', 'Marquardt and Sons', 90, '785.50'),
(115, 'Vacuum Bags 12x16', 'Smitham-Quitzon', 32, '341.80'),
(116, 'Wine - Maipo Valle Cabernet', 'Kihn, Cartwright and Cummings', 44, '861.24'),
(117, 'Dc - Sakura Fu', 'Nikolaus-Moore', 16, '863.33'),
(118, 'Chicken - Base, Ultimate', 'Rolfson and Sons', 38, '873.27'),
(119, 'Lid - Translucent, 3.5 And 6 Oz', 'Hammes-Olson', 99, '369.54'),
(120, '7up Diet, 355 Ml', 'Jones, Abbott and Hirthe', 91, '53.13'),
(121, 'Coffee - Cafe Moreno', 'Spencer, Cruickshank and Kihn', 68, '796.14'),
(122, 'Tea - Orange Pekoe', 'Treutel, Connelly and Gibson', 10, '530.44'),
(123, 'Turkey - Oven Roast Breast', 'Mraz, Herman and Bogisich', 83, '833.87'),
(124, 'Pecan Raisin - Tarts', 'Brakus-Kassulke', 75, '107.84'),
(125, 'Beef - Shank', 'Cummerata-Wiegand', 83, '89.61'),
(126, 'Oil - Olive Bertolli', 'Smitham-Torphy', 20, '138.80'),
(127, 'Bagelers - Cinn / Brown', 'Douglas Inc', 37, '379.23'),
(128, 'Taro Root', 'Gutkowski, Nicolas and Bahringer', 74, '392.55'),
(129, 'Ecolab - Hobart Washarm End Cap', 'Bayer, Johns and Breitenberg', 52, '272.97'),
(130, 'Calvados - Boulard', 'Deckow and Sons', 32, '793.71'),
(131, 'Cut Wakame - Hanawakaba', 'Auer LLC', 87, '220.80'),
(132, 'Mushroom - Trumpet, Dry', 'Hegmann-Baumbach', 41, '483.08'),
(133, 'Cookies - Assorted', 'Macejkovic, Pouros and Kuhn', 11, '978.41'),
(134, 'Jolt Cola - Red Eye', 'Shields LLC', 97, '576.45'),
(135, 'Marsala - Sperone, Fine, D.o.c.', 'Hoeger and Sons', 13, '315.22'),
(136, 'Mikes Hard Lemonade', 'Nienow LLC', 47, '367.66'),
(137, 'Bandage - Flexible Neon', 'Jast-Barton', 58, '484.96'),
(138, 'Longos - Assorted Sandwich', 'Runte-Erdman', 13, '758.16'),
(139, 'Tomatoes - Yellow Hot House', 'Herman Inc', 19, '554.07'),
(140, 'Huck White Towels', 'Gutmann-Lebsack', 20, '215.52'),
(141, 'Tart - Lemon', 'Yundt-VonRueden', 12, '439.13'),
(142, 'Cheese - Parmesan Grated', 'Kshlerin-Kunze', 26, '304.81');

-- --------------------------------------------------------

--
-- Table structure for table `sucursales`
--

CREATE TABLE `sucursales` (
  `codigo` int(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sucursales`
--

INSERT INTO `sucursales` (`codigo`, `nombre`, `direccion`, `correo`, `telefono`) VALUES
(1, 'Majadas El gallo mas gallo', 'Majadas zona 10 ', 'gallo@gmail.com', 12345678),
(2, 'Zapato loco', 'Sam benito, peten', 'zapato@gmail.com', 87654321),
(2011004, 'Tienda de Jose', 'Izabal', 'jose@gmail.com', 13245678),
(2022064, 'Tiendita la Bendicion', 'Villa Nueva', 'bendicion@gmail.com', 94561234);

-- --------------------------------------------------------

--
-- Table structure for table `vendedor`
--

CREATE TABLE `vendedor` (
  `codigo` int(4) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `caja` int(4) NOT NULL,
  `ventas` int(4) NOT NULL,
  `genero` char(1) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendedor`
--

INSERT INTO `vendedor` (`codigo`, `nombre`, `caja`, `ventas`, `genero`, `password`, `rol`) VALUES
(1, 'Hugo Martin', 100, 800, 'm', 'gatitos123', 0),
(2, 'Edin Orellana', 50, 300, 'm', 'lol12345', 1),
(8, 'Lisbeth Camaja', 700, 900, 'f', 'perritos123', 1),
(10, 'Jose', 100, 800, 'm', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nit`);

--
-- Indexes for table `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `codigo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
