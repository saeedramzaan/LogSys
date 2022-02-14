-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2022 at 09:30 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `date_time`) VALUES
(2, 'saeed', 'saeed@gmail.com', '$2y$12$eAAo6zwRJN8uza2XSnS5duZlNEmeKyzCmx4Us0iMJIjqFa366zGtu', '2022-02-07 10:27:23'),
(3, 'ramzan', 'ramzan@gmail.com', '$2y$12$qD48qo7Gk8trYpkTEXe4c.x.W5b4vhX.wBJ6kJ2JXoKNlg5D2rPcG', '2022-02-07 10:29:07'),
(4, 'saamzan', 'saeedramzaan@gmail.com', '$2y$12$GjmrxQRzEMXWShvvXemRIud0AVG.3Pa2hjF6z4Jrx2fXCuzrSVCYi', '2022-02-11 14:09:13'),
(5, 'zain', 'zain@gmail.com', '$2y$12$./NWkX0fMdo9jLnpyvunMe.4iB4ThXJLy/sf3giPbjAm59NWy3p7q', '2022-02-11 14:18:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
