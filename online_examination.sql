-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 01:19 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_id` int(11) NOT NULL,
  `Admin_name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_id`, `Admin_name`, `Admin_Password`) VALUES
(1, 'pulak', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `answer_responses`
--

CREATE TABLE `answer_responses` (
  `s_name` text NOT NULL,
  `question` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL,
  `dateOfResponse` date NOT NULL,
  `subject_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `subject_title` varchar(100) NOT NULL,
  `q_no` int(20) NOT NULL,
  `question` varchar(255) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`subject_title`, `q_no`, `question`, `correct_answer`, `option1`, `option2`, `option3`, `option4`) VALUES
('Artifical Inteligence', 1, 'In LISP,  the function returns the list that results after the first element is removed (the rest f the list), is', 'cdr', 'car', 'last', 'cons', 'cdr '),
('Artifical Inteligence', 2, 'Output segments of Artificial Intelligence programming contain(s)', 'All of the mentioned', 'Printed language and synthesized speech', 'Manipulation of physical object', 'Locomotion', 'All of the mentioned'),
('Artifical Inteligence', 3, ' Which is not the commonly used programming language for AI ?', 'Perl', 'Java', 'LISP', ' Perl', 'PROLOG'),
('Artifical Inteligence', 4, ' What is Artificial intelligence?', 'Making a Machine intelligent', ' Making a Machine intelligent', 'Playing a Game', ' Putting your intelligence into Computer', 'Programming with your own intelligence'),
('Artifical Inteligence', 5, 'What is the action of task environment in artificial intelligence?', 'problem', 'solution', 'problem', 'agent', 'observation'),
('Artifical Inteligence', 6, 'What kind of observing environments are present in artificial intelligence?', 'Both Partial & Fully', 'Partial', ' Fully', 'Learning', 'Both Partial & Fully'),
('Artifical Inteligence', 7, ' Which cannot be taken as advantage for totally ordered plan search?', ' Problem decomposition', ' Problem decomposition', 'Composition', 'Composition', ' None of the mentioned'),
('--Select Subject--', 8, 'What is the advantage of totally ordered plan in constructing the plan?', ' Flexibility', 'Reliability', 'Easy to use', ' Flexibility', 'All of the mentioned'),
('Artifical Inteligence', 9, 'What is the term used for describing the judgmental or commonsense part of problem solving?', 'Heuristic', 'Heuristic', 'Value based', 'Critical', 'None of the above'),
('Artifical Inteligence', 10, 'What stage of the manufacturing process has been described as \"the mapping of function onto form\"?', 'Design', 'Distribution', 'field service', 'project management', 'Design'),
('Mathematics', 11, ' The average of first 50 natural numbers is ', ' 25.5', ' 25.30', ' 25.5', ' 25.00', '12.25'),
('Mathematics', 12, ' \r\nThe function f(x) = x3 - 6x2 + 9x + 25 has', 'a maxima at x= 1 and a minima at x = 3', 'a maxima at x= 1 and a minima at x = 3', 'a maxima at x = 1, but no minima', 'a maxima at x = 3 and a minima at x = 1', 'no maxima, but a minima at x = 1'),
('Mathematics', 13, '\r\n Ramesh has 6 friends. In how many ways can he invite one or more of them at a dinner ?', '63', '61', '63', '62', '64'),
('Mathematics', 14, 'The number of ways to arrange th a letters of the  word CHEESE are', '120', '120', '240', '720', '6'),
('Mathematics', 15, 'The number of different permutations of the word BANANA is', '60', '60', '120', '360', '720'),
('Mathematics', 16, ' \r\nIf x - y = 1, then x3 - y3 - 3xy equals', '1', '0', '1', 'x2 - y2', '2'),
('Mathematics', 17, ' \r\nIf (a, n)! is defined as product of n consecutive numbers starting from a, where a and n are both natural numbers, and if H is the HCF of (a, n)! and n!, then what can be said about H?', 'h = n!', 'h = a!', 'h â‰¥ n!', 'h â‰¥ a * n', 'h = n!'),
('Mathematics', 18, '  \r\nIf x = b + c, y = c a, z = a b, then\r\nx2 + y2 + z2 - 2xy - 2xz + 2yz is equal to', '4b2', 'a2 + b2', '4b2', 'abc', 'a + b + c'),
('Mathematics', 19, 'The convergence of which of the following method is sensitive to starting value?', 'Newton-Raphson method', 'False position', 'Gauss seidal method', 'Newton-Raphson method', 'All of these'),
('Mathematics', 20, ' Which of the following statements applies to the bisection method used for finding roots of functions?', 'Guaranteed to work for all continuous functions', 'Guaranteed to work for all continuous functions', 'Requires that there be no error in determining the sign of the function', 'Converges within a few iterations', 'Is faster than the Newton-Raphson method'),
('C_plus_plus', 21, 'fgghchgc', 'vghfhqhg', 'thftq', 'ygyug', 'yufyf', 'yuyuf'),
('Java', 22, 'sfergferg', 'eferfr', 'efergrg', 'erfreg', 'regreg', 'erfref');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(20) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `student_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `student_name`, `address`, `email`, `student_password`) VALUES
(1, 'mahendar', 'punjab', 'mahi@gmail.com', '123456'),
(2, 'Rahul', 'NLP', 'rahul@gmail.com', '12344');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_code` int(11) NOT NULL,
  `subject_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_code`, `subject_title`) VALUES
(1, 'Artifical Inteligence'),
(2, 'Mathematics'),
(3, 'C_plus_plus'),
(4, 'Java'),
(5, 'PHP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_no`),
  ADD KEY `exam_code` (`subject_title`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
