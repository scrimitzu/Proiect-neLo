-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2014 at 10:56 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `altceva`
--

-- --------------------------------------------------------

--
-- Table structure for table `nelo_admin`
--

CREATE TABLE IF NOT EXISTS `nelo_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `access_id` int(1) NOT NULL DEFAULT '0',
  `f_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `l_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nelo_admin`
--

INSERT INTO `nelo_admin` (`id`, `pass`, `username`, `access_id`, `f_name`, `l_name`, `email`, `designation`, `last_login`, `status`) VALUES
(1, '2d114ed71f600e896d9045e88a54465d', 'Gabi', 1, 'Gabriel', 'Jicman', 'ghostm3z@gmail.com', 'Administrator', '2014-06-14 14:53:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_adminmenu`
--

CREATE TABLE IF NOT EXISTS `nelo_adminmenu` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `url` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `parent_id` int(4) DEFAULT '0',
  `status` enum('Y','N') CHARACTER SET latin1 DEFAULT 'Y',
  `ord` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=75 ;

--
-- Dumping data for table `nelo_adminmenu`
--

INSERT INTO `nelo_adminmenu` (`id`, `name`, `url`, `parent_id`, `status`, `ord`) VALUES
(6, 'SETARI GENERALE', '#', 0, 'Y', 9),
(31, 'Setari globale', 'setari_globale.php', 6, 'Y', 1),
(33, 'MANAGER HOTEL', '#', 0, 'Y', 2),
(34, 'Editeaza camere', 'lista_camere.php', 33, 'Y', 1),
(35, 'Editeaza tip camere', 'tip_camere.php', 33, 'Y', 2),
(36, 'Editeaza preturi', 'editare_preturi.php', 63, 'Y', 4),
(37, 'MANAGER REZERVARI', '#', 0, 'Y', 4),
(39, 'Lista rezervarilor', 'lista_rezervarilor.php', 37, 'Y', 2),
(43, 'Modalitati de plata', 'modalitati_plata.php', 6, 'Y', 4),
(44, 'Continut Emailuri', 'continut_email.php', 6, 'Y', 5),
(59, 'Editeaza capacitate', 'admin_capacitate.php', 33, 'Y', 3),
(61, 'Setari aditionale plata', 'setari_plata.php', 63, 'Y', 6),
(63, 'MANAGER PRETURI', '#', 0, 'Y', 3),
(66, 'Detalii hotel', 'admin_detalii_hotel.php', 33, 'Y', 0),
(71, 'Baza de date clienti', 'bd_clienti.php', 37, 'Y', 4),
(72, 'Editeaza meniuri', 'admin_meniuri.php', 6, 'Y', 6),
(73, 'MANAGER LIMBI', '#', 0, 'Y', 6),
(74, 'Editeaza traduceri', 'manager_limbi.php', 73, 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_camere`
--

CREATE TABLE IF NOT EXISTS `nelo_camere` (
  `room_ID` int(10) NOT NULL AUTO_INCREMENT,
  `roomtype_id` int(10) DEFAULT NULL,
  `room_no` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `capacity_id` int(10) DEFAULT NULL,
  `no_of_child` int(11) NOT NULL DEFAULT '0',
  `extra_bed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`room_ID`),
  KEY `roomtype_id` (`roomtype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `nelo_camere`
--

INSERT INTO `nelo_camere` (`room_ID`, `roomtype_id`, `room_no`, `capacity_id`, `no_of_child`, `extra_bed`) VALUES
(15, 2, '15', 4, 0, 0),
(16, 2, '16', 4, 0, 0),
(17, 2, '17', 4, 0, 0),
(18, 2, '18', 4, 0, 0),
(19, 2, '19', 4, 0, 0),
(20, 1, '20', 5, 0, 0),
(21, 1, '21', 5, 0, 0),
(22, 1, '22', 5, 0, 0),
(23, 1, '23', 5, 0, 0),
(24, 1, '24', 5, 0, 0),
(25, 1, '25', 5, 0, 0),
(26, 1, '26', 5, 0, 0),
(27, 3, '27', 6, 0, 0),
(28, 3, '28', 6, 0, 0),
(29, 3, '29', 6, 0, 0),
(30, 3, '30', 6, 0, 0),
(31, 3, '31', 6, 0, 0),
(32, 3, '32', 6, 0, 0),
(33, 3, '33', 6, 0, 0),
(34, 3, '34', 6, 0, 0),
(35, 1, '26', 8, 0, 0),
(37, 2, '37', 7, 0, 0),
(38, 2, '38', 7, 0, 0),
(39, 2, '39', 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_capacitate`
--

CREATE TABLE IF NOT EXISTS `nelo_capacitate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nelo_capacitate`
--

INSERT INTO `nelo_capacitate` (`id`, `title`, `capacity`) VALUES
(4, 'Doua persoane', 2),
(5, 'O persoana', 1),
(6, 'Matrimoniala', 2),
(7, 'Doua persoane - <font color="red">Overbooking</font>', 2),
(8, 'O persoana - <font color="red">Overbooking</font>', 1),
(9, 'Matrimoniala - <font color="red">Overbooking</font>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_clienti`
--

CREATE TABLE IF NOT EXISTS `nelo_clienti` (
  `client_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `surname` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `street_addr` text CHARACTER SET latin1,
  `city` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `province` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `zip` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `fax` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `additional_comments` text CHARACTER SET latin1,
  `ip` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `existing_client` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nelo_clienti`
--

INSERT INTO `nelo_clienti` (`client_id`, `first_name`, `surname`, `title`, `street_addr`, `city`, `province`, `zip`, `country`, `phone`, `fax`, `email`, `additional_comments`, `ip`, `existing_client`) VALUES
(1, 'Jicman', 'Gabriel', 'Dl.', 'Str. Clopotari', 'Iasi', 'Iasi', '700723', 'Romania', '06432432', '', 'ghostm3z@gmail.com', 'TEst', '::1', 1),
(2, 'Jicman', 'Gabriel', 'D-ra.', 'Strada Test', 'Iasi', 'Iasi', '700723', 'Romania', '0748952120', '', 'gabriel.jicman@gmail.com', 'Detalii', '::1', 1),
(3, 'sdadadas', 'dsadasdasda', 'Dl.', 'dasdadasdas', 'dadadas', 'dadasdasda', '312321321', 'dasdasdasda', '0743242342', '32132131321', 'frisca2004@yahoo.com', 'dasdasda', '::1', 1),
(4, 'sdadadas', 'dsadasdasda', 'Dl.', 'dadasdsadasdas', 'dadadas', 'dadasdasda', '1231312', 'dasdasdasda', '0723213232', '321312312312', 'bebitza_lau@yahoo.com', '', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_configurari`
--

CREATE TABLE IF NOT EXISTS `nelo_configurari` (
  `conf_id` int(11) NOT NULL AUTO_INCREMENT,
  `conf_key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `conf_value` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Configurarile generale ale hotelului' AUTO_INCREMENT=32 ;

--
-- Dumping data for table `nelo_configurari`
--

INSERT INTO `nelo_configurari` (`conf_id`, `conf_key`, `conf_value`) VALUES
(1, 'conf_hotel_name', 'neLo - Online Lodging'),
(2, 'conf_hotel_streetaddr', 'Strada Test, nr. 1'),
(3, 'conf_hotel_city', 'Iasi'),
(4, 'conf_hotel_state', 'Iasi'),
(5, 'conf_hotel_country', 'Romania'),
(6, 'conf_hotel_zipcode', '700723'),
(7, 'conf_hotel_phone', '+40 748 952 120'),
(8, 'conf_hotel_fax', ''),
(9, 'conf_hotel_email', 'ghostm3z@gmail.com'),
(13, 'conf_currency_symbol', 'lei'),
(14, 'conf_currency_code', 'LEI'),
(20, 'conf_tax_amount', '24'),
(21, 'conf_dateformat', 'dd/mm/yy'),
(22, 'conf_booking_exptime', '1000'),
(25, 'conf_enabled_deposit', '1'),
(26, 'conf_hotel_timezone', 'Africa/Cairo'),
(27, 'conf_booking_turn_off', '0'),
(28, 'conf_min_night_booking', '1'),
(30, 'conf_notification_email', 'ghostm3z@gmail.com'),
(31, 'conf_price_with_tax', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nelo_continut_mailuri`
--

CREATE TABLE IF NOT EXISTS `nelo_continut_mailuri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(500) CHARACTER SET latin1 NOT NULL,
  `email_subject` varchar(500) CHARACTER SET latin1 NOT NULL,
  `email_text` longtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nelo_continut_mailuri`
--

INSERT INTO `nelo_continut_mailuri` (`id`, `email_name`, `email_subject`, `email_text`) VALUES
(1, 'Confirmation Email', 'Email de confirmare', '<p><strong>Exemplu text de confirmare</strong></p>\r\n'),
(2, 'Cancellation Email ', 'Email de anulare', '<p><strong>Exemplu text de anulare</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nelo_facturare`
--

CREATE TABLE IF NOT EXISTS `nelo_facturare` (
  `booking_id` int(10) NOT NULL,
  `client_name` varchar(500) CHARACTER SET latin1 NOT NULL,
  `client_email` varchar(500) CHARACTER SET latin1 NOT NULL,
  `invoice` longtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nelo_facturare`
--

INSERT INTO `nelo_facturare` (`booking_id`, `client_name`, `client_email`, `invoice`) VALUES
(1401188744, 'Gabriel Jicman', 'ghostm3z@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detalii de rezervare</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1401188744</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Gabriel Jicman</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecare</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NopÅ£i totalÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Camere totalÄƒ</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">27/05/2014</td><td align="center" style="background:#ffffff;">30/05/2014</td><td align="center" style="background:#ffffff;">3</td><td align="center" style="background:#ffffff;">2</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camerÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tip de camerÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Max ocupare</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">2</td><td align="center" style="background:#ffffff;">Camera single (Capacitate camera single)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">7.00% din totalul general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Pay On Arival</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1401190172, 'Jicman Gabriel', 'gabriel.jicman@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1401190172</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Jicman Gabriel</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">28/05/2014</td><td align="center" style="background:#ffffff;">30/05/2014</td><td align="center" style="background:#ffffff;">2</td><td align="center" style="background:#ffffff;">1</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camerÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Max ocupare</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">1</td><td align="center" style="background:#ffffff;">Camera single (Capacitate camera single)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">7.00% din totalul general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Credit Card</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">NumÄƒrul cardului de credit</td><td align="left" style="background:#ffffff;">#####0285</td></tr></table>'),
(1401191712, 'Gabriel Jicman', 'ghostm3z@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1401191712</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Gabriel Jicman</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">28/05/2014</td><td align="center" style="background:#ffffff;">30/05/2014</td><td align="center" style="background:#ffffff;">2</td><td align="center" style="background:#ffffff;">1</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camerÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Max ocupare</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">1</td><td align="center" style="background:#ffffff;">Camera single (Capacitate camera single)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">7.00% din totalul general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402352804, 'Gabriel Jicman', 'ghostm3z@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402352804</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Gabriel Jicman</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">12/06/2014</td><td align="center" style="background:#ffffff;">21/06/2014</td><td align="center" style="background:#ffffff;">9</td><td align="center" style="background:#ffffff;">1</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camerÄƒ</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Max ocupare</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">1</td><td align="center" style="background:#ffffff;">Camera single (Capacitate camera single)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402413735, 'Jicman Gabriel', 'ghostm3z@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402413735</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Jicman Gabriel</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">01/07/2014</td><td align="center" style="background:#ffffff;">19/07/2014</td><td align="center" style="background:#ffffff;">18</td><td align="center" style="background:#ffffff;">7</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">7</td><td align="center" style="background:#ffffff;">Camera single (Single)</td><td align="center" style="background:#ffffff;">1 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">9.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402425466, 'Jicman Gabriel', 'gabriel.jicman@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402425466</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Jicman Gabriel</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">10/06/2014</td><td align="center" style="background:#ffffff;">13/06/2014</td><td align="center" style="background:#ffffff;">3</td><td align="center" style="background:#ffffff;">5</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">5</td><td align="center" style="background:#ffffff;">Camera double (Doua persoane)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402431149, 'Jicman Gabriel', 'ghostm3z@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402431149</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Jicman Gabriel</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">10/06/2014</td><td align="center" style="background:#ffffff;">14/06/2014</td><td align="center" style="background:#ffffff;">4</td><td align="center" style="background:#ffffff;">1</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">1</td><td align="center" style="background:#ffffff;">Camera matrimoniala (Matrimoniala)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402467046, 'Jicman Gabriel', 'gabriel.jicman@gmail.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402467046</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">Jicman Gabriel</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">12/06/2014</td><td align="center" style="background:#ffffff;">14/06/2014</td><td align="center" style="background:#ffffff;">2</td><td align="center" style="background:#ffffff;">7</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">7</td><td align="center" style="background:#ffffff;">Camera single (O persoana)</td><td align="center" style="background:#ffffff;">1 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei868.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei868.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei868.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei69.44</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402749089, 'dsadas dasdas', 'frisca2004@yahoo.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402749089</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">dsadas dasdas</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">18/06/2014</td><td align="center" style="background:#ffffff;">22/06/2014</td><td align="center" style="background:#ffffff;">4</td><td align="center" style="background:#ffffff;">7</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">7</td><td align="center" style="background:#ffffff;">Camera single (O persoana)</td><td align="center" style="background:#ffffff;">1 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei1,692.60</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei1,692.60</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei1,692.60</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei135.41</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402751352, 'sdadadas dsadasdasda', 'frisca2004@yahoo.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402751352</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">sdadadas dsadasdasda</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">18/06/2014</td><td align="center" style="background:#ffffff;">28/06/2014</td><td align="center" style="background:#ffffff;">10</td><td align="center" style="background:#ffffff;">1</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">1</td><td align="center" style="background:#ffffff;">Camera single (O persoana - Overbooking)</td><td align="center" style="background:#ffffff;">1 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402752447, 'dsadas dasdas', 'bebitza_lau@yahoo.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402752447</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">dsadas dasdas</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">18/06/2014</td><td align="center" style="background:#ffffff;">22/06/2014</td><td align="center" style="background:#ffffff;">4</td><td align="center" style="background:#ffffff;">7</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">7</td><td align="center" style="background:#ffffff;">Camera single (O persoana)</td><td align="center" style="background:#ffffff;">1 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei1,692.60</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei1,692.60</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei1,692.60</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei135.41</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>'),
(1402752633, 'sdadadas dsadasdasda', 'bebitza_lau@yahoo.com', '<table style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tbody><tr><td align="left" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;" colspan="4">Detaliile rezervarii</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">NumÄƒrul rezervÄƒrii</td><td align="left" style="background:#ffffff;" colspan="3">1402752633</td></tr>\r\n		<tr><td align="left" style="background:#ffffff;">Numele clientului</td><td align="left" style="background:#ffffff;" colspan="3">sdadadas dsadasdasda</td></tr>	\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data sosirii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Data plecarii</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. nopti</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. camere</td></tr>\r\n		<tr><td align="center" style="background:#ffffff;">18/06/2014</td><td align="center" style="background:#ffffff;">29/06/2014</td><td align="center" style="background:#ffffff;">11</td><td align="center" style="background:#ffffff;">5</td></tr>\r\n		<tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4">&nbsp;</td></tr>\r\n		<tr><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">NumÄƒrul de camere</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Tipul camerei</td><td align="center" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Nr. maxim de persoane</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Total brut</td></tr><tr><td align="center" style="background:#ffffff;">5</td><td align="center" style="background:#ffffff;">Camera double (Doua persoane)</td><td align="center" style="background:#ffffff;">2 AdulÅ£i</td><td align="right" style="background:#ffffff;">lei0.00</td></tr><tr height="8px;"><td align="left" style="background:#ffffff;" colspan="4"></td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Sub Total</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Totalul general</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr><tr><td colspan="3" align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Plata Ã®n avans(<span style="font-size: 10px;">8.00% din totalul platii general</span>)</td><td align="right" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">lei0.00</td></tr></tbody></table><br /><table  style="font-family:Verdana, Geneva, sans-serif; font-size: 12px; background:#999999; width:700px; border:none;" cellpadding="4" cellspacing="1"><tr><td align="left" colspan="2" style="font-weight:bold; font-variant:small-caps; background:#eeeeee;">Detalii platÄƒ</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps;background:#ffffff;">OpÅ£iune de platÄƒ</td><td align="left" style="background:#ffffff;">Manual: Plata la livrare</td></tr><tr><td align="left" width="30%" style="font-weight:bold; font-variant:small-caps; background:#ffffff;">TranzacÅ£ie ID</td><td align="left" style="background:#ffffff;">NA</td></tr></table>');

-- --------------------------------------------------------

--
-- Table structure for table `nelo_informatii_cc`
--

CREATE TABLE IF NOT EXISTS `nelo_informatii_cc` (
  `booking_id` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cardholder_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `card_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `card_number` blob NOT NULL,
  `expiry_date` varchar(10) CHARACTER SET latin1 NOT NULL,
  `ccv2_no` int(4) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nelo_informatii_cc`
--

INSERT INTO `nelo_informatii_cc` (`booking_id`, `cardholder_name`, `card_type`, `card_number`, `expiry_date`, `ccv2_no`) VALUES
('1401190172', 'Jicman Gabriel', 'Visa', 0xde311c2fd1759d6eee747501c1f0b66e448e, '23/13', 2322);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_language`
--

CREATE TABLE IF NOT EXISTS `nelo_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_title` varchar(255) NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `lang_file` varchar(255) NOT NULL,
  `lang_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `nelo_language`
--

INSERT INTO `nelo_language` (`id`, `lang_title`, `lang_code`, `lang_file`, `lang_default`) VALUES
(1, 'English', 'en', 'english.php', 0),
(15, 'Romana', 'ro', 'romanian.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_metode_plata`
--

CREATE TABLE IF NOT EXISTS `nelo_metode_plata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gateway_code` varchar(50) CHARACTER SET latin1 NOT NULL,
  `account` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nelo_metode_plata`
--

INSERT INTO `nelo_metode_plata` (`id`, `gateway_name`, `gateway_code`, `account`, `enabled`) VALUES
(1, 'Paypal', 'pp', 'gabriel_jicman@yahoo.com', 1),
(2, 'Plata la livrare', 'poa', NULL, 1),
(3, 'Carte de credit', 'cc', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_monezi`
--

CREATE TABLE IF NOT EXISTS `nelo_monezi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbl` varchar(10) NOT NULL,
  `exchange_rate` decimal(20,6) NOT NULL,
  `default_c` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nelo_monezi`
--

INSERT INTO `nelo_monezi` (`id`, `currency_code`, `currency_symbl`, `exchange_rate`, `default_c`) VALUES
(1, 'RON', 'LEI', '1.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_oferte_speciale`
--

CREATE TABLE IF NOT EXISTS `nelo_oferte_speciale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `room_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price_deduc` decimal(10,2) NOT NULL,
  `min_stay` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nelo_planuri_tarifare`
--

CREATE TABLE IF NOT EXISTS `nelo_planuri_tarifare` (
  `plan_id` int(10) NOT NULL AUTO_INCREMENT,
  `roomtype_id` int(10) DEFAULT NULL,
  `capacity_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sun` decimal(10,2) DEFAULT '0.00',
  `mon` decimal(10,2) DEFAULT '0.00',
  `tue` decimal(10,2) DEFAULT '0.00',
  `wed` decimal(10,2) DEFAULT '0.00',
  `thu` decimal(10,2) DEFAULT '0.00',
  `fri` decimal(10,2) DEFAULT '0.00',
  `sat` decimal(10,2) DEFAULT '0.00',
  `default_plan` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plan_id`),
  KEY `priceplan` (`roomtype_id`,`capacity_id`,`start_date`,`end_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `nelo_planuri_tarifare`
--

INSERT INTO `nelo_planuri_tarifare` (`plan_id`, `roomtype_id`, `capacity_id`, `start_date`, `end_date`, `sun`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `default_plan`) VALUES
(11, 1, 4, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(12, 2, 4, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(13, 3, 4, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(14, 1, 5, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(15, 2, 5, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(16, 3, 5, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(17, 1, 6, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(18, 2, 6, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(19, 3, 6, '0000-00-00', '0000-00-00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1),
(20, 1, 4, '2014-06-10', '2014-07-31', '45.00', '50.00', '50.00', '50.00', '50.00', '50.00', '50.00', 0),
(21, 1, 5, '2014-06-10', '2014-07-31', '45.00', '50.00', '50.00', '50.00', '50.00', '50.00', '45.00', 0),
(22, 1, 6, '2014-06-10', '2014-07-31', '45.00', '50.00', '50.00', '50.00', '50.00', '50.00', '50.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_plati_avansate`
--

CREATE TABLE IF NOT EXISTS `nelo_plati_avansate` (
  `month_num` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) CHARACTER SET latin1 NOT NULL,
  `deposit_percent` decimal(10,2) NOT NULL,
  PRIMARY KEY (`month_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `nelo_plati_avansate`
--

INSERT INTO `nelo_plati_avansate` (`month_num`, `month`, `deposit_percent`) VALUES
(1, 'January', '3.00'),
(2, 'February', '4.00'),
(3, 'March', '5.00'),
(4, 'April', '6.00'),
(5, 'May', '7.00'),
(6, 'June', '8.00'),
(7, 'July', '9.00'),
(8, 'August', '10.00'),
(9, 'September', '11.00'),
(10, 'October', '12.00'),
(11, 'November', '13.00'),
(12, 'December', '14.00');

-- --------------------------------------------------------

--
-- Table structure for table `nelo_rezervari`
--

CREATE TABLE IF NOT EXISTS `nelo_rezervari` (
  `booking_id` int(10) unsigned NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `client_id` int(10) unsigned DEFAULT NULL,
  `child_count` int(2) NOT NULL DEFAULT '0',
  `extra_guest_count` int(2) NOT NULL DEFAULT '0',
  `discount_coupon` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `total_cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `payment_success` tinyint(1) NOT NULL DEFAULT '0',
  `payment_txnid` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `paypal_email` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `special_id` int(10) unsigned NOT NULL DEFAULT '0',
  `special_requests` text CHARACTER SET latin1,
  `is_block` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `block_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `booking_time` (`discount_coupon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nelo_rezervari`
--

INSERT INTO `nelo_rezervari` (`booking_id`, `booking_time`, `start_date`, `end_date`, `client_id`, `child_count`, `extra_guest_count`, `discount_coupon`, `total_cost`, `payment_amount`, `payment_type`, `payment_success`, `payment_txnid`, `paypal_email`, `special_id`, `special_requests`, `is_block`, `is_deleted`, `block_name`) VALUES
(1401188744, '2014-05-27 14:05:44', '2014-05-27', '2014-05-30', 1, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'Vreau si o camera cu vedere la ocean.', 0, 1, NULL),
(1401190172, '2014-05-27 14:29:32', '2014-05-28', '2014-05-30', 2, 0, 0, NULL, '0.00', '0.00', 'cc', 1, NULL, NULL, 0, 'Test', 0, 1, NULL),
(1401191712, '2014-05-27 14:55:12', '2014-05-28', '2014-05-30', 1, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, '', 0, 1, NULL),
(1402352804, '2014-06-10 01:26:44', '2014-06-12', '2014-06-21', 1, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'Test', 0, 1, NULL),
(1402413735, '2014-06-10 18:22:16', '2014-07-01', '2014-07-19', 1, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'test', 0, 1, NULL),
(1402425466, '2014-06-10 21:37:46', '2014-06-10', '2014-06-13', 2, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'Vreau un elefant.', 0, 1, NULL),
(1402431149, '2014-06-10 23:12:29', '2014-06-10', '2014-06-14', 1, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'TEst', 0, 0, NULL),
(1402467046, '2014-06-11 09:10:46', '2014-06-12', '2014-06-14', 2, 0, 0, NULL, '868.00', '69.44', 'poa', 1, NULL, NULL, 0, 'Detalii', 0, 1, NULL),
(1402749089, '2014-06-14 15:31:29', '2014-06-18', '2014-06-22', 3, 0, 0, NULL, '1692.60', '135.41', 'poa', 1, NULL, NULL, 0, 'eqwewqeqw', 0, 1, NULL),
(1402751352, '2014-06-14 16:09:12', '2014-06-18', '2014-06-28', 3, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, 'dasdasda', 0, 1, NULL),
(1402752447, '2014-06-14 16:27:27', '2014-06-18', '2014-06-22', 4, 0, 0, NULL, '1692.60', '135.41', 'poa', 1, NULL, NULL, 0, '', 0, 0, NULL),
(1402752633, '2014-06-14 16:30:33', '2014-06-18', '2014-06-29', 4, 0, 0, NULL, '0.00', '0.00', 'poa', 1, NULL, NULL, 0, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_rezervari_site`
--

CREATE TABLE IF NOT EXISTS `nelo_rezervari_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookings_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `nelo_rezervari_site`
--

INSERT INTO `nelo_rezervari_site` (`id`, `bookings_id`, `room_id`, `room_type_id`) VALUES
(1, 1401188744, 4, 1),
(2, 1401188744, 5, 1),
(3, 1401190172, 4, 1),
(4, 1401191712, 5, 1),
(6, 1402352804, 4, 1),
(7, 1402413735, 20, 1),
(8, 1402413735, 21, 1),
(9, 1402413735, 22, 1),
(10, 1402413735, 23, 1),
(11, 1402413735, 24, 1),
(12, 1402413735, 25, 1),
(13, 1402413735, 26, 1),
(14, 1402425466, 15, 2),
(15, 1402425466, 16, 2),
(16, 1402425466, 17, 2),
(17, 1402425466, 18, 2),
(18, 1402425466, 19, 2),
(20, 1402431149, 28, 3),
(21, 1402467046, 20, 1),
(22, 1402467046, 21, 1),
(23, 1402467046, 22, 1),
(24, 1402467046, 23, 1),
(25, 1402467046, 24, 1),
(26, 1402467046, 25, 1),
(27, 1402467046, 26, 1),
(28, 1402749089, 20, 1),
(29, 1402749089, 21, 1),
(30, 1402749089, 22, 1),
(31, 1402749089, 23, 1),
(32, 1402749089, 24, 1),
(33, 1402749089, 25, 1),
(34, 1402749089, 26, 1),
(35, 1402751352, 35, 1),
(36, 1402752447, 20, 1),
(37, 1402752447, 21, 1),
(38, 1402752447, 22, 1),
(39, 1402752447, 23, 1),
(40, 1402752447, 24, 1),
(41, 1402752447, 25, 1),
(42, 1402752447, 26, 1),
(43, 1402752633, 15, 2),
(44, 1402752633, 16, 2),
(45, 1402752633, 17, 2),
(46, 1402752633, 18, 2),
(47, 1402752633, 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nelo_tip_camera`
--

CREATE TABLE IF NOT EXISTS `nelo_tip_camera` (
  `roomtype_ID` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `img` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`roomtype_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nelo_tip_camera`
--

INSERT INTO `nelo_tip_camera` (`roomtype_ID`, `type_name`, `description`, `img`) VALUES
(1, 'Camera single', NULL, ''),
(2, 'Camera double', NULL, ''),
(3, 'Camera matrimoniala', NULL, NULL);
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"altceva","table":"nelo_capacitate"},{"db":"altceva","table":"nelo_camere"},{"db":"altceva","table":"nelo_tip_camera"},{"db":"altceva","table":"nelo_rezervari_site"},{"db":"altceva","table":"nelo_rezervari"},{"db":"altceva","table":"nelo_admin"},{"db":"altceva","table":"nelo_adminmenu"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'altceva', 'nelo_camere', '{"sorted_col":"`capacity_id` ASC"}', '2014-06-14 13:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-06-14 06:56:14', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
