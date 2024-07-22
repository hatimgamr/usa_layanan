-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 01:51 PM
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
-- Database: `uas-layananweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-07-21-135209', 'App\\Database\\Migrations\\AddBlog', 'default', 'App', 1721580813, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `tinggi` double DEFAULT NULL,
  `lebar` double DEFAULT NULL,
  `screen-type` text DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `nama`, `merek`, `tinggi`, `lebar`, `screen-type`, `battery`, `created_at`, `updated_at`) VALUES
(4, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-21 18:03:25', '2024-07-21 18:03:25'),
(5, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-21 18:04:02', '2024-07-21 18:04:02'),
(7, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4002320, '2024-07-21 18:04:03', '2024-07-22 10:59:22'),
(8, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-21 18:05:00', '2024-07-21 18:05:00'),
(9, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-22 09:09:20', '2024-07-22 09:09:20'),
(10, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-22 09:12:57', '2024-07-22 09:12:57'),
(13, 'iphone', 'apple', 6.6, 3.2, 'amoled', 4000, '2024-07-22 10:59:21', '2024-07-22 10:59:21'),
(14, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:08:56', '2024-07-22 11:08:56'),
(15, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:09:05', '2024-07-22 11:09:05'),
(16, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:09:22', '2024-07-22 11:09:22'),
(17, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:09:28', '2024-07-22 11:09:28'),
(18, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:10:03', '2024-07-22 11:10:03'),
(19, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:10:11', '2024-07-22 11:10:11'),
(20, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:10:18', '2024-07-22 11:10:18'),
(21, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:11:39', '2024-07-22 11:11:39'),
(22, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:11:48', '2024-07-22 11:11:48'),
(23, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:13:41', '2024-07-22 11:13:41'),
(27, 'iphone', 'apple', 6.623123, 3.23223, 'amoled', 4000, '2024-07-22 11:40:47', '2024-07-22 11:40:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
