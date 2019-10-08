-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2019 at 04:30 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hackathon_midterm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

DROP TABLE IF EXISTS `tbl_sections`;
CREATE TABLE IF NOT EXISTS `tbl_sections` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name of Section` varchar(20) COLLATE utf8_bin NOT NULL,
  `No of graphical contents` int(20) NOT NULL,
  `H1 heading of this section` text COLLATE utf8_bin NOT NULL,
  `P paragraph included` text COLLATE utf8_bin NOT NULL,
  `Links given` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`Id`, `Name of Section`, `No of graphical contents`, `H1 heading of this section`, `P paragraph included`, `Links given`) VALUES
(1, 'Header', 5, 'Make Your Life Easy', 'Enhance your living experience with the all new HouseCon Thermosecurity Thermostat. You can now vary the environment of your house on your fingertips. Using your phone or tablet by an app.', 'Facebook, twitter, google +, Youtube'),
(2, 'Pro section', 3, 'HouseCom™ ThermoSecurity™ System', 'Welcome to the official website of HouseCon Thermosecurity Thermostat. Enhance your living experience with the all new HouseCon Thermosecurity Thermostat. HouseCom thermostat is all set to make you comfortable in cold and hot temprature', 'No Link'),
(3, 'videopart', 1, 'no heading', 'no paragraph', 'our products link going to product list'),
(4, 'Intro pic', 5, 'EXPLORE THE GALLERY', 'Enhance your living experience with the all new HouseCon Thermosecurity Thermostat. You can now vary the environment of your house on your fingertips. Using your phone or tablet by an app.', 'View more link to load more description\r\nand view more photos link.'),
(5, 'coop', 4, 'OUR CLIENTS... ', 'We have very satisfied clients that have given overall rating of 4.9 out of 5. Feel free to order yours now. Thanks for choosing HouseCom ThermoSecurity System\r\n', 'No external links'),
(6, 'Contact', 0, 'CONTACT US... ', 'No paragraph but form fields included', 'Link to send the email to company'),
(7, 'conWay', 3, 'no heading', 'no paragraph', 'no links'),
(8, 'footer', 4, 'no heading', ' © 2019 - HouseCom™ ThermoSecurity™ System', 'Facebook, twitter, google+, Youtube');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_sections`
--

DROP TABLE IF EXISTS `tbl_sub_sections`;
CREATE TABLE IF NOT EXISTS `tbl_sub_sections` (
  `Id` int(11) NOT NULL,
  `Section id` int(11) NOT NULL,
  `H1 Heading` text COLLATE utf8_bin NOT NULL,
  `P paragraph` text COLLATE utf8_bin NOT NULL,
  `links` text COLLATE utf8_bin NOT NULL,
  `graphical elements` int(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_sub_sections`
--

INSERT INTO `tbl_sub_sections` (`Id`, `Section id`, `H1 Heading`, `P paragraph`, `links`, `graphical elements`) VALUES
(1, 2, 'CONVENIENCE', 'Easy to use & Install\r\nyou can control it with your mobile using an APP.', 'no links', 1),
(2, 2, 'BATTERY', 'Having Good Battery Life\r\nDO Not need Charge', 'no links', 1),
(3, 2, 'APP', 'Having very convenient and easy to use app. \r\nChild friendly', 'no links', 1),
(4, 7, 'no heading', '647-888-8888', 'no links', 1),
(5, 7, 'no heading', 'ThermoSecurity@Gmail.com', 'no links', 0),
(6, 7, 'no heading', '130 Dundas ST\r\nLondon ON \r\nCanada', 'no links', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
