-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 09:11 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deadtime`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciscoincidents`
--

CREATE TABLE `ciscoincidents` (
  `id_inc` int(11) NOT NULL,
  `inc_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_name` varchar(50) NOT NULL,
  `inc_number` varchar(15) NOT NULL,
  `inc_description` varchar(200) NOT NULL,
  `inc_owner` varchar(20) NOT NULL,
  `inc_date_closed` date NOT NULL,
  `comments` varchar(100) NOT NULL,
  `elapsed_time` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciscoincidents`
--

INSERT INTO `ciscoincidents` (`id_inc`, `inc_date`, `User_name`, `inc_number`, `inc_description`, `inc_owner`, `inc_date_closed`, `comments`, `elapsed_time`) VALUES
(1, '2019-04-25 08:16:55', 'Antonio Carrillo', '092493LCMN', 'problemas con el script', 'Default', '0000-00-00', 'stardust se cicla ', 0),
(2, '2019-04-25 08:18:02', 'Antonio Carrillo', '092493LCMN', 'problemas con el script', 'Default', '0000-00-00', 'prueba 2', 0),
(3, '2019-04-25 08:22:20', 'Antonio Carrillo', '092493LCMN', 'problemas con el script', 'Default', '0000-00-00', 'prueba3', 0),
(4, '2019-04-25 08:23:39', 'Antonio Carrillo', '092493LCMN', 'problemas con el script', 'Default', '0000-00-00', 'prueba3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `Issue_id` int(100) NOT NULL,
  `Issue_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_name` varchar(30) NOT NULL,
  `Production_line` varchar(35) NOT NULL,
  `Station_name` varchar(35) NOT NULL,
  `Station_Number` int(5) NOT NULL,
  `Cell_number` int(30) NOT NULL,
  `Issue_name` varchar(35) NOT NULL,
  `Issue_solution` varchar(35) NOT NULL,
  `Repaired_time` int(50) NOT NULL,
  `Issue_comment` varchar(100) NOT NULL,
  `Station_Stopped` varchar(5) NOT NULL,
  `Issue_status` varchar(25) NOT NULL,
  `Station_id` int(100) NOT NULL,
  `Nomenclature` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`Issue_id`, `Issue_date`, `User_name`, `Production_line`, `Station_name`, `Station_Number`, `Cell_number`, `Issue_name`, `Issue_solution`, `Repaired_time`, `Issue_comment`, `Station_Stopped`, `Issue_status`, `Station_id`, `Nomenclature`) VALUES
(1, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 2, 'Port Status', 'Fail Cell', 25, '', 'No', 'Closed', 2, 'NyquistBST'),
(2, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 3, 'Port Status', 'Fail Cell', 14, '', 'No', 'Closed', 2, 'NyquistBST'),
(3, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 12, 'Port Status', 'Patch Cord Repaired', 40, '', 'No', 'Closed', 2, 'NyquistBST'),
(4, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 0, 'Port Status', 'Cables revision', 15, '', 'No', 'Closed', 2, 'NyquistBST'),
(5, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 0, 'Port Status', 'Cables revision', 15, '', 'No', 'Closed', 2, 'NyquistBST'),
(6, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 3, 0, 'Port Status', 'Cables revision', 15, '', 'No', 'Closed', 2, 'NyquistBST'),
(7, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 20, 14, 'Port Status', 'Reset POE', 25, '', 'No', 'Closed', 2, 'NyquistBST'),
(8, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 19, 6, 'Port Status', 'Patch Cord Repaired', 45, '', 'No', 'Closed', 2, 'NyquistBST'),
(9, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 33, 'Stack Cable', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(10, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 6, 45, 'Mecanic Fail', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(11, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 7, 47, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(12, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 8, 20, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(13, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 10, 38, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(14, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 9, 21, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(15, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 5, 14, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(16, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 2, 15, 'No Power On Com', '', 0, '', 'No', 'Closed', 3, 'Nyquist2C'),
(17, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 11, 13, 'No Power On Com', 'Stack Cable bad connection', 10, '', 'No', 'Closed', 3, 'Nyquist2C'),
(18, '2019-03-22 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 18, 6, 'Port Status', 'Patch Cord Repaired', 35, '', 'No', 'Closed', 2, 'NyquistBST'),
(19, '2019-03-22 00:00:00', 'Luis Manriquez', 'Porter', 'BST', 6, 0, 'Several fails', 'Station Restarted', 15, '', 'Yes', 'Closed', 12, 'PorterBST'),
(20, '2019-03-22 00:00:00', 'Luis Manriquez', 'Porter', 'ARCADIA', 0, 0, 'Label', 'Adjusted configuration to printer', 15, '', 'Yes', 'Closed', 19, 'PorterARCADIA'),
(21, '2019-03-25 00:00:00', 'Luis Manriquez', 'Nyquist', 'U-BST', 19, 6, 'Port', 'stack reparado', 240, 'Port 29,30,43 and 44', 'Yes', 'closed', 9, 'NyquistU-BST'),
(22, '2019-03-25 00:00:00', 'Luis Manriquez', 'Nyquist', 'BDL', 7, 0, 'Fans', 'turn on manually', 6, '', 'yes', 'Closed', 1, 'NyquistBDL'),
(23, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 10, 'Port', 'Reset POE', 20, 'Port 25 to 28', 'No', 'Closed', 2, 'NyquistBST'),
(24, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 7, 'Port', 'Connector RJ45 replaced', 15, 'Port 34', 'No', 'Closed', 2, 'NyquistBST'),
(25, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 3, 'Port', 'connectors replaced', 30, 'Port 47 to 48', 'no', 'Closed', 2, 'NyquistBST'),
(26, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 13, 'No Power On Com', '', 45, '', 'no', 'Closed', 3, 'Nyquist2C'),
(27, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 33, 'Stack Cable', '', 10, '', 'no', 'Closed', 3, 'Nyquist2C'),
(28, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 3, 10, 'No Power On Com', 'Fusible damaged in Cell', 10, '', 'no', 'Closed', 3, 'Nyquist2C'),
(29, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 8, 8, 'Mecanic Fail', 'Fixtura de stacks', 120, '', 'no', 'Closed', 3, 'Nyquist2C'),
(30, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 10, 38, 'No Power On Com', '', 15, '', 'no', 'Closed', 3, 'Nyquist2C'),
(31, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 10, 33, 'Mecanic Fail', 'Fixtura de stacks', 120, '', 'no', 'Closed', 3, 'Nyquist2C'),
(32, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 11, 17, 'Boot Stardust', 'Ac connector removed', 30, '', 'no', 'Closed', 3, 'Nyquist2C'),
(33, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 13, 32, 'No Power On Com', '', 18, '', 'no', 'Closed', 3, 'Nyquist2C'),
(34, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 7, 41, 'Stack Cable', 'Fixtura de stacks', 30, '', 'no', 'Closed', 3, 'Nyquist2C'),
(35, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 14, 'Comunication', 'stack reparado', 10, '', 'no', 'closed', 2, 'NyquistBST'),
(36, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 19, 3, 'Port Status', 'intermitent', 14, '', 'no', 'Closed', 2, 'NyquistBST'),
(37, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 13, 'Port', 'RJ45 connector replaced', 45, 'Port 23', 'no', 'Closed', 2, 'NyquistBST'),
(38, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 13, 'Port Status', 'intermitent cable 100 mts', 14, '', 'Yes', 'Closed', 2, 'NyquistBST'),
(39, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 15, 'Port Status', 'intermitent cable 100 mts', 30, '', 'Yes', 'Closed', 2, 'NyquistBST'),
(40, '2019-03-26 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 18, '48 Voltsdc', 'POE Replaced', 90, '', 'Yes', 'Closed', 2, 'NyquistBST'),
(41, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 20, 4, 'Port', 'Stack', 30, '14,24', 'No', 'Closed', 2, 'NyquistBST'),
(42, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 3, 5, 'Port', '', 48, '', 'No', 'Closed', 2, 'NyquistBST'),
(43, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 2, 1, 'Patch cord', 'Repaired', 13, '', 'No', 'Closed', 2, 'NyquistBST'),
(44, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 1, 8, 'Port', '', 64, '17', 'No', 'Closed', 2, 'NyquistBST'),
(45, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 2, 'LB Equipment', '', 97, '', 'No', 'Closed', 3, 'Nyquist2C'),
(46, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 40, 'Comunication', 'Cable consola', 20, '', 'No', 'closed', 3, 'Nyquist2C'),
(47, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 41, 'Comunication', 'power cycle', 45, 'comentario de prueba', 'No', 'closed', 3, 'Nyquist2C'),
(48, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 42, 'Comunication', 'prueba starbucks', 50, '', 'No', 'closed', 3, 'Nyquist2C'),
(49, '2019-03-27 00:00:00', 'Luis Manriquez', 'Gladiator', '2C', 1, 43, 'Comunication', 'prueba starbucks 2', 70, '', 'No', 'closed', 38, 'Gladiator2C'),
(50, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 1, 44, 'Comunication', 'cambio cables', 30, '', 'No', 'closed', 3, 'Nyquist2C'),
(51, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 3, 11, 'Stack Cable', 'cable consola', 10, '', 'No', 'closed', 3, 'Nyquist2C'),
(52, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 10, 14, 'Power on', '', 55, '', 'No', 'Closed', 3, 'Nyquist2C'),
(53, '2019-03-27 00:00:00', 'Luis Manriquez', 'Nyquist', '2C', 13, 15, 'Power on', '', 12, '', 'No', 'Closed', 3, 'Nyquist2C'),
(54, '2019-03-28 00:00:00', 'Luis Manriquez', 'Porter', 'ASSY', 4, 6, 'Stopped', '', 20, '', 'No', 'Closed', 14, 'PorterASSY'),
(55, '2019-03-29 00:00:00', 'Luis Manriquez', 'Nyquist', 'BST', 19, 3, 'Fail Cell', 'Verified', 0, '', 'No', 'opened', 2, 'NyquistBST'),
(56, '2019-04-22 14:59:18', 'Luis Manriquez', 'Nyquist', 'BST', 11, 0, '', 'cable consola reparado', 35, 'kkkk', '', '', 2, 'NyquistBST'),
(57, '2019-04-22 15:52:43', 'Luis Manriquez', 'Nyquist', 'BST', 12, 12, '', 'stack reparado', 35, 'fesf', 'si', 'opened', 2, 'NyquistBST'),
(58, '2019-04-23 10:55:00', 'Luis Manriquez', 'Nyquist', '2C', 12, 13, 'stack', 'stack reparado', 20, 'prueba 092493', 'si', 'opened', 3, 'Nyquist2C'),
(59, '2019-04-23 12:33:49', 'Alejandro Castillo', 'Nyquist', '2C', 12, 13, 'stack', 'stack reparado', 10, 'hola eilex', 'no', 'opened', 3, 'Nyquist2C'),
(60, '2019-04-23 13:09:55', 'Jose Antonio Chairez Garcia', 'Adelphi', 'ASSY', 12, 13, 'stack', 'cable remplazado', 35, 'hola cheirs', 'si', 'opened', 20, 'AdelphiASSY'),
(61, '2019-04-23 20:32:33', 'Beto ', 'Gladiator', 'HIPOT', 5, 0, 'stack', 'stack reparado', 35, 'interlingua', 'si', 'closed', 41, 'GladiatorHIPOT'),
(62, '2019-04-23 20:33:27', 'Beto ', 'Porter', 'ARCADIA', 7, 2, 'stack', 'Stack prueba 1', 20, 'aaa', 'si', 'opened', 19, 'PorterARCADIA'),
(63, '2019-04-24 20:52:02', 'Jose Antonio Chairez Garcia', 'Nyquist', '2C', 1, 0, 'stack', 'cabio de cables', 20, 'se esta trabajando en la solucion!', 'no', 'opened', 3, 'Nyquist2C'),
(64, '2019-04-24 21:27:49', 'Beto ', 'Nyquist', '2C', 2, 0, 'stack', '', 35, '', 'no', 'closed', 3, 'Nyquist2C'),
(65, '2019-04-24 21:28:46', 'Beto ', 'G48', 'ASSY', 2, 0, 'stack', 'prueba 2', 10, '', 'no', 'closed', 48, 'G48ASSY'),
(66, '2019-04-25 00:03:40', 'Alejandro Castillo', 'Porter', 'ARCADIA', 1, 1, 'stack', 'remplazo cable stack', 35, '', 'si', 'closed', 19, 'PorterARCADIA'),
(67, '2019-04-25 00:35:28', 'Antonio Carrillo', 'Nyquist', '2C', 2, 0, 'stack', '', 0, '', 'si', 'opened', 3, 'Nyquist2C');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `Station_id` int(100) NOT NULL,
  `Station_model` varchar(35) NOT NULL,
  `Station_name` varchar(35) NOT NULL,
  `Station_BU` varchar(35) NOT NULL,
  `Id_user` int(10) NOT NULL,
  `Second_Shift` int(10) NOT NULL,
  `Third_Shift` int(10) NOT NULL,
  `Nomenclature` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`Station_id`, `Station_model`, `Station_name`, `Station_BU`, `Id_user`, `Second_Shift`, `Third_Shift`, `Nomenclature`) VALUES
(1, 'Nyquist', 'BDL', 'PCEBA', 59593, 30457, 0, 'NyquistBDL'),
(2, 'Nyquist', 'BST', 'PCEBA', 59593, 30457, 0, 'NyquistBST'),
(3, 'Nyquist', '2C', 'PCEBA', 59593, 30457, 0, 'Nyquist2C'),
(4, 'Nyquist', 'ASSY', 'Integration', 59272, 30457, 0, 'NyquistASSY'),
(5, 'Nyquist', 'RFID', 'Integration', 59272, 30457, 0, 'NyquistRFID'),
(6, 'Nyquist', 'FST', 'Integration', 59272, 30457, 0, 'NyquistFST'),
(7, 'Nyquist', 'HIPOT', 'Integration', 59272, 30457, 0, 'NyquistHIPOT'),
(8, 'Nyquist', 'ORT', 'Integration', 59272, 30457, 0, 'NyquistORT'),
(9, 'Nyquist', 'U-BST', 'PCEBA', 24742, 30457, 0, 'NyquistU-BST'),
(10, 'Nyquist', 'U-2C', 'PCEBA', 24742, 30457, 0, 'NyquistU-2C'),
(11, 'Nyquist', 'U-FQA', 'Integration', 59272, 30457, 0, 'NyquistU-FQA'),
(12, 'Porter', 'BST', 'PCEBA', 24742, 30457, 0, 'PorterBST'),
(13, 'Porter', '2C', 'PCEBA', 24742, 30457, 0, 'Porter2C'),
(14, 'Porter', 'ASSY', 'Integration', 59272, 30457, 0, 'PorterASSY'),
(15, 'Porter', 'FST', 'Integration', 59272, 30457, 0, 'PorterFST'),
(16, 'Porter', 'HIPOT', 'Integration', 59272, 30457, 0, 'PorterHIPOT'),
(17, 'Porter', 'FQA', 'Integration', 59272, 30457, 0, 'PorterFQA'),
(18, 'Porter', 'ORT', 'Integration', 59272, 30457, 0, 'PorterORT'),
(19, 'Porter', 'ARCADIA', 'PCEBA', 24742, 30457, 0, 'PorterARCADIA'),
(20, 'Adelphi', 'ASSY', 'PCEBA', 59272, 30457, 0, 'AdelphiASSY'),
(21, 'Adelphi', 'P2C', 'PCEBA', 24742, 30457, 0, 'AdelphiP2C'),
(22, 'Adelphi', '2C', 'PCEBA', 24742, 30457, 0, 'Adelphi2C'),
(23, 'Adelphi', 'RFID', 'Integration', 59272, 30457, 0, 'AdelphiRFID'),
(24, 'Adelphi', 'SNT', 'Integration', 59272, 30457, 0, 'AdelphiSNT'),
(25, 'Adelphi', 'ORT', 'Integration', 59272, 30457, 0, 'AdelphiORT'),
(26, 'Adelphi', 'FRU-P2C', 'PCEBA', 59593, 30457, 0, 'AdelphiFRU-P2C'),
(27, 'Adelphi', 'FRU-2C', 'PCEBA', 59593, 30457, 0, 'AdelphiFRU-2C'),
(28, 'Newton', 'BST', 'PCEBA', 59593, 30457, 0, 'NewtonBST'),
(29, 'Newton', '2C', 'PCEBA', 59593, 30457, 0, 'Newton2C'),
(30, 'Newton', 'ASSY', 'Integration', 59272, 30457, 0, 'NewtonASSY'),
(31, 'Newton', 'FST', 'Integration', 59272, 30457, 0, 'NewtonFST'),
(32, 'Newton', 'HIPOT', 'Integration', 59272, 30457, 0, 'NewtonHIPOT'),
(33, 'Newton', 'ORT', 'Integration', 59272, 30457, 0, 'NewtonORT'),
(34, 'Newton', 'U-BST', 'PCEBA', 24742, 30457, 0, 'NewtonU-BST'),
(35, 'Newton', 'U-2C', 'PCEBA', 24742, 30457, 0, 'NewtonU-2C'),
(36, 'Newton', 'U-FQA', 'Integration', 59272, 30457, 0, 'NewtonU-FQA'),
(37, 'Gladiator', 'BST', 'PCEBA', 59593, 30457, 0, 'GladiatorBST'),
(38, 'Gladiator', '2C', 'PCEBA', 59593, 30457, 0, 'Gladiator2C'),
(39, 'Gladiator', 'ASSY', 'Integration', 59272, 30457, 0, 'GladiatorASSY'),
(40, 'Gladiator', 'FST', 'Integration', 59272, 30457, 0, 'GladiatorFST'),
(41, 'Gladiator', 'HIPOT', 'Integration', 59272, 30457, 0, 'GladiatorHIPOT'),
(42, 'Gladiator', 'ORT', 'Integration', 59272, 30457, 0, 'GladiatorORT'),
(43, 'Gladiator', 'U-BST', 'PCEBA', 24742, 30457, 0, 'GladiatorU-BST'),
(44, 'Gladiator', 'U-2C', 'PCEBA', 24742, 30457, 0, 'GladiatorU-2C'),
(45, 'Gladiator', 'U-FQA', 'Integration', 59272, 30457, 0, 'GladiatorU-FQA'),
(46, 'G48', 'BST', 'PCEBA', 59593, 30457, 0, 'G48BST'),
(47, 'G48', '2C', 'PCEBA', 59593, 30457, 0, 'G482C'),
(48, 'G48', 'ASSY', 'Integration', 59272, 30457, 0, 'G48ASSY'),
(49, 'G48', 'FST', 'Integration', 59272, 30457, 0, 'G48FST'),
(50, 'G48', 'HIPOT', 'Integration', 59272, 30457, 0, 'G48HIPOT'),
(51, 'G48', 'ORT', 'Integration', 59272, 30457, 0, 'G48ORT'),
(52, 'Planck', 'BST', 'PCEBA', 59593, 30457, 0, 'PlanckBST'),
(53, 'Planck', '2C', 'PCEBA', 59593, 30457, 0, 'Planck2C'),
(54, 'Planck', 'ASSY', 'Integration', 59272, 30457, 0, 'PlanckASSY'),
(55, 'Planck', 'FST', 'Integration', 59272, 30457, 0, 'PlanckFST'),
(56, 'Planck', 'HIPOT', 'Integration', 59272, 30457, 0, 'PlanckHIPOT'),
(57, 'Planck', 'ORT', 'Integration', 59272, 30457, 0, 'PlanckORT'),
(58, 'Planck', 'U-BST', 'PCEBA', 24742, 30457, 0, 'PlanckU-BST'),
(59, 'Planck', 'U-2C', 'PCEBA', 24742, 30457, 0, 'PlanckU-2C'),
(60, 'Planck', 'U-FQA', 'Integration', 59272, 30457, 0, 'PlanckU-FQA'),
(61, 'Orsted', 'BST', 'PCEBA', 59593, 30457, 0, 'OrstedBST'),
(62, 'Orsted', '2C', 'PCEBA', 59593, 30457, 0, 'Orsted2C'),
(63, 'Orsted', 'ASSY', 'Integration', 59272, 30457, 0, 'OrstedASSY'),
(64, 'Orsted', 'FST', 'Integration', 59272, 30457, 0, 'OrstedFST'),
(65, 'Orsted', 'HIPOT', 'Integration', 59272, 30457, 0, 'OrstedHIPOT'),
(66, 'Orsted', 'ORT', 'Integration', 59272, 30457, 0, 'OrstedORT'),
(67, 'Orsted', 'U-BST', 'PCEBA', 24742, 30457, 0, 'OrstedU-BST'),
(68, 'Orsted', 'U-2C', 'PCEBA', 24742, 30457, 0, 'OrstedU-2C'),
(69, 'Orsted', 'U-FQA', 'Integration', 59272, 30457, 0, 'OrstedU-FQA');

-- --------------------------------------------------------

--
-- Table structure for table `ucs_list`
--

CREATE TABLE `ucs_list` (
  `id_ucs` int(11) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `ucs_line` varchar(15) NOT NULL,
  `ucs_esxihost` varchar(15) NOT NULL,
  `ucs_serialnumber` varchar(20) NOT NULL,
  `ucs_ipaddress` varchar(15) NOT NULL,
  `ucs_macaddress` varchar(20) NOT NULL,
  `ucs_rfid` text NOT NULL,
  `station_model` varchar(35) NOT NULL,
  `station_name` varchar(35) NOT NULL,
  `station_id` int(100) NOT NULL,
  `comments` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucs_list`
--

INSERT INTO `ucs_list` (`id_ucs`, `User_name`, `ucs_line`, `ucs_esxihost`, `ucs_serialnumber`, `ucs_ipaddress`, `ucs_macaddress`, `ucs_rfid`, `station_model`, `station_name`, `station_id`, `comments`) VALUES
(1, '', 'PCBA', 'FJZUDF25', 'FCH2124V3A6', '10.225.188.111', 'A0239FED6810', '', 'Porter', 'BST', 12, ''),
(2, '', 'PCBA', 'FJZUPCBA2', 'FCH2124V3QA', '10.225.188.116', '188090F7A322', '', 'Porter', 'BST', 12, 'ARCADIA'),
(3, '', 'PCBA', 'FJZUDF38', 'FCH1911V29E', '10.225.188.19', 'B0AA7796BC72', '', 'Porter', 'BST', 12, 'ARCADIA'),
(4, '', 'PCBA', 'FJZUDF37', 'FCH1912V0AY', '10.225.188.20', 'B0AA779696D4', '', 'Porter', 'BST', 12, ''),
(5, '', 'PCBA', 'FJZUDF39', 'FCH1813V0GX', '10.225.189.140', 'D072DCA0AA7A', '', 'Porter', 'BST', 12, ''),
(6, '', 'PCBA', 'FJZUPCBA3', 'FCH2124V3NP', '10.225.188.114', 'A0239FEDC622', '', 'Porter', '2C', 13, ''),
(7, '', 'PCBA', 'FJZUDF25', 'FCH2124V3PY', '10.225.188.30', 'A0239FEDC4BA', '', 'Porter', '2C', 13, ''),
(8, '', 'PCBA', 'FJZUPCBA4', '', '10.225.190.201', '', '', 'Porter', '2C', 13, 'TAA, BAJA'),
(9, '', 'DF', 'FJZUDF27', 'FCH1912V061', '10.225.188.152', 'B0AA7796B990', '', 'Porter', 'ASSY', 14, ''),
(10, '', 'DF', 'FJZUDF26', 'FCH2124V3NR', '10.225.188.112', '188090F7A310', '', 'Porter', 'FST', 15, ''),
(11, '', 'DF', 'FJZUDF35', 'FCH2124V3KQ', '10.225.188.31', 'A0239FED62A6', '', 'Porter', 'FST', 15, ''),
(12, '', 'DF', 'FJZUDF32', 'FCH1912V09J', '10.225.188.123', 'B0AA7796CE78', '', 'Porter', 'HIPOT', 16, ''),
(13, '', 'DF', 'FJZUDF31', 'FCH1912V065', '10.225.188.122', 'B0AA7796BB4C', '', 'Porter', 'FQA', 17, ''),
(14, '', 'DF', 'FJZUDF29', 'FCH2124V3A8', '10.225.188.115', 'A0239FED5F6A', '', 'Porter', 'ORT', 18, ''),
(15, '', 'DF', 'FJZUDF24', 'FCH1912V031', '10.225.191.189', 'B0AA7796CEA2', '', 'Porter', 'BACKUP', 0, ''),
(16, '', 'DF', 'FJZUDF32', 'FCH1718V1L7', '10.225.188.32', '6C416A1F2294', '', 'Porter', 'BACKUP', 0, ''),
(17, '', 'PCBA', 'FJZUPCBA8', '', '10.225.191.115', 'BC26C70D3F8C', '', 'Nyquist', 'BDL', 1, ''),
(18, '', 'PCBA', '', '', '', '', '', 'Nyquist', 'BDL', 1, ''),
(19, '', 'PCBA', 'FJZUPCBA6', '', '10.225.191.154', '808BCF6CFBB4', '', 'Nyquist', 'BST', 2, ''),
(20, '', 'PCBA', 'FJZUPCBA9', '', '10.225.191.24', 'B08BCF6CFBB4', '', 'Nyquist', 'BST', 2, ''),
(21, '', 'PCBA', 'FJZUPCBA12', '', '10.225.188.46', 'BC26C70D372E', '', 'Nyquist', 'U-BST', 9, 'UPLINK'),
(22, '', 'PCBA', 'FJZUPCBA7', '', '10.225.191.147', '2C5A0FFF7B64', '', 'Nyquist', '2C', 3, ''),
(23, '', 'PCBA', 'FJUPCBA13', '', '10.225.188.217', 'BC26C70D4868', '', 'Nyquist', '2C', 3, ''),
(24, '', 'PCBA', 'FJZUPCBA10', '', '10.225.191.25', 'BC26C70D440C', '', 'Nyquist', 'U-2C', 10, 'UPLINK'),
(25, '', 'DF', 'FJZUDF46', '', '10.225.191.22', 'B08BCF6D0F1C', '', 'Nyquist', 'ASSY', 4, ''),
(26, '', 'DF', 'FJZUDF44', '', '10.225.191.146', '2C5A0FFF1126', '', 'Nyquist', 'FST', 6, ''),
(27, '', 'DF', '', '', '', '', '', 'Nyquist', 'RFID', 5, ''),
(28, '', 'DF', 'FJZUDF55', '', '10.225.188.25', 'BC26C70D3C3E', '', 'Nyquist', 'RFID', 5, ''),
(29, '', 'DF', 'FJZUDF47', '', '', 'BC26C70D18F2', '', 'Nyquist', 'HIPOT', 7, ''),
(30, '', 'DF', '', '', '', '', '', 'Nyquist', 'ORT', 8, ''),
(31, '', 'PCBA', 'FJZUPCBA15', 'FCH2247V01Y', '10.225.189.214', 'F80F6FE29D62', '', 'Adelphi', 'P2C', 21, 'Azteca'),
(32, '', 'PCBA', 'FJZUPCBA16', 'FCH2247V01X', '10.225.189.215', 'F80F6FE29906', '', 'Adelphi', '2C', 22, 'Azteca'),
(33, '', 'DF', 'FJZUPCBA14', 'FCH2247V01Z', '10.225.189.213', 'F80F6FE27C20', '', 'Adelphi', 'ASSY', 20, 'Azteca'),
(34, '', 'DF', 'FJZUDF70', '', '10.225.189.216', '502FA86B7F7A', '', 'G48', 'ASSY', 48, 'Azteca'),
(35, '', 'DF', 'FJZUDF71', 'FCH2243V040', '10.225.189.217', '706D1518954C', '', 'Adelphi', 'SNT', 24, 'Azteca'),
(36, '', 'PCBA', 'FJZUPCBA5', '', '10.225.189.36', '70695A31ED42', '', 'FRANKLIN', '2C', 0, 'Franklin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id_user` int(10) NOT NULL,
  `User_badge` int(20) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `User_lastname` varchar(30) NOT NULL,
  `User_shift` int(5) NOT NULL,
  `User_Supervisor` varchar(30) NOT NULL,
  `User_area` varchar(15) NOT NULL,
  `User_position` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id_user`, `User_badge`, `User_name`, `User_lastname`, `User_shift`, `User_Supervisor`, `User_area`, `User_position`) VALUES
(0, 4016, 'Hugo', 'Landa', 4, 'Antonio Carrillo', 'Inventory', 1),
(2, 0, 'Antonio', 'Carrillo', 4, '', '', 1),
(4, 0, 'Rafael', 'Alvarado', 4, '', '', 1),
(11, 21431, 'Antonio', 'Medina', 2, '', '', 2),
(1435, 0, 'Sergio Javier', 'Saenz Escobar', 1, 'Antonio Chairez', 'PCEBA', 2),
(4244, 22293, 'Carlos Alberto', 'Sandoval Torres', 1, 'Antonio Chairez', 'PCEBA', 2),
(15499, 0, 'Ernesto', 'Hernandez Gallegos', 1, 'Hector Guerrero', 'Integration', 2),
(20882, 22237, 'Alejandro', 'Castillo', 4, '', 'undefined', 1),
(24742, 22021, 'Julio Cesar', 'Galindo Cano', 4, 'Antonio Carrillo', 'PCEBA', 1),
(26707, 0, 'Joel', 'Rivera Martinez', 2, 'David Torres', '', 2),
(28207, 0, 'Servando', 'Casta?eda Hernandez', 1, 'Antonio Chairez', 'PCEBA', 2),
(30457, 22075, 'David', 'Torres', 2, 'Antonio Carrillo', 'all', 1),
(33440, 4388, 'Manuel Candelario', 'Galindo Cano', 1, 'Hector Ramos', 'ICT', 2),
(53702, 21001, 'Julian Aldair', 'Antonio Joaquin', 1, 'Hector Guerrero', 'Integration', 2),
(55018, 0, 'Jesus Adrian', 'Martinez Rivera', 1, 'Hector Guerrero', 'Integration', 2),
(58987, 0, 'Eddy Albores', 'De Paz', 3, 'Hector Ramos', 'ICT', 2),
(59272, 20865, 'Hector', 'Guerrero', 1, 'Antonio Carrillo', 'Integration', 1),
(59593, 21502, 'Jose Antonio', 'Chairez Garcia', 4, 'Antonio Carrillo', 'PCEBA', 1),
(59708, 0, 'Aldo', 'Lopez Joaquin', 1, 'Hector Guerrero', 'Integration', 2);

-- --------------------------------------------------------

--
-- Table structure for table `virtual_machines`
--

CREATE TABLE `virtual_machines` (
  `id_vm` int(30) NOT NULL,
  `vm_hostname` varchar(20) NOT NULL,
  `vm_ipaddress` varchar(20) NOT NULL,
  `vm_macaddress` varchar(20) NOT NULL,
  `id_ucs` int(11) NOT NULL,
  `comments` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `virtual_machines`
--

INSERT INTO `virtual_machines` (`id_vm`, `vm_hostname`, `vm_ipaddress`, `vm_macaddress`, `id_ucs`, `comments`) VALUES
(1, 'fjzpvmuabst1', '10.225.188.239', '00:0c:29:12:4d:18', 1, ''),
(2, 'fjzpvmuabst2', '10.225.188.240', '00:0c:29:cc:97:ca', 1, ''),
(3, 'fjzpvmuabst3', '10.225.188.241', '00:0c:29:66:7b:b0', 1, ''),
(4, 'fjzpvmuabst4', '10.225.188.242', '00:0c:29:67:b7:b8', 1, ''),
(5, 'fjzpvmuabst5', '10.225.188.60', '00:0c:29:d9:bc:01', 2, ''),
(6, 'fjzpvmuabst6', '10.225.188.62', '00:0c:29:56:c4:df', 2, ''),
(7, 'fjzpvmuabst7', '10.225.188.64', '00:0c:29:cd:e2:42', 2, ''),
(8, 'fjzpvmuabst8', '10.225.188.65', '00:0c:29:42:f3:97', 2, ''),
(9, 'fjzpvmuabsta', '10.225.188.41', '00:0C:29:0D:92:A3', 3, ''),
(10, 'fjzpvmuabstb', '10.225.188.97', '00:0C:29:E9:A3:F2', 4, ''),
(11, 'fjzpvmuabst9', '10.225.189.149', '00:0C:29:20:7D:8F', 5, ''),
(12, 'fjzpvmua2c1', '10.225.188.125', '00:0c:29:b0:79:f7', 6, ''),
(13, 'fjzpvmua2c2', '10.225.188.127', '00:0c:29:bf:c3:cc', 6, ''),
(14, 'fjzpvmua2c3', '10.225.188.129', '00:0c:29:c6:f7:42', 6, ''),
(15, 'fjzpvmua2c4', '10.225.188.131', '00:0c:29:83:cd:89', 6, ''),
(16, 'fjzpvmua2c5', '10.225.188.66', '00:0c:29:b0:51:04', 7, ''),
(17, 'fjzpvmua2c6', '10.225.188.68', '00:0c:29:3f:22:35', 7, ''),
(18, 'fjzpvmua2c7', '10.225.188.69', '00:0c:29:c6:d6:3b', 7, ''),
(19, 'fjzpvmua2c8', '10.225.188.70', '00:0c:29:ac:8b:c8', 1, ''),
(20, 'fjzpvmua2c9\nBAJA', '10.225.190.23', '00:0C:29:E6:4A:9C', 8, 'Baja'),
(21, 'fjzdvmuaassy1', '10.225.188.118', '00:0c:29:66:15:30', 9, ''),
(22, 'fjzdvmuafst1', '10.225.188.134', '00:0c:29:d4:a5:73', 10, ''),
(23, 'fjzdvmuafst2', '10.225.188.136', '00:0c:29:a8:46:a9', 10, ''),
(24, 'fjzdvmuafst3', '10.225.188.141', '00:0c:29:81:36:0d', 10, ''),
(25, 'fjzdvmuafst4', '10.225.188.142', '00:0c:29:be:ff:cb', 10, ''),
(26, 'fjzdvmuafst5', '10.225.188.71', '00:0c:29:86:c6:56', 11, ''),
(27, 'fjzdvmuafst6', '10.225.188.72', '00:0c:29:65:a5:80', 11, ''),
(28, 'fjzdvmuafst7', '10.225.188.73', '00:0c:29:2d:ef:39', 11, ''),
(29, 'fjzdvmuafst8', '10.225.188.74', '00:0c:29:40:04:3f', 11, ''),
(30, 'fjzdvmuaHipot1', '10.225.188.192', '00:0c:29:b7:18:05', 12, ''),
(31, 'fjzdvmuafqa1', '10.225.188.194', '00:0c:29:55:1c:83', 13, ''),
(32, 'fjzdvmuaort1', '10.225.188.159', '00:0c:29:65:32:0c', 14, ''),
(33, 'fjzdvmuaort2', '10.225.188.160', '00:0c:29:5a:e0:42', 14, ''),
(34, 'fjzdvmuaort3', '10.225.188.161', '00:0c:29:d2:d6:f9', 14, ''),
(35, 'fjzdvmuaort4', '10.225.188.162', '00:0c:29:b0:bb:1e', 14, ''),
(36, 'fjzdvmuaassy0', '10.225.188.78', '00:0c:29:fc:5b:57', 15, ''),
(37, 'fjzdvmuaort0 ', '10.225.188.81 ', '00:0c:29:46:f4:c6', 15, ''),
(38, 'fjzdvmuaHipot0', '10.225.188.86 ', '00:0c:29:8e:9b:38', 16, ''),
(39, 'fjzdvmuafqa0', '10.225.188.59', '00:0c:29:70:db:b5', 16, ''),
(40, 'fjzpvmnqtbdl1', '10.225.188.185', '00:50:56:98:e4:a3', 17, ''),
(41, 'fjzpvmnqtbdl2', '10.225.188.199', '00:50:56:98:8a:04', 17, ''),
(42, 'fjzpvmnqtbdl3', '10.225.190.1', '00:50:56:98:69:70', 17, ''),
(43, 'fjzpvmnqtbdl4', '10.225.190.9', '00:50:56:98:1b:88', 17, ''),
(44, 'fjzpvmnqtbdl5', '10.225.188.168', '00:0c:29:2e:06:67', 18, ''),
(45, 'fjzpvmnqtbdl6', '10.225.188.220', '00:0c:29:88:e1:9a', 18, ''),
(46, 'fjzpvmnqtbdl7', '10.225.188.221', '00:0c:29:d4:be:76', 18, ''),
(47, 'fjzpvmnqtbdl8', '10.225.188.222', '00:0c:29:bc:9f:72', 18, ''),
(48, 'fjzpvmnqtbst1', '10.225.191.18', '00:0c:29:ef:5f:29', 19, ''),
(49, 'fjzpvmnqtbst2', '10.225.191.19', '00:0c:29:50:f8:96', 19, ''),
(50, 'fjzpvmnqtbst3', '10.225.191.156', '00:0c:29:03:28:3c', 19, ''),
(51, 'fjzpvmnqtbst4', '10.225.191.173', '00:0c:29:fe:80:26', 19, ''),
(52, 'fjzpvmnqtbst5', '10.225.188.234', '00:0c:29:6f:b2:e2', 20, ''),
(53, 'fjzpvmnqtbst6', '10.225.188.235', '00:0c:29:48:9d:19', 20, ''),
(54, 'fjzpvmnqtbst7', '10.225.188.236', '00:50:56:98:42:fe', 20, ''),
(55, 'fjzpvmnqtbst8', '10.225.188.237', '00:50:56:98:ba:f3', 20, ''),
(56, 'fjzpvmnqtubst1', '10.225.188.158', '00:50:56:98:64:78', 21, ''),
(57, 'fjzpvmnqtubst2', '10.225.190.164', '00:50:56:98:01:80', 21, ''),
(58, 'fjzpvmnqtubst3', '10.225.189.198', '00:50:56:98:d6:fd', 21, ''),
(59, 'fjzpvmnqt2c1', '10.225.191.192', '00:0c:29:44:d6:3f', 22, ''),
(60, 'fjzpvmnqt2c2', '10.225.191.193', '00:0c:29:37:84:8d', 22, ''),
(61, 'fjzpvmnqt2c3', '10.225.191.194', '00:0c:29:b9:7e:bd', 22, ''),
(62, 'fjzpvmnqt2c4', '10.225.191.195', '00:0c:29:ad:9a:11', 22, ''),
(63, 'fzpvmnqt2c5', '10.225.188.238', '00:0c:29:2e:a3:50', 23, ''),
(64, 'fzpvmnqt2c6', '10.225.188.246', '00:0c:29:68:c5:e1', 23, ''),
(65, 'fzpvmnqt2c7', '10.225.188.248', '00:0c:29:1b:11:c5', 23, ''),
(66, 'fzpvmnqt2c8', '10.225.188.249', '00:0c:29:4d:0d:60', 23, ''),
(67, 'fjzpvmnqtu2c1', '10.225.190.60', '00:0c:29:b3:64:31', 24, ''),
(68, 'fjzpvmnqtu2c2', 'N/A', 'N/A', 24, ''),
(69, 'fjzpvmnqtu2c3', '10.225.188.225', '00:0c:29:99:73:88', 24, ''),
(70, 'fjzpvmnqtu2c4', '10.225.189.100', '00:0c:29:a4:30:b3', 24, ''),
(71, 'fjzdvmnqtassy1', '10.225.191.251', '00:50:56:98:bc:b8', 25, ''),
(72, 'fjzdvmnqtassy2', '10.225.191.99', '00:50:56:98:9c:1c', 25, ''),
(73, 'fjzdvmnqtassy3', '10.81.206.163', '00:50:56:98:91:3b', 25, ''),
(74, 'fjzdvmnqtassy4', '10.81.206.255', '00:50:56:98:11:20', 25, ''),
(75, 'fjzdvmnqtfst1', '10.225.189.1', '00:0c:29:08:4f:ce', 26, ''),
(76, 'fjzdvmnqtfst2', '10.225.189.148', '00:0c:29:c3:c0:a5', 26, ''),
(77, 'fjzdvmnqtfst3', '10.225.189.156', '00:0c:29:c3:42:36', 26, ''),
(78, 'fjzdvmnqtfst4', '10.225.189.26', '00:0c:29:0f:00:df', 26, ''),
(79, 'fjzdvmnqtrd1', '10.225.191.21', '00:0c:29:dc:b8:94', 27, ''),
(80, 'fjzdvmnqtrd2', '10.225.189.108', '00:50:56:98:7b:aa', 27, ''),
(81, 'fjzdvmnqtrd3', '10.225.189.112', '00:50:56:98:5c:08', 27, ''),
(82, 'fjzdvmnqtrd4', '10.225.189.114', '00:50:56:98:d3:dd', 27, ''),
(83, 'fjzdvmnqtrd5', '10.225.188.226', '00:0c:29:7a:14:3b', 28, ''),
(84, 'fjzdvmnqtrd6', '10.225.188.227', '00:0c:29:8a:2d:c5', 28, ''),
(85, 'fjzdvmnqtrd7', '10.225.188.229', '00:0c:29:d7:b8:a6', 28, ''),
(86, 'fjzdvmnqtrd8', '10.225.188.230', '00:0c:29:96:a0:c3', 28, ''),
(87, 'fjzdvmnqthp1', '10.225.188.173', '00:50:56:98:2b:a8', 29, ''),
(88, 'fjzdvmnqthp2', '10.225.188.174', '00:50:56:98:1f:d5', 29, ''),
(89, 'fjzdvmnqthp3', '10.225.188.175', '00:50:56:98:a1:3b', 29, ''),
(90, 'fjzdvmnqthp4', 'N/A', 'N/A', 29, ''),
(91, 'fjzdvmnqtort1', '10.225.191.28', '00:0c:29:63:c5:3e', 30, ''),
(92, 'fjzdvmnqtort2', '10.225.191.29', '00:0c:29:64:14:b9', 30, ''),
(93, 'fjzdvmnqtort3', '10.225.190.88', '', 30, ''),
(94, 'fjzdvmnqtort4', '10.225.191.139', '', 30, ''),
(95, 'fjzpvmadpassy1', '10.225.188.190', '00:1e:67:6e:96:0d', 33, ''),
(96, 'fjzpvmadp2c1', '10.225.188.104', '00:0c:29:64:44:95', 31, ''),
(97, 'fjzpvmadp2c2', '10.225.188.149', '00:50:56:98:17:e3', 31, ''),
(98, 'fjzpvmadp2c3', '10.225.188.150', '00:50:56:98:a4:62', 31, ''),
(99, 'fjzpvmadup2c1', '10.225.189.124', '00:50:56:98:14:2a', 31, ''),
(100, 'fjzpvmad2c1', '10.225.188.233', '00:0c:29:58:14:e2', 32, ''),
(101, 'fjzpvmad2c2', '10.225.188.86', '00:0c:29:93:38:43', 32, ''),
(102, 'fjzdvmadrfid1', '10.225.189.104', '00:0c:29:41:f5:5a', 34, ''),
(103, 'fjzdvmadsnt1', '10.225.189.223', '00:0c:29:da:e3:31 ', 35, ''),
(104, 'fjzpvmfk2c1', '10.225.189.90', '00:0c:29:4e:d3:66', 36, ''),
(105, 'fjzpvmfk2c2', '10.225.189.96', '00:0c:29:68:ed:03', 36, ''),
(106, 'fjzpvmfk2c3', '10.225.190.163', '00:0c:29:16:be:96', 36, ''),
(107, 'fjzpvmfk2c4', '10.225.190.173', '00:0c:29:e8:57:ab', 36, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciscoincidents`
--
ALTER TABLE `ciscoincidents`
  ADD PRIMARY KEY (`id_inc`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`Issue_id`),
  ADD KEY `Station_id` (`Station_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`Station_id`),
  ADD KEY `Id_user` (`Id_user`);

--
-- Indexes for table `ucs_list`
--
ALTER TABLE `ucs_list`
  ADD PRIMARY KEY (`id_ucs`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_user`);

--
-- Indexes for table `virtual_machines`
--
ALTER TABLE `virtual_machines`
  ADD PRIMARY KEY (`id_vm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciscoincidents`
--
ALTER TABLE `ciscoincidents`
  MODIFY `id_inc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `Issue_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `Station_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ucs_list`
--
ALTER TABLE `ucs_list`
  MODIFY `id_ucs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `virtual_machines`
--
ALTER TABLE `virtual_machines`
  MODIFY `id_vm` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`Station_id`) REFERENCES `stations` (`Station_id`);

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `users` (`Id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
