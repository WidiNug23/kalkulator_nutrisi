-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 03:50 PM
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
-- Database: `kalkulator_nutrisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kebutuhan_gizi`
--

CREATE TABLE `kebutuhan_gizi` (
  `id` int(11) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `age` int(11) NOT NULL,
  `activity_level` varchar(255) NOT NULL,
  `tdee` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `fat` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kebutuhan_gizi`
--

INSERT INTO `kebutuhan_gizi` (`id`, `gender`, `weight`, `height`, `age`, `activity_level`, `tdee`, `carbs`, `protein`, `fat`) VALUES
(111, 'male', 60, 160, 20, 'light', 3211.73, 401.47, 200.73, 89.21),
(112, 'female', 60, 170, 22, 'active', 2780.01, 347.5, 173.75, 77.22),
(114, 'male', 50, 160, 20, 'sedentary', 2728.2, 341.03, 170.51, 75.78),
(115, 'female', 80, 170, 29, 'moderate', 2581.84, 322.73, 161.36, 71.72),
(118, 'female', 70, 160, 25, 'moderate', 2470.7, 308.84, 154.42, 68.63),
(119, 'female', 50, 160, 20, 'light', 2104.44, 263.05, 131.53, 58.46),
(120, 'female', 50, 160, 20, 'active', 2137.28, 267.16, 133.58, 59.37),
(121, 'female', 50, 160, 20, 'moderate', 1920.45, 240.06, 120.03, 53.35),
(122, 'female', 70, 170, 22, 'light', 2050.81, 256.35, 128.18, 56.97),
(123, 'female', 70, 170, 22, 'light', 2050.81, 256.35, 128.18, 56.97),
(124, 'female', 70, 170, 22, 'active', 2572.84, 321.6, 160.8, 71.47),
(125, 'female', 33, 44, 66, 'light', 156.75, 19.59, 9.8, 4.35),
(126, 'male', 55, 566, 55, 'moderate', 5917.13, 739.64, 369.82, 164.36),
(127, 'female', 44, 33, 44, 'light', 364.72, 45.59, 22.79, 10.13),
(128, 'female', 44, 165, 23, 'moderate', 1852.64, 231.58, 115.79, 51.46),
(129, 'female', 44, 145, 44, 'light', 1327.22, 165.9, 82.95, 36.87),
(130, 'female', 34, 4, 34, 'sedentary', 40.8, 5.1, 2.55, 1.13),
(131, 'female', 355, 34, 4, 'moderate', 5551.33, 693.92, 346.96, 154.2),
(132, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(133, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(134, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(135, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(136, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(137, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(138, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(139, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(140, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(141, 'female', 50, 160, 21, 'light', 1696.75, 212.09, 106.05, 47.13),
(142, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(143, 'male', 50, 160, 21, 'light', 1925, 240.63, 120.31, 53.47),
(144, 'female', 66, 66, 66, 'moderate', 901.33, 112.67, 56.33, 25.04),
(145, 'male', 55, 169, 23, 'moderate', 2319.19, 289.9, 144.95, 64.42),
(160, 'female', 60, 170, 22, 'active', 2400.34, 300.04, 150.02, 66.68),
(161, 'male', 60, 170, 22, 'moderate', 2414.13, 301.77, 150.88, 67.06),
(162, 'male', 12, 120, 5, 'active', 1466.25, 183.28, 91.64, 40.73),
(163, 'male', 12, 120, 5, 'active', 1466.25, 183.28, 91.64, 40.73),
(164, 'female', 80, 170, 25, 'moderate', 2443.58, 305.45, 152.72, 67.88),
(165, 'female', 60, 148, 20, 'active', 2180.4, 272.55, 136.28, 60.57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kebutuhan_gizi`
--
ALTER TABLE `kebutuhan_gizi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kebutuhan_gizi`
--
ALTER TABLE `kebutuhan_gizi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
