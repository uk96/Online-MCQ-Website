-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 05:48 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

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
('2017-11-03 06:41:27', 'If you pass your parents ………. happy.\r\n', 'Will be', 'Shall be', 'Feel', 'Would be', 'Would be', '2017-11-03 06:08:53');

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
('2017-11-03 07:01:46', 'niketkini', 0);

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
('2017-11-07 17:07:29', '2017-11-03 07:01:46', '2017-11-03 06:08:53', 2),
('2017-11-08 04:26:50', '2017-11-03 07:01:46', '2017-11-03 06:08:53', 5);

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
('2017-11-07 11:24:02', '2017-11-03 06:21:54'),
('2017-11-07 11:24:02', '2017-11-03 06:23:57'),
('2017-11-07 11:24:02', '2017-11-03 06:25:20'),
('2017-11-07 11:24:02', '2017-11-03 06:29:15'),
('2017-11-07 11:24:02', '2017-11-03 06:31:43'),
('2017-11-07 11:24:02', '2017-11-03 06:32:52'),
('2017-11-07 11:24:02', '2017-11-03 06:35:55'),
('2017-11-07 11:24:02', '2017-11-03 06:37:12'),
('2017-11-07 11:24:02', '2017-11-03 06:38:47'),
('2017-11-07 11:24:02', '2017-11-03 06:40:02'),
('2017-11-07 11:24:49', '2017-11-03 06:21:54'),
('2017-11-07 11:24:49', '2017-11-03 06:23:57'),
('2017-11-07 11:24:49', '2017-11-03 06:25:20'),
('2017-11-07 11:24:49', '2017-11-03 06:29:15'),
('2017-11-07 11:24:49', '2017-11-03 06:31:43'),
('2017-11-07 11:24:49', '2017-11-03 06:32:52'),
('2017-11-07 11:24:49', '2017-11-03 06:35:55'),
('2017-11-07 11:24:49', '2017-11-03 06:37:12'),
('2017-11-07 11:24:49', '2017-11-03 06:38:47'),
('2017-11-07 11:24:49', '2017-11-03 06:40:02'),
('2017-11-07 11:39:04', '2017-11-03 06:21:54'),
('2017-11-07 11:39:04', '2017-11-03 06:23:57'),
('2017-11-07 11:39:04', '2017-11-03 06:25:20'),
('2017-11-07 11:39:04', '2017-11-03 06:29:15'),
('2017-11-07 11:39:04', '2017-11-03 06:31:43'),
('2017-11-07 11:39:04', '2017-11-03 06:32:52'),
('2017-11-07 11:39:04', '2017-11-03 06:35:55'),
('2017-11-07 11:39:04', '2017-11-03 06:37:12'),
('2017-11-07 11:39:04', '2017-11-03 06:38:47'),
('2017-11-07 11:39:04', '2017-11-03 06:40:02'),
('2017-11-07 12:55:19', '2017-11-03 06:21:54'),
('2017-11-07 12:55:19', '2017-11-03 06:23:57'),
('2017-11-07 12:55:19', '2017-11-03 06:25:20'),
('2017-11-07 12:55:19', '2017-11-03 06:29:15'),
('2017-11-07 12:55:19', '2017-11-03 06:31:43'),
('2017-11-07 12:55:19', '2017-11-03 06:32:52'),
('2017-11-07 12:55:19', '2017-11-03 06:35:55'),
('2017-11-07 12:55:19', '2017-11-03 06:37:12'),
('2017-11-07 12:55:19', '2017-11-03 06:38:47'),
('2017-11-07 12:55:19', '2017-11-03 06:40:02'),
('2017-11-07 17:07:29', '2017-11-03 06:21:54'),
('2017-11-07 17:07:29', '2017-11-03 06:23:57'),
('2017-11-07 17:07:29', '2017-11-03 06:25:20'),
('2017-11-07 17:07:29', '2017-11-03 06:29:15'),
('2017-11-07 17:07:29', '2017-11-03 06:31:43'),
('2017-11-07 17:07:29', '2017-11-03 06:32:52'),
('2017-11-07 17:07:29', '2017-11-03 06:35:55'),
('2017-11-07 17:07:29', '2017-11-03 06:37:12'),
('2017-11-07 17:07:29', '2017-11-03 06:38:47'),
('2017-11-07 17:07:29', '2017-11-03 06:40:02'),
('2017-11-08 04:26:50', '2017-11-03 06:21:54'),
('2017-11-08 04:26:50', '2017-11-03 06:23:57'),
('2017-11-08 04:26:50', '2017-11-03 06:25:20'),
('2017-11-08 04:26:50', '2017-11-03 06:29:15'),
('2017-11-08 04:26:50', '2017-11-03 06:31:43'),
('2017-11-08 04:26:50', '2017-11-03 06:32:52'),
('2017-11-08 04:26:50', '2017-11-03 06:35:55'),
('2017-11-08 04:26:50', '2017-11-03 06:37:12'),
('2017-11-08 04:26:50', '2017-11-03 06:38:47'),
('2017-11-08 04:26:50', '2017-11-03 06:40:02');

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
('2017-11-03 06:08:53', 'English', 'Most Commonly used language');

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
('niketkini', 'Niket', 'niket.kini@somaiya.edu', 'Qwerty123', 'Qwerty123', 'male', '2017-10-04', 'GFRgtg', '4646576234', 'sfdasf', 'Accepted', 'Student');

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

--
-- Constraints for table `test_question`
--
ALTER TABLE `test_question`
  ADD CONSTRAINT `test_question_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`),
  ADD CONSTRAINT `test_question_ibfk_2` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
