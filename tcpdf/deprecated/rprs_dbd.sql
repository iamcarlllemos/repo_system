-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 09:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rprs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(255) NOT NULL,
  `MI` varchar(255) NOT NULL,
  `LASTNAME` varchar(255) NOT NULL,
  `DESIGNATION` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ROLE` varchar(255) NOT NULL,
  `ACC_STATUS` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL DEFAULT current_timestamp(),
  `PROFILE` longblob NOT NULL,
  `SCHOOLARID` int(11) NOT NULL,
  `CONTACT` varchar(255) NOT NULL,
  `STUDENT_NO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `FIRSTNAME`, `MI`, `LASTNAME`, `DESIGNATION`, `EMAIL`, `PASSWORD`, `ROLE`, `ACC_STATUS`, `CREATED_ON`, `PROFILE`, `SCHOOLARID`, `CONTACT`, `STUDENT_NO`) VALUES
(8, 'ADMIN', '', 'ADMIN', 'admin', 'admin@admin.com', 'admin@admin.com', 'ADMIN', 1, '2023-03-22 12:09:50', '', 0, '', '789365');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `ID` int(11) NOT NULL,
  `NEWS_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `COMMENT` mediumtext DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `COMMENT_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`ID`, `NEWS_ID`, `NAME`, `EMAIL`, `COMMENT`, `STATUS`, `COMMENT_DATE`) VALUES
(1, 7, 'andres p jario', 'andresjario@gmail.com', 'Robin Lopez rejoins brother Brook on Bucks', 1, '2023-06-26 15:38:04'),
(2, 7, 'andres p jario', 'andresjario26@gmail.com', '<p>The Wildcats have had an impressive 22 players selected as lottery picks in the NBA Draft since 2010</p>', 1, '2023-01-01 15:37:27'),
(3, 7, 'John Cena', 'John @gmail.com', '<p>Here\'s the pick-by-pick breakdown, complete with a grade for each pick of the 2023 NBA Draft</p>', 1, '2023-06-19 15:38:37'),
(5, 12, 'Steph Crury', 'Crury@gmail.com', 'Let\'s take a look at how each team fared on draft night', 1, '2023-06-08 14:12:59'),
(6, 7, 'Rajon Rondo', 'rondo@GMAIL.COM', '<p>Twins go back to back as Amen goes to Rockets at No. 4 and Pistons select Ausar at No. 5</p>', 1, '2023-06-30 17:12:31'),
(7, 8, 'Austin Reaves', 'reaves@GMAIL.COM', 'Sure the 2023 NBA Draft just ended, but it\'s never too early to look at the players likely to be a lottery pick in 2024', 1, '2023-06-30 17:15:57'),
(8, 8, 'kyrie Irving', 'kyrie@GMAIL.COM', 'Sure the 2023 NBA Draft just ended, but it\'s never too early to look at the players likely to be a lottery pick in 2024', 1, '2023-06-30 17:17:39'),
(9, 8, 'Andres P jario', 'andresjario26@gmail.com', '<p>Yes nakita kona</p>', 1, '2023-07-06 05:01:04'),
(11, 15, 'LEBRON JAMES', 'lebonjames@gmail.com', '<p>OKAY LANG UY!</p>', 1, '2023-07-06 05:37:13'),
(12, 22, 'ANDRES P JARIO', 'andresjario26@gmail.com', '<p>TEST</p>', 1, '2023-10-21 00:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `CID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  `PHONE_NETWORK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`CID`, `PHONE_NUMBER`, `PHONE_NETWORK`) VALUES
(1, '09176247012', 'SMART'),
(2, '09306247062', 'GLOBE'),
(3, '09616247089', 'TNT'),
(4, '09056247074', 'DITO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `schid` int(11) NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `schid`, `date_posted`) VALUES
(1, 'Sample 101', 'This is a sample schedule only.', '2023-07-07 10:30:00', '2023-07-07 00:00:00', 8, '2023-07-07 12:55:36'),
(2, 'Sample 102', 'Sample Description 102', '2023-01-08 09:30:00', '2022-01-08 11:30:00', 0, '2023-07-07 12:55:36'),
(4, 'Sample 102', 'Sample Description', '2023-01-12 14:00:00', '2022-01-12 17:00:00', 0, '2023-07-07 12:55:36'),
(5, 'TEST', 'TEST', '2023-01-23 08:05:00', '2023-01-23 08:05:00', 0, '2023-07-07 12:55:36'),
(6, 'TEST', 'TEST', '2023-03-14 18:14:00', '2023-03-14 18:15:00', 0, '2023-07-07 12:55:36'),
(7, 'yyy', 'dddd', '2023-03-14 08:35:00', '2023-03-14 08:35:00', 0, '2023-07-07 12:55:36'),
(8, 'ASSEMBLY MEETING', 'TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS', '2023-04-01 14:00:00', '2023-04-01 17:00:00', 1, '2023-07-07 12:55:36'),
(10, 'URGENT MEETING', 'TO ALL SCHOOLARS. WE WILL ', '2023-07-08 20:29:00', '2023-07-08 14:30:00', 8, '2023-07-07 12:55:36'),
(11, 'URGENT MEETING', 'TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS', '2023-10-20 16:50:00', '2023-10-23 16:50:00', 0, '2023-10-20 16:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `ID` int(11) NOT NULL,
  `STUDENT_NO` varchar(200) NOT NULL,
  `FIRSTNAME` varchar(255) NOT NULL,
  `MI` varchar(255) NOT NULL,
  `LASTNAME` varchar(255) NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `ADDRESS` longtext NOT NULL,
  `CONTACT` varchar(255) NOT NULL,
  `PROFILE` longblob NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `DATE_CREATED` date NOT NULL,
  `ROLE` varchar(100) NOT NULL,
  `ACC_STATUS` int(11) NOT NULL,
  `ATTACHED_ID` longblob DEFAULT NULL,
  `COURSE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`ID`, `STUDENT_NO`, `FIRSTNAME`, `MI`, `LASTNAME`, `GENDER`, `ADDRESS`, `CONTACT`, `PROFILE`, `EMAIL`, `PASSWORD`, `DATE_CREATED`, `ROLE`, `ACC_STATUS`, `ATTACHED_ID`, `COURSE`) VALUES
(4, '1882452', 'andres', 'p', 'jario', 'Male', 'dumaguete negros oriental', '0930624025', 0, 'andres', 'andres', '2023-10-20', 'STUDENT', 1, 0, 'BSIT');
INSERT INTO `tbl_member` (`ID`, `STUDENT_NO`, `FIRSTNAME`, `MI`, `LASTNAME`, `GENDER`, `ADDRESS`, `CONTACT`, `PROFILE`, `EMAIL`, `PASSWORD`, `DATE_CREATED`, `ROLE`, `ACC_STATUS`, `ATTACHED_ID`, `COURSE`) VALUES
(5, '1882469', 'Crischel', 'A', 'Jario', 'FeMale', 'dumaguete negros oriental', '0930624025', 0, 'chel', 'chel', '2023-10-20', 'STUDENT', 1, NULL, 'BSIS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `ID` int(11) NOT NULL,
  `POST_BY_ID` varchar(255) NOT NULL,
  `POST_TITLE` longtext NOT NULL,
  `POST_TITLE_SLUG` varchar(255) NOT NULL,
  `POST_DETAILS` longtext NOT NULL,
  `POSTING_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `POST_IMAGE` longblob NOT NULL,
  `POSTED_BY` varchar(255) NOT NULL,
  `UPDATION_DATE` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IS_ACTIVE` int(11) NOT NULL,
  `POST_URL` mediumtext NOT NULL,
  `VIEW_COUNTER` int(11) NOT NULL,
  `LAST_UPDATE_BY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`) VALUES
(7, '8', 'What Is PHP?', '', 'PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output', '2023-06-29 08:50:45', '', 'MDRRMO', '2023-10-20 14:32:30', 1, '', 5, ''),
(8, '8', 'South Africa – Homes Destroyed, Lives Lost After Floods in KwaZulu-Natal Province', 'south-africa-homes-destroyed-lives-lost-after-floods-in-kwazulu-natal-province', 'Several people have lost their lives and dozens of homes have been destroyed after flash flooding in areas of KwaZulu-Natal Province in South Africa.\r\n\r\nSevere weather including strong winds and heavy rain began on 27 June 2023. In a 24-hour period to 28 June, the community of Paddock in Ugu District recorded 176 mm of rain, while Sezela, also in Ugu District recorded 84 mm. During the same period Mount Edgecombe in eThekwini, the Greater Durban Metropolitan area, recorded 72 mm of rain.\r\n\r\nEmergency services carried out dozens of interventions across eThekwini on 28 June 2023. Members of the Reaction Unit South Africa (RUSA) rescued people from flooded homes in Phoenix and Verulam. Flooded roads resulted in traffic delays and several motorists between Phoenix and Verulam were stranded after their vehicles became submerged in water.\r\n\r\nOne person was reported missing and is presumed to have drowned while attempting to cross a flooded river in Zwelisha. Search and Rescue teams from RUSA were deployed to the areas but searches have been unsuccessful.', '2023-06-29 08:50:45', '', 'MDRRMO', '2023-07-14 08:11:13', 1, '', 58, ''),
(9, '8', 'Man shot dead in Bayawan City, Negros Oriental', '', 'Police investigators identified the victim as Junard Barrios.\r\n\r\nThe killing of Barrios happened on the second day of the public hearings on the proposed postponement of the Barangay and Sangguniang Kabataan Elections (BSKE) in Negros Oriental.\r\n\r\nAccording to Patrolman Glenn Ramagos, desk officer of the Bayawan City Police Office, policemen are conducting a hot pursuit operation to arrest the perpetrators.\r\n\r\nInvestigators have yet to gather more information on the circumstances of Barrios’ death.', '2023-06-30 08:50:45', '', 'MDRRMO', '2023-07-14 08:11:13', 1, '', 16, ''),
(10, '8', 'PHP What is OOP?', 'php-what-is-oop-', 'OOP stands for Object-Oriented Programming.\r\n\r\nProcedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.\r\n\r\nObject-oriented programming has several advantages over procedural programming:\r\n\r\nOOP is faster and easier to execute\r\nOOP provides a clear structure for the programs\r\nOOP helps to keep the PHP code DRY ', '2023-06-29 08:50:45', '', 'MDRRMO', '2023-10-20 14:09:17', 1, '', 14, ''),
(13, '8', 'What Is PHP?', '', 'PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output', '2023-06-29 08:50:45', '', 'MDRRMO', '2023-07-06 05:41:37', 1, '', 4, ''),
(15, '8', 'Comments in PHP', '', 'A comment in PHP code is a line that is not executed as a part of the program. Its only purpose is to be read by someone who is looking at the code.\r\n\r\nComments can be used to:\r\n\r\nLet others understand your code\r\nRemind yourself of what you did - Most programmers have experienced coming back to their own work a year or two later and having to re-figure out what they did. Comments can remind you of what you were thinking when you wrote the code\r\nPHP supports several ways of commenting:', '2023-06-29 08:50:45', '', 'MDRRMO', '2023-07-06 05:43:10', 1, '', 10, ''),
(18, '8', 'OOP - Constructor', '', 'A constructor allows you to initialize an object\'s properties upon creation of the object.\r\n\r\nIf you create a __construct() function, PHP will automatically call this function when you create an object from a class.\r\n\r\nNotice that the construct function starts with two underscores (__)!\r\n\r\nWe see in the example below, that using a constructor saves us from calling the set_name() method which reduces the amount of code:', '2023-06-27 08:50:45', '', 'MDRRMO', '2023-07-14 08:11:13', 1, '', 14, 'PERSONNEL'),
(19, '8', 'Sacramento Kings sign Domantas Sabonis', '', 'Domantas Sabonis said he was looking for a home when the Indiana Pacers traded him to the Kings in a blockbuster deal involving Tyrese Haliburton in February 2022. He has found one in Sacramento.\r\nRead more at: https://www.sacbee.com/sports/nba/sacramento-kings/article276946963.html#storylink=cpy', '2023-07-05 23:59:20', '', 'admin, MDRRMO', '2023-07-14 08:11:13', 1, '', 1, ''),
(20, '8', 'NBA In-Season Tournament details to be a', 'nba-in-season-tournament-details-to-be-a', 'A special edition of ESPN’s NBA Today will air at 7:30 p.m. ET featuring NBA Commissioner Adam Silver, the past four No. 1 overall picks (Victor Wembanyama, Paolo Banchero, Cade Cunningham and Anthony Edwards) and two-time All-Star Trae Young.', '2023-07-06 00:00:35', '', 'admin, MDRRMO', '2023-07-14 08:11:13', 1, '', 0, ''),
(21, '8', 'NBA In-Season Tournament details to be a', '', 'ADASDAS', '2023-07-06 00:01:51', '', 'admin, MDRRMO', '2023-10-20 23:31:08', 1, '', 2, ''),
(22, '8', 'NBA In-Season Tournament details to be a', 'nba-in-season-tournament-details-to-be-a', 'The In-Season Tournament’s dates, competitive structure, locations, trophy unveiling and group drawings will all be revealed during the ESPN special, which will also include appearances from KÀ by Cirque du Soleil and The Jabbawockeez.', '2023-07-06 00:02:50', '', 'admin, MDRRMO', '2023-10-21 04:07:03', 1, '', 35, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_repository`
--

CREATE TABLE `tbl_repository` (
  `FILEID` int(11) NOT NULL,
  `STUDENT_NO` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `FILESIZE` varchar(200) NOT NULL,
  `FILETYPE` varchar(255) NOT NULL,
  `FILESTATUS` int(11) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `DATETIME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `REMARKS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_repository`
--

INSERT INTO `tbl_repository` (`FILEID`, `STUDENT_NO`, `FILENAME`, `FILESIZE`, `FILETYPE`, `FILESTATUS`, `DOWNLOAD`, `DATETIME`, `DESCRIPTION`, `REMARKS`) VALUES
(34, '1882452', 'RESIGNATION-LETTER--ANDRES-P-JARIO.pdf', '458927', 'application/pdf', 1, '10', '2023-10-20 04:34:12', 'Police have issued a description of the man who was aged between fifty and sixty. They send out detailed descriptions of the job with the application forms. He has a real gift for vivid description. Events of this description occurred daily.', 'My Remarks'),
(36, '1882452', 'HTML-Fundamentals.pptx', '3623362', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1, '100', '2023-10-20 05:04:41', 'There is a problem that we need to fix. A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.', 'There is a problem that we need to fix. A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.'),
(38, '1882469', 'affidavit-for-partial-changes-in-the-baptismal.docx', '60135', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 1, '6000', '2023-10-20 10:07:14', 'AFFIDAVIT FOR PARTIAL CHANGES IN BAPTISM', 'APPROVED'),
(39, '1882469', 'certificate-of-baptism.docx', '102828', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 2, '68', '2023-10-20 10:07:29', 'CERTIFICATE OF BAPTISM', 'NOT VALID DOCUMENT'),
(40, '1882469', '1-Basic-HTML.ppt', '154624', 'application/vnd.ms-powerpoint', 1, '560', '2023-10-20 10:07:58', 'BASIC HTML FOR BEGINNERS', 'APPROVED'),
(41, '1882469', 'Individual-Attendance-Exemption-Report-(AER).xls', '8192', 'application/vnd.ms-excel', 1, '2000', '2023-10-20 10:08:31', 'INDIVIDEUAL ATTENDANCE EXEMPTION REPORT', 'APPROVED'),
(42, '1882469', '121.png', '111760', 'image/png', 1, '3500', '2023-10-20 10:08:50', 'MY IMAGE', 'APPROVED'),
(43, '1882469', 'Power-Point-Presentation.pptx', '3461674', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1, '4890', '2023-10-20 10:09:16', 'MY POWERPOINT', 'APPROVED'),
(44, '1882469', '1585625790_SQL-SESSION1.pptx', '539271', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1, '1501', '2023-10-20 10:10:06', 'SQL SESSION', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage`
--

CREATE TABLE `tbl_storage` (
  `ID` int(11) NOT NULL,
  `POST_BY_ID` varchar(255) NOT NULL,
  `POST_TITLE` longtext NOT NULL,
  `POST_TITLE_SLUG` varchar(255) NOT NULL,
  `POST_DETAILS` longtext NOT NULL,
  `POSTING_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `POST_IMAGE` longblob NOT NULL,
  `POSTED_BY` varchar(255) NOT NULL,
  `UPDATION_DATE` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IS_ACTIVE` int(11) NOT NULL,
  `POST_URL` mediumtext NOT NULL,
  `VIEW_COUNTER` int(11) NOT NULL,
  `LAST_UPDATE_BY` varchar(255) NOT NULL,
  `PDF_FILE` varchar(255) NOT NULL,
  `STUDENT_NO` varchar(255) NOT NULL,
  `FILE_SIZE` varchar(255) NOT NULL,
  `REJECTED_REMARKS` varchar(255) NOT NULL,
  `PUBLISHED_YEAR` varchar(255) NOT NULL,
  `COURSE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_storage`
--

INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(7, '4', 'Student Attendance With SMS ', 'student-attendance-with-sms-', 'PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output', '2023-06-29 08:50:45', '', 'jario, andres', '2023-10-21 10:44:04', 1, '', 14, '', '', '', '', '', '2023-10-19', 'BSIT');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(8, '4', 'RFID Attendance in Visual Basic ', 'rfid-attendance-in-visual-basic-', 'Several people have lost their lives and dozens of homes have been destroyed after flash flooding in areas of KwaZulu-Natal Province in South Africa.\r\n\r\nSevere weather including strong winds and heavy rain began on 27 June 2023. In a 24-hour period to 28 ', '2023-06-29 08:50:45', '', 'jario, andres', '2023-10-21 10:44:16', 1, '', 60, '', '', '', '', '', '2000-10-30', 'BSIT');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(9, '5', 'Barangay Certification and Record Management System', 'barangay-certification-and-record-management-system', 'Police investigators identified the victim as Junard Barrios.\r\n\r\nThe killing of Barrios happened on the second day of the public hearings on the proposed postponement of the Barangay and Sangguniang Kabataan Elections (BSKE) in Negros Oriental.\r\n\r\nAccordi', '2023-06-30 08:50:45', '', 'Jario, Crischel', '2023-10-21 10:43:20', 1, '', 17, '', '', '', '', '', '1990-10-20', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(10, '5', 'Online Scholarship Management System', 'online-scholarship-management-system', 'OOP stands for Object-Oriented Programming.\r\n\r\nProcedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.\r\n\r\nObject', '2023-06-29 08:50:45','', 'Jario, Crischel', '2023-10-21 10:21:10', 1, '', 13, '', '', '', '', '', '2023-10-21', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(13, '5', 'Clinic Booking Management System', 'clinic-booking-management-system', 'PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output', '2023-06-29 08:50:45', '', 'Jario, Crischel', '2023-10-21 10:21:55', 1, '', 4, '', '', '', '', '', '2021-10-18', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(15, '5', 'Online File storage and Sharing system', 'online-file-storage-and-sharing-system', 'A comment in PHP code is a line that is not executed as a part of the program. Its only purpose is to be read by someone who is looking at the code.\r\n\r\nComments can be used to:\r\n\r\nLet others understand your code\r\nRemind yourself of what you did - Most pro', '2023-06-29 08:50:45','', 'Jario, Crischel', '2023-10-21 12:17:49', 1, '', 11, '', '', '', '', '', '2022-10-19', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(18, '4', 'File Repository Management System', 'file-repository-management-system', 'A constructor allows you to initialize an object\'s properties upon creation of the object.\r\n\r\nIf you create a __construct() function, PHP will automatically call this function when you create an object from a class.\r\n\r\nNotice that the construct function s', '2023-06-27 08:50:45', '', 'jario, andres', '2023-10-21 10:43:59', 0, '', 14, 'PERSONNEL', '', '', '', '', '2023-10-19', 'BSIT');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(19, '5', 'EMPLOYEE SELF SERVICE SYSTEM', 'employee-self-service-system', 'Domantas Sabonis said he was looking for a home when the Indiana Pacers traded him to the Kings in a blockbuster deal involving Tyrese Haliburton in February 2022. He has found one in Sacramento.\r\nRead more at: https://www.sacbee.com/sports/nba/sacramento', '2023-07-05 23:59:20', '', 'Jario, Crischel', '2023-10-21 10:43:29', 1, '', 4, '', '', '', '', '', '2020-10-25', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(20, '5', 'Barangay Certification Management', 'barangay-certification-management', 'A special edition of ESPN’s NBA Today will air at 7:30 p.m. ET featuring NBA Commissioner Adam Silver, the past four No. 1 overall picks (Victor Wembanyama, Paolo Banchero, Cade Cunningham and Anthony Edwards) and two-time All-Star Trae Young.', '2023-07-06 00:00:35','', 'Jario, Crischel', '2023-10-21 10:43:37', 1, '', 1, '', '', '', '', '', '2023-10-20', 'BSIS');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(21, '4', 'Online Barangay Management System', 'online-barangay-management-system', 'ADASDAS', '2023-07-06 00:01:51', '', 'jario, andres', '2023-10-21 10:44:23', 1, '', 4, '', '', '', '', '', '1998-10-18', 'BSIT');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(22, '4', 'Mabinay Church System in PHP MySqli', 'mabinay-church-system-in-php-mysqli', 'The In-Season Tournament’s dates, competitive structure, locations, trophy unveiling and group drawings will all be revealed during the ESPN special, which will also include appearances from KÀ by Cirque du Soleil and The Jabbawockeez.', '2023-07-06 00:02:50','', 'jario, andres', '2023-10-21 12:55:23', 1, '', 42, '', '', '', '', '', '2015-10-24', 'BSIT');
INSERT INTO `tbl_storage` (`ID`, `POST_BY_ID`, `POST_TITLE`, `POST_TITLE_SLUG`, `POST_DETAILS`, `POSTING_DATE`, `POST_IMAGE`, `POSTED_BY`, `UPDATION_DATE`, `IS_ACTIVE`, `POST_URL`, `VIEW_COUNTER`, `LAST_UPDATE_BY`, `PDF_FILE`, `STUDENT_NO`, `FILE_SIZE`, `REJECTED_REMARKS`, `PUBLISHED_YEAR`, `COURSE`) VALUES
(24, '5', 'Student Guidance Monitoring System with SMS Notifications', 'student-guidance-monitoring-system-with-sms-notifications', '<p></p><p>Student Guidance Monitoring System with SMS Notification is an automated system that aims to easily check or track the behavior of students in the school campus. With the use of this system, the admin will be able to record the number of times a student has been called into the Guidance Office because of the offenses or complains against the student. Then, in here an SMS notification is used to notify the parents of the students. Only the admin or guidance staff has the ability to access or manage the data of every student that is in the database for security and privacy purposes.</p><div><br></div><p>Manage Student</p><p></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Add Student</li><li>List of Students</li><li>Edit Student</li><li>Delete Student</li></ul><p><span style=\"color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\">Manage Excuse Slip</span></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Add Excuse Slip</li><li>SMS Notification</li><li>Print Excuse Slip</li><li>List of Excuse Slips</li></ul><p><span style=\"color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\">Manage Complains</span></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Add Student’s Complains</li><li>Edit Student’s Complains</li><li>Delete Student’s Complains</li><li>List of Student’s Complains</li></ul><p><span style=\"color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\">Manage Courses</span></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Add Course</li><li>Edit Course</li><li>Delete Course</li><li>List of Courses</li></ul><p><span style=\"color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\">Manage Users</span></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Add User</li><li>Edit User</li><li>Delete User</li><li>List of Users</li></ul><p><span style=\"color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\">Reports</span></p><ul style=\"margin-bottom: 10px; list-style-type: square; color: rgb(63, 63, 63); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li>Print Complains and Excuse Slip</li><li>Print List of Students</li></ul><p></p>', '2023-10-21 02:10:43','', 'Jario, Crischel', '2023-10-21 15:44:01', 1, '', 20546, '', 'Student-Guidance-Monitoring-System-with-SMS-Notification-is-an-automated-system-that-aims-to-easily-check-or-track-the-behavior-of-students-in-the-school-campus.pdf', '1882469', '226102', 'NOT VALID DOCUMENTS', '2015-10-24', 'BSIS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_system_setting`
--

CREATE TABLE `tbl_system_setting` (
  `SYS_ID` int(11) NOT NULL,
  `SYS_NAME` varchar(255) DEFAULT NULL,
  `SYS_ADDRESS` varchar(255) DEFAULT NULL,
  `SYS_LOGO` longblob DEFAULT NULL,
  `SYS_EMAIL` varchar(255) DEFAULT NULL,
  `SYS_ISDEFAULT` varchar(20) NOT NULL,
  `SYS_ABOUT` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_system_setting`
--

INSERT INTO `tbl_system_setting` (`SYS_ID`, `SYS_NAME`, `SYS_ADDRESS`, `SYS_LOGO`, `SYS_EMAIL`, `SYS_ISDEFAULT`, `SYS_ABOUT`) VALUES
(1, 'COLLEGE OF COMPUTING STUDIES', 'Ilocos Sur Polytechnic State College','', 'PolytechnicStateCollege@gmail.com', 'YES', 'LeBron Raymone James Sr. (/ləˈbrɒn/ lə-BRON; born December 30, 1984) is an American professional basketball player for the Los Angeles Lakers of the National Basketball Association (NBA). Nicknamed \"King James\", he is widely regarded as one of the greatest players in the history of the sport and is often compared to Michael Jordan in debates over the greatest basketball player of all time.[a] James is the all-time leading scorer in NBA history and ranks fourth in career assists. He has won four NBA championships (two with the Miami Heat, one each with the Lakers and Cleveland Cavaliers), and has competed in 10 NBA Finals.[1] He has also won four Most Valuable Player (MVP) Awards, four Finals MVP Awards, and two Olympic gold medals, and has been named an All-Star 19 times, selected to the All-NBA Team 19 times (including 13 First Team selections)[2][3] and the All-Defensive Team six times, and was a runner-up for the NBA Defensive Player of the Year Award twice in his career.[4][5]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlog`
--

CREATE TABLE `tbl_userlog` (
  `ID` int(11) NOT NULL,
  `LOGTIME` datetime NOT NULL DEFAULT current_timestamp(),
  `LOGOUT` datetime NOT NULL,
  `STATUS` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `USERIP` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userlog`
--

INSERT INTO `tbl_userlog` (`ID`, `LOGTIME`, `LOGOUT`, `STATUS`, `UID`, `USERIP`, `USERNAME`) VALUES
(128, '2023-03-11 09:00:36', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(129, '2023-03-11 11:43:13', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(130, '2023-03-12 05:55:40', '2023-03-12 07:00:44', 1, 1, 'localhost', 'admin@admin.com'),
(131, '2023-03-12 07:00:53', '2023-03-12 09:11:01', 1, 1, 'localhost', 'admin@admin.com'),
(132, '2023-03-12 09:23:53', '2023-10-21 04:58:18', 0, 0, 'localhost', 'admin'),
(133, '2023-03-12 09:23:59', '2023-03-12 09:28:33', 1, 1, 'localhost', 'admin@admin.com'),
(134, '2023-03-12 09:28:42', '0000-00-00 00:00:00', 1, 3, 'localhost', 'registrar'),
(135, '2023-03-13 21:24:43', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(136, '2023-03-14 08:06:01', '2023-03-14 08:06:14', 1, 1, 'localhost', 'admin@admin.com'),
(137, '2023-03-14 08:14:57', '2023-03-14 09:44:10', 1, 3, 'localhost', 'registrar'),
(138, '2023-03-14 09:44:14', '2023-03-14 09:50:37', 1, 4, 'localhost', 'CASHIER'),
(139, '2023-03-14 09:50:43', '2023-03-14 09:59:03', 1, 3, 'localhost', 'registrar'),
(140, '2023-03-14 09:59:12', '2023-03-14 10:24:58', 1, 4, 'localhost', 'CASHIER'),
(141, '2023-03-14 10:25:06', '2023-03-14 10:57:51', 1, 3, 'localhost', 'registrar'),
(142, '2023-03-14 10:57:59', '2023-03-14 10:58:05', 1, 3, 'localhost', 'registrar'),
(143, '2023-03-14 10:58:17', '2023-10-21 06:44:44', 1, 4, 'localhost', 'CASHIER'),
(144, '2023-03-14 11:03:40', '2023-03-14 11:24:20', 1, 3, 'localhost', 'registrar'),
(145, '2023-03-14 11:24:26', '2023-03-14 12:17:10', 1, 1, 'localhost', 'admin@admin.com'),
(146, '2023-03-14 12:35:02', '2023-03-14 12:43:35', 1, 3, 'localhost', 'registrar'),
(147, '2023-03-14 13:47:16', '2023-03-14 06:11:00', 1, 1, 'localhost', 'admin@admin.com'),
(148, '2023-03-14 18:13:47', '2023-03-14 06:26:01', 1, 1, 'localhost', 'admin@admin.com'),
(149, '2023-03-14 18:26:24', '2023-03-14 06:28:18', 1, 1, 'localhost', 'admin@admin.com'),
(150, '2023-03-14 18:28:36', '2023-03-14 06:39:15', 1, 7, 'localhost', 'salvacion@gmail.com'),
(151, '2023-03-14 18:39:25', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(152, '2023-03-16 19:43:33', '2023-03-22 09:51:35', 1, 3, 'localhost', 'registrar'),
(153, '2023-03-16 20:00:11', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(154, '2023-03-16 23:08:37', '2023-03-16 11:13:00', 1, 1, 'localhost', 'admin@admin.com'),
(155, '2023-03-17 08:31:22', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(156, '2023-03-17 08:31:39', '2023-03-17 09:51:38', 1, 1, 'localhost', 'admin@admin.com'),
(157, '2023-03-17 09:52:36', '2023-03-17 02:13:16', 1, 1, 'localhost', 'admin@admin.com'),
(158, '2023-03-17 15:22:09', '2023-03-17 04:06:11', 1, 1, 'localhost', 'admin@admin.com'),
(159, '2023-03-17 16:08:26', '0000-00-00 00:00:00', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(160, '2023-03-17 16:09:57', '0000-00-00 00:00:00', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(161, '2023-03-17 16:10:46', '0000-00-00 00:00:00', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(162, '2023-03-17 16:12:31', '0000-00-00 00:00:00', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(163, '2023-03-17 16:12:39', '0000-00-00 00:00:00', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(164, '2023-03-17 16:20:17', '2023-03-17 08:09:19', 1, 342, 'localhost', 'andresjario26@gmail.com'),
(165, '2023-03-17 20:14:48', '2023-03-17 08:26:17', 1, 1, 'localhost', 'admin@admin.com'),
(166, '2023-03-17 20:26:30', '0000-00-00 00:00:00', 1, 356, 'localhost', 'kiven@gmail.com'),
(167, '2023-03-18 21:26:31', '2023-03-18 09:43:50', 1, 358, 'localhost', 'ANDRESJARIO26@GMAIL.COM'),
(168, '2023-03-18 21:45:43', '0000-00-00 00:00:00', 1, 358, 'localhost', 'ANDRESJARIO26@GMAIL.COM'),
(169, '2023-03-20 22:19:35', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(170, '2023-03-20 22:25:44', '2023-03-20 10:26:13', 1, 1, 'localhost', 'admin@admin.com'),
(171, '2023-03-20 22:27:12', '0000-00-00 00:00:00', 1, 358, 'localhost', 'andresjario26@gmail.com'),
(172, '2023-03-21 16:21:24', '2023-03-22 09:51:48', 1, 358, 'localhost', 'andresjario26@gmail.com'),
(173, '2023-03-21 18:36:58', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(174, '2023-03-22 09:09:05', '2023-03-22 09:52:03', 1, 1, 'localhost', 'admin@admin.com'),
(175, '2023-03-22 21:54:03', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(176, '2023-03-23 08:32:21', '2023-03-23 04:18:10', 1, 1, 'localhost', 'admin@admin.com'),
(177, '2023-03-23 16:18:15', '2023-03-23 04:18:20', 1, 3, 'localhost', 'schoolar1@gmail.com'),
(178, '2023-03-23 16:18:35', '2023-03-23 04:26:28', 1, 3, 'localhost', 'schoolar1@gmail.com'),
(179, '2023-03-23 16:26:40', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(180, '2023-03-23 21:32:55', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(181, '2023-03-24 09:34:17', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(182, '2023-03-25 18:43:25', '2023-03-25 10:19:14', 1, 1, 'localhost', 'admin@admin.com'),
(183, '2023-03-25 22:27:29', '2023-03-25 10:34:04', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(184, '2023-03-26 12:17:51', '2023-03-26 12:18:53', 1, 1, 'localhost', 'admin@admin.com'),
(185, '2023-03-26 12:19:00', '2023-03-26 12:22:17', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(186, '2023-03-26 12:22:36', '2023-03-26 12:25:39', 1, 1, 'localhost', 'admin@admin.com'),
(187, '2023-03-26 12:25:44', '0000-00-00 00:00:00', 1, 3, 'localhost', 'schoolar1@gmail.com'),
(188, '2023-03-26 12:33:43', '2023-10-20 01:06:46', 1, 3, 'localhost', 'schoolar1@gmail.com'),
(189, '2023-03-29 08:36:58', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(190, '2023-03-29 09:22:31', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(191, '2023-03-31 23:43:00', '2023-03-31 11:47:45', 1, 1, 'localhost', 'admin@admin.com'),
(192, '2023-03-31 23:48:30', '2023-04-01 01:51:22', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(193, '2023-04-01 01:52:05', '2023-04-01 01:52:20', 1, 8, 'localhost', 'schoolar2@gmail.com'),
(194, '2023-04-01 01:52:31', '2023-04-01 01:56:24', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(195, '2023-04-01 01:56:47', '2023-04-01 02:43:21', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(196, '2023-04-01 02:43:34', '2023-04-01 02:48:59', 1, 1, 'localhost', 'admin@admin.com'),
(197, '2023-04-01 02:49:05', '2023-04-01 02:57:55', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(198, '2023-04-01 02:58:09', '0000-00-00 00:00:00', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(199, '2023-04-30 18:06:51', '2023-04-30 06:08:15', 1, 1, 'localhost', 'admin@admin.com'),
(200, '2023-04-30 18:08:18', '2023-04-30 06:14:19', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(201, '2023-04-30 18:14:23', '2023-04-30 06:15:16', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(202, '2023-04-30 18:15:22', '2023-04-30 06:30:11', 1, 1, 'localhost', 'admin@admin.com'),
(203, '2023-04-30 18:30:28', '2023-04-30 06:30:55', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(204, '2023-04-30 18:31:05', '2023-04-30 06:33:21', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(205, '2023-04-30 18:48:21', '2023-04-30 06:56:06', 1, 1, 'localhost', 'admin@admin.com'),
(206, '2023-04-30 18:56:10', '2023-04-30 06:57:17', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(207, '2023-04-30 19:08:32', '2023-04-30 07:25:00', 1, 1, 'localhost', 'admin@admin.com'),
(208, '2023-04-30 19:25:04', '2023-04-30 07:28:35', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(209, '2023-04-30 19:28:52', '2023-04-30 07:34:42', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(210, '2023-04-30 19:34:47', '2023-04-30 07:41:21', 1, 1, 'localhost', 'admin@admin.com'),
(211, '2023-04-30 19:44:44', '2023-04-30 07:48:09', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(212, '2023-04-30 20:00:20', '2023-04-30 08:22:56', 1, 1, 'localhost', 'admin@admin.com'),
(213, '2023-04-30 20:24:08', '2023-04-30 08:26:44', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(214, '2023-04-30 20:26:48', '2023-04-30 08:28:16', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(215, '2023-04-30 20:28:27', '2023-04-30 08:29:15', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(216, '2023-04-30 20:29:23', '2023-04-30 08:32:26', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(217, '2023-04-30 20:32:35', '2023-04-30 08:34:14', 1, 1, 'localhost', 'andresjario26@gmail.com'),
(218, '2023-04-30 20:34:24', '2023-04-30 08:35:02', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(219, '2023-04-30 20:35:09', '2023-04-30 08:36:36', 1, 1, 'localhost', 'admin@admin.com'),
(220, '2023-04-30 20:36:42', '0000-00-00 00:00:00', 1, 8, 'localhost', 'schoolar8@gmail.com'),
(221, '2023-05-01 09:46:33', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(222, '2023-05-01 18:42:48', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(223, '2023-05-02 14:13:29', '0000-00-00 00:00:00', 1, 1, '192.168.1.210', 'admin@admin.com'),
(224, '2023-05-04 12:40:32', '0000-00-00 00:00:00', 1, 1, 'localhost', 'admin@admin.com'),
(225, '2023-05-04 18:35:42', '2023-05-04 06:36:37', 1, 1, 'localhost', 'admin@admin.com'),
(226, '2023-05-04 18:37:35', '2023-10-19 11:58:46', 1, 1, 'localhost', 'admin@admin.com'),
(227, '2023-05-19 10:48:36', '2023-05-19 10:49:34', 1, 8, 'localhost', 'admin@admin.com'),
(228, '2023-05-19 10:54:42', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(229, '2023-05-19 11:17:11', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(230, '2023-05-19 11:18:09', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(231, '2023-05-19 15:16:05', '2023-05-19 03:16:43', 1, 8, 'localhost', 'admin@admin.com'),
(232, '2023-05-23 11:14:15', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(233, '2023-05-24 08:52:27', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(234, '2023-05-25 10:47:00', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(235, '2023-05-25 13:30:58', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(236, '2023-06-01 10:04:55', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(237, '2023-06-09 16:56:12', '0000-00-00 00:00:00', 1, 8, 'localhost', 'admin@admin.com'),
(238, '2023-06-25 15:39:23', '2023-06-25 04:07:13', 1, 8, 'localhost', 'admin@admin.com'),
(239, '2023-06-25 16:08:13', '2023-06-25 04:10:39', 1, 43, 'localhost', 'alyzamae@gmail.com'),
(240, '2023-06-25 16:15:52', '2023-06-25 04:52:27', 1, 8, 'localhost', 'admin@admin.com'),
(241, '2023-06-25 16:52:31', '2023-10-20 10:29:37', 1, 2, 'localhost', 'BOADO@GMAIL.COM'),
(242, '2023-06-25 16:54:09', '2023-06-25 04:54:48', 1, 8, 'localhost', 'admin@admin.com'),
(243, '2023-06-25 16:54:51', '2023-06-25 04:56:03', 1, 9, 'localhost', 's1@gmail.com'),
(244, '2023-06-25 16:57:00', '2023-06-25 04:59:00', 1, 221, 'localhost', 'MUHAMMED@gmail.com'),
(245, '2023-06-25 16:59:15', '2023-06-25 04:59:40', 1, 9, 'localhost', 's1@gmail.com'),
(246, '2023-06-25 16:59:51', '2023-06-25 05:10:44', 1, 8, 'localhost', 'admin@admin.com'),
(247, '2023-06-25 17:11:06', '2023-06-25 05:15:35', 1, 9, 'localhost', 's1@gmail.com'),
(248, '2023-06-25 17:15:45', '2023-06-25 05:16:34', 1, 500, 'localhost', 'erich@gmail.com'),
(249, '2023-06-25 17:16:42', '2023-06-25 06:04:10', 1, 9, 'localhost', 's1@gmail.com'),
(250, '2023-06-25 18:06:04', '2023-06-25 06:06:25', 1, 221, 'localhost', 'MUHAMMED@gmail.com'),
(251, '2023-06-25 18:06:28', '2023-07-07 12:27:33', 1, 500, 'localhost', 'erich@gmail.com'),
(252, '2023-06-25 18:11:31', '2023-07-14 06:47:47', 1, 9, 'localhost', 's1@gmail.com'),
(253, '2023-06-26 21:19:46', '2023-10-21 06:54:59', 1, 8, 'localhost', 'admin@admin.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_repository`
--
ALTER TABLE `tbl_repository`
  ADD PRIMARY KEY (`FILEID`);

--
-- Indexes for table `tbl_storage`
--
ALTER TABLE `tbl_storage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_system_setting`
--
ALTER TABLE `tbl_system_setting`
  ADD PRIMARY KEY (`SYS_ID`);

--
-- Indexes for table `tbl_userlog`
--
ALTER TABLE `tbl_userlog`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_repository`
--
ALTER TABLE `tbl_repository`
  MODIFY `FILEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_storage`
--
ALTER TABLE `tbl_storage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_system_setting`
--
ALTER TABLE `tbl_system_setting`
  MODIFY `SYS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_userlog`
--
ALTER TABLE `tbl_userlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
