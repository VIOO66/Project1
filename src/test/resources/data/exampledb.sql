SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--
-- CREATE DATABASE 'exampledb' IF NOT EXISTS;
-- USE 'exampledb';

-- CREATE TABLE IF NOT EXISTS `employee` (
--   `id` bigint(20) NOT NULL,
--   `emp_name` varchar(50) NOT NULL,
--   `emp_designation` varchar(50) NOT NULL,
--   `emp_salary` float NOT NULL
--   `emp_startDate` date NOT NULL
-- ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_name`, `emp_designation`, `emp_salary`, `emp_startDate`) VALUES
(111, 'Viorel', 'Endava', 125000, 2018-02-05),
(222, 'Ion', 'Oracle', 105000, 2018-02-04),
(333, 'Mircea', 'HP', 500000, 2018-02-06);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
-- ALTER TABLE `employee`
--   ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
-- ALTER TABLE `employee`
--   MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
