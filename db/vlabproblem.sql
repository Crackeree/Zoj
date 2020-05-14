-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 12:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vlabproblem`
--

-- --------------------------------------------------------

--
-- Table structure for table `allsolve`
--

CREATE TABLE `allsolve` (
  `sname` varchar(100) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allsolved`
--

CREATE TABLE `allsolved` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `submit_name` varchar(100) DEFAULT NULL,
  `source_code` longtext,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--


-- --------------------------------------------------------

--
-- Table structure for table `element`
--

CREATE TABLE `element` (
  `id` int(11) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `pbname` varchar(400) DEFAULT NULL,
  `pbdes` longtext,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` longtext,
  `output` longtext,
  `uoutput` longtext,
  `pbid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `element`
--


-- --------------------------------------------------------

--
-- Table structure for table `ncpc_2016`
--


--
-- Dumping data for table `ncpc_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `rapl_oj_contest`
--


--
-- Dumping data for table `rapl_oj_contest`
--


-- --------------------------------------------------------

--
-- Table structure for table `rapl_oj_contest2`
--


--
-- Dumping data for table `rapl_oj_contest2`
--


-- --------------------------------------------------------

--
-- Table structure for table `rapl_oj_contest3`
--


--
-- Dumping data for table `rapl_oj_contest3`
--


-- --------------------------------------------------------

--
-- Table structure for table `solve`
--

CREATE TABLE `solve` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `solved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `sname` varchar(100) DEFAULT NULL,
  `number` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `sid` int(100) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `point` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `rapl_oj_contest`
--

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
