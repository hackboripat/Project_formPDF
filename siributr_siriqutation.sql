-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2024 at 07:31 PM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siributr_siriqutation`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `quotation_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tel` varchar(255) NOT NULL,
  `customer_company` varchar(255) NOT NULL,
  `customer_agency` varchar(255) NOT NULL,
  `date_send` varchar(255) NOT NULL,
  `date_price` varchar(255) NOT NULL,
  `date_credit` varchar(255) NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `discount` float(8,2) NOT NULL,
  `after_discount` float(8,2) NOT NULL,
  `vat` float(8,2) NOT NULL,
  `grand_total` float(8,2) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL,
  `approver` varchar(255) NOT NULL,
  `seller` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company`, `address`, `quotation_id`, `date`, `customer_name`, `customer_tel`, `customer_company`, `customer_agency`, `date_send`, `date_price`, `date_credit`, `subtotal`, `discount`, `after_discount`, `vat`, `grand_total`, `note`, `payment`, `approver`, `seller`) VALUES
(1, 'ทดสอบ abc จำกัด', '123 abc กรุงเทพ', '123', '09/12/2024', 'ทดสอบ', '0891235678', 'abc', 'abc', '10/12/2024', '10/12/2024', '10/12/2024', 7000.00, 0.00, 7000.00, 490.00, 7490.00, '', 'ธนาคาร ', 'ทดสอบ', 'ทดสอบ'),
(2, 'ทดสอบ abc จำกัด', '123 abc กรุงเทพ', '123', '09/12/2024', 'ทดสอบ', '0891235678', 'abc', 'abc', '10/12/2024', '10/12/2024', '10/12/2024', 10000.00, 0.00, 10000.00, 700.00, 10700.00, '', 'ธนาคาร scb', 'ทดสอบ', 'ทดสอบ');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `product_price` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_name`, `product_amount`, `product_price`) VALUES
(1, 1, 'สินค้า', 2, 3500.00),
(2, 2, 'สินค้า', 2, 3500.00),
(3, 2, 'สินค้า2', 3, 1000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
