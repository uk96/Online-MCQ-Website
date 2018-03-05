-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2018 at 02:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Username` varchar(50) NOT NULL,
  `Faculty_Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_test`
--

CREATE TABLE `faculty_test` (
  `FacultyID` timestamp NULL DEFAULT NULL,
  `TopicID` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Question` varchar(200) NOT NULL,
  `Option1` varchar(50) NOT NULL,
  `Option2` varchar(50) NOT NULL,
  `Option3` varchar(50) NOT NULL,
  `Option4` varchar(50) NOT NULL,
  `Correct_Answer` varchar(50) NOT NULL,
  `TopicID` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Correct_Answer`, `TopicID`) VALUES
('2017-11-03 06:21:54', 'ISRO success fully …………… PSLV from Sriharikota.\r\n', 'Filed', 'Lifted', 'Launched', 'Fired', 'Launched', '2017-11-03 06:08:53'),
('2017-11-03 06:23:57', 'Women ………………. is one of the important elements of Gender mainstreaming.', 'Encouragement', 'Employment', 'Education', 'Empowerment', 'Empowerment', '2017-11-03 06:08:53'),
('2017-11-03 06:25:20', 'Giri took advantage of his teachers ………………', 'Freedom', 'Closeness', 'Strictness', 'Leniency', 'Leniency', '2017-11-03 06:08:53'),
('2017-11-03 06:29:15', 'Zika virus has ……….. out in Brazil', 'Broken out', 'Spread', 'Existing', 'Turned in', 'Broken out', '2017-11-03 06:08:53'),
('2017-11-03 06:31:43', 'Promoters are the persons who ………… the idea of forming a company and bring into existence.', 'Plans', 'Conceive', 'Gets', 'Brings', 'Conceive', '2017-11-03 06:08:53'),
('2017-11-03 06:32:52', 'Human Development Index [HDI] have been presented annually ………….. 1990.\r\n', 'Since', 'From', 'On', 'In early', 'Since', '2017-11-03 06:08:53'),
('2017-11-03 06:35:55', 'The old man distributed his property …………. his two sons', 'Among', 'Between', 'To', 'Of', 'Between', '2017-11-03 06:08:53'),
('2017-11-03 06:37:12', 'India is going to ………… in Rio 2016 Olympic games.\r\n', 'Participate', 'Take part', 'Play', 'Promote', 'Participate', '2017-11-03 06:08:53'),
('2017-11-03 06:38:47', 'As being late the invigilator did not ………… Amit into the exam hall.\r\n', 'Allow', 'Admit', 'Enter', 'Accept', 'Allow', '2017-11-03 06:08:53'),
('2017-11-03 06:40:02', 'Although Ganesh worked hard …………. he failed.\r\n', 'But', 'And', 'Yet', 'Even', 'Yet', '2017-11-03 06:08:53'),
('2017-11-03 06:41:27', 'If you pass your parents ………. happy.\r\n', 'Will be', 'Shall be', 'Feel', 'Would be', 'Would be', '2017-11-03 06:08:53'),
('2017-11-08 05:45:25', '19 + ……. = 42', '23', '61', '0', '42', '23', '2017-11-08 05:26:04'),
('2017-11-08 05:47:08', ' Arrange the numbers in ascending order: 36, 12, 29, 21, 7.', '36, 29, 21, 12, 7 ', '36, 29, 7, 21, 12 ', ' 7, 12, 21, 29, 36 ', 'None of these', ' 7, 12, 21, 29, 36 ', '2017-11-08 05:26:04'),
('2017-11-08 05:47:57', ' What is the greatest two digit number?', '10', '90', '11', '99', '99', '2017-11-08 05:26:04'),
('2017-11-08 05:48:46', 'How much is 90 – 19?', '71', '109', '89', 'None of these', '71', '2017-11-08 05:26:04'),
('2017-11-08 05:49:40', '20 is divisible by ……… .', '1', '3', '7', 'None of these', '1', '2017-11-08 05:26:04'),
('2017-11-08 05:50:20', 'Find the value of x; if x = (2 × 3) + 11.', '55', '192', '17', '66', '17', '2017-11-08 05:26:04'),
('2017-11-08 05:50:58', 'What is the smallest three digit number?', '100', '150', '123', '169', '100', '2017-11-08 05:26:04'),
('2017-11-08 05:51:53', 'How much is 190 – 87 + 16?', '103', '261', '87', '119', '119', '2017-11-08 05:26:04'),
('2017-11-08 05:52:53', 'What is 1000 × 1 equal to?', '1', '1000', '0', 'None of these', '1000', '2017-11-08 05:26:04'),
('2017-11-08 05:54:01', 'What is the largest two digits prime number?', '96', '97', '98', '99', '97', '2017-11-08 05:26:04'),
('2017-11-08 06:18:13', '2+4=?', '6', '10', '2', '12', '6', '2017-11-08 05:26:04'),
('2017-11-08 06:43:23', '3+3=', '5', '6', '3', '8', '6', '2017-11-08 05:26:04'),
('2017-11-08 06:49:48', '2+3', '5', '7', '8', '9', '5', '2017-11-08 05:26:04'),
('2017-11-08 06:54:42', 'what is name?', 'fs', 'fsgh', 'fsf', 'fssfd', 'fs', '2017-11-03 06:08:53'),
('2017-11-19 05:07:46', '2+8', '4', '7', '10', '6', '10', '2017-11-08 05:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Username` varchar(50) NOT NULL,
  `Test_Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Username`, `Test_Count`) VALUES
('2018-03-05 13:26:44', 'uddesh_kadu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TestID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StudentID` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TopicID` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`TestID`, `StudentID`, `TopicID`, `Marks`) VALUES
('2018-03-05 13:38:06', '2018-03-05 13:26:44', '2017-11-03 06:08:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_question`
--

CREATE TABLE `test_question` (
  `TestID` timestamp NULL DEFAULT NULL,
  `QuestionID` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_question`
--

INSERT INTO `test_question` (`TestID`, `QuestionID`) VALUES
('2018-03-05 13:38:06', '2017-11-03 06:21:54'),
('2018-03-05 13:38:06', '2017-11-03 06:23:57'),
('2018-03-05 13:38:06', '2017-11-03 06:25:20'),
('2018-03-05 13:38:06', '2017-11-03 06:29:15'),
('2018-03-05 13:38:06', '2017-11-03 06:31:43'),
('2018-03-05 13:38:06', '2017-11-03 06:32:52'),
('2018-03-05 13:38:06', '2017-11-03 06:35:55'),
('2018-03-05 13:38:06', '2017-11-03 06:37:12'),
('2018-03-05 13:38:06', '2017-11-03 06:38:47'),
('2018-03-05 13:38:06', '2017-11-03 06:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `TopicID` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Topic_Name` varchar(50) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`TopicID`, `Topic_Name`, `Description`) VALUES
('2017-11-03 06:08:53', 'English', 'Most Commonly used language'),
('2017-11-08 05:26:04', 'MATHS', 'Maths quiz is a quick way to check your math skills.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Confirm_Password` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Birth_Date` varchar(50) NOT NULL,
  `College_Name` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `University` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Name`, `EmailID`, `Password`, `Confirm_Password`, `Gender`, `Birth_Date`, `College_Name`, `Phone_Number`, `University`, `Status`, `Category`) VALUES
('uddesh_kadu', 'Uddesh Kadu', 'uddesh.kadu@somaiya.edu', 'fc9299b0ca684ce01ef7079071ed83ae', 'fc9299b0ca684ce01ef7079071ed83ae', 'male', '1996-08-17', 'KJSCE', '9892326829', 'Mumbai', 'Accepted', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `faculty_test`
--
ALTER TABLE `faculty_test`
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `TopicID` (`TopicID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `TopicID` (`TopicID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `TopicID` (`TopicID`);

--
-- Indexes for table `test_question`
--
ALTER TABLE `test_question`
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `TestID` (`TestID`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`TopicID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `faculty_test`
--
ALTER TABLE `faculty_test`
  ADD CONSTRAINT `faculty_test_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `faculty_test_ibfk_2` FOREIGN KEY (`TopicID`) REFERENCES `topic` (`TopicID`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`TopicID`) REFERENCES `topic` (`TopicID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`TopicID`) REFERENCES `topic` (`TopicID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
