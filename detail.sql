-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 11:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `credits` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `credits`) VALUES
('Aman Prasad', 'Pappu Prasad', 343),
('Sanu Mishra', 'Riya Sen', 547),
('Anurag Prasad', 'Arpita Choudhury', 559),
('Soham Prajapati', 'Tarak Mahanty', 269),
('Rahul Mahato', 'Sweta Devi', 719),
('Aman Prasad', 'Arpita Choudhury', 234);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `credits` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `credits`) VALUES
(1, 'Aman Prasad', 'amanprasad@gmail.com', 4448),
(2, 'Pappu Prasad', 'pappup@gmail.com',3423),
(3, 'Anurag Prasad', 'anuragp3@gmail.com', 6965),
(4, 'Riya Sen', 'riya123@gmail.com', 7566),
(5, 'Sanu Mishra', 'smishra@gmail.com', 9884),
(6, 'Rahul Mahato', 'rmshato3@gmail.com', 3411),
(7, 'Tarak Mohanty', 'tarakmohanty77@gmail.com', 2301),
(8, 'Soham Prajapati', 'sohamp@gmail.com', 1039),
(9, 'Sweta Devi', 'dsweta@gmail.com', 7458),
(10, 'Arpita Choudhury', 'choudhuryar@gmail.com', 9329);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
