-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 05:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `PId` int(2) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`PId`, `Name`, `Price`, `Quantity`, `Image`) VALUES
(1, 'Java Book One', '30.00', 2, 'bookone.jpg'),
(2, 'Java Book Two', '25.00', 6, 'booktwo.jpg'),
(3, 'Java Book Three', '28.00', 8, 'bookthree.jpg'),
(4, 'Java Book Four', '18.00', 9, 'bookfour.jpg'),
(5, 'Java Book Five', '16.00', 14, 'bookfive.jpg'),
(6, 'Java Book Six', '22.00', 14, 'booksix.jpg'),
(7, 'Java Book Seven', '34.00', 22, 'bookseven.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Full_Name` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Name_on_Card` text NOT NULL,
  `credit_card_number` int(16) NOT NULL,
  `EXP` int(4) NOT NULL,
  `CVV` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Full_Name`, `Email`, `Address`, `Name_on_Card`, `credit_card_number`, `EXP`, `CVV`) VALUES
('Akhil', 'akhil@gmail.com', '228 shady glen', 'Akhiln', 2147483647, 2222, 111),
('askdjmnf', 'sdkjbnf', 'sjdnbf', 'sd,jfn', 123, 123231, 1231),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('zcxv', 'DZxvzxvc', '', '', 0, 0, 0),
('sdckjnsak;jvsdn', 'sfd', '', '', 0, 0, 0),
('sdvdv', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('', '', '', '', 0, 0, 0),
('AKhil', '', '', '', 0, 0, 0),
('AKhil', '', '', '', 0, 0, 0),
('Akhil', '', '', '', 0, 0, 0),
('Akhil', 'akhilreddy546@gmail.com', '228 shady glen crescent', 'Akhil Edulakanti', 2147483647, 2021, 123),
('Akhil', 'akhilreddy546@gmail.com', '228 shady glen crescent', 'Akhil Edulakanti', 2147483647, 2021, 123),
('lj', ';l', 'lk', '0', 0, 0, 0),
('akhil', 'akhli@gmail.com', '228 shady glen', 'akhl edulkanti', 2147483647, 2022, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`PId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
