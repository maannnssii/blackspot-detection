-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 06:54 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blackspotdetection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`srno` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`srno`, `email`, `pass`) VALUES
(1, 'manasi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `blackspot`
--

CREATE TABLE IF NOT EXISTS `blackspot` (
`srno` int(10) NOT NULL,
  `locname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `rblackspot` varchar(500) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `level` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `blackspot`
--

INSERT INTO `blackspot` (`srno`, `locname`, `address`, `rblackspot`, `reason`, `latitude`, `longitude`, `level`, `city`) VALUES
(1, 'Kumbhartek', 'marvadi galli', 'accident spot', 'Drunk driver', 0, 0, '1', 'shirpur'),
(2, 'Bus stand', 'Shirpur Rd, Varvade, Shirpur, Maharashtra', 'accident spot', 'Turning point', 0, 0, '0', 'shirpur'),
(3, 'Nimzari naka', 'nimzari road, Varvade, Shirpur, Maharashtra', 'crime spot', 'Loot', 0, 0, '1', 'shirpur'),
(4, 'varzadi', 'varzadi', 'crime spot', 'murder', 0, 0, '2', 'shirpur'),
(11, 'Bus stand', 'laxmi nagar', 'accident spot', 'turn pt', 0, 0, '1', 'faizpur');

-- --------------------------------------------------------

--
-- Table structure for table `policestation`
--

CREATE TABLE IF NOT EXISTS `policestation` (
`id` int(10) NOT NULL,
  `stname` varchar(50) NOT NULL,
  `add` varchar(500) NOT NULL,
  `contno` varchar(15) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `spass` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `policestation`
--

INSERT INTO `policestation` (`id`, `stname`, `add`, `contno`, `semail`, `spass`) VALUES
(1, 'varzadi police station', 'varzadi road', '345678', 'varzadi@gmail.com', 'var'),
(2, 'dhule police station', 'near gangapur road', '947586', 'dhule@gmail.com', 'dhule'),
(7, 'Dhule Station', 'Collector Office , New Administrative Building, Dhule', '66775544', 'dhule@gmail.com', 'dhule'),
(8, 'karwand police station', 'karawand naka , shirpur', '99776655', 'karwand@gmail.com', 'karwand');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`uid` int(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `umobile` varchar(10) NOT NULL,
  `upass` varchar(20) NOT NULL,
  `ucity` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `umobile`, `upass`, `ucity`) VALUES
(1, 'Manasi Rajendra Pawar', 'manasipawar0611@gmail.com', '9373890468', 'manasi', 'faizpur'),
(2, 'yukta', 'yukta@gmail.com', '3928475361', 'yukta', 'shirpur'),
(3, 'ecec', 'fv@gmail.com', '2234454657', 'dvvf', 'fvv'),
(4, 'sai', 'sai@gmail.com', '22222222', 'sai', 'shirpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `blackspot`
--
ALTER TABLE `blackspot`
 ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `policestation`
--
ALTER TABLE `policestation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `srno` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blackspot`
--
ALTER TABLE `blackspot`
MODIFY `srno` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `policestation`
--
ALTER TABLE `policestation`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
