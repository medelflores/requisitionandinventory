-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 08:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pword` varchar(65) NOT NULL,
  `position` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `signature` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `uname`, `pword`, `position`, `contact`, `signature`) VALUES
(1, 'Gilbert Jr. R. Dizon', 'gilbert@plpasig.edu.ph', '$2y$10$IfuKCZkBODlD1jSDV/BZSeyfslh59lTVhexzpFcW2vZYVCRsECzJK', 'Admin', '09163306820', '16698583505970223976388042e26bb1');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_cart`
--

CREATE TABLE `borrow_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_cart`
--

INSERT INTO `borrow_cart` (`cart_id`, `user_id`, `product_id`, `product_qty`) VALUES
(134, '123-1233', '10087', 1);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `college` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `college`) VALUES
(7, 'CBA-HM');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `date_arrived` date NOT NULL,
  `cond` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `service` varchar(200) NOT NULL,
  `keywords` varchar(500) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT 0,
  `added_by_admin` varchar(100) NOT NULL DEFAULT '0',
  `serial_number` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `photo`, `name`, `quantity`, `brand`, `date_arrived`, `cond`, `category`, `service`, `keywords`, `date_added`, `status`, `added_by`, `added_by_admin`, `serial_number`) VALUES
(10041, '168355695531311211864590a5b49b6c', 'Margarita', 4, 'N/A', '2023-05-08', '', 'Glass', 'N/A2', 'Margarita', '2023-05-08 22:42:35', 1, 11, '0', '0'),
(10043, '168355719318583711464590b499a11d', 'Fry Pan', 2, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Fry Pan', '2023-05-08 22:46:33', 1, 11, '0', '0'),
(10044, '16835572317773373664590b6fac57b', 'Paella Pan', 4, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Paella Pan', '2023-05-08 22:47:11', 1, 11, '0', '0'),
(10045, '1683557264196140998864590b903bc58', 'Sauce Pan', 5, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Sauce Pan', '2023-05-08 22:47:44', 1, 11, '0', '0'),
(10046, '1683557288176965452564590ba81ba93', 'Saute Pan', 3, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Saute Pan', '2023-05-08 22:48:08', 1, 11, '0', '0'),
(10047, '1683557314107958375364590bc2c4698', 'Wok', 3, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Wok', '2023-05-08 22:48:34', 1, 11, '0', '0'),
(10048, '168355736028432540064590bf0aed03', 'Non-Stick Pan', 4, 'N/A', '2023-05-08', '', 'Pan', 'N/A2', 'Non-Stick Pan', '2023-05-08 22:49:20', 1, 11, '0', '0'),
(10049, '168355793259458268164590e2c2e0e2', 'Bread and Butter Plate', 4, 'N/A', '2023-05-08', '', 'Plates', 'N/A2', 'Bread and Butter Plate', '2023-05-08 22:58:52', 1, 11, '0', '0'),
(10050, '1683557961126202401164590e492ebf4', 'Dinner Plate', 8, 'N/A', '2023-05-08', '', 'Plates', 'N/A2', 'Dinner Plate', '2023-05-08 22:59:21', 1, 11, '0', '0'),
(10051, '168355798926933264564590e6546d66', 'Rim Soup Bowl', 9, 'N/A', '2023-05-08', '', 'Plates', 'N/A2', 'Rim Soup Bowl', '2023-05-08 22:59:49', 1, 11, '0', '0'),
(10052, '1683558020146634628064590e8422d59', 'Salad Plates', 13, 'N/A', '2023-05-08', '', 'Plates', 'N/A2', 'Salad Plates', '2023-05-08 23:00:20', 1, 11, '0', '0'),
(10053, '1683558053159086802164590ea5dde3d', 'Soup Bowl', 9, 'N/A', '2023-05-08', '', 'Plates', 'N/A2', 'Soup Bowl', '2023-05-08 23:00:53', 1, 11, '0', '0'),
(10054, '168355820230211248464590f3ab588d', 'Long Turner', 4, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Long Turner', '2023-05-08 23:03:22', 1, 11, '0', '0'),
(10055, '168355824289617842464590f621f285', 'Jar Spatula', 3, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Jar Spatula', '2023-05-08 23:04:02', 1, 11, '0', '0'),
(10056, '1683558278149937637564590f86806d4', 'Round Turner', 4, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Round Turner', '2023-05-08 23:04:38', 1, 11, '0', '0'),
(10057, '168355830538430971964590fa1adbb4', 'Spatula', 8, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Spatula', '2023-05-08 23:05:05', 1, 11, '0', '0'),
(10058, '1683558331134149581664590fbbc1c51', 'Tong', 6, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Tong', '2023-05-08 23:05:31', 1, 11, '0', '0'),
(10059, '168355840732941759964591007ab839', 'Soup Ladle', 5, 'N/A', '2023-05-08', '', 'Spatula', 'N/A2', 'Soup Ladle', '2023-05-08 23:06:47', 1, 11, '0', '0'),
(10068, '16835594091623169241645913f1034c5', 'Serving Spoon', 9, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Serving Spoon', '2023-05-08 23:23:29', 1, 11, '0', '0'),
(10069, '16835594361729649316459140c8c611', 'Fruit Fork', 8, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Fruit Fork', '2023-05-08 23:23:56', 1, 11, '0', '0'),
(10070, '1683559506183174520064591452107ec', 'Dinner Spoon', 9, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Dinner Spoon', '2023-05-08 23:25:06', 1, 11, '0', '0'),
(10071, '168355953319801374876459146d1ac5b', 'Dinner Fork', 14, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Dinner Fork', '2023-05-08 23:25:33', 1, 11, '0', '0'),
(10072, '16835596171788450098645914c1e574e', 'Dessert Spoon', 3, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Dessert Spoon', '2023-05-08 23:26:57', 1, 11, '0', '0'),
(10073, '16835596421267016240645914da40e3e', 'Dessert Knife', 7, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Dessert Knife', '2023-05-08 23:27:22', 1, 11, '0', '0'),
(10074, '16835596981144857317645915126718e', 'Cake Fork', 8, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Cake Fork', '2023-05-08 23:28:18', 1, 11, '0', '0'),
(10075, '168355972511039402596459152ddbb4e', 'Butter Knife', 14, 'N/A', '2023-05-08', '', 'Spoon', 'N/A2', 'Butter Knife', '2023-05-08 23:28:45', 1, 11, '0', '0'),
(10077, '168356096955984857564591a091f9d8', 'Brandy Balloon Snifter', 0, 'N/A', '2023-05-08', '', 'Glass', 'N/A2', 'Brandy Balloon Snifter', '2023-05-08 23:49:29', 1, 11, '0', '0'),
(10078, '168356104286870904564591a52dbff9', 'Champagne Flute', 2, 'N/A', '2023-05-08', '', 'Glass', 'N/A2', 'Champagne Flute', '2023-05-08 23:50:42', 1, 11, '0', '0'),
(10087, '1686908512502693701648c2e60a68ac', 'Cocktail ', 3, 'none', '2023-06-16', '', 'Glass', 'N/A2', 'Cocktail', '2023-06-16 17:41:52', 1, 11, '0', '0'),
(10105, '16993578552105668749654a249fcb404', 'Added By Labtech', 12, 'brandy', '2023-11-10', '', 'Pan', 'N/A2', 'try', '2023-11-07 19:50:55', 1, 11, '0', '1231231'),
(10106, '1699375859120240318654a6af379d22', 'Wood To bE Archived', 12, 'wood', '2023-11-07', '', 'Wood', 'N/A2', 'try', '2023-11-08 00:50:59', 1, 11, '0', '1231231'),
(10107, '17004509091340664281655ad25da1ad1', 'try equipment', 12, 'taylor', '2023-11-15', '', 'taylor', 'N/A2', 'taylor', '2023-11-20 11:28:29', 1, 0, 'Gilbert Jr. R. Dizon', '0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `stud_id` text NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`stud_id`, `rating`, `description`) VALUES
('20-00313', 5, 'The website is good, it is responsive'),
('20-00312\r\n', 1, 'The website is really slow, it needs some fixing!!'),
('20-00312\r\n', 1, 'The website is really slow, it needs some fixing!!'),
('20-00312', 1, 'The website is really slow, really needs to be fixed.'),
('20-00312', 1, 'The plot was good, but the characters are uncompelling and the dialog is not great.'),
('20-00312', 2, 'This website makes me mad and angry. It is really really slow and needed to be fixed. '),
('123-1233', 5, 'It\'s really really good, I would recommend this website to others');

-- --------------------------------------------------------

--
-- Table structure for table `labtech`
--

CREATE TABLE `labtech` (
  `tech_id` int(11) NOT NULL,
  `tech_name` text NOT NULL,
  `tech_username` varchar(100) NOT NULL,
  `tech_password` text NOT NULL,
  `status` int(11) NOT NULL,
  `contact` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtech`
--

INSERT INTO `labtech` (`tech_id`, `tech_name`, `tech_username`, `tech_password`, `status`, `contact`, `date_added`, `signature`) VALUES
(11, 'Angeline Medel  Flores ', 'flores_angelinemedel@plpasig.edu.ph', '$2y$10$QoiePRYBsTU/7OWMxDO5u.iNQetWNIDHwR1gWv7Wy0zJt1WqVFkNC', 1, '09564875698', '2023-07-19 12:35:52', 'default'),
(18, 'Acecis Isidro', 'hollow3x@plpasig.edu.ph', '$2y$10$EXkm5AV.kAtewyFNgsy8qe5PwJEDXtIF2.07K/atg243ou8yefMHu', 1, '09156906112', '2023-10-23 15:03:22', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `action` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`action`, `name`, `date`, `user_type`) VALUES
('Added a User', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Added an Equipment(loh sya)', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Archive an Item (loh sya)', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Updated an Item (new jording)', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Exported Damaged/Lost Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Exported 10 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Exported October 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-10-23', 'Admin'),
('Added a User', 'Angeline Medel  Flores ', '2023-10-23', 'Labtech'),
('Updated a Item (Margarita)', 'Angeline Medel  Flores ', '2023-10-23', 'Labtech'),
('Exported October 2023 Report PDF', 'Angeline Medel  Flores ', '2023-10-23', 'Labtech'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-24', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-24', 'Admin'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-10-24', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-10-24', 'Labtech'),
('Exported July 2023 Report PDF', 'Angeline Medel  Flores ', '2023-10-25', 'Labtech'),
('Exported July 2023 Report PDF', 'Angeline Medel  Flores ', '2023-10-25', 'Labtech'),
('Exported July 2023 Report PDF', 'Angeline Medel  Flores ', '2023-10-25', 'Labtech'),
('Exported October 2023 Report PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported October 2023 Report PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported January  Report PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported Lost/Damaged PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported Lost/Damaged PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported Lost/Damaged PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Exported Lost/Damaged PDF', 'Juan Delacruz', '2023-10-25', 'Labtech'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (Champagne Coupe)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive an Item (Wooden Plate)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (Wooden Plate)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (try)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (ACECIS ISIDRO )', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (Angeline Medel  Flores )', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (ACECIS ISIDRO )', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Restored an Item (Angeline Medel  Flores )', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Admin'),
('Archived a User', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Unarchived a User', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Restored an Item (Beer Mug)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Restored an Item (Beer Mug)', 'Gilbert Jr. R. Dizon', '2023-10-26', 'Labtech'),
('Unarchived a User', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Unarchived a User', 'Angeline Medel  Flores ', '2023-10-26', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Edited a User', 'Gilbert Jr. R. Dizon', '2023-11-05', 'Admin'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Exported Lost/Damaged PDF', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Exported November 2023 Report PDF', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Exported June 2023 Report PDF', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Exported July 2023 Report PDF', 'Angeline Medel  Flores ', '2023-11-05', 'Labtech'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported August 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported August 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Approved a Request (4151126)', 'Angeline Medel  Flores ', '2023-11-06', 'Labtech'),
('Exported November 2023 Report PDF', 'Gilbert Jr. R. Dizon', '2023-11-06', 'Admin'),
('Exported November 2023 Report PDF', 'Angeline Medel  Flores ', '2023-11-06', 'Labtech'),
('Exported November 2023 Report PDF', 'Angeline Medel  Flores ', '2023-11-06', 'Labtech'),
('Approved a Request (d69c0f5)', 'Angeline Medel  Flores ', '2023-11-06', 'Labtech'),
('Deleted an Item (Beer Mug)', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Deleted a User', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Unarchived a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-07', 'Admin'),
('Added an Equipment (Added By Labtech)', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Updated a User', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-11-07', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Deleted a User', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Added an Equipment (Wood To bE Archived)', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Archived an Item ()', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-08', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-08', 'Admin'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Angeline Medel  Flores ', '2023-11-10', 'Labtech'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-10', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Added an Equipment ( try equipment )', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Exported Equipment PDF', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Restored an Item (Wood To bE Archived)', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Archive an Item (try equipment)', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Restored an Item (try equipment)', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Archive an Item (Wood To bE Archived)', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Restored an Item (Wood To bE Archived)', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Archive a User', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Restored a User', 'Gilbert Jr. R. Dizon', '2023-11-20', 'Admin'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-20', 'Labtech'),
('Archived a User', 'Angeline Medel  Flores ', '2023-11-20', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-20', 'Labtech'),
('Added a User', 'Angeline Medel  Flores ', '2023-11-20', 'Labtech');

-- --------------------------------------------------------

--
-- Table structure for table `pending_request`
--

CREATE TABLE `pending_request` (
  `request_id` text NOT NULL,
  `request_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` text NOT NULL,
  `product_id` text NOT NULL,
  `product_qty` int(11) NOT NULL,
  `user_yearsection` text NOT NULL,
  `user_purpose` varchar(20) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_history`
--

CREATE TABLE `request_history` (
  `request_id` text NOT NULL,
  `request_date` datetime NOT NULL DEFAULT current_timestamp(),
  `request_status` varchar(25) NOT NULL,
  `request_handler_id` text NOT NULL,
  `user_id` text NOT NULL,
  `user_yearsection` text NOT NULL,
  `user_purpose` varchar(20) NOT NULL,
  `product_id` text NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_history`
--

INSERT INTO `request_history` (`request_id`, `request_date`, `request_status`, `request_handler_id`, `user_id`, `user_yearsection`, `user_purpose`, `product_id`, `product_qty`) VALUES
('2e91dbdd7a42f26d7e3d8907fa20df', '2023-07-31 03:25:32', 'Returned', '11', '20-00341', 'BSHM 3A', 'Not Class Related', '10076', 1),
('2e91dbdd7a42f26d7e3d8907fa20df', '2023-07-31 03:25:32', 'Returned', '11', '20-00341', 'BSHM 3A', 'Not Class Related', '10076', 1),
('bffa2773708ad53c9ebac503c90610', '2023-07-31 03:43:34', 'Returned', '11', '20-00341', 'BSHM 3A', 'Class Related', '10078', 1),
('bffa2773708ad53c9ebac503c90610', '2023-07-31 03:43:43', 'Returned', '11', '20-00341', 'BSHM 3A', 'Class Related', '10076', 1),
('6c8a010470acfc4a683db6b8959c8a', '2023-07-31 03:50:12', 'Returned', '11', '20-00341', 'BSHM 3A', 'Class Related', '10076', 1),
('6c64a0919588484c33919c57001606', '2023-07-31 22:54:35', 'Returned', '11', '20-00341', 'BSHM 3A', 'Not Class Related', '10048', 1),
('8634aaac531ca5216ddcefcdc7aaaa', '2023-07-31 23:41:52', 'Declined', '11', '20-00341', 'BSHM 3A', 'Class Related', '10053', 1),
('2ef25b853bacc82067714e106066d3', '2023-08-01 01:39:07', 'Returned', '11', '20-00341', 'BSHM 3A', 'Class Related', '10076', 1),
('2ef25b853bacc82067714e106066d3', '2023-08-01 01:39:07', 'Returned', '11', '20-00341', 'BSHM 3A', 'Class Related', '10076', 1),
('3ab0e8907bae37919907f78995a3c5', '2023-08-12 03:48:19', 'Declined', '1', '20-00341', 'BSHM 3A', 'Not Class Related', '10076', 1),
('3ab0e8907bae37919907f78995a3c5', '2023-08-12 03:48:19', 'Declined', '1', '20-00341', 'BSHM 3A', 'Not Class Related', '10075', 1),
('be052be5fdbf40d7ca406956618487', '2023-08-12 03:48:30', 'Declined', '1', '20-00312', 'BSHM 3A', 'Class Related', '10075', 2),
('597d2b5dc25eb42c88038f69d68260', '2023-08-12 03:50:19', 'Returned', '1', '20-00312', 'BSHM 3-A', 'Class Related', '10047', 1),
('597d2b5dc25eb42c88038f69d68260', '2023-08-12 03:50:19', 'Returned', '1', '20-00312', 'BSHM 3-A', 'Class Related', '10047', 1),
('53521f9821cfd6a20413f8e9971510', '2023-09-11 13:47:45', 'Returned', '11', '20-00312', 'BSHM 3A', 'Class Related', '10078', 1),
('53521f9821cfd6a20413f8e9971510', '2023-09-11 13:47:45', 'Returned', '11', '20-00312', 'BSHM 3A', 'Class Related', '10078', 1),
('a099a12af450f184fcaa3ad7f62fbf', '2023-10-20 22:35:07', 'Lost', '1', '20-00312', 'BSHM 4A', 'Class Related', '10076', 1),
('79553f74ca9c5f4924f751e02ea50a', '2023-10-26 21:45:21', 'Lost', '11', '20-00341', 'BSHM 3A', 'Class Related', '10078', 1),
('74891565049009e06414abba47af2f', '2023-10-26 21:52:27', 'Lost', '11', '20-00312', 'BSHM 3A', 'Class Related', '10048', 1),
('b72b13c9968a20c1481532a2af6974', '2023-10-26 21:53:50', 'Returned', '11', '20-00341', 'BSHM 3B', 'Class Related', '10076', 1),
('b72b13c9968a20c1481532a2af6974', '2023-10-26 21:53:51', 'Lost', '11', '20-00341', 'BSHM 3B', 'Class Related', '10076', 1),
('b72b13c9968a20c1481532a2af6974', '2023-10-26 21:53:51', 'Damaged', '11', '20-00341', 'BSHM 3B', 'Class Related', '10076', 1),
('b1440e550d578dfb7e01f859bc2825', '2023-11-06 12:48:01', 'Declined', '11', '123-1233', 'College of', 'Class Related', '10078', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pword` varchar(65) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `signature` varchar(200) NOT NULL DEFAULT 'signature',
  `date_added` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `feedback` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `uname`, `pword`, `contact`, `signature`, `date_added`, `status`, `feedback`, `type`, `department`) VALUES
('10-859', 'John Lou', 'lou_john@plpasig.edu.ph', '$2y$10$p83Jnttq57iEJPKwSsRuEuos8Ybvie/wle9KNdT6hxNMyNY7YoTU6', '9658749633', 'signature', '0000-00-00 00:00:00', 1, 0, 'Faculty', 'College of Computer Studies'),
('15-025', 'Mark Dior', 'dior_mark@plpasig.edu.ph', '$2y$10$p83Jnttq57iEJPKwSsRuEuos8Ybvie/wle9KNdT6hxNMyNY7YoTU6', '9632598741', 'signature', '0000-00-00 00:00:00', 1, 0, 'Non-Teaching', 'College of Computer Studies'),
('20-00313', 'Justine Mark L. Bonsol', 'bonsol_justinemark@plpasig.edu.ph', '$2y$10$0wJXrCEX0cjnPcbzkI4lWuOdLO5egZ.6UHjT/Feo5ykQtWyQuZ54y', '9560876107', 'signature', '0000-00-00 00:00:00', 1, 0, 'Students', 'CIHM'),
('20-00325', 'Kim Chiu', 'chiu_kim@plpasig.edu.ph', '$2y$10$0wJXrCEX0cjnPcbzkI4lWuOdLO5egZ.6UHjT/Feo5ykQtWyQuZ54y', '9658743269', 'signature', '0000-00-00 00:00:00', 1, 0, 'Students', 'CIHM'),
('20-00665', 'Mark Tiu', 'tiu_mark@plpasig.edu.ph', '$2y$10$0wJXrCEX0cjnPcbzkI4lWuOdLO5egZ.6UHjT/Feo5ykQtWyQuZ54y', '9647855126', 'signature', '0000-00-00 00:00:00', 1, 0, 'Students', 'CIHM'),
('20-116', 'Gilbert R. Dizon Jr.', 'dizon_gilbertjr@plpasig.edu.ph', '$2y$10$p83Jnttq57iEJPKwSsRuEuos8Ybvie/wle9KNdT6hxNMyNY7YoTU6', '9163306820', 'signature', '0000-00-00 00:00:00', 1, 0, 'Faculty', 'College of Arts and Sciences'),
('21-00333', 'Angel True', 'true_angel@plpasig.edu.ph', '$2y$10$0wJXrCEX0cjnPcbzkI4lWuOdLO5egZ.6UHjT/Feo5ykQtWyQuZ54y', '9325478961', 'signature', '0000-00-00 00:00:00', 1, 0, 'Students', 'CIHM'),
('22-00123', 'Bryle De Castro', 'decastro_bryle@plpasig.edu.ph', '$2y$10$0wJXrCEX0cjnPcbzkI4lWuOdLO5egZ.6UHjT/Feo5ykQtWyQuZ54y', '9163306810', 'signature', '0000-00-00 00:00:00', 1, 0, 'Students', 'CIHM'),
('22-515', 'Angeline Medel A. Flores', 'flores_angelinemedel@plpasig.edu.ph', '$2y$10$p83Jnttq57iEJPKwSsRuEuos8Ybvie/wle9KNdT6hxNMyNY7YoTU6', '9104051704', 'signature', '0000-00-00 00:00:00', 1, 0, 'Faculty', 'College of Arts and Sciences'),
('22-825', 'Paula Martin', 'martin_paula@plpasig.edu.ph', '$2y$10$p83Jnttq57iEJPKwSsRuEuos8Ybvie/wle9KNdT6hxNMyNY7YoTU6', '9915223719', 'signature', '0000-00-00 00:00:00', 1, 0, 'Non-Teaching', 'College of Computer Studies');

-- --------------------------------------------------------

--
-- Table structure for table `web_details`
--

CREATE TABLE `web_details` (
  `web_id` int(11) NOT NULL,
  `web_name` varchar(100) NOT NULL,
  `web_code` varchar(30) NOT NULL,
  `primary_color` varchar(10) NOT NULL,
  `secondary_color` varchar(10) NOT NULL,
  `web_icon` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL,
  `open_request` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `web_details`
--

INSERT INTO `web_details` (`web_id`, `web_name`, `web_code`, `primary_color`, `secondary_color`, `web_icon`, `date_updated`, `open_request`) VALUES
(12, 'Online Culinary Requisition and Inventory Management System', 'N/A', '#29813C', '#2BBF6F', 'icon', '2020-05-21 22:17:40', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow_cart`
--
ALTER TABLE `borrow_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labtech`
--
ALTER TABLE `labtech`
  ADD PRIMARY KEY (`tech_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `web_details`
--
ALTER TABLE `web_details`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `borrow_cart`
--
ALTER TABLE `borrow_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10108;

--
-- AUTO_INCREMENT for table `labtech`
--
ALTER TABLE `labtech`
  MODIFY `tech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `web_details`
--
ALTER TABLE `web_details`
  MODIFY `web_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
