-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 11:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(13, 13, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Meat', 'Meat'),
(6, 'Seafood', 'Seafood'),
(7, 'Vegetable', 'Vegetable');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 9, 34, 3),
(2, 10, 30, 1),
(3, 11, 40, 2),
(4, 9, 52, 2),
(5, 9, 37, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'Beef Brisket (1 kilo)', '', 'beef-brisket-1-kilo', 290, 'beef-brisket.jfif', '2021-05-06', 1),
(31, 5, 'Beef Camto – Flank (1 kilo)', '', 'beef-camto-flank-1-kilo', 330, 'beef-camto-flank.jfif', '0000-00-00', 0),
(32, 5, 'Beef Chuck - Kadera (1 kilo)', '', 'beef-chuck-kadera-1-kilo', 380, 'beef-chuck-kadera.jpg', '0000-00-00', 0),
(33, 5, 'Ground Beef (1 kilo)', '', 'ground-beef-1-kilo', 350, 'ground-beef.jfif', '0000-00-00', 0),
(34, 5, 'Beef Samgyup (1 kilo)', '', 'beef-samgyup-1-kilo', 400, 'beef-samgyup.png', '2021-05-06', 3),
(35, 5, 'Beef Short Ribs (1 kilo)', '', 'beef-short-ribs-1-kilo', 290, 'beef-short-ribs.jfif', '0000-00-00', 0),
(36, 5, 'Beef T-Bone (1 kilo)', '', 'beef-t-bone-1-kilo', 300, 'beef-t-bone.jpg', '0000-00-00', 6),
(37, 5, 'Chicken Breast (1 kilo)', '', 'chicken-breast-1-kilo', 180, 'chicken-breast.jpg', '2021-05-06', 2),
(38, 5, 'Chicken Drumstick (1 kilo)', '', 'chicken-drumstick-1-kilo', 180, 'chicken-drumstick-1-kilo.jpg', '0000-00-00', 0),
(39, 5, 'Chicken Feet (1 kilo)', '', 'chicken-feet-1-kilo', 120, 'chicken-feet-1-kilo.jfif', '0000-00-00', 0),
(40, 5, 'Chicken Giniling (1 kilo)', '', 'chicken-giniling-1-kilo', 210, 'chicken-giniling-1-kilo.jpg', '0000-00-00', 0),
(41, 5, 'Chicken Liver (1 kilo)', '', 'chicken-liver-1-kilo', 200, 'chicken-liver-1-kilo.jpg', '0000-00-00', 0),
(42, 5, 'Chicken Neck (1 kilo)', '', 'chicken-neck-1-kilo', 130, 'chicken-neck-1-kilo.png', '0000-00-00', 0),
(43, 5, 'Chicken Thigh (1 kilo)', '', 'chicken-thigh-1-kilo', 180, 'chicken-thigh-1-kilo.jpg', '0000-00-00', 0),
(44, 5, '1 Whole Chicken', '', '1-whole-chicken', 220, '1-whole-chicken.jpg', '0000-00-00', 5),
(45, 5, 'Chicken Wings (1 kilo)', '', 'chicken-wings-1-kilo', 190, 'chicken-wings-1-kilo.jpg', '0000-00-00', 0),
(46, 5, 'Pork Chop (1 kilo)', '', 'pork-chop-1-kilo', 350, 'pork-chop-1-kilo.jfif', '0000-00-00', 0),
(47, 5, 'Pork Giniling (1 kilo)', '', 'pork-giniling-1-kilo', 350, 'pork-giniling-1-kilo.jpg', '0000-00-00', 0),
(48, 5, 'Pork Kasim (1 kilo)', '', 'pork-kasim-1-kilo', 340, 'pork-kasim-1-kilo.jpg', '0000-00-00', 0),
(49, 5, 'Pork Liempo (1 kilo)', '', 'pork-liempo-1-kilo', 340, 'pork-liempo-1-kilo.jfif', '0000-00-00', 4),
(50, 5, 'Pork Lomo (1 kilo)', '', 'pork-lomo-1-kilo', 350, 'pork-lomo-1-kilo.jpg', '0000-00-00', 0),
(51, 5, 'Pork Pata (1 kilo)', '', 'pork-pata-1-kilo', 280, 'pork-pata-1-kilo.jpg', '0000-00-00', 0),
(52, 5, 'Pork Samgyup (1 kilo)', '', 'pork-samgyup-1-kilo', 350, 'pork-samgyup-1-kilo.jpg', '0000-00-00', 7),
(53, 6, 'Alimasag - Crab (1 kilo)', '', 'alimasag-crab-1-kilo', 450, 'alimasag-crab-1-kilo_1620218078.jpg', '0000-00-00', 0),
(54, 6, 'Bangus - Milkfish (1 kilo)', '', 'bangus-milkfish-1-kilo', 230, 'bangus-milkfish-1-kilo.jpg', '0000-00-00', 0),
(55, 6, 'Bisugo (1 kilo)', '', 'bisugo-1-kilo', 200, 'bisugo-1-kilo.jpg', '0000-00-00', 0),
(56, 6, 'Blue Marlin (1 kilo)', '', 'blue-marlin-1-kilo', 400, 'blue-marlin-1-kilo.jpg', '0000-00-00', 0),
(57, 6, 'Dalagang Bukid', '', 'dalagang-bukid', 300, 'dalagang-bukid.jpg', '0000-00-00', 0),
(58, 6, 'Galunglong (1 kilo)', '', 'galunglong-1-kilo', 200, 'galunglong-1-kilo.jfif', '0000-00-00', 0),
(59, 6, 'Hala-an (1 kilo)', '', 'hala-1-kilo', 120, 'hala-1-kilo.jfif', '0000-00-00', 0),
(60, 6, 'Hasa-Hasa (1 kilo)', '', 'hasa-hasa-1-kilo', 270, 'hasa-hasa-1-kilo.jpg', '0000-00-00', 0),
(61, 6, 'Labahita - SurgeonFish (1 kilo)', '', 'labahita-surgeonfish-1-kilo', 400, 'labahita-surgeonfish-1-kilo.jpg', '0000-00-00', 0),
(62, 6, 'Lapu-Lapu (1 kilo)', '', 'lapu-lapu-1-kilo', 400, 'lapu-lapu-1-kilo.jpg', '0000-00-00', 0),
(63, 6, 'Maya-Maya (1 kilo)', '', 'maya-maya-1-kilo', 350, 'maya-maya-1-kilo.jpg', '0000-00-00', 0),
(64, 6, 'Pampano Fish (1 kilo)', '', 'pampano-fish-1-kilo', 400, 'pampano-fish-1-kilo.jpg', '0000-00-00', 0),
(65, 6, 'Brown Squid (1 kilo)', '', 'brown-squid-1-kilo', 220, 'brown-squid-1-kilo.jpg', '0000-00-00', 0),
(66, 6, 'Native Squid (1 kilo)', '', 'native-squid-1-kilo', 400, 'native-squid-1-kilo.jpg', '0000-00-00', 0),
(67, 6, 'Salmon (1 kilo)', '', 'salmon-1-kilo', 400, 'salmon-1-kilo.jpg', '0000-00-00', 0),
(68, 6, 'Salmon Belly (1 kilo)', '', 'salmon-belly-1-kilo', 240, 'salmon-belly-1-kilo.jfif', '0000-00-00', 0),
(69, 6, 'Sapsap - Ponyfish (1 kilo)', '', 'sapsap-ponyfish-1-kilo', 200, 'sapsap-ponyfish-1-kilo.jfif', '0000-00-00', 0),
(70, 6, 'Hipon - Shrimp (1 kilo)', '', 'hipon-shrimp-1-kilo', 450, 'hipon-shrimp-1-kilo.jpg', '0000-00-00', 0),
(71, 6, 'Talakitok (1 kilo)', '', 'talakitok-1-kilo', 400, 'talakitok-1-kilo.jpg', '0000-00-00', 0),
(72, 6, 'Tanigue (1 kilo)', '', 'tanigue-1-kilo', 500, 'tanigue-1-kilo.jpg', '0000-00-00', 0),
(73, 6, 'Tilapia (1 kilo)', '', 'tilapia-1-kilo', 200, 'tilapia-1-kilo.jpg', '0000-00-00', 0),
(74, 6, 'Tulingan (1 kilo)', '', 'tulingan-1-kilo', 230, 'tulingan-1-kilo.png', '0000-00-00', 0),
(75, 6, 'Tuna (1 kilo)', '', 'tuna-1-kilo', 400, 'tuna-1-kilo.jpg', '0000-00-00', 0),
(76, 7, 'Alugbati (1 tali)', '', 'alugbati-1-tali', 10, 'alugbati-1-tali.jpg', '0000-00-00', 0),
(77, 7, 'Ampalaya (1 kilo)', '', 'ampalaya-1-kilo', 90, 'ampalaya-1-kilo.jpg', '2021-05-06', 2),
(78, 7, 'Baguio Beans (1 kilo)', '', 'baguio-beans-1-kilo', 80, 'baguio-beans-1-kilo.jpg', '0000-00-00', 0),
(79, 7, 'Pechay (1 kilo)', '', 'pechay-1-kilo', 100, 'pechay-1-kilo.jfif', '0000-00-00', 0),
(80, 7, 'Bell Pepper Green (1 kilo)', '', 'bell-pepper-green-1-kilo', 150, 'bell-pepper-green-1-kilo.jpg', '0000-00-00', 0),
(81, 7, 'Bell Pepper Red (1 kilo)', '', 'bell-pepper-red-1-kilo', 70, 'bell-pepper-red-1-kilo.jpg', '0000-00-00', 0),
(82, 7, 'Broccoli (1 kilo)', '', 'broccoli-1-kilo', 150, 'broccoli-1-kilo.jpg', '0000-00-00', 0),
(83, 7, 'Bulaklak ng Saging (1 kilo)', '', 'bulaklak-ng-saging-1-kilo', 200, 'bulaklak-ng-saging-1-kilo.jpg', '0000-00-00', 0),
(84, 7, 'Repolyo (1 kilo)', '', 'repolyo-1-kilo', 80, 'repolyo-1-kilo.png', '0000-00-00', 0),
(85, 7, 'Kalamansi (1 kilo)', '', 'kalamansi-1-kilo', 90, 'kalamansi-1-kilo.jpg', '0000-00-00', 0),
(86, 7, 'Carrots (1 kilo)', '', 'carrots-1-kilo', 100, 'carrots-1-kilo.jpg', '0000-00-00', 0),
(87, 7, 'Kamoteng Kahoy (1 kilo)', '', 'kamoteng-kahoy-1-kilo', 70, 'kamoteng-kahoy-1-kilo.jfif', '0000-00-00', 0),
(88, 7, 'Cauliflower (1 kilo)', '', 'cauliflower-1-kilo', 140, 'cauliflower-1-kilo.png', '0000-00-00', 0),
(89, 7, 'Celery (1 kilo)', '', 'celery-1-kilo', 120, 'celery-1-kilo.jpg', '0000-00-00', 0),
(90, 7, 'Pipino (1 kilo)', '', 'pipino-1-kilo', 80, 'pipino-1-kilo.jpg', '0000-00-00', 0),
(91, 7, 'Ampalaya Leaves (1 tali)', '', 'ampalaya-leaves-1-tali', 20, 'ampalaya-leaves-1-tali.jpg', '0000-00-00', 0),
(92, 7, 'Dahon ng Kamote (1 tali)', '', 'dahon-ng-kamote-1-tali', 10, 'dahon-ng-kamote-1-tali.jpg', '0000-00-00', 0),
(93, 7, 'Dahon ng Sili (1 tali)', '', 'dahon-ng-sili-1-tali', 10, 'dahon-ng-sili-1-tali.jpg', '0000-00-00', 0),
(94, 7, 'Talong (1 kilo)', '', 'talong-1-kilo', 90, 'talong-1-kilo.png', '0000-00-00', 0),
(95, 7, 'Gabi (1 kilo)', '', 'gabi-1-kilo', 100, 'gabi-1-kilo.jfif', '0000-00-00', 0),
(96, 7, 'Bawang (1 kilo)', '', 'bawang-1-kilo', 130, 'bawang-1-kilo_1620219726.png', '0000-00-00', 0),
(97, 7, 'Luya (1 kilo)', '', 'luya-1-kilo', 170, 'luya-1-kilo.jpg', '0000-00-00', 0),
(98, 7, 'Kalabasa (1 kilo)', '', 'kalabasa-1-kilo', 55, 'kalabasa-1-kilo.jfif', '0000-00-00', 0),
(99, 7, 'Kangkong (1 tali)', '', 'kangkong-1-tali', 15, 'kangkong-1-tali.jpg', '0000-00-00', 0),
(100, 7, 'Kinchay (1 tali)', '', 'kinchay-1-tali', 15, 'kinchay-1-tali.png', '0000-00-00', 0),
(101, 7, 'Dahon ng Laurel (1 pack)', '', 'dahon-ng-laurel-1-pack', 10, 'dahon-ng-laurel-1-pack.png', '0000-00-00', 0),
(102, 7, 'Tanglad (1/4 kilo)', '', 'tanglad-1-4-kilo', 30, 'tanglad-1-4-kilo.jpg', '0000-00-00', 0),
(103, 7, 'Lettuce Green Ice (1 kilo)', '', 'lettuce-green-ice-1-kilo', 100, 'lettuce-green-ice-1-kilo.jfif', '0000-00-00', 0),
(104, 7, 'Lettuce Iceberg (1 kilo)', '', 'lettuce-iceberg-1-kilo', 120, 'lettuce-iceberg-1-kilo_1620220056.jpg', '0000-00-00', 0),
(105, 7, 'Lettuce Romaine (1 kilo)', '', 'lettuce-romaine-1-kilo', 130, 'lettuce-romaine-1-kilo_1620220035.jpg', '0000-00-00', 0),
(106, 7, 'Malunggay (1 tali)', '', 'malunggay-1-tali', 15, 'malunggay-1-tali.jpg', '0000-00-00', 0),
(107, 7, 'Monggo (1 kilo)', '', 'monggo-1-kilo', 140, 'monggo-1-kilo.jpg', '0000-00-00', 0),
(108, 7, 'Mustasa (1 kilo)', '', 'mustasa-1-kilo', 100, 'mustasa-1-kilo.jpg', '0000-00-00', 0),
(109, 7, 'Okra (1 tali)', '', 'okra-1-tali', 15, 'okra-1-tali.jpg', '0000-00-00', 0),
(110, 7, 'Onion Leeks (1 tali)', '', 'onion-leeks-1-tali', 15, 'onion-leeks-1-tali.jpg', '0000-00-00', 0),
(111, 7, 'Red Onions (1 kilo)', '', 'red-onions-1-kilo', 95, 'red-onions-1-kilo.jpg', '0000-00-00', 0),
(112, 7, 'White Onions (1 kilo)', '', 'white-onions-1-kilo', 110, 'white-onions-1-kilo.png', '0000-00-00', 0),
(113, 7, 'Papaya (1 kilo)', '', 'papaya-1-kilo', 60, 'papaya-1-kilo.jfif', '0000-00-00', 0),
(114, 7, 'Parsley (1 tali)', '', 'parsley-1-tali', 25, 'parsley-1-tali.jpg', '0000-00-00', 0),
(115, 7, 'Patola (1 kilo)', '', 'patola-1-kilo', 80, 'patola-1-kilo.jpg', '0000-00-00', 0),
(116, 7, 'Patatas (1 kilo)', '', 'patatas-1-kilo', 80, 'patatas-1-kilo.jpg', '0000-00-00', 0),
(117, 7, 'Labanos (1 kilo)', '', 'labanos-1-kilo', 100, 'labanos-1-kilo.jfif', '0000-00-00', 0),
(118, 7, 'Saluyot (1 tali)', '', 'saluyot-1-tali', 15, 'saluyot-1-tali.jpg', '0000-00-00', 0),
(119, 7, 'Sampaloc (1 kilo)', '', 'sampaloc-1-kilo', 110, 'sampaloc-1-kilo.png', '0000-00-00', 0),
(120, 7, 'Sayote (1 kilo)', '', 'sayote-1-kilo', 60, 'sayote-1-kilo.jpg', '0000-00-00', 0),
(121, 7, 'Sigarilyas (1 kilo)', '', 'sigarilyas-1-kilo', 140, 'sigarilyas-1-kilo.jpg', '0000-00-00', 0),
(122, 7, 'Siling Green (1 pack)', '', 'siling-green-1-pack', 25, 'siling-green-1-pack.jpg', '0000-00-00', 0),
(123, 7, 'Siling Labuyo (1 pack)', '', 'siling-labuyo-1-pack', 25, 'siling-labuyo-1-pack.jpg', '0000-00-00', 0),
(124, 7, 'Singkamas (1 kilo)', '', 'singkamas-1-kilo', 60, 'singkamas-1-kilo.jfif', '0000-00-00', 0),
(125, 7, 'Sitaw (1 tali)', '', 'sitaw-1-tali', 20, 'sitaw-1-tali.png', '0000-00-00', 0),
(126, 7, 'Togue (1 kilo)', '', 'togue-1-kilo', 55, 'togue-1-kilo.jpg', '0000-00-00', 0),
(127, 7, 'Kamatis (1 kilo)', '', 'kamatis-1-kilo', 70, 'kamatis-1-kilo.jpg', '0000-00-00', 0),
(128, 7, 'Turmeric Ginger (1 kilo)', '', 'turmeric-ginger-1-kilo', 100, 'turmeric-ginger-1-kilo.jpg', '0000-00-00', 0),
(129, 7, 'Upo (1 kilo)', '', 'upo-1-kilo', 50, 'upo-1-kilo.jpg', '0000-00-00', 0),
(130, 7, 'Young Corn (1 pack)', '', 'young-corn-1-pack', 25, 'young-corn-1-pack.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2021-05-05'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2021-01-10'),
(11, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2021-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$01brKlHz6Fg46cRLuHzaCOfxzN/MJkV7KOL8bYQQR1QASiEiGwUZ6', 1, 'Admin', 'Panel', 'Unknown', '0000', 'LOGO.png', 1, '', '', '2021-05-01'),
(13, 'test@gmail.com', '$2y$10$8asGyBIrAU7ytSYwOhUo7eRrltcubt3p2O3rDUWC87IyBJ7q5KVRC', 0, 'Just', 'Testing', 'NONE', '0000', 'cover.png', 1, '', '', '2021-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
