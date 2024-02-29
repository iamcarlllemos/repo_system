# ABMS : MySQL database backup
#
# Generated: Thursday 6. July 2023
# Hostname: 
# Database: 
# --------------------------------------------------------


#
# Delete any existing table `tbl_admin`
#

DROP TABLE IF EXISTS `tbl_admin`;


#
# Table structure of table `tbl_admin`
#



CREATE TABLE `tbl_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO tbl_admin VALUES("8","MDRRMO","P","admin","admin","admin@admin.com","admin@admin.com","ADMIN","1","2023-03-22 12:09:50","","0","");



#
# Delete any existing table `tbl_comments`
#

DROP TABLE IF EXISTS `tbl_comments`;


#
# Table structure of table `tbl_comments`
#



CREATE TABLE `tbl_comments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NEWS_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `COMMENT` mediumtext DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `COMMENT_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_comments VALUES("1","7","andres p jario","andresjario@gmail.com","Robin Lopez rejoins brother Brook on Bucks","1","2023-06-26 23:38:04");
INSERT INTO tbl_comments VALUES("2","7","andres p jario","andresjario26@gmail.com","<p>The Wildcats have had an impressive 22 players selected as lottery picks in the NBA Draft since 2010</p>","1","2023-01-01 23:37:27");
INSERT INTO tbl_comments VALUES("3","7","John Cena","John @gmail.com","<p>Here's the pick-by-pick breakdown, complete with a grade for each pick of the 2023 NBA Draft</p>","1","2023-06-19 23:38:37");
INSERT INTO tbl_comments VALUES("5","12","Steph Crury","Crury@gmail.com","Let's take a look at how each team fared on draft night","1","2023-06-08 22:12:59");
INSERT INTO tbl_comments VALUES("6","7","Rajon Rondo","rondo@GMAIL.COM","<p>Twins go back to back as Amen goes to Rockets at No. 4 and Pistons select Ausar at No. 5</p>","1","2023-07-01 01:12:31");
INSERT INTO tbl_comments VALUES("7","8","Austin Reaves","reaves@GMAIL.COM","Sure the 2023 NBA Draft just ended, but it's never too early to look at the players likely to be a lottery pick in 2024","1","2023-07-01 01:15:57");
INSERT INTO tbl_comments VALUES("8","8","kyrie Irving","kyrie@GMAIL.COM","Sure the 2023 NBA Draft just ended, but it's never too early to look at the players likely to be a lottery pick in 2024","1","2023-07-01 01:17:39");
INSERT INTO tbl_comments VALUES("9","8","Andres P jario","andresjario26@gmail.com","<p>Yes nakita kona</p>","1","2023-07-06 13:01:04");
INSERT INTO tbl_comments VALUES("11","15","LEBRON JAMES","lebonjames@gmail.com","<p>OKAY LANG UY!</p>","1","2023-07-06 13:37:13");



#
# Delete any existing table `tbl_contact`
#

DROP TABLE IF EXISTS `tbl_contact`;


#
# Table structure of table `tbl_contact`
#



CREATE TABLE `tbl_contact` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  `PHONE_NETWORK` varchar(255) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_contact VALUES("1","09176247012","SMART");
INSERT INTO tbl_contact VALUES("2","09306247062","GLOBE");
INSERT INTO tbl_contact VALUES("3","09616247089","TNT");
INSERT INTO tbl_contact VALUES("4","09056247074","DITO");



#
# Delete any existing table `tbl_events`
#

DROP TABLE IF EXISTS `tbl_events`;


#
# Table structure of table `tbl_events`
#



CREATE TABLE `tbl_events` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_events VALUES("1","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("2","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("4","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("5","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("6","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("7","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("8","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("10","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("12","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("13","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("14","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("15","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("16","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("17","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("18","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("19","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("20","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("21","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("22","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("23","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("24","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("25","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("26","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("27","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("28","ASSEMBLY MEETING","TO ALL RESIDENTS, PLEASE BE INFORMED","2023-07-06 00:00:00","2023-07-07 17:00:00");
INSERT INTO tbl_events VALUES("29","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("30","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("31","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("32","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("33","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("34","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("35","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("36","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("37","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("38","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("39","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("40","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("41","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("42","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("43","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("44","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("45","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("46","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("47","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("48","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("49","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("50","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("51","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("52","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("53","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("54","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("55","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("56","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("57","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("58","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("59","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("60","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("61","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("62","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("63","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("64","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("65","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("66","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("67","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("68","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("69","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("70","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("71","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("72","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("73","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("74","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("75","TEST","TEST","2023-03-14 18:14:00","2023-03-14 18:15:00");
INSERT INTO tbl_events VALUES("76","yyy","dddd","2023-03-14 08:35:00","2023-03-14 08:35:00");
INSERT INTO tbl_events VALUES("77","ASSEMBLY MEETING","TO ALL SCHOOLARS, PLEASE BE INFORMED THAT WE HAVE URGENT MEETING THIS COMMING SATURDAY, APRIL 1, 2023 @2PM, CAMPUS 1 GYMNASIUM BAIS CAMPUS","2023-04-01 14:00:00","2023-04-01 17:00:00");
INSERT INTO tbl_events VALUES("78","URGENT MEETING","TO ALL SCHOOLARS. WE WILL ","2023-04-30 20:29:00","2023-04-30 14:30:00");
INSERT INTO tbl_events VALUES("79","a","ad","2023-06-28 22:11:00","2023-06-28 22:11:00");
INSERT INTO tbl_events VALUES("80","Sample 101","This is a sample schedule only.","2023-04-01 10:30:00","2022-01-11 18:00:00");
INSERT INTO tbl_events VALUES("81","Sample 102","Sample Description 102","2023-01-08 09:30:00","2022-01-08 11:30:00");
INSERT INTO tbl_events VALUES("82","Sample 102","Sample Description","2023-01-12 14:00:00","2022-01-12 17:00:00");
INSERT INTO tbl_events VALUES("83","TEST","TEST","2023-01-23 08:05:00","2023-01-23 08:05:00");
INSERT INTO tbl_events VALUES("84","a","a","2023-07-05 21:21:00","2023-07-05 21:21:00");



#
# Delete any existing table `tbl_incident_list`
#

DROP TABLE IF EXISTS `tbl_incident_list`;


#
# Table structure of table `tbl_incident_list`
#



CREATE TABLE `tbl_incident_list` (
  `INID` int(30) NOT NULL AUTO_INCREMENT,
  `INC_NAME` text NOT NULL,
  `INC_DESCRIPTION` text NOT NULL,
  `INC_STATUS` tinyint(1) NOT NULL DEFAULT 1,
  `INC_DATE_CREATED` datetime NOT NULL DEFAULT current_timestamp(),
  `INC_DATE_UPDATED` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`INID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_incident_list VALUES("1","Traffic Accident","This Incident is for Traffic Accident","1","2022-04-26 09:54:35","2022-04-26 09:54:35");
INSERT INTO tbl_incident_list VALUES("2","Worker Injury","This is for Worker Injury Incident.","1","2022-04-26 09:57:41","2022-04-26 09:57:41");
INSERT INTO tbl_incident_list VALUES("3","Vehicle","Vehicle Incident","1","2022-04-26 09:58:13","2022-04-26 09:58:13");
INSERT INTO tbl_incident_list VALUES("4","Fire","This is for Fire Incident.","1","2022-04-26 09:58:33","2022-04-26 09:58:33");
INSERT INTO tbl_incident_list VALUES("5","test","test123","0","2022-04-26 09:58:45","2022-04-26 09:58:50");
INSERT INTO tbl_incident_list VALUES("6","tes","asdasd","1","2022-04-26 09:59:17","2022-04-26 10:11:08");



#
# Delete any existing table `tbl_member`
#

DROP TABLE IF EXISTS `tbl_member`;


#
# Table structure of table `tbl_member`
#



CREATE TABLE `tbl_member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DELETE_REQUEST` int(11) NOT NULL,
  `DELETE_REASON` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8;

INSERT INTO tbl_member VALUES("2","HALARIE CHLOE","P","BOADO","FEMALE","","2023","","BOADO@GMAIL.COM","1","2023-03-24","","1","0","");
INSERT INTO tbl_member VALUES("3","RUSSIANA","P","CABIGTING","FEMALE","","9383328312","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("4","SHELVYN","P","CAPULONG","FEMALE","","9750690412","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("5","SOFIA COLEEN","P","CORONEL","FEMALE","","9610042881","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("6","BRIGIET","P","DAYRIT","FEMALE","","9657203186","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("7","JOMAICA","P","MIANO","FEMALE","","9091782362","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("8","MARJAYLIN","P","EGNEO","FEMALE","","9630814901","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("9","CARRIANE","P","GARCIA","FEMALE","","9260925650","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("10","ANGELMY","P","JINGCO","FEMALE","","9074174654","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("11","PRINCESS JOY","P","NAGUIT","FEMALE","","9263482518","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("12","PRINCESS XHYRIL","P","BARING","FEMALE","","9268033114","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("13","KATHLYN","P","REYES","FEMALE","","9217965461","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("14","DIOSAMAE SIERYL","P","TERIA","FEMALE","","9101411241","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("15","MARGARET SAAB","P","YAMBAO","FEMALE","","9078915882","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("16","MARICAR","P","MALONZO","FEMALE","","9923656732","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("17","PRINCESS SHANELL","P","NARCISO","FEMALE","","9488527623","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("18","RAFAEL","P","ABELLO","MALE","","9051636885","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("19","ENZO","P","ANG","MALE","","9914953511","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("20","JOEL JAMES","P","GRAGEDA","MALE","","9166672551","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("21","RAYNIER","P","LUSTERIO","MALE","","9072332082","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("22","ZYAN ELIJHO","P","PUNZAL","MALE","","9380457556","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("23","EMIL JHAY","P","ROGANDO","MALE","","9304428544","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("24","JAMES IVAN","P","URSULA","MALE","","9772308155","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("25","MIRHO","P","ACERDIN","MALE","","9365740079","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("26","RHIELJEN","P","ARRIESGADO","MALE","","9669408228","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("27","ETHAN BLAKE","P","BACAYO","MALE","","9666600411","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("28","BELLY JAMES","P","BADAJOS","MALE","","9082180568","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("29","CRISTOPHER","P","CASE","MALE","","999234203","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("30","RODOLFO","P","COSME","MALE","","9489764807","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("31","JAMES","P","DE VERA","MALE","","9470028681","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("32","JOHN LENARD","P","DIZON","MALE","","9606006842","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("33","ELMER","P","FLORES","MALE","","9457596127","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("34","ANDREW JAMES","P","GEABROSO","MALE","","9655807126","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("35","ALLAN JOSEPH","P","JIMENEZ","MALE","","9461390980","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("36","JOHN MICHAEL","P","MIRASOL","MALE","","9068968093","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("37","JANDEIVEN","P","OLIVAR","MALE","","9057225682","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("38","AARON","P","POLICARPIO","MALE","","9755062265","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("39","CHRISTOPHER JEREMIAH","P","QUITO","MALE","","9452516152","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("40","PHILIP","P","SARDEÃ‘A","MALE","","9317267818","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("41","MANUEL ATHAN","P","SUNGA","MALE","","9563864989","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("42","KENJIE","P","TIAMZON","MALE","","9656094267","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("43","ALYZA MAE","P","ABARICO","FEMALE","<P>NEGROS ORIENTAL</P>","9658091991","","alyzamae@gmail.com","alyzamae@gmail.com","2023-03-24","VISITOR","0","0","");
INSERT INTO tbl_member VALUES("44","ARRIAN MAE","P","ATENDIDO","FEMALE","","9473546605","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("45","RIZA MAE","P","BOGNOT","FEMALE","","9706305102","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("46","ELAIJAH SABBRINAH","P","BONDOC","FEMALE","","9269450367","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("47","TRAZY ANN KIANA","P","BORJA","FEMALE","","9497435486","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("48","TRISHA","P","CALMA","FEMALE","","9091209292","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("49","CHENELLE ZYRIE ","P","CANGCO","FEMALE","","9208136143","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("50","MICAELLA","P","CAPELO","FEMALE","","9308720393","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("51","ANGELICA ELIZE","P","CASILLAN","FEMALE","","9976024564","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("52","GRACE","P","CASUPANAN","FEMALE","","9519063661","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("53","JULIENCE","P","CLAVO","FEMALE","","9282240728","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("54","PRINCESS NICOLE","P","DE GUZMAN","FEMALE","","9480839501","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("55","KARIZH","P","DIZON","FEMALE","","9305315300","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("56","PRINCESS ALEXA","P","GUINTO","FEMALE","","9565077493","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("57","LEANA GRACE","P","LEE","FEMALE","","9288727846","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("58","LEANNE","P","LEE","FEMALE","","9175409137","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("59","SOFHIA KATE","P","MEÃ‘ULAS","FEMALE","","9091245942","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("60","JEKEIRAH NIAMH","P","OCTAVIO","FEMALE","","9756171934","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("61","KATE","P","QUIAMBAO","FEMALE","","9161455979","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("62","TRESHIA MAE","P","RABULAN","FEMALE","","9654688497","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("63","KEIRA","P","TORRES","FEMALE","","9494837876","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("65","ADRIAN","P","AGUILLON","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("66","DEXTER","P","AQUINO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("67","KOBE DWAYNE","P","BALILO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("68","ANGELO","P","BETASOLO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("69","WIN GEL","P","CASTRO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("70","FER JUSTINE","P","CUNANAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("71","NHIGEL JAZ","P","DE LEON","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("72","MARVIN KYLE","P","GARCIA","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("73","GIAN BRENT","P","IGNAS","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("74","JUSTINE","P","LENON","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("75","JEFFREY","P","LUMIBAO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("76","JAEMAR","P","MONTERO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("77","JONEL","P","PALAO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("78","JAKE","P","PEREZ","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("79","KHENJO","P","RAMOS","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("80","KURT JOSH","P","RONQUILLO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("81","JUZZ","P","TALAMAYAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("82","DAVID MICHAEL","P","TANGLAO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("83","BENDETA","P","ABDULLA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("84","ANGIE","P","ARCILLA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("85","ANGELA RHINA MAE","P","BADIANA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("86","DESSERIE KIM","P","BALBOA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("87","KATHRYN LEIGH","P","BALINGIT","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("88","JISIKA","P","BARANI","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("89","MARIAN","P","CUNANAN","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("90","MICHELLE","P","DIAZ","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("91","RYZA MAE","P","FLORES","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("92","MICHAELA","P","GIDAYAO","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("93","GIAN COLLYTHA","P","HUBILLA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("94","ASHLY MHAY","P","LABORDO","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("95","LOUIE MAY","P","MADRIGALEJO","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("96","RYZA","P","MANANSALA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("97","RONALYN","P","MANDOCDOC","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("98","DHANLYN","P","PANGILINAN","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("99","RUBY JANE","P","PARANAS","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("100","RICHARD","P","DEANG","MALE","","9198603227","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("101","RYAN JAMES ","P","DEL ROSARIO","MALE","","9295440199","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("102","JIMUEL ","P","ESPINEDA","MALE","","9639247327","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("103","MICO ","P","ESPINEDA","MALE","","9639247327","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("104","A JAY ","P","FLORES","MALE","","9306398885","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("105","MARLON JR ","P","GERONIMO","MALE","","9488879501","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("106","ALBERT ANN DANIEL ","P","GUNDAYAO","MALE","","9366671300","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("107","ELMER JOHN ","P","GUTIERREZ","MALE","","9614046968","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("108","RAFAEL ","P","IBAÃ‘EZ","MALE","","9182096727","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("109","MHARK ANGELO ","P","MEMIJE","MALE","","9655601478","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("110","KYLE WINSLEY ","P","PAMINTUAN","MALE","","9360546686","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("111","MARK RAINIEL ","P","PASCUAL","MALE","","9169759257","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("112","JOSH ALEXIES ","P","QUIAZON","MALE","","9053020076","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("113","LANCE JASPER ","P","RICABURDA","MALE","","9300620018","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("114","SUNG SU ","P","RYU","MALE","","9652669696","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("115","ANGELO ","P","SAMSON","MALE","","9501940449","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("116","KURT VINCENT ","P","SANCHEZ","MALE","","9498146550","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("117","KING SAM","P","TALARA","MALE","","9169359892","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("118","NURHAYDI ","P","TAMMANG ","MALE","","9496383190","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("119","CATHALEA ","P","BARABICHO ","FEMALE","","9388750938","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("120","ROSIELYN ","P","CAÃ‘ETE ","FEMALE","","9753130827","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("121","ASHLEY ","P","DIZON ","FEMALE","","9704738873","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("122","JENNILYN ","P","GABRIEL ","FEMALE","","9510959149","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("123","JASMINE ","P","GARCIA ","FEMALE","","9265602311","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("124","KEISHA JULIANNE ","P","NAPAROTA ","FEMALE","","9069797593","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("125","DANICA JOY","P","NARAJA ","FEMALE","","9696421624","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("126","CRISSA ","P","PECSON ","FEMALE","","9058883548","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("127","JILLIAN ","P","PUNO ","FEMALE","","9106138460","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("128","JAMIE ","P","QUILATES","FEMALE","","9389888206","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("129","LHIEIAN ISABELLA ","P","RAMOS","FEMALE","","9757238707","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("130","ZHAIRA ","P","RODRIGUEZ ","FEMALE","","9069797593","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("131","LINDSEY ","P","ROXAS ","FEMALE","","9498682273","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("132","QUEENIE YSABELLA ","P","SANCHEZ ","FEMALE","","9303732718","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("133","ASHIE LUJAIN ","P","SANTOS","FEMALE","","9518670259","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("134","JANILLA ","P","SANTOS","FEMALE","","9677681917","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("135","MAY ANGEL ","P","TRAPAL ","FEMALE","","9292790671","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("136","ZYRINE VENICE","P","TORRES ","FEMALE","","9914953556","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("137","JEANICA ","P","TUMAGNA ","FEMALE","","9453323865","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("138","HAILEY LOUISE ","P","VINO ","FEMALE","","9287375351","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("139","JHAY-EM","P","ADRIANO","MALE","","9062209367","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("140","GOD FREI","P","ALEJANDRO","MALE","","9982371694","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("141","CRAVEN","P","ALIPIO","MALE","","9365738112","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("142","GIANE CKEIZER","P","BERNARDO,","MALE","","9658528759","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("143","AARON SAIGE","P","CAGUNTAS ","MALE","","9981892236","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("144",",Curt Xian","P","Dizon","MALE","","9076398192","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("145","XIAN EZEKIEL","P","GRUEZO","MALE","","9276258226","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("146","HERL PATRICK ","P","NAGUIT","MALE","","9069060012","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("147","ANELOV ","P","PANGILINAN","MALE","","9051310396","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("148","JOHNMELVIN","P","TABURADA","MALE","","9495679318","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("149","JASMINE ","P","AGUSTIN ","FEMALE","","9501126217","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("150","RIYANNA LOUISE ","P","AGUSTIN","FEMALE","","9053191931","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("151","SHAMIYA KHAY","P","ARTATES ","FEMALE","","9053191931","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("152","GOLDYLHEIN AKIA ","P","BERNARDINO ","FEMALE","","9975107641","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("153","ELYZA RICH ","P","CABRILLAS ","FEMALE","","9258163198","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("154","BRIANA KATE ","P","CALIZO ","FEMALE","","9206257261","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("155","ALLYSA EUNICE ","P","CALO ","FEMALE","","9971801182","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("156","FRANCHESKA MAE ","P","CANGCO ","FEMALE","","9264694149","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("157","SAMANTHA LEEANN ","P","DAVID ","FEMALE","","9973708931","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("158","CHLOE ","P","DELA PENA ","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("159","PRINCESS RAISHA ","P","DEMETRIA ","FEMALE","","9554839094","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("160","AIYNNA YURICA, ","P","DULAY","FEMALE","","9999367463","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("161","XYRIEL JOVBREY ","P","ENRIQUEZ","FEMALE","","9482567280","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("162","LIZYONE MOIRAH, ","P","FALLORINA","FEMALE","","9355323640","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("163","ARGIELIN MAE","P","MACARAYAN ","FEMALE","","9984981609","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("164","CASSANDRA","P","MAGANA","FEMALE","","9128620726","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("165","SHIENAME ","P","MALACA","FEMALE","","9752802414","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("166","MIKI ELAINE","P","MATSUMOTO","FEMALE","","9499162417","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("167","DIANA ROSE","P","NONISA","FEMALE","","9635289430","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("168","ARYANAH MITCH","P","ORBONG","FEMALE","","9974704790","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("169","RICH KASHIECAH","P","PADILLA","FEMALE","","9272736476","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("170","HERSCHELL KATE, ","P","PAMINTUAN","FEMALE","","9474236475","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("171","ZANE JASMIL","P","PANCIPANE","FEMALE","","9550093106","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("172","FRENCESSCA REECE","P","RAMOS","FEMALE","","9506438384","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("173","QVYXZ AIA","P","REYES","FEMALE","","9757230130","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("174","FRANCHESKA","P","ROSLIN","FEMALE","","9977545257","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("175","ERIEL MAE","P","RUBIN","FEMALE","","9218941118","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("176","MONICA MAE","P","SALES","FEMALE","","9068174294","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("177","EUNICE","P","SERRANO","FEMALE","","9328570204","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("178","SAMANTHA NICOLE","P","SUMAT","FEMALE","","9458609399","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("179","DAVID JOHN","P","ALCANTARA","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("180","NIGEL MIGUEL","P","ALFONSO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("181","JOHN GABRIEL","P","ALUYOG","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("182","STEVE LORENCE","P","ARCEO","MALE","","9661747625","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("183","MARK GERRY","P","AZUPARDO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("184","KLEIN NATHAN","P","BAHIL","MALE","","9706631150","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("185","NIEL JR","P","BULACAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("186","JOHN CARLO","P","DEGUZMAN","MALE","","9392684801","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("187","CHARLSON","P","DELA CRUZ","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("188","FREDDIE JR","P","DELOS SANTOS","MALE","","9676724554","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("189","JOHN MICHAEL","P","ENFESTAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("190","MARK CEDRAINE","P","IRAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("191","PATRICK KIAN","P","LACSON","MALE","","9067475239","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("192","ELROD JAY","P","NUNAG","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("193","RAZEL","P","OSICO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("194","MATHEW","P","PAGHUBASAN","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("195","CHRIS TOFFY","P","PAGUIO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("196","MARK","P","PINEDA","MALE","","9357295830","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("197","HARVEY","P","POQUITA","MALE","","9460850556","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("198","MARK JHARED","P","QUIAMBAO","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("199","SYDRICK","P","QUIMBA","MALE","","9564616418","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("200","PRINCE","P","SALUDE","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("201","ROD EMZRICK","P","SAMPANG","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("202","MIKE MARLOU","P","SANCHEZ","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("203","MARLON","P","SANTOS","MALE","","9155497829","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("204","JAMES DAVID","P","TALAOGON","MALE","","9659565511","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("205","JEANNE REY","P","AGUILAR","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("206","RESHIE","P","AGUILLON","FEMALE","","9614046972","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("207","JILLIAN","P","ALFONSO","FEMALE","","9391717930","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("208","ARIELLE ANNE","P","ALMOSERA","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("209","JAHNEYA JOYCE","P","ALONZO","FEMALE","","9168891915","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("210","KLISHINA","P","ARTATES","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("211","VANESSA","P","BITICON","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("212","CHRISTINE","P","CARIN","FEMALE","","9193299764","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("213","RIAHNA JOYXE","P","DEL ROSARIO","FEMALE","","9295440199","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("214","IRISH LORRAINE","P","MARASIGAN","FEMALE","","9360713331","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("215","JOBEL MAE","P","MATOL","FEMALE","","9391685970","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("216","YASSI","P","SAMBILE","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("217","IXARA VENICE","P","VELARDE","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("218","MARYEN","P","VERDIDA","FEMALE","","9488270723","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("219","YUHAN","P","VERUTIAO","FEMALE","","9386627737","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("220","JOANA MARIE","P","YANGA","FEMALE","","9633061435","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("221","MUHAMMED","P","ABDULJABBAR","MALE","DUMAGUETE CITY","9506039796","","MUHAMMED@gmail.com","MUHAMMED@gmail.com","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("222","ROBNEY KLYDE","P","ADORNA","MALE","","9988439110","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("223","LEANDRO","P","BARBOSA","MALE","","9075475732","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("224","NELJHON MAR","P","BASILIDES","MALE","","9265619385","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("225","IKEDA","P","CEREZO","MALE","","9121205992","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("226","ALDRIX MYLES","P","DAVID","MALE","","9555647744","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("227","PRINCE HURLEY","P","DE DIOS ","MALE","","9926202549","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("228","JUSTIN","P","DELA TORRE ","MALE","","9772792386","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("229","JAY MART","P","EDONG","MALE","","9516292164","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("230","JOHN ANDREW","P","GONZALES ","MALE","","9668805416","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("231","MONNICO","P","IBE","MALE","","9551436352","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("232","AARON JHON ","P","IGNACIO","MALE","","9163151915","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("233","ABDUL HARIM","P","JALALODEN","MALE","","9104988258","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("234","CYRUZ ASHLEY","P","LOON","MALE","","9318709988","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("235","ALEXANDER","P","MEDINA ","MALE","","9121433442","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("236","ANGELITO","P","ORLAIN","MALE","","9065919989","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("237","MARCUS LAWRENCE","P","QUIAZON","MALE","","9322115213","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("238","KUTR NORMAN","P","SANCHEZ","MALE","","9367923754","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("239","QRSTUV MYKEL","P","SANTOS","MALE","","9288013098","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("240","SHANELLE","P","ACERDIN","FEMALE","","9461900341","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("241","ANGEL QUIEL","P","AGALA","FEMALE","","9300065996","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("242","SHANELLE JANE","P","ARCEO","FEMALE","","9661747625","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("243","PAULYN","P","BENTIVOGLIO","FEMALE","","9388492527","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("244","ANNALYN","P","DIZON","FEMALE","","9303727003","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("245","JESSA","P","ERAN","FEMALE","","9386023321","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("246","JESSA LHANE ","P","GUINA","FEMALE","","9355769599","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("247","RAQUEL RHEIN","P","IGNACIO","FEMALE","","9052654974","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("248","MARIA REAZ","P","MACAPAGAL","FEMALE","","9268549034","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("249","QUINCE UNICE ","P","PANAGLIMA","FEMALE","","9707559257","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("250","SHARIAN MAE","P","PANGCOGA","FEMALE","","9482566631","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("251","SOPHIA VIANCAH","P","PERALTA","FEMALE","","9612452137","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("252","JAY ANN","P","PEREGRINO","FEMALE","","9187045394","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("253","AICELL","P","SANTOS","FEMALE","","9066377831","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("254","RHIAN","P","TOLENTINO","FEMALE","","9060266634","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("255","EOWYN JEWEL","P","TULAWAN","FEMALE","","9662501282","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("256","JELLAN ROSE","P","TUMAGNA","FEMALE","","9126815907","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("257","RALPH KIRBY","P","BAGARES","MALE","","9973667858","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("258","THOMAS RUSSELLE","P","BUSTOS","MALE","","9619031641","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("259","JARELLE KENNETH","P","CALARA","MALE","","9269053233","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("260","RANCE JEYRO","P","CANLAS","MALE","","9976572370","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("261","JOSEPH JR.","P","CAYANAN","MALE","","9486973654","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("262","JOSEPH JHUNE","P","GARCIA","MALE","","9550470775","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("263","ADRIAN JAMES","P","IGNACIO","MALE","","9999804282","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("264","RONNIE JR.","P","LAVARIAS","MALE","","9675009443","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("265","JAY JR.","P","MANALO","MALE","","9677848374","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("266","KHYLE JACOB","P","MANUIT","MALE","","9092040271","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("267","ZAKIYAH LEVI","P","MERCADO","MALE","","9510959799","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("268","JOHNREY","P","PANLICAN ","MALE","","9672788393","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("269","MARK RILTHONY","P","REGOSO","MALE","","9511564650","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("270","JOHN ANGELO","P","SESE","MALE","","9613307606","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("271","JERAMIEL","P","SORIANO","MALE","","9515445980","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("272","MHARCDEAN ZHIELLO","P","TALAOGON","MALE","","9291620013","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("273","MIGUELLE XYRUS","P","TANHUECO","MALE","","9261819590","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("274","HARVEY KAZIMIER","P","VELASQUEZ","MALE","","9997739890","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("275","JOSHUA","P","WILLIAM","MALE","","9166227937","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("276","MA. CEROMAE","P","BALBOA","FEMALE","","9074905644","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("277","KYLIE MAE","P","CALLANTA","FEMALE","","9633929216","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("278","ARJHEN","P","CASTRO","FEMALE","","9750465524","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("279","YUKI SHANIA","P","CEBALLOS","FEMALE","","9473529979","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("280","LEEZET","P","DIZON ","FEMALE","","9635266930","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("281","JUWEL KEISHA","P","FLORES","FEMALE","","9088969388","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("282","MARIZ ","P","GUARINO","FEMALE","","9270416696","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("283","JUSMINE ","P","INOCENCIO","FEMALE","","9923118534","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("284","AKIA","P","LLEDO","FEMALE","","9533552583","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("285","REAN","P","MARIMLA","FEMALE","","9086681139","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("286","TRIXIE","P","OLIVAR","FEMALE","","9057225682","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("287","MISHA JEWISH","P","PAMINTUAN","FEMALE","","9273375789","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("288","LOANNE","P","PANGILINAN","FEMALE","","9306449655","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("289","CHIN MAE","P","PINEDA","FEMALE","","9061755571","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("290","MAX ANGEL","P","RAMOS","FEMALE","","9461416119","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("291","JAY ANN","P","SABALBORO","FEMALE","","9925841751","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("292","JAY ANN","P","SOLIMAN","FEMALE","","9551874551","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("293","FAITH MOIRAH","P","SONGCO","FEMALE","","9420635797","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("294","PATRICIA ANN","P","SURMIEDA","FEMALE","","9279387513","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("295","ARCEM","P","TIMPUG","FEMALE","","9368836703","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("296","KRISTINE KEITH","P","TAYAG ","FEMALE","","9101573711","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("297","MARISSA","P","MARTINEZ","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("298","ADRIENE","P","AGUARIN","MALE","","9493985261","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("299","KYLE MIGUEL","P","ALLERA","MALE","","9269973352","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("300","MARK JOHN","P","BALAJADIA","MALE","","9097845772","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("301","KEADEN PAUL","P","BATUIGAS","MALE","","9086680082","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("302","JHON JOHN","P","COSME","MALE","","9489764807","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("303","JHUN JHUN","P","DACUBA","MALE","","9202510607","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("304","RAINER","P","DANCIL","MALE","","9322152723","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("305","ANDREI","P","DE GUZMAN","MALE","","9504858754","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("306","JOHN MATTHEW","P","ENRIQUEZ","MALE","","9564179311","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("307","JAYDEN PAUL","P","GARCIA","MALE","","9265602311","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("308","MATT ANGELO","P","GARCIA","MALE","","9205128255","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("309","DMITRI NATHAN","P","GUARINO","MALE","","9706716757","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("310","MARK JUSTIN","P","MARTINEZ","MALE","","9097196526","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("311","SHAWN MARSHALL","P","ORTIZ","MALE","","9053464731","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("312","DARELL","P","PANGILINAN","MALE","","9367356615","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("313","NAIJEL","P","RAVILO","MALE","","9610045060","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("314","MARC LEIVEN","P","REYES","MALE","","9613536472","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("315","JOHN DAVID","P","SEGOVIA","MALE","","9702133624","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("316","JOSE","P","SIMBULAN","MALE","","9656092258","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("317","JOHN LEANARD","P","SUAREZ","MALE","","9357789396","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("318","ROSE ANN","P","ABELLO","FEMALE","","9500688624","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("319","MAYRA","P","DAGPIN","FEMALE","","9363545589","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("320","CRYSTAL LIU","P","DAVID","FEMALE","","9655807126","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("321","REYNALYN","P","DIZON","FEMALE","","9751703514","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("322","JOYCE ANN","P","FELLOSAS","FEMALE","","9303018292","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("323","MARIALYN","P","GARFIL","FEMALE","","9610949773","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("324","SENDA","P","JAKILANI","FEMALE","","9679708454","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("325","JANA NICOLE","P","MANOLID","FEMALE","","9708088615","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("326","ANGELIKA","P","MIRANDA","FEMALE","","9396592498","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("327","ANNA MAE","P","PALAO","FEMALE","","9464366340","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("328","KIMBERLY MAE","P","PALLAN","FEMALE","","9619824217","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("329","PRISCILLA KATE","P","PASILAN","FEMALE","","9999565856","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("330","MARIELYN","P","PINEDA","FEMALE","","9559131840","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("331","JONALYN","P","POLICARPIO","FEMALE","","9815778418","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("332","HEART ANGEL","P","RAMOS","FEMALE","","9319448379","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("333","FRANCINE JOYCE","P","REPALDA","FEMALE","","9331594426","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("334","SOFIA ANA","P","TIONGQUICO","FEMALE","","9566588375","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("335","EDLYN GELTA ISALINE","P","URGEL","FEMALE","","9562288695","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("336","KIM ROSES","P","YANGA","FEMALE","","9267980391","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("337","SAMANTHA NICOLE","P","YOSORES","FEMALE","","9981797028","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("338","JOHN PAUL","P","PAGLINAWAN","MALE","","9659565378","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("339","RAINER","P","SALAZAR ","MALE","","9701685341","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("340","KEVIN CLYDE","P","WHITNEY ","MALE","","9157819447","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("341","ANDRIC ","P","MANASAN ","MALE","","9657143180","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("342","CLINTON CLAINE","P","SINGIAN","MALE","","9355087461","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("343","ANTHONY","P","PADERA ","MALE","","9071155299","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("344","MARJON JR.","P","GIRAY","MALE","","9090369200","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("345","PRINCE JUSTIN","P","GALANG","MALE","","9656637761","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("346","PSALM NOAH ","P","BALUYUT","MALE","","9338138462","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("347","MIGUEL","P","SANTOS","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("348","JEFFREY","P","NACPIL","MALE","","9061204403","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("349","JUSTINE","P","DE GUZMAN","MALE","","9392684801","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("350","R-JAY","P","RAMIREZ","MALE","","9278506901","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("351","NICK CHRISTOPHER","P","MORATA","MALE","","9496070680","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("352","GABRIEL","P","ANIHAL ","MALE","","926977467","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("353","JULIANE KYLE","P","FERNANDEZ","MALE","","9392616353","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("354","MICHAEL JR.","P","OMBAL ","MALE","","9097029927","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("355","EXEQUIEL NICOLE","P","FERRARIS","MALE","","9383481857","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("356","HEART","P","CONDE","FEMALE","","9217464347","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("357","SOPHIA","P","GULA","FEMALE","","9922645909","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("358","PRIME JEWEL","P","PAGCALINAWAN","FEMALE","","9502074471","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("359","ALEXA MARIAE","P","BONDOC","FEMALE","","9498735664","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("360","SHERILYN","P","BALAJADIA","FEMALE","","9066374054","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("361","EHRA ZYRELLE","P","PERALTA ","FEMALE","","9657049198","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("362","CHANTAL","P","DIANGSON ","FEMALE","","9267980636","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("363","ANTONETTE","P","ALTICHE","FEMALE","","9187541054","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("364","WENGELICA","P","RICARO ","FEMALE","","9100458487","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("365","DANIELLA","P","CARLOS","FEMALE","","91266008227","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("366","ALTHEA NATHALIE","P","CALMA","FEMALE","","9464421347","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("367","JESSELLA MARIE","P","CUNANAN","FEMALE","","969666436","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("368","IRENE KYTE","P","BAUTISTA","FEMALE","","9107390306","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("369","PRECIOUS DOROTHY","P","TOLENTINO","FEMALE","","9752021811","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("370","SHANNIN","P","MAHUSAY","FEMALE","","9206663557","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("371","PRINCESS AYESHA","P","TAN","FEMALE","","9156217743","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("372","SAMANTHA CHLOE","P","AGNO","FEMALE","","9270348246","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("373","SHAHEERA MAE","P","RONQUILLO","FEMALE","","9551281866","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("374","RACHEL ELAIZA","P","TORRES","FEMALE","","9696096585","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("375","CARL STEVEN","P","ABUCAY","MALE","","9157339173","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("376","WINZIEL","P","ACOSTA ","MALE","","9637982006","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("377","ROY MARTINALDREI","P","CABALLA","MALE","","9553174474","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("378","GIDEON JOSH","P","DELA VEGA","MALE","","9359939513","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("379","CARL YUAN","P","JULATON","MALE","","9753130487","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("380","NATHAN","P","MANALOTO ","MALE","","9350051635","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("381","AARON JAMES","P","MANANIS","MALE","","9169758654","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("382","KEAN","P","MANIO","MALE","","9318438169","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("383","RANCE DAREN","P","ODI","MALE","","9482105722","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("384","BERNARD JOSEPH","P","POLICARPIO","MALE","","9071685225","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("385","ALLEN IVERR","P","REYES","MALE","","9922759768","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("386","CLYDE JHAY","P","SANTOS","MALE","","9706421447","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("387","APRIL JOY","P","ALILING ","FEMALE","","9555330464","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("388","ANA KIM","P","ANTEQUISA","FEMALE","","9100676990","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("389","NATALLA ROSE","P","BONA","FEMALE","","9974822673","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("390","MERCY","P","DELA CRUZ","FEMALE","","9639968532","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("391","AMANDA MARGARETTE","P","DIMLA","FEMALE","","9488532212","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("392","JUSTRAIN","P","GAMBOA","FEMALE","","9483427811","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("393","SHEILA MAY","P","GARCIA","FEMALE","","9199753683","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("394","JESSA","P","GONZALES","FEMALE","","9357365524","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("395","MAE ANNE","P","MALICAD","FEMALE","","9360266891","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("396","NIKKY","P","NAGUIT","FEMALE","","9275332099","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("397","BRIANNA","P","ORMILLO","FEMALE","","9703888360","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("398","CARLA MAY ","P","PANTIG","FEMALE","","9303633628","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("399","MARIE ADRIANNA","P","RAMOS","FEMALE","","9757238707","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("400","EUREE","P","RECIO","FEMALE","","9459737560","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("401","SHANTAL AMBER","P","WALTER","FEMALE","","9268867884","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("402","ANGEL","P","YERRO","FEMALE","","9630842124","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("403","ASHLEY NICOLE","P","PORDAN","FEMALE","","9055025022","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("404","ZAC THEODORE","P","AQUINTANIA","MALE","","9159976032","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("405","ALBERT","P","CAYETANO","MALE","","9531462914","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("406","ROBIN","P","DIOSAY","MALE","","9106138424","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("407","AL JACOB","P","FERNANDEZ","MALE","","9513471345","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("408","CYRON ","P","FERNANDEZ","MALE","","9359934985","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("409","WILLIAM JR","P","GACULA","MALE","","9473511293","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("410","JOHN LLOYD","P","LIM","MALE","","9304251559","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("411","JASTINE","P","LUGTU","MALE","","9636864344","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("412","JONASH","P","MALACA","MALE","","9708293662","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("413","MANUEL","P","MAÃ‘ALAC","MALE","","9756056802","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("414","RICHTOFF","P","NABONG","MALE","","9363791726","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("415","REINOLD JORDAN","P","NAGUIT","MALE","","9359009113","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("416","JASPER","P","PANGAN","MALE","","9533556814","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("417","ADRIAN","P","PERALTA","MALE","","9067152902","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("418","JAKE","P","RACMAN","MALE","","9503704188","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("419","MARK ANGEL","P","SULA","MALE","","9926079199","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("420","PRINCE ALDRIN","P","TORRES","MALE","","9205128255","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("421","NICK CHRISTOPHER","P","TROBADA","MALE","","9066375120","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("422","RICA","P","BONIFACIO","FEMALE","","9182378714","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("423","TRISHA MAE","P","CATACUTAN","FEMALE","","9269978218","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("424","ARGEM","P","CERILLO","FEMALE","","9753105365","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("425","JHUMAICA","P","DE LEON","FEMALE","","9676737975","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("426","MAGZ XYRIS AUDREI","P","ENRIQUEZ,","FEMALE","","9123485283","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("427","CRIZZEL","P","FERNANDEZ","FEMALE","","9359934985","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("428","MICHELLE","P","GANADEN","FEMALE","","9636731239","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("429","JAIRAH FAITH","P","GUEVARRA","FEMALE","","9458757665","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("430","ANDIE KIHANNA","P","JUNI","FEMALE","","9495910004","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("431","MARY KRISMA","P","LEYTE","FEMALE","","9558478559","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("432","LEY ANNE","P","LOPE","FEMALE","","9708246125","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("433","KRISTAL MAE","P","MALABED","FEMALE","","9973678402","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("434","ALEXANDRA IRISH","P","MALLARI","FEMALE","","9206453170","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("435","JILLIAN JOY","P","MARCIANO","FEMALE","","9479608502","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("436","PRINCES JOY","P","PAGULAYAN","FEMALE","","9356762009","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("437","CHALXIA GRAINE","P","PANGILINAN","FEMALE","","9553626553","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("438","LOREINE","P","PANGILINAN","FEMALE","","9355117396","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("439","KRYSTAL","P","REYES","FEMALE","","9708565014","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("440","JERCELL","P","SANTOS","FEMALE","","9637982274","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("441","BRIONNA SEANTAL","P","TALAVERA","FEMALE","","9456670967","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("442","SHANTAL MAE PAOLINE","P","TORRES","FEMALE","","9081177321","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("443","ERIC","P","ABUDER","MALE","","9617656289","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("444","NIGEL","P","ALEMAÃ‘A","MALE","","9952846373","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("445","MARK CEDRICK","P","ARCEGA","MALE","","9056003973","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("446","KELLION","P","BALUYOT","MALE","","9359532415","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("447","AROL KING","P","CALMA","MALE","","9269048292","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("448","R-JAY","P","CASTRO","MALE","","9670079590","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("449","REYDEN","P","COÃ‘EJOS","MALE","","9707792545","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("450","JOHN PAUL","P","DELA CRUZ","MALE","","9771506989","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("451","ARON JOHN","P","GONZALES","MALE","","9957600566","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("452","JAKE","P","LAMB","MALE","","9368796945","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("453","KURL REINIER","P","LARA","MALE","","9318663480","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("454","MARK JUSTINE","P","LICUANAN","MALE","","9276074727","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("455","JAN MARI","P","MEDINA","MALE","","9482200184","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("456","JAYMILES","P","PANLILIO","MALE","","9973756127","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("457","PETER REY JR.","P","ROGAN","MALE","","9991804242","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("458","DEM ELLYZETHER","P","SORIA","MALE","","9264253968","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("459","KURT","P","TALARA","MALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("460","RAVEN","P","TOLENTINO","MALE","","9060266639","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("461","PRINCESS JHANE","P","ADANO","FEMALE","","9663841643","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("462","FRITZY RAE","P","ARCE","FEMALE","","9993447941","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("463","ERICA JEAN","P","ARROJO","FEMALE","","9913319225","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("464","MICHELLE","P","ASPA","FEMALE","","9276195163","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("465","RHEA MAE","P","BAGUIO","FEMALE","","9288985125","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("466","IRENE","P","BERGANIA","FEMALE","","9511276114","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("467","FRANCHESKA MHEY","P","BRIONES","FEMALE","","9361262840","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("468","MICHIE LEANAH","P","CANITES","FEMALE","","9364804328","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("469","LADY PATRICIA","P","CASYAO","FEMALE","","9751208635","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("470","MARIAN","P","FIGURA","FEMALE","","9991849560","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("471","JOANA MARIE","P","GREVALEZ","FEMALE","","9350039607","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("472","RONALYN","P","LAVARIAS","FEMALE","","9082296407","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("473","IRENE","P","MANANSALA","FEMALE","","9690666436","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("474","BARBIE JOY","P","NARCISO","FEMALE","","9066375197","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("475","JANELLE","P","OLAN","FEMALE","","9560046017","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("476","AUGUSTINA","P","OLINGAY","FEMALE","","9670079590","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("477","PERCHIELYN JOY","P","PASCUAL","FEMALE","","9169759257","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("478","DELAROSE","P","PASION","FEMALE","","9983173904","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("479","EOS GABRIELLE","P","PEREZ","FEMALE","","9672843255","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("480","JENICA","P","SISON","FEMALE","","9363857228","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("481","RENZY RAFFY RANIER","P","MIGUEL","MALE","","9984852702","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("482","JOWANA MARIE","P","LABRADOR","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("483","RICA MAE","P","DE VERA","FEMALE","","9630842188","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("484","JHILLIAN","P","ATENDIDO","FEMALE","","9397538795","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("485","KYLE","P","GARCIA","MALE","","9502336307","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("486","JHANZ HAJIE","P","ENCLUNA","MALE","","9693583511","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("487","NINO","P","SIMBULAN","MALE","","9756158638","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("488","BHIEN JACOB","P","TIMPUG","MALE","","9675641553","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("489","JERIC","P","NAZAL","MALE","","9701912797","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("490","ASHLEY","P","MADRIGALEJO","MALE","","9307518427","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("491","PONCHA","P","GUTIERREZ","FEMALE","","9307359953","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("492","JIAN MIKE","P","DURON","MALE","","9461390963","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("493","JIRO","P","HAGOS","MALE","","9636731239","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("494","MARIA NORAIZA","P","UY","FEMALE","","9083157823","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("495","MARY ANGEL","P","RONCAL","FEMALE","","9069796311","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("496","LANCE EDWARD","P","ECHAVES","MALE","","9517569230","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("497","INIGO","P","GONZALES","MALE","","9996603437","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("498","MARINEL","P","CAYANAN","FEMALE","","9085091927","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("499","FATE GIVEN","P","CASUPANAN","FEMALE","","9461505245","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("500","ANDRES","P","JARIO","MALE","PANTAO MABINAY NEGROS ORIENTAL","09306247025","���� JFIF      ���ICC_PROFILE   �lcms  mntrRGB XYZ �   	  acspMSFT    sawsctrl              ��     �-hand�� =@��=@t,���"�                               	desc   �   _cprt     wtpt     rXYZ  ,   gXYZ  @   bXYZ  T   rTRC  h   `gTRC  h   `bTRC  h   `desc       uRGB            text    CC0 XYZ       �T    �XYZ       o�  8�  �XYZ       b�  ��  �XYZ       $�  �  ��curv       *   | ��u��N
b���j. C$�)j.~3�9�?�FWM6Tv\dl�uV~��,�6�����۾����e�w������ C 
	
		
%!'&$!$#).;2),8,#$3F48=?BCB(1HMH@M;AB?�� C
�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? �A��3�@�g�� ��.3@�9�Q@�94��RsL4=�{P�z�Aۭ�P( ��(R�w��(��Z (h�LR�E
J_�E�:��	GҗҎ�( 4>�P����ڐ��( ��R*`'8�u�4v��(��(�R �)i(�L�%)��@!��u 
QI@Ƞc��-���qN��b�R������N� �(�8�Pb�)ih)y��PRu �QF(���R�@	E/QE��Z:�RqJi( ��(�c�;Ҋ 9�撗ހ���PIJ)(h4R�J)~���1
1@KIK@ Rњ ��� ��v���>�Ph)3�KHx �QIޗ�@w����/z;�:QJh�	E)� u=)(��ގ�v��j;t��(� ����P N
3G��(f�� 
(�����(����`-))h ��E�IE�)
(�� �(��Nihb����(}(Q@�P;ҚJ/z(����p( ���Kڀ
JZ(�
)�Rⓚ( =i)h������Z;�KF(��(��� 4QE�%8�b�(��C�E/~h���KڌPih�.(1E.;�L�QH R�h�- ��� QE 
(P i��ސ�v�E��
;�@�J^��RR=(�@�RR�@	ɢ�PA�Z ;�E'4 ���b����R �!��%0qE)��
)s�I@��� ;�ފ( �4��ڐ%L���� 4g�R�}h ��Q�( ��(QA��=(��� QE�(����������Qڀ
(P�Z(���J)h���%Q@t���GjJ(QE�b�
("���JQE�i2h��
R ��\S �Q���O��J

3A����E
))h �Gz(����ڊ J(�A�`(�QE b�( =(�E Q�(��(�Bu��ڊQE QE w��
(��
(���E��4 )h��{�E Rw����(QE��b�A�A�ZL�@ғ�-%0�b��/4���PQ�^�PIޖ� (���
AJ)( �� � ��b�� %��� Qڊ
N(�K@	ڊZJ (4���
(�'4�u7�S�J`�RP�N�R�Ph�����4�A���E% -
()x�@�Gj 
^)(<�Rњ)�{QE��{Q�
(��&ih���Kڒ��Z(������LQ@ţ��Z)=�h;�KI@Ţ��-⒊Q�\�b�(� �������aEP ��E��( ��E �t��-(������(�����Sh���њ)?@/z)9���(�E-% ��( ��-'z Z(���}(���Ev��(�QGj��h�TP ��� f��P9�@�( �f�QE�u�� QE Q�- '4��&(��sGJ9�4R�ڀ�J);���( ���������@h�QGj ;����� ���)����Gz �8��(��h��H ��E-2D����� -�R�GJJQ�j �Q@�� �P(��%P�E@I�h�K@	�(�� ��PzPޖ��@

1E QE% /j(�� QIހ4QIހ��'z\�0��Qށ
))h�a�J(�4RQ����h�@IFh� �
(���bњJL������<�w��-�P 4�{Q@RR�F(�� b��-0��J@-�� QE QKIL��R� NiEPފ
� sIږ��sE� (�>�PҔRQ@
h�� >�����
ZJ( ��KGj )3KE ��w��A��( z��J\� );QG� !4Ph���Pފ(�E!4PR�P:S$(����(�IKڐ	J(4w�Rъ( ��( ��( �R�w�� Piq� �R�Q@Q@-v� �(��
N�� L���Z (��� ���u��%-�
(Ώj (h���E)�I��i(z���ԼPQ�E.)���ZJ@�h�@J(��
){Q@ĠQE
)z�C@%- �R�@	KE/z AE (����J\�Qڊ:��QE�%t�@�4(�PEP@��� .sEw��1I�j Z;�A�@Ť����3K@�P1z)(�@M�<Pq@
)���E R����� ���( �E��Դ�P�w�� R�R�����z\P���( ���)��v�� 9���� Pz�I@EJJ@-QL� Q�Iփ@��Q��K@ڊAE -%PG����R�~�QHaE� �QE (���Q@��QK��)h� i(��@��� (�� (�A�4 �qE �{R��� ���������'z ZJQE ��=)	��w��&}({�I߭ZJQIL�hǭb���(��;�L�(��(4 P(���
)iJ 3E Q�@E% QK�E '^�R�PKۊNԴ 

 ZJN�P ~�QE0њ(�H QECGjZ0h�QE
):�� �Q@�)E /�!��I@��Q@��;Rf��(� Iޖ��h����)(h���g��ފJZ (�RQ� ����f�Iތ�~ 
(�'ց��Q�L�P<�!Ɠ<�I� Z)3Fh�撗<Sh�nh�� )8��u�4(����h݌Sb�^��04��
�Ԡ�L�E&ii P)(�b��R��IE (����J )i)hO����4����

 Z)(��4��� QA��G8�R�
^ԔS ��ʊ Z(�8 f�JQӥ QE �������KҀ����-% R�(�������b�ER�����E Ph(��RP0��f��Q�PQ֎�� ���� ))i;�E
 (��P :Qފ( �h�E'�@
)9�� ���P M'&�Hy�y���Pږ���Z(�EsIKE 袊 1�R�b�\�P@��@-%��(h���J3E� �������Ru��/jJZ :QIJ(>��P:�(����Qޖ� (��	EPEw������4 Ph�(&��QE 
(�4PE��(��)(h�IK@sE'J Z)( }ih�I@���Q@��JSI@����P1٤�Gj(�R(P(���QE
(���4RQ�P�Kړ4��y��'#4��� �pyf��y��3ץ I��Fj(�4ʿ��r|�i��8�R^ O8�]��a �)�树A���4˞�\�Ƭ��i��*���9j,:�:�3�?p#�r���ڄ��3ZP_�(;��4X.l���(l�d���Z��r��Vq�j?9s��%�PCA�I�R��e�z��)�)��s�s�W���pj�9=(�=(�;Vjݮ	��mnO���Z���YS�"ɪ
@�E�� Z
N)sE �1E0�(���t4�� (�� Z
JZN� R�)9��Gz
)(ɠ�
)
�q��L�VΦ��ݓ�5RML�9�t�:_�.q�P�tA�xj�(�����ur�r���+Ύ]AW�z�Z�MITXc�5�Kx�Z�Ubnu-��n�I�
�8�X�)�F@����|v��Vt9�7sR��G�+������BA�P\�bKw��X�q�#<��3�=�z׵�d@^���'���:N3����R)�wg�Z���T�;�"���5sp��9`}1ZW{��{�`ldR��M�
9�uY�Ap	�;���UXfܣ:�E ?4�܌�����% ���I�Z Z;�R� ���&��_�6���q��Fh�4 �u��� 
ZJ(h��L R�( �����QE ��Q@ w�� -%���Z%QL���������){�Gj�(� ���v��(�AڔRv��bw��K��)hh���Rw���E���
(���(��`��(�@z(��I@�Gz`ZCH��.)8���OJ`-�PE��EPE% f�ޒ�`(��%(���;Q� 
N(�b�ފJ (�� J(4PtPh�AFh'酅 8��L�y@�i��Z��qF�S�H#ڔN֋owj�IB�P��! �u������4��%���B�Q�9�n�Ta�	�f\ޱc��zQbM[�a��|�*�Ԥ ���y&�$�Oz��!�<z�$���[��Bn[?x��_<����f;�`^k�8�U�B��s�
\�Q@
z�Gj�(�Q�h ��Kހ�KGz
(�zPڊ)hRQ�iq@��:w���Q@��)�bQ�1GZ (��@Q@	Gj
Z(� %/jJ( ���i �R�L�EPKIGJ@/zJZ((�Kޒ�
(P�������Q@	ڊSI� (�� (�����Q@h�Q@Q@��@ސ��4� QރEGz;�h ����
J(�4�v� �t��s@褠�C׭N� ���ZBi���!ۆy�p"��p�'�p
��P��sY�7�6�w��X����2���M	��s�q�W�� U��W6/�`U�.�ϵ;�mX�[�zU�u%n�~5���wSV#���y�4�3��QU�*۹�
�Ե
)i ���h�4��%&h���i�ʜ(h�4��Z(��
(� �
J:P����� ����@�h��QI@�-%-0
;�E!����R�R�Ew�A@��-&Fh�E ���q@-!�}hO\RQ�((��- %���
>�Q�%/zN�PA��Gj@%�;qLaޒ�� ���� B);S�f�@}��>�RL��)
(��
(��
Nih����E -�(��RP���� QIE Q��@(�@IEh �A�4PIޗ4���i>���M, �C�֓x���\�5UoT�	�Bت�ˁ���-�	ֲg��[����B�kdGZ�5 c ��Y����$u�b����M!:���8jƚr��$��=>�Yًd����^h��MF�F}j��y��s��X��`F*%��@��"��H��!-��M
����F� �����l`��[�Vx=(qYmvI,1����g�ZV�p��J?Zʎ��&��ʜE �v�ҡYW�j@�}���@%%/j( �A�-0gQE �P��ڎ�
 (�� sG�Gj) R�R��E-% ��)h ��֓ �Qށ@�-&y�B�4�����:�@v���IHih ��( ���E -'zZ( ��>�dPA�Ji( ����PIKڎ� L��RQGJ)�}(���
 ��� ��)�Q@��Ef����PKڒ�|�qE ��0Ɩ��@ ��R ���PEP�QKހ�QE QA�@RQ@J)qE %�� QGz>� Q@��
J:�(�QI@Z(��
3Fh�a�h��E -�f�
2;�R@L-���SLs�Κ�A?7��y@�T./��1T&ԗi��ZĿ��!s�֪ė�������		&�d��뚨�Ď��BgF��xpH�e�zK6C��7g��i��i�7W%���ި4���+�n�P9�in8��Kc�2)��I�X�<{�(� �
�5�whϩ��@#ךC?�jPqL<�Q��� *i�����!<�<S�{R)��R�@�d�3�1֛�Gj@<�n���H9�LݓH��j	搚 3���Gݦ��� �1@�IH(��������O=h�����L�I�^��� )<⌚C�E}�;�PM% /ZU�ZN�� HN �ϵ!<b�<�h�����Si�~\� ^��w#�HaG=�P���!lÚ��������қ�ʔ(�x��
q�4�n�M0�u�݂@�Jz{SN	�R��g���!����>�"��i���ր%'�)K`s����+;�!I4��s�R��n���֘���ry�N�N9\� *�<�w�/^j)OL�ڤ3`��򝽨nɤ#B��zֲ����k�W�⦎b��=)�:i��G��LUe�f��Ed-�9���H��Ұ��+ӌ�'�*�j�˭s�99���������e�#����9�%o��p=�GM��rǯsJ�s�F�<V}�����W�IHu.)��{RR�Iږ��(���� )i)E R)��QE њZN��Z(PFx����Gz)(�����
;QK@ĥ��� Qڊ(QE ����_Jc
:(���(�@ ��P�}(��Qހ�
J(�4R
1E�(��� Q@�� t4w��
(��
zRR��PG�P�(��
JZ( �IE w�A�Gz( �E�����v� RPP�;R�P�(��
(���%)��@�Gz(�
(�ZJL�ցQ@���;RR� Br*)_jә�*������!�����\���v8<S�K���p}
E���Q�C�ԀPx�g����
��s�9��PJ (���LaGZ
3EP1;Ph� �)�P!9����'Ґ�����
R(�4�_�Z(� ��E v��PE� �
(��(�@Q@ ��E 
Z)(s�!4Q@	K��I@IE QA�E ��}(M'j
;Rg�(��4��I�P����p4�o�����up�����К��˵	�f�m���E+����'��v�3���@q�T�5��wqM������zi<�) X�<v���i���Mc�� p9�!<ⓥ'|�C׭&x���Cc4 � ��񢁁<��њ)��P��N�g�>�P!q�BM-4��Z3I@�v��њ \ђ:Rf�@y�!=)z�I�ڀ���4� �����E�G'4��)s� _z֐�(���M�@�QM�ϭ֓<P=h�<P�)G4��8P )ý'f��K��`斀4�Oj(4 � �֛��&����zӉ��P h<~4��I�(sKM���E/z3�s@�Rz�m���A��4M:�}i��/J`HNF?Zoƛ��?�	��/q���Ȥ��C��K�ʣ��?8�-�8=O\Ӊ��y��8�F�Zb�.��)��r9�U}M;>�P2�x=I8=�Vbnx�I#!0|�FE13[M���ǌ�Wk�� �{ מ[�P��{u��M��
��PƎ�*0zԊr+*��09޴c|��HɁ����-!�;��sA4 ��E%/j Z(�Sii?( ��IK@QH�����P h��Pފ)h:R�R�Gj(�4v��( ��)�)iJZ@'zZ1IڀRv�P@��( ��PGz3�(;�iqE %%)�� J(4~�)3E/z �Q@�� �zP(4���E�E ���B
P))h �EP�w���4�\��QҐii(���h�K@	@�>�S ���ր�NԽ(?�/�R3KIGJ QFh��4f�( ���E QE ��M� �4QҀ�Q�K� %Qڀ
);b��
3E'j.i(�Gj (4RPڊJ( 4��M1� ��R�}�����K�V%��$s�B5� i�]�c\�ځ\��Tm� n'ߥU���^g�+���'�#��ܜ���K��M	,��v��ҳg���y���Bi3�I�zSs���f���>�f��)�� ;w=i3�:R���@�`Rg� Ri�d��<�{
 ���RQ@A4Bp(i;P
Q�P�{RjQ@������`�q�@Ͻ "�׊)�\���i��)݇��^(<A�f����N'��oR;R���)
���|���<�׭0���zU?7&��}iGzb|w#ޞq�ʠN?����b����W��k������}��֥�M�>��u�e�ܟ>;b��Y&k�ln6O���כ����a 4�j�2n^NjqҤhuڒ��C�(���R�)���RQ@ޗ�%�_JZ`袌�A��PK�:Q@	�zR�Q@jZJZQGj 8��ҌPR�� )�'?�- Z;�f��@!���
J)h(�E 
(������QE%Et�bQފ;��Et�@h?Ҋ
 
�1⛜�)3��)��	8�y��jO�Hh��"����RP��oz>�

h��m�I� ZJ3I@-&3F(iE'QA�����@�;�IK� \�Rg4���)݅3�){���{pi�Ӊ��.i���:� Sɧg�i�R�@��t�p)��J R��������f�Ҁ9�4����<P}(�~4����qF*`JbqJ�3$���:�LD�硩�}�8)���&_�R����]�`�Es��98�[�\�HG�X�Q��Z�H��yޟzѷ-ߥu�� Z�BF�>����s�S�⤡
Aȥ� �(��1ԔR� �����-%- 
JOƀ�-% QE�a�EJ( ��� J(����P�(���w���������-% �QE QGj�
;�Fh �E���CE Rf��@!>��Y6��'�('��K�Ck��})ڝ�A��Z�䳜�i�_�:�񬫋�ݻ9��9�:�I�T���]�8#By7�֗�J���g=������3J�����2���7�LRn�&:���NzR��0��њN��4 ���MZ� ����� )3E -%)�4 �w��@Ҋ3@�����4R�JAK@-%� R�L�IހGzB{Q�( 4Pi;P�O<Qڊ ;RPsE /֊J(i3Kڒ�
Z(�bњL�@IA��I@8�4 R�R�K�J>� �RQ@KIE .h�IE ;P8�� )i(��@&�4v��)>�����p�Kۭ4g����֊ w��ғ?��
=�8^)�斀=�:�A�(�����)Gs�P����<Z��ʞ�i�x#R���y��"�zb���O��W^���n� sBB91�O?ʵl�Z)���ΙN�3�y��HH��c���7�s�z܉�-y��z�8��:{�]�^�Ps�:T�6A�T(� <u��SA�f��=h���ii(���P���R� ���P0��?Z 袀
(�ZJ3E��PhQE QE P)E(����Q@}h�P zRv�� Rb�;PڎM���J ZJ\�P �EPHh4����QHM /j)���F(��E��R��
h-ߧ�Mϯ�G�!�9#�"��3A��9�zP04ނ��f��(4�'J Cɣ�/jJ >��HzP�њ(�bQJzSM .h�%)�&�� ��J(� !���� -���(I�<�L�@҃IHhh�PERR�QL���( ��( �4�R �Qހ��LqL��������ޒ��
3GJN� ���E J
(h�Q�P���Z2(f��z�ך ZZJ -���� 8��0(4�9��4u��)���IG~({S�S?J\�@������qI�f�q�@Ҝ��ojPx��Jr�������ɦ��_����f��b�Y�GN�Ո����R+�@	)�8�n隈
�7N+�Yy5j	1�z�I趷��z�
;�@����-!4
 (�
 )i)h ��8��E �QE ��i( ��� ��Qր
(�� !��N�Hh3Mϥ)�:�@�M������PHQGZ
J\Rv� t����փ֌њ@w�� (4P( �)(h����CA�� QE RR�ޓ�.i3@�ў(�4��J\�Hii
({RR(M% J��I�h �R�i(�<�Gz(�aE'�E �J(sE��@����)i)�JZ( ��E QG4 ��QH��Z;SEQH�Ph{Qڊ
(�( ������R�/j;QI�@ڒ�{Q� QGj:�ۚ )E% ��RqޔJ`sK�~��P��(�҃�;��{�
wC@
O)��ҏ� 8u����N���1�i��̂)h0oz�[]z�N�)���s�y���0������F�SE!��<�	g_�^�"�'9�;WWi&�
 )E%�h��-!��� �(�@����@-�)�������Ԕ��3E���i3K��0�z�Gz (�� /jJ(h����Q�>�f�
)zQ@
i3E�� �4�P����- g֊N� ���E% -����(��-%����@IҊ
Jg�3�I�@x�ڔ�i
;R 4�R� (��q@󢗵�R���@	A����{�E -
( ��T�� f�JZ ^���w��
��M�- --6�� �v���@�G֒�@�f����8���Ғ��S�3M>��� ^����3K@����4)s�1y��#d��׊^s�������SF�]�2q�j�F1֥#�13OM�����+���D8����'��֭��+�����2OC��>0x5iO��7�{��*D��s�oSN�H�t����){� Q�J/Q@�@����R �);ӻ��襤�@QGjb4�Q@.(���Z(h����aEw��(�>�(4Q@��Hii?: (Rt�9�%PIKG4 c�J^�PQKHzPI�)
))hi(�� (�g� (�4P�ZJ({�GJ( ������(��
;�I@E%- !��(E%P h�84����P�R�P�QHM
;QE 7��ޛ����R�5^�uD<�b!��b�����j$9�� ����� �k��Ď�$"���t==������t��Gܻrq�P1��U����Q����3Q�ޙHq<�L��<P1�����@�'�JC���"����IGZ 	��R���Ҁ���iL�ғHh� u�=ih�@	H)i �A�PIKڊ N�u���@��P!(�<QHaGj(��(��Hh� Qڊ���b� �ޗ�� QK�(��Z1�.? 1I�v(� 6�\R� LqF)q@ �����ъv
QF(������3E /֌�w����);QL�ޗ4�r(�@�v���
nih�sHy�(
w�4��K�hA��h����q@�g=��4��L��jUj��;S�=)��/�8�Wm�YA�Ψ'^?:е$`}�Q�C����O�����P	�zzWOc.��-
(��
:QGj (�(����J ZJZ9�撖��IK�RS ��) w��E %f�4 ��Z(�@	�z�G4Pz�qIږ�!Eu�ڎ�t��
(���(�ހ
(��EPE~4 ���֊ ;QFh��(��Q@Qր
(�E QE %��� ���( ��� QA�&���n)sQNp���iB���;�2��mJ���ҹ{���$�_^���5�$�ǁ���Nŉ"�c��j��1ڛ�)��I���lhkni[߽4�(=�:��� ��u�b���u�I�@	GJJ;�A'�)i;!(�j) �QE %Pz�}(�/zN� P(���R�ր
CKڒ��(�)E'z )){Q@�������\Rb��� 
ZJ^� QK�P� �)j@�m��\v#�.)�ZU^i\,0ъ�g��;Qq؋�柳�z��.+�E<�Jn2h�Xi����*Qp��=��.�)Jg��
ъ������J.#�qR��42�E��;y�&�ԛOjw��A��
n(�R�1�1	E-������b�RJ ������\PzPc�A�N��ڀ
JZZ`�(�A���Z'4Pi{� �QK@ 曌��(GZw�=��L�)){P�zў~���J=(���p��- 8})��ޛ���:w�����1�DzOw�L	�N5f�L>9��Pgh�#�T����H�m�˴�ls��Y�J]q� ����2��9�\�c��c����3���;Ux� w����K֓4�� ��� - ���(�@ �8��C
(�����(�a�(��
(��
(��h��QE
(��
i(MPhRZJ (��Z J=��i)�Ru����=����@	A�R Ni)i: Z)(�� *N�GjD�i��^� u��Z N�u4
( �@��� .sE%- QE (�PڃE'Z ;QE- (�4Q���
=�;R�h ��I@���Fh��=��h ��
P�P ��b����;OQNX�Gj�EY��N)�_�,Y<�*O'�*�J[)��-��krq�O8����;a��g�ja��Q�>B������\H����9Ð�)�"����0rr?���کH����S�8�W<����֔BA�G0�J�~�(�=ZKq�YHGT���e�%z�~I=l��3��4���gr1� ��䃏jk�ގp�2L]�L��kL�qQ�<�jD8��1ژV��	=��G�
 Z^���S��w��� ��2i:ҁ�@� ��G�(��s�i�f��p��M�/4(n��,`c ~&�J�3���,ҷ�Uy�t:]�
�q�\�d�y<�V���pA��=
��p֊0=+�Ү���q�5��7�Y�QtR�4��h�6�P҃M��&�nii��
(���E&h�AKIKH�ъJ`/J;�
Z@*(�0
;�E QFhh����1GlPE%/j�%-% QGj )(��@A��� CE�L�QH �M8�PqE- �(��H���(zZ
;�E %�PIKړ Qފ(i(�4 �v����� �Pi(
)@� �^�c��
C@	E���&8�E' ���zQ�@ �
\S��T �R�R���&�b *ENi�3ڧH�P*�Q#T�q֤XsڬE	�"�-�5����E"�����UԶ �����TC�۵J������O1��@;S�y*m��mCe���~��+��l��h�)TE�v�ʬ�y��9H6��F�ڬ��m>b\
� :����җ0("$�ҤO�N�a�#�3�M&*nW)�)�=�aE;����8��^�*�zB*ԉp(�aU���8�R�{TmU�:fA����o�b�!㠫�#ٙ�>�͞բa�S8֊fny��q����p*-��JD8؀��LS�=j�+┎i�H���p��sF)�sF=���4�i!�"���b�S�MsN�a��?�{Qq
	�v�AޔsIJ( ��)9� h��)qހ
Q֊Z ^Խ��!z�Z@)GJ w�ѓI�_j �)�ƣ��A��T��1�s�[��#�Y��Q��ɪ$�t������+���WE稯;������ֶ��ҬlT�;��
ZJ3Hb����Q��R�� ����( ��( ��%�i)h��>���u'RSx�� v����z(�aKE QGZ()q�%- ��ڔ�ǭ%;Ph;�KI@�)GJ �(������(4P1KH)qH�(���RR�E�� R�Q@
)(��R�Q@j)zQH�E R����
ZN������ N�R�PE� ��JSE ��.i� �h�@��h�JE#�c�+S�m<ִ���U��sR�s7����dJ~bE^��_���y��@B�q�L>�)�y�L>�h�
ku旌R
rM!���'���)ئ��Z CךOjS�h�~� �)I��=?
L��
3�H)ZJ(��KI� ;�Eh �R�@(
-.8�cqE/J1�  A��HE �Ӆ�c֔i�r)B��@�o�8����J�b0;��3�)�2x����jNCH�/�X�<���#��~n8}�'#U �H�砫���j���1 �,qVQ ��X"�+'#U0)�)���
R:Q��XN�b� �RR�������N)�E�}�L���t�Nz�H�U��+2�⡒?J��Q��ҭH�=��j��Gj�)Lh�ץZ����S��1ү48�4Ƌ��W1<�2�ӵ L� ���L�R���*���A�ҹ�x�(h�R
Z 
ZCE �Q@Q@��( ��IK@jJ^ԝhQފ( ��PEb��QI@4Rw����4PG4PM QHhi>�f�@G�~P)i>�R$QF))~� �Pz�P��R�ւh���A�� -b� (�� )i;R�R�sE -�)h ��1� Q@�@	E- ��ZB=h))���֖�P1OJkS�J�C�@�.
~���l����n]LOҹMJo�0�Mڌ�+&C�<�f�.d�͓�8�HDo�9�S�v��ZeqHH#�Sޙ��H�s�L�
LP��s��@4��CE��}){Qށ��\PqK@
?^������w��  ��GA@�G�� :�J4��Pc�CN�i;S��4���N�'֝�a�{�EHE&*�%�<S�Li��Zi�b\��j"�j�QL+�R��Jf:M�sV��Mۜ��8���{�LUh�4�_j.*l��JB�pjɏ�Q���-��Q��^�i�Ңqӊ�2yJ�{RR��H��b\H�{SJqVc�)��UہғT�qM#5JD8�⛊��4ݵi���q�MY!Hi{Q�P}h���h��� ���旽0{QE- /n���iq�Ҁ�*�h��P��M0~���ژ������W>�f3�{�UjZ3	S�=��d��W#j�pO�t�d�q�;ڀ:�X�'�W�l�ՠ=+61G�;�H�� �
)i) v���'֊ AHh�� J(Pt��(�H��4sK@���@-&h�@
(Z J:R� (�b����PKE �v���
(4P�I�\�@	ޒ����E ��4z�@z(����)�4
v8��Ib�ReX �
(�0����ڒ�( ��ތP1��S�F;Pb��Q� �m��1F(
�s�ڵ���������Hd�����5R�
)��Q֊ 1E��(=(�S)h�P i)i( ������%- �(�a�(���b����
JZJ Z3IA�j3E f��(� QE d⎔v���4�PRv���QE(�Gj)-b� ZB){{Q�()EP��Ji3L R�f���(�f�� QE 
(��
(�P�b���
(��EP z�IE f�R�M4��h��V^��C�֣:�>�؍�X�;Q��>��W��`+[P��u�!��W+�3u�L9�8��0��� ��M=?����4�?�4�iG��׭E!��@iis�I@
\zS�E 'J1K�1@	�LS�� 7b�i(�S��"����b�(���qM#� m��� �b��1@
�␌��6�i�4�Ԕ�S��G�B?
���LM�ɦ�R�M���6!e�����zR㞵W%��_jiNMY)M+T�<�6N����>�|�y��;�Z)�P"���X�
3E ��Qހ�b�Z JZ:
;Pv���� R�J(qIE ;�GZ (��'JQ@Q@��� ����ր
(�E ����@i�ҵ7� k���uF[f�$�+R?)�`r:�w�N3Y3�8�ֵ�a�����j�c���i���l����4޿Z\�i4��I������1����z�c� i�A������3�ZLR{qG��JQF3J4 R�=j@��l, �^F)B�S"�r4�F�g��1G�1ϭ$js��(�+7#UR?j�R���R��4Q�O	ϵ9E<.MCe�4/�8/4�
�������ڜi Q�p��4b��w���� 
Z(�Q���b���B)�b�
(���@h�A��
=��E��J 
)i��(� �);��A�E% (��H3A�<�1I�(x���� QE �w�� 3�)(���(;�ъ( ��PIGCE �3KGz ))M% !��N&��@���=�I��[�p�\Ϊ~c�jX��;��Λ�kN�<�\�{�Z�f�M8�s�MbsTƆ:���JOjF��&i;ўy���J\qIڀ�zQ��4@!�E�@(��E0O�S�jX�G�=֕5<q�YJF�""q�x��<�O�8�XH��Y9�$iN*ʦ:
U^ �sY�h�*ԀR��ӱP�I8R�N�Ke(�8
pR�Ɓ�8u���PR})M% A��4b�	�i)ؠ
@%/Zv(�bb���R � R��R1F�u% 7o4�)h� ��:�P1 ���b�ZJ JZZ(;�KI� (��E 7�b��(���i�P1�Rb��1� 0�LS�HE 3��RPc�R�()1�;P1�B)���LȤ"��B(Ìt���M4 �(4�Q��
Zh�`%�
({�Gz( ��
p�LQKE!��
Z^� ���� �9��(���F�QN���E.(� &(4�� �����I�jv8�"��\Q@
))M ���
 _�Q@z(��
(��@Iߥw���Ƞ�� ��K�f�
P)h� 製 �QKIހ4R�PRZSH���kQp��i��=�I�PjDs��v�+bX���әI�5���Z  '���ϽH㊌�ޙC��jq4�qHb��h�@��M+N�<Pz�q�Niih��OZP0)q� �h �T���H�S(��$�H|h��q/�QF� ���XI��
��J�B��J��ɳ�!S���Ce��p�R��*Jf�?Z1NLR��HA���R�E �A��� (�F(�bR�ڗ �S�F3րR����@)ݨ�.) ���
N� ���.9����� J ���������� �ъv(� &)p)qF(�QN�搆b�S�SEK�\Q�b�(�.)qHcH��Rb�� e%8�(�qM#֤"��h�2h� %���
u5�b�Y^A�V�s� ֫n9�$�Y��.1�*�.0ǜ��Ú艄���HiH��[�!�i�����LAڎ�QL��R�� g4�R����@��-!�)z��C��ԊA8=�,T��hE�Gn�w�].��*^Mr��29��Ef�� �Ҭ���;���~�B��_Z͂(�(�0��� 	�(�aEv�@iM% 
Z% -(��4QG~( ��(QE�.(��G4�)s@(�R�J@w��� b�Gz( ���� i��M4�NԆ��% -sE 7����"��Q@
){�R�IN��@Q@I��P�(��( ����@Q@-�� ��Z ))�P{�JE����S�A �LӱI�PRS���M?�RB�Bs��uI�Nz��5�j�n94s�
U�����|g��M��0����S	4�G4�9���I�if))�! �P1�S��C�@%.9�9��S��A��
Lh{��MF��Y�x�YH�F���V�j(��.x�`͢���R ��Y�dy�(�jP)åIb��b��1H R�F)hb��� Z:�0�
S���IN�4�%.(�8��� (���QJ)�Ӆ --%�(������ J)h���.)@�b
R)��9������LS��  b��q@
Px��S�ި��Mɐ�q�VΓ1K�ߺ���k>�zU�6�� �ǥQ'�h�0�H��q�ڹ���H<�+���K:�M�T�)i3E QE �i(�a�(��IށEf�EP z�A��
(���.)(�Bњ(�a���;P@��% -QL���/J@6�K��� zQ��N�� R
1J1�Ҋ @)h���1�-�iS�&(���y�7J �s����M���]
�j�\�M#��4\�Tǵ4�TΤ���L�}(��! C�v�#�1�N)�硩���㞹�6�@9>�T��Q�,Gq@
w�R�֗ �����7�����% (�Q����1�KF9���R�E�P1;�@)�Pb�R��	E8
1@	Kڗb�
v)@��
1K� 1@���0����mb��1K�v)
LqKI@ ���h��KM�aFi
ZJ>� �RR�@/jm)����� ���E -Q@�'j3E �⒗4 R�@is@��� (�4� ���Pi�@/~��rz���߾�\��&Y��H�~�5Y��l���j�Ta��>�.��L`zP4E�ӚC�{Zq��G�ڐ�
��G$b��P�� �J�5W$U�L �e��8�J�TST*e���9F*U暠f�^+6l��<P)�ɨe�)�*�/z( �b�1Hb~�Q� (����-'ҔRc�z�)iLS�@��LR���P0��� R�Q@	�iqK�K��
LS�� �P�@ ��--� �J'zZ SIKE�{Q�v(��&'ZuX.4�S�6�K�% %!�i�JBiqF(����Q� e�)�QJh��b��:R���#
��4��)�R��cA�q@�S��3�(4 0�"�'�a���i)�SM1��%.(���KILAKI�A�H4Q�Z�=h�b�L?ZCKHh6�q��¡zh�\qU�\�֭�����mzsQ7AVNsQ0#�tE�I��N3Na�Za�1���`%��L�!h�h�!��ڏq@�9p��t�Mi�ӭ4!�v�ղ� 3�;VZ�ᚳ����D������+��� "��N�x�c��@�ݞ0I�:Ґ�L�T��ҝP1zQފ( ���
\P1)i(�B�v��� 
JZ ;њ(� �4QڀE-&(h�J Z1G�(�4S �HE)���EP i;�E %Q@i){�LAIE���I�("� 1ϽQ@��4��
9�Sh��4��Z^��Z 3K�ny��4��� Q�� �v�4Pڌ�I@��R�E%���&h��i{RQ@I�� �.i);��A"�
)zQ���i�4��Q�h���;�S��u����()ȧ�J�÷�^�A�*���ZřI[�N9銝�Dܚ�,�H�ÜS
��)�[&c$G�)�=)*��Rc�w�%1��jqRSZQק4�ړ�q֞�4c4�;�L�ǽY��={�`���uj�0 ���D�z\a�S�����NP��t�\F����x9���G��c��HE�O�h���-%- 
Z@iE0���P��Q�PEPQKFhQފ(~��w����%�-&y���(���!�h���i�����) ޓ�-%0��) QIځ@��Gz(���P֊(��M����E% ���� R��RP�QIE --6��0
))h ��) (��
SIE :Q� )ihh�E%0�f��(sGzBh���(j7�Nϭ5�SBѰ��� �p+��\�v�/XR�u��@b���69�ۜ��]ϥh���SY���d�M,M�Ozan��=�4�4��1�)s�Ҙ:b�Ƞ��JPFj>����L3�ԉ�J�OҤL�Ԙ�Y__�P �O�٢D��L��
�EbٴP��R���u���$S�M�EIb�4��N�!�����9��������� 4QJ!�������QIKR�R�iE)�(�f�Sii�x4��
p��P)/z:��R��w���R�4� QE ��(���(;��@��\Ph);R�@	IڝM�11E- b�� JCA��!�MRf��E)�$������e ��Hh4��!�i��ځ���f��H�����
LR�@
)qA�O"���4!�sF)ؠ�h�{Rc�v(�Ma�IO���L��O���$}*fA�P8�Fm%�W�j�T�ma$VoZa�J�Q�+t�X�LS�����V��Cq�����lU	��֓>�)y�h��R`��t}(ps�N\��zӁ�"D�jd\`C�D�A�Q��Z6�)
�0*0z|�
��Hd��>��l�Lנi��@��-�/
u4R� �Rb��E&ii��RQ@-%- RQ@ţ��� ����KE ��袁	��;RZN� QE�Qތ�@õ%PFh�%
9���@Ҏ�v���G�P �Q@�)i�������h����IڔPE% ���%�����4�ZJ:Q�@ii(�������
u!�-6���j;QJ:�HbRъ( ��*F���%Z(��H�;QHc�/zm8 \҃M� �QH:S����L�
b)G4�i��!Ԣ��\���Z)2)hz
JBh�@
)i���!ii)E %�� 
ZJ ;<�P(������))i
)3Fh~����L���M�Mњm!4��PiZ 3HI�⒐!
i�)ȸ����Wu��X�	"�&I��l9犲õ@���3���1�{ =)95�3cJF�R0�T�,��%<���I��Fc4�8��8�`;�N"���4���"D��Ո9�2:�u?�O8 c'��P��F_0�s����b J��&B'v:gZ�'���bݸ���iz���(��- ��� J1E �QE RR�-����QA��G4 JSH)h ��E �v�PIޖ� N�R�S ���Pv����	�QKE�!斏Z%�PIKHh ��(
ZJZD���E -Rf��JZ R�IKGj`�Z;�@(�@֊)E '4R� J\w��K@&1K�( ���R �����=�;��(��5����@���?�q���q��^��_}���3T�,O���q���'֩�$�ٸ?Ҫ�9�ެd<�&29�v4��
&=��ڗ�  ��J��iG"�朹��*E��z���u�Q�� UL�Vl�M���cۊ�����Q"�`b�A�J��bΈ��sO�Fi��ZR��C�1E��E(�����) ����HbQKI@��KIޔRc֎�u��Zu4R�����S�L�� <p59��0$�
y4�	�&��4Қi�'�oj))(��E0
JSҒ��4�Q@�QE ��� �E-���J)EE��&3F1N�1��QL��v8�5@%!�b�� 7��&)�i�w�H� �L"�"��(@@�"����¡qǥZ3�*:�
�㩫��]�ڶ�0�+�M�zf9�S2cq�!t��~��!� w���1�T@�Ɛ�֟���U	�������*�rOzu���`��PF��Va;\ۯH
p�qH)E@Ţ�ԇ��G4
( �E ;��R���(��(� ��Ί�R�ր8��-� �Q@	�)h�����;�Gz(� QGz(;QK֒�
=��@��
i����QJi Q�J)��Q֊ Z;QE 袊 (��@@�@-% R�I@Fh��⒊
`�
 p��(�R
)����6��R�)iZ^����KM�4 ��)(�C�i�M.h��4RP z�JZ( �n)i� m4ө4�&)>��IN4�P1���LR
SҀ�N�'�wҐ"�kR(5,h�:U��APF���f�f�'A��Cȫ1�V27�%^�"�b�x�٢:Ҋn)���E� 1�F(4PڌsKE&4&z^�QR0��(QKE!��=iE (��iqE����7�P- 6��b�
Z( ��E R�JZ ZZAK@.i3E -/8��u�(��E w�4b�s@RPږ���qM4�h���b�i(���v)9�`Hzӈ�"� �Jv))X�Ju&h�i����i){�bh��hEf�E�QE&i��޴�PRw�4Qa�JR3�J\���ozu!���I�QE0
(���h�����4ө����EHE4�`Wa֠aV�TL�i�$T�x�歸5ZE#�ZŜ�D8���S��dJ�3G�Ls��<R� J�D��)I�8�4�ƶq�ԟ�ҕ�&?Z�H��qR.��rqQ�ޥ���}z�!3k�� %�g8���{�p=r+�4��6�I�5���F��M�I�)�ޛ�QY�u�������4����� QҊ)���-�����?Z ZJ(�aފ(�@-% QEހ���� �R�P �EP0QI@
iw� �{R�PuRQ@ץ}(�~��H(�GQ�))i�QE QE ����������PށE }ii(���3@(�� ��IK@�� 
�t6�s֙� ��!�О�qҫM���C8T.�������=���wQ@�R���/Jx��*�/�B��M�,�M� ��(�>�aEd͢M5a*8�XQ��gDG(�v�)qY�������ސS�R�)i(E�T�����HbR�Q�(�K����KڐzZh4������w
)h��K@��  �Q�Jv���S�H.4
\R�(�	�\R�J����X.2�����b���R AN)��;P�KG� %-P zQ֗c� J���"��LS�P
1JX��T�qK��
�qH~��9␊v��i)���;���4ԤSH�`�)�b�i��ƞ�Pi)XWHh�4X.4�
	�<Ӱ�;4f��3N�qsI�Mԛ���q���4�ԛ���I�3Q�w�E����J
��(SOZ_jJ 
 (����KI�E -�����Q@&is��� }h�� (�P�R��PR�E ���

����3&�4X.<\�;҃E�����0v:,1{��s�/J,��M�N�qMZp9��qqF(�� )@��;���qF(�\JB)H��`�)�qHV���)❶��11���
(���S�G�@ �� RӰ	F8��.(��&)���,�LS�"�!\J1KK��	���4�RN¸�I���B8�¹���H��i�.0���*L����#4��JƣcE��8��Ȩٿ:az9E�HƐ�S�ZB(������'���1.� ʚZ���4��򋘛u��w�H_�|��&�eW/M/G(s�L�qF�[}'�J��\Z�\��%�I0qIĥ"�>��y�Ԋ��
�\��R�6`(��<�U(�H��>�����1��"�zS^*_j���L=j�-�r�We�:�ڠu�b�&�����S�+׭D�g�t#��cQ���~u#}*2֬����A��q�d�9<T�8�� ɩ��N)�f���<nS�C]��v��:�r&9"�=瀘 �Ut �ץ:�����Y�QKIڌP0iy�� (��1�-� R�4�P1h�IE��E �QE(h����Eu����PHz��P h�4�� �4����E��w������4cҒ�
(�R �Q@R�4
)��������J :P:Q���
3E�E� (�R�PR�E Q��Pt���� 
(��
Z;�@!��ր�R�P�RR�L� ����:P04���I�Dk���+�:�&-r���HFo�� �'=r*��� t��nֈh�;sH9�c�"��� q�Ӈ��( ��L�F9�W�&�I<C�
�FMZ�b�f�F9�qb��J�?�c#�(�J��+#dR�ҐR����J)qA��m-����QI�Aqh4��I�`����[ހ�qƓ4���;ť���Q`���K�f}(�(�\�4���zR�V���v�A��`��N�
x��q)qO�,;�����,
pb�;�Q�pR��m�RJE��LT��T�4��I���iXw#��
1��b���P(�
�`R❏ji���!�u��M.(�7i���
����$T5&*��f�
���@�P�7���7&�D���Nj�N���U�C�q���Rk��f�3����MD�cK��'��Y�h8����#���P�/�i�^��C6GZi�9��9�l��!�V2���g�z�Ry�L
C/8�V�7w�/���&���h�UD��o��a�O����j-���X��o"�Y�U�u�"����VQ���e����j)�EK�jF�=J���Ix�	(=
�&SEF^y�P�����N��v�z��"�4���R��j28�3�֓�zS֏�P �SFǀ'��x�S�>aM	���.k����w׭rZro�����*��*��x��*Jb� T�� �ZN�P1i;��@���Q���(��
-)(��@��u�� R�P0��(R�i(QGj( ���)�u����:QE% (��1@	Fy����R��� �IJh� (�����m:�!�3J);s@y�J

�Z��r@)�ST�������a�9���(�(��LR�iM
�d�*Z)�MҮ#f��<V��ɣT�å/�1EIPh�v��SJ��Jn)أX�jc.y�M4��Y�B��Yq�B�Uĉ"��v�8�W%\u�r{t���s"n�	��_�DzV��m(<�7�K���2���T��&28����m%�6X�x��L!�\��y����{���Gg���T�$��N��N�f�GJ( ��E�(��(�Gz);��E�����\�IE /j(���J)3K@h�Pފ)=� ��C@Q@R~4 �����QGj :QE���(MQ@�G4P($^�P(���Q@ ��P hv���QK� Q� /jJ;Q@(�E� ����h�P�IK� )
Ҽ|�H��&7�Z!�4�Jy擷�1��R����i�I�H(��S�߭0)#��03�P�D�:u����Ux��Wb����T¬ 皎5T�+t"E��M�¤a�^�Rf��B(�!4 ��x�=i�h����^W�4�ɀy��K��4�܅�OJ�� �o'Z����5��D�'z��V�4o�U�C�cͣ��9���M����+���'Un�z�|�rp�GbWf={T/'rh�e�1�)�p�Z��v�4����`���(���Yۍ��,4��}i�q�Y�gJ<�=������T��5������u��W1��^��ְ�L�u95-�tM�&���+��������ؤʹ�T�QX�s��[�E����f��lԋ(�R/�"���T���(=)��&�HzRf�4)i(�<t��x��@�#g�3HhwP
))h;��Q@EP�(��
_zNԴ(�A��JNԹ��`i3K�(�Qڎ���(�Q�K@	G�P ii)h
?
>�� Q�E� ���@E� QE v��(���Q@袀Fh��4��M% Q�) R�nx�Hp
Y���	e�5Iؒ˓U��$lUw|:դfز?\���������č,i�8�c�a�9�C֜�������LE������֡,}h�E H�e}�Ni�4���L�N��ќP��'�ni3@�֚Z��f��n�.�z�t�@4�0�֢�4�2�Sc�i&8�YJ�:H{���F��r9���?�d���T�?ֳf�َ㞵e&���B�3V�c�R���j9+2&�U��ޤ�I$ȧ��SF�L�@n�4�s���!����3J
�YGz��b���M)VH��f���r���T���UqX��4�>)6�N�h�&
w&Ċ1R��0��*JH��1�5OAO&)q���&("��i��T
�j Q�{U9x5zQ��B~��9�"	>�?*���J��MDz���csH�(9u��=j��je�3�����}��G"�k��]�7�pzr�#n=��޻�,��q��=�5W�N�7��Vc��KH�(�GJ(���R� �Rv���(�aEP 
(����斊 N�P)h�ZO�-����(��;�ހ
(��
N)s�������Q@������
)i8��)A��(����( ��( �QA��'z>�� Qڊ) �R�S ��J@5����SE 2A��=N"�O5�܌Vf���&3��L1�ֲ��V���H�s�ʓ�3T������S��`�BS֣�>�"z�Ա�h��\�ޫ�<՘z���k�+�]�v���j�C+tĝG���G�Ph3
~(�&���N�I�(��2�
���+���T��*�HOJ�#��+s�j�{��3b'�D�����h�*�" Ҁq�qRl�)�	8�E��|��	5x[�J��ҋ����I�Mh=+]m���sG0r��j���T�jG�k��������s)����6�v��o�I�^�s��Z$Tl������O��o�)�ۥ>ar���F+bm8��j��L?��p�3ȣ��[0�Q��q�|��C�P1Rm�h�(ΔR�<�qҗ0r�)��})�/jNA�"�}j�K�Њ�c9�V�S��Cf��n%���q���IY�D���I���:�)N��V⫫S���ni۪4�Ҹ�N�
C���)�sO�<R�RzS� ZJCqP�ҧ+QH(FN�����Z����N�kX�̢��	�>�<���	��s43��{��D� ���T�6��E�x�Kp89��B:
Z( �֊3E !4�R�$JZN�� QIGj Z4Qր(�Eh ��Z( ��( �QE -�(�@EP�J
OƖ�@�Q@i)M'z B+>�~��D��WC�4�jQ�N��\�{WK�(RI��v^��TЊ���9��s�S1�P��ӗ����NN�,d��U�F5Y�*�#��R5�v�^��AWc�Y��GJu
)j�-���Ҟ���Ȥ�.��1Z3t8�!$�SFl�d�F�:�a�c�&�!�JQ�L�ОԻ?*M�"��}*x����1��H�J�X�Pb�#��S��;�l,D�:
xN���)\v�4�<
.#JQ�H:��b*���qHG�R���ڢkU�AZ;sM)֕�c{<�U'�#s�����B3җ5��sMhG��1�+}�����s����7�)�j��=�>��a�M)D<t�O#ښa���9
K���<c��'4�}z���{���ZT�zQr�H��
�T��%5*�)R������Q)�s�E �
 p4��Q�x4�:��
=(s�4��4�[�)���1�#a4��I�;~�qR3TD担��Q�Ri���a �
P
��xZzԀT�, Z�@��E�ñޔRv�&�V$SO�S��u�+q�\��QG�=i�X�0�.�f�7^i��d��4��?�i���wK�4�w�2�zaj����(��e���� z]��1Ƙ}�	�/��bb�
�I��������W�B
$I8�����-��L���4ZZAGj ^�R~��
;�I@
h�RP�^ԔP0Ͻ/zJ(i(��I�ZJ :�Gz;�0�;�ڀ
J(� �Qڊ ZJZJ (��h�M��hM�J Z(�-'z;�H��Q@Qۊ ZJJ(h��h� /j;QE v�� (f� (���@y��Q@	GzSF;�(�����I@����;RH��%% -/jAA� �K��Pι��ɐ}9�fPpA�]���Oj���x��3=�㊏x��SX�ҩ�ބw����c�EH��YH��\��R��=*�=G�g#h���t�Q�z1��Љ�)�t��*JE.)Z P)OJAA�Ld�Wu歰�B!��-7fH�;)�X�,U�֍��V�Sv�ܤ��5 =)�9��+��c� ���.=j[��8�\sE+�O�҃E�a�f����Qp��Ӂ��J����A9�w�ѼzҸXy��H\Sw��U�*
��(�GCB�J���u���D�KE�j (������^�QE �4������ \�Q@�������-P y�����-%f� \
CFh�aI�(��� 1E% sEPPFi}(4 �:R�PFh������4R:3M�KL�z�ފ( ��E Q���E� ��8����Q@�%)�E �Q����KIE )�� J
���ŝ�

CFih ��% 0�nܚ��S����b�}i����zy��e
����4j�Y�Z��CY��?�Z����Z�Q��RE$!@��iGJ��x���i�K�AK� )��QT�.ii(�!�i��(��D*���V��T��4K1�\f�7Z�p�w5I��DNY�i3�(=i�ҵ2d�2	?�hX��L��l��I�We��B7�X3
�u<�@��֩Xı�6��*��I�Gw���) f����
(��(��K���(�@	KFh�4f�1@�IK@	EP�)?� w��E �ސ�(h�ϵ RR��� �R�i) QA��!ϥc�\S$;Qފ( �KGzJ J\Qڊ )9�����( 斓�>� ���P�ڊN� 
ZAK@���

��$�[���P�p�<U��9Ox��~����VD�1n��rOZ�D�cY���z�_�p+,�i3O��cau ��Tɨ��X ���9F�t�^#�h:���-��ӥ_����Z�Q6�6���@��)��g ��<VME�)*y�)'�u��0k;Aȧ
�p*e9�hc��N� ��CH��HG4�h�O^��r�H	���j%�T�N�d�R-F)��T�6)��:Ҋ��>�R
1
i��ښ�,�B�T-SIP�ɖ�a>���FO%j2*C�Fj�O�8
A��Ť4�CHd.j���M3�M�&�(o,i�}i`��$���D6<�^��u��j�kld#9�H�L� yj�B����t�مQ�S��Q��Z����b=(�"���vh�c�h�UK�.x�������4�X��0=z�EL�1��n&�[2�t�W:�R�z���sִH����\üp1�k:X�nCk���l�+���s:��f=�e�PԪ��t�ܠ�s�zVޓ��ֲl۔�0�f_Y�1�nF��sE�zVW)#��&G<`T@���mw@�+X
�����#�j�s�9�Y�H*X�
QE% .h����J;Q@(��<� ��J c�
ϻ�ےc$kVI�jR
�U��z��Iڡ�"`�P��qҞ5
�hLL}8i��p�T�,�Q�N�f����LcF})�R���5�55�1���M4�T�!��^��5(TJy��5iƚk�*B�m��&R�j�M_�!A5�+x�9��J��&��*� ��+TL���fm�f��m����ij�!��R�ZZ�+w` ��Ř��Z��@��JW��B��꛱���R܆��X�δ��Џq#
ZD�Hh��R�)GZ�&(�ڗQT��R
(�� (�� )i3A���'�� �<t��@���KI@�� 
1N�N	�gL�5�DH�iz�Iab.��%��@�Z'c&��-FWIehUk@�V�+�M�#h�:V]�\+����Y��eE@�q�ǆ��ZwQs�ϑpN+X�О;�.%P9�5Ri��3��i��1�)z��Î���srn=������*dʄu%�2G�uz4`�2:�=g�W�u�|{T��Ƙ .*���O�I��M�hd�X������������ùR�Y�xU�5b&�^�_i�=��If�H
�!�Ud<�1�>��i��5%���j1R
 p��M�Ҁ
w��7*�o�)8湻�}�OA���
�s rN)�+�L8G�փڝ�
U�9 ���P1�3J ,���Z�h}*hmU[$QpH�O�
2El��.d"�8��)�j$�b�$lw�����[�����,1�5g�X+M۞�\,U�}(�� :��u�Ӹ�R�x*�
(sFi;��GҎ�}( ��( ��:PR�Iހ��( ��;� �4�� )�Q@�)3@b�)s@=�	�&��P����$'Ң��:�Y.����pk7"�SX`�����p�u��ے��$���$P�8ج���!���o~�kA$M7�x�{E��~��س��&�<T�⠋�OY3d!���G�Y�	HZu%!��)h�H�M<�Z�c)

��`��g�	�Z����G1J%�: 
�+v&+>(�sS'�Kc�w����� �v�zԎĒLZ�?5&�ACR�ZdJ`���W�u"�4�r+u**��E�	��#Uw<�ݪrk6ZBҊANjJ� �Q�x�	8S�@��L�LC�!4Ru�<�hǥ���
~�R�LD~X=��KE @c��.*��HiK���N�8�ڎ��3T"���Jo��V�F9�	M0�9��r*3K-6sK���O��6T2��iB皟g=)Bb���i���sJ���-8(��1�Q�W=��h��qF(�R���ъar0*AF8� ��i8PH
ZZ1L�����T���G4���D1
��Z�!�Xa#��J�
�槀�D�\���!����2
�\���e#�Y˹ ��3ΫK�q@<�֧0R�u�P�E- &y��hhG�����_j( �HM- t��J ZL��R�@'Ҋ
�2Ԣr*-����N�ؘ�MC)�;S�qJ��	-�<
j��
�1�U�Gj`Q��EM�:U�j^�����٥��д�QK@����)@�!i�b��MK`#Q�su��Ͳ�#nj:���b����R
01N �8QN�  ��j@)å (�:R (�!٣4�P�)3HcM0��4�@Fi���5�"��B)��	�0G�b�Moz4S��;���ӸԊب�;5i�bl�R�ԊF:։�`�&)�h��Pi���� FG4�f�G�P@���ONJiZ��0� �RR��4��R"+�&ڗ�sP�"�F*LRcڐƁF)آ�	Gj(����8S ��
SH(R�w���E ���Q@	KE% QE ��h4R �F(��'4��4 QE QE�@�����Q@҃�IE2B���� ��J
Z@(�P�(��
ZJ(h�� J8����(��RQ@
)(���Kڊ( ��R�QA��4����cHd��+����}.�<�9w1$�9�i3��.E<��j�LKR9,H4͹�;R�<R��֬�ERU ��Ԅ��Z�2U���"�frFd��U��W�^��l9�'�[Ŝ�Bۏ�VݐⱠ0�mY�CiGҤ"��EIY�T3b�ޒ���R�J�R
(�����7�!���i搊@3�T�Q�ҁ��S��F(�i1�}�c�柊1@���ɩqF)��ѳҥ��`F�ԤRcژO���S����@_Z�mq@�ތSȠ
4
1�?��l�a��0�m�!��M8�
)S����J)��N ��i){�E!���L��f�M �
 LQK�ZJ -P!)h���!��� Qڊ((�� ))h���1@QH�h��PҁE��E��!4QE2CQE -�P�QIK@��� ���GZ (�J(4 ��)(���v�� ;QA��QH���/jA@E% t��J 3�(��� �$m��x���Kb�ej2�k��|��k��kS�Z�{���Eހ);��7ԪqQ���&�h�u��"�M#P��S�x�n0j�����/5�Y�4G�mY���k"%�+b�|����(��R����*J͚!);Ӎ4�'j(�Բ��QEH�=)��M4�6��IH���@	�(��bw����J�PR⏭( �S�@�G�LPi�⍵@2�9��NT���&)0sR��LF)���M�N4�7�R7J
)h����P)�8u�
QN� )E Z`����a`i�:vj�%�\�qJ* i���M�)s�34��qXZ)A�� i�{�M(�1�Si�֛R�!�M4�)
8����Q,J\R���L��T.�ɫ�T��T�)���ϭ8j3�u�R�>�2�X���)��ڔ�+Č�i��i�a��O�Q�jx�5D��*&�VeL*��CD���j�K�Z� #�T��baQ���Fj�-�Xԏ6[���^����;�R�@���� R)h�Bf��(QIޖ�
(�E )3@AGJJJ \�IE -�3E /Ғ�� (��P�f�J@)���J(*(��!Gj){PQE/J (����b��@RP�E�4QE0���Rh���R�;QE��(�� (�� )-% #t�T��
j���YM�mMja��d�֥�$�d�Oj�=*{�����Z
�O�+R�p3Z�Џ���b����Zh����&)�i�4Ա�Hi{��P��iԄT�����JCIKE %(��QKڀ�A���h�8���(�
hBb���.*�7�����KHi���)4��C�Kc�M4��z�ܤ��m;4��ƚn)Ԇ��f)
3E ����Qڒ�

�B0��#7� O
��b��� �ni���m��VVF�`�M^ �
�G�%-% -%-% -(��
J^�P!)i)h	�4Q@�4���4 �QE 'zJZC�@Q@���PGj;�H��w��0IKI� %�J@-
(*ZN�~4�𤣵- %�P��4w��1@�� );�њ ))h�@��(��(�O8��P h��`�E }(������Qސ��E��B�pj�U+��ʦ���9��ֲ��֭��Y2����J��g��i)G����J��(���}% ���I,��Ug<չF3UrkDc!c�Zv�+1�ZV��14c�R�.�����h����v)*F��)
JSIR1
M%%�\v<QIތR�QE!�Hi�SM 4�SHjF4�SHh(�� �RR�4 
p��4�\��Q� ZZJ(E-%-��((�)�� �q��sHM)�<
hciE'�EP-<t��ԋ�hC��Jw8��j�!1J.){� ��sK� J)
 �� ����`��I� J1J:ъ@6���RZ1F)hc�O֜)( �(�E- ��.qHz� i(�F)��RQB���h�D�8R�����H��
QT��\RT!�x��rj�Uy�� eJ>ni��K0�*5��0u�\����jr+6�P�Q0�=*'�-1�"qQ���R�Ȧ��)	�"�T�e�d�[�)��EdX����A�]GfIE��Z��E� QEh �RR� zRQGj (4v���G4 3GzN�P1Ԕv���-� ��f� (��@	EPK�J( �4QI� ZozZ) �S��i){�L�	�1F(z�@� �QE �j;Qހ�F)h ��q@z(�S (4QH�)(h��� Qތ�E0
(��F(@�RPh4 ��ܮW��j)��Ɛvg;z�'�ęHn��_G��+���r�Ѥ�(�朣�
�ӑh:.=F��E�
1K� J1�- QK�1@jP1i1�-!��4f��@.(���(�
SL�K�Z) �Hiئ��@4�O4�R1���Hq@i��i� R�J(E.(=i� �zQ�x�F(�
S֊@%�PP:b�(���Q@E
 1KGjN� ���4�(�v���) ���▀�Kނ(�
JZ()i(�Qږ����@	�(�i) ��Q@���H(�H�Q�%- �Ҋ( h��� �(��(��ZNi �(4RS ����;�) ��4RR�Ҋ)1� Z3E����)h(�PIޖ��֚�4���h�g�&T�X71�Et�Eb]ǂN+�j��#E�P���a�Ң^�b%��ϽH:SOZ h��c� ��R�֫�5q�ZL
�f�A��JѴ�Y�e�N�aEl�diGҤ����" ъ(�SOZq4�����ZJ3�IBM=iƚjJBQF)jJ�S� %
(���B*Jn=� �8���R�K@	�F(�E ��1� (�������4 ���� CM4�M� �1I@��v��B �KI@5hLu(��h�(4���j�,x�4�֜Q�NNjG��x�C�SO���Z�DJ��S�⪨��Qv�e�g����)�*JDY�
a�N�)�F�jֱ�%Gl�|�����E޶�9���щp�b��`R��Ť�J))�Z:QE ��(���(
)E% 'Ҋ)h>�w�� J)h�@	E-% %/jJ
))h ���4(��� ��QL�(��(4 ���� ��( ����L QE- %-PQGz) h��`��E ��iM4� G�yA�<U{�ʟ�c4mNVg3r�'"�t5�{�L���vzPwC��LS�u�:���H9��I,c��'Z��*����R!���~۠�c���k1��>���R�@�))i ��'ju4Բ��CKA⤡���i�%�����4��T�&(�u�� ����A���RR�(Q@��b���
 LsKKI� J.(��ө
�H�5Hx���@�S3�Z��Hc�@����@SRM� (�@�q@��8�
z�v�R���¹�Rc4��`�)�T�x���E��$v�79ZM�t�hw+�M"�e�Sa�0�ڥj��2�7mM�B?:h.E�PqN��#� *�
QI�p�D0�J:�)G5h�(ө �� i�d�:T�@�3��Pc��:�W�K4��8b.
(����

(��(�EPTQIި�h�E- ��� QE QځE ���PA������3@�QFhQފ;R ��Z ?
))i�RR�R �����( �IKE 7�H2�&)��)3� A�;��8���,����k�j��-�ך�SXm&��J���i�Z�D��UW5u�EU�y4�,�z��J�
�T0��̅QKI�
3E ���� >�qF(��R�@�R
Ri�R�R�
(����h���� JB)�Ph�Qފ%���x��y��P�jF��Zn9�6���b*�J�N�@ ����b)i�ӳ@� ��=O��N���5 5B
p��H�
^�
��b�)Z n(�:���4�y��@!��q�M#�@%t���
Z\zUJQI�\�"X�E8R-/CV�c�>�
�t�cΛ��1@��3Ph� �)M *Q@M�Sh �P1@KH)h(�4� �
(��Q�( �����4Q@%� ��(���1@ړ<�i	��GZJZ 
i)i
���P����i�Ӹ�uG�M�\,I��7Ty�4\,+�D�J�Q1�l���5nz�3q�D[��!��e�҉�z�@_S���.pz�R-���;r��҄L�3�R��!����P��MȨd#+�zi��W����MVCS��D2q�N�9�S���Q�V�S���aHiiJL�N��c1@�Q@
�G��)i;R� �����(�=(PEih3IK֔
 i�KK�1@	��LQ@h�Gz3@	Fh4� QKI@�ڊ;P}(����4����Z>�Rs� -%� ��E q@	Kފ) QIE GIޖ���4����E QڊJ _JZJ>� ��Q@JZbR�E ����ERQ�(�@�� (��`
(���KIHPM% 
(�h �E2�R�Xf�H����V4��{���nc��咳;�H�*h�@��3Rt��PK�jJ��	 ���P���H>�\L�h�VUh�U�kC?�!�RRƄ���5�-����-	ރFi*F~Pi��))EK�h��E�Qۊ( =);ө����1�E .(�&iIKE0�)9���J:RR�i(��4�O5�z���=�FjJrjX�5�V#�dʼS��MS�C7����j��@f���`ϥs�W�y���:��]/�FnG�sPc�9>�}��Z��t�q��f�f;��ޮC~�7ZM��~zԡ�&�b0z���8��E���� 4�ؤ٤�Q��!nz�(�5!>��R��qnj|P��Uݹ��,��Z�$�s�L�]��汮�q_֚W%�R]Z�%�	 �KLĚ���ku'P�:��h]I��k'&���|����o˶NN?Jݶ�r�g�(9<t����,V26����x��Y����Ty���E�UQb3V�U�Oh�e�52�t=3S�Q,�t�4�Kځ��=):P0�"���,bRR�H���HaF(���QI@Hh��
bKIFqLLZQM�O��
p�M Rգ6#t��q�Nߥ@��V��`��=j#�H�*�x��H;T�T(5"'"�EL��d���Gz�l�ڜ��{8�8��]�+�(�"LqN���{V�(�t�f� �p4�� �Ի}�1���Ɣ� e-斁��;S
JZ((����E �t��>� Qފ(:Q�ih���Gj J(��4QHh �))J@Ph��KEDtPE�@}h��ZJ) RQKL`h�E% -��t���Q@��>� (��R �KIE�QE0�QE  ��R����R�()qIJ( �4�����V-�X��GF�,�8�&��J��%\T`��ۘ�Ʃ����+�@i�=�i"ۚ�1�F)�֮&s-�x� �U��Ҵ0c���S�X��IJi*hCHh=h�RZE��jF8R����дQEK(JZJ(��{�R�@��@E 4P֖�E�Kځ֗@%����Q@!��@�5Ԅ�j'4��u�1Jǚa�(Pjd<�XjdlS}ئ�ai����T0���P�52�c����w�Y�g���W
CKڒ�IKA��ZJS֒�	IN�4��Ci;Ԙ‵I
�T�5 Jv�8�bnE�����0^�"��P�+�zԥ�
*�%����T�Fy�(*ћev���Zx��3i�W)=F5y�������*���O���t�0OJ�Dʈ�2D�x�8�q�Z��,�UE
R'ӭ�֨@1I{#��+�#�n�hZP�������-- ��0(�� =8�GZ(�@(�.
z�i��^�q2�<|T�P�J+C>��u�RcBM���Y�І�KIRZ�R�R0��))
�S��WޤSP����Ʌ8t����$x�:�
(�����@��4�ɧ�� &1EPw��E E%D�-P!(����QE 
N�Qޘ8��� (�u��h{�H){P���Q@(�A@���ފ;�Gz(� Q�) QE%04Qڒ��IE �� J���4A2��.��w�ƪwQ3��q7�;싃Ң"�\ǂj��b�����J�O�*�c��¡^�(���}0S�0L4�M��hi��4�&�C@����R�{RcA�;�I��R�J;�1Ԁ���@E%- ��4�S@(4��M�@(��%- �4��� !�QIڀHh�'��F�?Zy�Lj��"
x�T��c�LD����C�=MP�%�<���\�H��4�S�)���)����MK3I�
�C("�G�qZ�b��1֖��M�5)�RcB*��T����E��+Z/�Y�������L*2QI��;�Q��(�4� R�i)h:R�i֘ �QH�?
)�IJi(Jg�7AL���II�@)⒃I�4 ��h�% )4�Q@	��Җ� LPh���J);��Gj( ����
CE% )( �R�) ��
-QIE% -
( �T���� %-PR�ڊ ))i({P({PE� �E ��Q@	E-P0��E �
(��(�R�E 'J\�QL�����?
JZ)����sRi�W)3*�.z
�h�����5�,{Ms��p��0��#�J��ҥƨ��*AZ#68R�R��Bi��L5�4@i(4��z�дSI��Q�	�Ƅ�IJi9�e �i�ޒ�ځ�i;Ӎ% �����IJ(@-�L�٥���LI�J(h�!�HM �	��ښ�Z�@MFԤ�M�P��ޜi��ƚm8�i��PE- ���-!�@	GZZ=h%�R☃�(�H=)�1KEH R��b�Up��-% �QE���
aq���;�&9�.�������;QH���P1����ZC�p5ih��H���T��CR���(�I.isL�-0
Jb�%�� kSZ{Q�(������E%� ��E0
)z�R �H{R�@
(��@ڔRw��EP���RPG֗��)h�� 
J
>�P( �������� (�&�( �E���K@%- �S@�E #u��r�5�Ê�r��h�� �DÞ�a�3P�bt�1R(�*E�V�b����i�4ʐ���l���iƛ�Ԗ���R�v��;Rc
(4T����4f��ţ�IA�@�Znis@zu6���II��<�1�f�4f�

P8��h�P )GJ�KM��qEU�����4�;�H(��@i
(��@IE�hQKM��;����Hc�i���@�
�Nju�U�68
;�K��H���4p�إ�AN��=i@�4S�4&%8Sz��z��f���wj��)1�8S��"9�O"�dҰ&�=�օ�\�E2	���h�"%!� )i
	�>��ހ4u��Ҋ`:�m�
M&i3Fhs�;�f�h�}j>�i���;�sK�(��(h�A��KIK׊@���% P(��
JZ((�� JJSE %EPA��I� ��KI@n(�� e%����EcޘN(�� )i( ��1@
( �����J3@-%(h�� ))h��v���b����PEP i)M&h �Q@���4 R�I@h�������U�\���oҳ�и�&a�j�w��䚧"��v��� 9�V��zU d�Rc�QҖ�$��FsR��FMf�"0��ө�qRh�4��R���R��(�4�нh��T�8QE% ����
LњJ;<Q�m�f�4f�q@Fi3I�@8�LcHO�4�@�Hi	�`M4�(4�ހ4SE8�h�A�&�������8UqMP(){QK@	�(�E!�ފ(� �4i<�Bc�K�b�vqZ&f��nh�RJ��Q�L�f����JL�ޤ�sE'jO� >�h4��+F(��	EPR�I@�
);RҰ���P(�\vi��)A�c�J
)i( ��
);�( ���� Pih���Z J(��
(�Gz CE)���
ZM
\�Ph��i1�E-P��R�P!ii)E
(��.)qIN�sKI�Jv 4��M+E��<M�"�W�aR)�������4�
Q@���R�
Pi(�4�K�h�<R�Pj2iA�2M���IR1s@4��&ii��u(���Z`8R��f�
� �j�C&S�54ᚢ�R�h��Up4�Qd҆&��KK��p�D�ÚPy����D1��Ӂ��i�U���V�*�����v�H�L�GZz� �wj�!�isN�sLA@8��� ;&�Oƌ�斛I�z<�ΚM��'�L�����.i�v��I�i(�@IFh�L<�Lw�Rq@	E�h(���;ъ\Ph��;PQ֗��(��� �Iޖ� CIϭ8�Sh 4�4�8��h����4z^� �R}h&�
(���IKEv�� �����Q@JZJ;� (�њ Q@j(��
(�PEP֊Z(��RP�ތ�@���-%
(����P�(��
�PҊ(������QKHh 4�L�RRT�ReI"Ȫ�	֛u��3S�Z��W�*ܑ�Va�CE�r6�Z�aQ0�٪d$S*R*3Y�T4�
^Ԕ��`i)M'j@R)(�� Hh4���I�4��!3E'Z)�Ť=i(4Ɵ�h�qi1KI@���(��(�!���M��c��)���������Q�Kۚ� �њnii�b�֗p�4��ҰQ�`=��h���ԅi�x�g�,��;Ss�i2qE�vis�G�J(����M�(�E�;u.�e楠$�i֣
L�J:��(�M��

�Ȝ�R��i4v� �E74�� 4f�O��B�)=�E �����z^��K@Hx�4PE}( ���h �QE b�( 4ޔ��R@ ��� (ϥPsGzZ((���QE!���E R~���Ja%7 �S���� ��I�P (�� ��(��))��QE }(��EPE� )i(�4R�H( ��P:)h���- ���(��Z( �=ii1@�JZC@Q@E'z(i(����4�� QE w��( �4�(�ZJq�c�V���"�W�dUI�h�,�¢aVT,+6�� aL�[�FEfѬFi�)���!�R�JC
(���II�.isIE!�GjL�i �����Ť�%% �Ji(3HiM6�"�M����FiH����J)i;�1i
d䊼�ڴ0�.iE79�b�B�O�-�v��Q@ţ�%- .h����KIE ��PE� �@�4P�ށIH��;�KIE -%P�j(�Hh�&i w�����@
i;R� (4RPQG�
 
JZJ J?�)�4����5��3I�3Fi!�Fh$Q��ƅg����RC$�&y�d�� ���������%�&��5&�w<�CH�5�Թ�@�%�:Ѿ��I���HNi	�n�zB��E�a����*2�
�,K��5EFh��4��"�i��,J^���	4���I��j,���@n�'��8�u�3�fM!4�2P�Ӄ���-ou��g��p�@���@�Fh.i{�A���C%�Q)��@�3Gzh�K@���v��H�њm-K(ZZJ	���)G�M�(4 �Zh4�Bh��<��O�)�j���x�9G�0g���q�R)��zS���,�#����K�J�GP)3� ��K$�i��=�Df�EM�t�V���H�n�>=)��
>��҃@֐��� %Q@	Fh�� &y���PQKۚJ J1Ji?
 )��N� ���� `��R� (����:�)(h�4w������{��PE- �@� J(� Q��� 3@��@��M�(���PE/z()h���Q@IE�
){RP�� Q@�����h�KHi ������)$�vnAU�Vl�,�¢j��BÚɣx��0���0�*�dx�6�i���
�Ԫ�[��<�8�E�l��R��PI�XG╀��(4�b@����RRS���0�Ӆ'4�����(�PS�3�9h��MҔ��f��R�M�K���:��4�c�N��.M4"P}�CsM�E�%�)�x��J��#6J����i�Flz�j���T�֕��
�I�Pb�i��*����<P)�Z))
'ZZJZ@�IKޘR��%�<�I������4P���J Z(�G QIK@-6��=}h�( =�>�Q@Q@i;њ) f�J( ��S(��/j (4�R �����%-�w��E Gڊ(�@Qގ�)h ��KI�hqF(����QE �(���-!��JQ@IE��;Q@��P:PEP0�4�� ��-Pg֊)h ��� (��@(斒���( ��( �4J (�� JJZJ N��O�!Rc!q�U�U�\��*�2�Q�&��TL+&oDi�Rc
͚�3L"�G4�P��CN�<T�JCE�õ�R��i��CԔ)) �(������4���LB�z�R@O4��R1�z��� �8�ٱQ<��M���3�TO%E����vɷzњ�8�O4��'#�3�ZA�r���
p�8�m�����v�J�-���o T�zR��.{S�{R��4 ݃ڍ��B�Q�Fw��NS�@��Fړ��I@
ZLQR�Bъ;QH��(�j(��)��3J
�kJ�n���A�Z�sɒ
ZA҂i�-��Sh��)� �h����)(������Gz)(h��ހ��IHB�@��aI�Z)��w�� (�w������(�P�QFh ��;�P=�4��i(�E �QE 'zN
Z
Z(��E �@�Iڊ( ���}( ��� QҊ (�Q@�QE ���Q@�N�
� ���� %hPڊ
(��
JZJbM<
_�ZbM4�L9������YpMV�Nj�%��OLՉ���G���U!f�����[��i"�P�$�J�{��c�"��1��ڤ�ƀ�4�0(e ��h�>ԋ�8���.�p�P;��@�ҥ�8.i����Oe�`��/Q������� ��P�)6��IL.4�i��.)�.We�aV�qP8#L��뚘�Q@
^��;sA�4g�
?(4�J){�H=(����Iޏ�J ;Q��Q@ER�����
(���(�>��3Fh�� �KI����%-P h�>�� ���PR�E QE Q�(�aFh�� QI@@�( ��( ��E ��w�����'�/Z (�hh��
i�3N�#��2��֪����Z� �٬YU��mS0�Ȭٺd}�6�R��VL�3�%)�M4�@i
P)E.((���b�(�(��(^i��@QڝӚh4�j�	��>��ޔ�w�b�&)E/֒��E 4�ЉR�IN�1)
�� Z3E(����GjN�^�{�R�Ҋ(�AIA��Ť��`��⒐h��
(�ڊ J)i( ���E &9�4�Pu�4�����R��i;�j��v�����QL��R);�E���A��Ҋ(��( w��( ���P0��v�
(�� 4v���@%-� ������QE ��% R�E QF( ��Pi;�֊Z( 4�}h��E��
LRњ J
 �(��� R��w �) ��(���
W�Ԃ�(QrX឴�L^)Ԅ)�Ґ���jX�h�I�) }Mh�ځ�-7����J)���v��J)�ږ�qIT�▚h�<u�L�KJ:�E-Z!��J3Z"�S�9��D�{V��L� �V��5�n���
��d�(=h�GzdE%(��RR� \�����(�J^))sL��P!h�%Z(�����}h ���4 Ph�E ��P1@�f��
(�E!(��
JZCҘ(�ES ����	HzR�@
u��RӸ��Q�.t�<��&y�L$�擿4��\~�֐�2��+�
)��h`:�m��ǃN��N�"�KM��"���V�͒'Z��}�U�z�FR4�yl֊t���T|����@�E/��%
 p�
h������Ԕ
 (��cԽ)(� ▒���R�P�)3K@���� ��AK@��֊8��h�ڊ(��J\q@)(�J_Ɠ�/J@��� RR�@	E��� %Q@�Ԇ��Ph��:Q@�I�^���)9�J
(�- %Q@Q@z(4PHh�� ���� ��(��
JZC@h���@���#u�T�J�=*��֢H��2AP5Z�pj��VMő��*B=)��f���i4��Y�D��4�����) QIE!�����P���w�� 
;�Ҋ :�R�!��-��֐�u!�c:Q�- �h�K�J _�(��=���-擧ҋ�
@-%��E(���(� QIE -���@�4�� h4Q@	KHGZNi �h��� N�R⒀֓�PEPy������(���J(�KH��E P(� (�v�������
(��KIK@RP1E%-&hh撖����i( ��Z JQ�h��(�@Q@z�����- QE��)h ����QE PEPQKE KF(� �n3RRI������/Q[�EgO;VmŔH�1�Wj#Y4mFj3Oja�٪�(��aIA��H�4�Fx��y���4���CR撒�P0�&iM74Z)8�4
(���Q@/�H(��(��Q@h��{��(��������R�� Q�E�
CKE %���@j(4PEw��(����@	GzN��s��� F�Un#��W>���P�i��.	���h��׊ΔV,�,��74�9�͛ 4f��J�R�N���Ԗ���Ji��.is�0\���zRH�Ɠ4ړҀ4t4��@��h�Rv���f�RQ@�ҊJQ@����s@
:�3K���	�iأ�2)��z\S�J��
ԄqLj
�C�8������Bi���3Ji�� .h��� Z\�A��h��4�њ)4����0)i��瞕H���9�7>�{��ƌ�s�	���ѻ�m%R%�J
p3ӃE�zJN��A�T��y�N�Th'#�o[]����iXE�����ҝ�� �J3Fi QE;R�P)�����-�RRR�L<�E �RQ@ږ�E -���Fh�i( ��IK@h���@���u��@�Hi f�E'Z Z(�8�L����Hޒ���E �ހ��E�"�M�D@�����Kڀ���IK@(��
))h QE ֎�QL�( QE- %�
(�KڀԔ�f��(4 �QF@�Hh��
;�E �Q@��I� Z(�� %-PQKIH�1����Z;RP�Q�Q����ө) ������4�u�)\�Ec�95�8�+�YIA�ڣ5#u�ϥdѺ�I�h&�P�Fi��Hj��h'��c�Q�֓�@8�i4s�i
�r*t~:U,�H����pf�7�sӽk������2�c��9��3�i�z
(�E�~h��ڀF(�� -�g�@ �@��
(�E0J:RQހ@�ڎ� {QE �w��>Ԁ(�4� t�4�S �����N�f�J \�L�)%�EQ!K��Qށ���ހ
ZJ({�QK@	җ����/ QE�Z);Q@Ť�J)�w����
){Q@	E-� ��KIր
;�E QGz`QE �4v��4�r(��Q@Q@%-% �(�L���Ɓ@IKI@&)i:R(�� R�/jc�4����5�v~j�yx��+&I7��fѬH��i�L&�f�4�N$S	�٢bQHM犓D��I�&��P)����`;"�=���5%�&(�4 ��-'j(E.}M ����:R�)ZQҁ�2
h������R��6�Uu(�������w�D����5@ �IN��iJCA<�ڨ�/j;��w�����Rx��f��iN)(�cBgڃE!��&�ƕ�0�Ԕ������R��!4i?�K�y�z��M"�8��G43�i<��0&�}�s�Ji4 ��s֝�SM0
J))�RQI@1����δ��K�L�s��*�;ތ�sKޘ�&��By��ZBlRh��M��bX�ў)���3LC�@���Kޝ�a٥����Hc�Zvs�4qҖ�
3Fh��)? ^Ԕv��=(sIE������)���J(i
@��f�IE��Q@IE% ��GzPh�aE�@֎�w��Q��E'?�.h ��IH����
L��b�
ZJ)�w��(h�����ރH�E%�'��P�.V�&�L����{��T��J��t��zT�ɸ{�#����5�h� '=i5�q/�a�E!��O�4�S֚k6h���z�)3Dţ4��HN"�'�Pi���&h'�)����IB��fi٠	:��4�4�Ew��b�ii��C
p�4��S���)�4�u(��N) �iA��)EP��^��K����;R�M<3M����sFi��M/Jh4f��vh�74���)4���74\v�Bi��&h�X�4f���p�M���M+��9�R�M"�f�>������#4�}i3�i���4��=)���cM6�G?N�� CM>��i� �iON)3Mi��Ji���4�f�BњL�I�b��)���N��)sQ早�T���A�����ƀi3Fx�!I4���(�4�qN�R
wZ�=�{��N�`(�cޒ�4�@x��qV���+��u���ךнl�ֳX��Oc��� =M/ғ�P:��1N
(R���ihU帩�� �=�~���8�Z%����䟭K*FNAP�zqR� ��sT#{N������sar%�<��{II�s�OZ�;���3�#�K�g�O4�r����8u1E;� )i)h)E'jZ`��P�w�� Z(��	֗4���(��h ��Gz JZJ( ���PIKފ ))x��JLR�@(��Pg֊3I@'z(�@}(��=(��2D�))h����/j (�����sKA��E/J) ��RSh�E \�Q@Hz�E ���A��
(�P0�F)h4�)3@�E(������(��`u��� �qE QI@E��){�QL4��){�QKڒ�袀�QL�4�O�U�d��*X��b�GU'?Z��;�<g���.K��w b�&|ޚ?͑�V��.��b�KuV�j�D��i4���S�dt!sM4q�CPZi�ҚkR,L�M4撑Hu%&y��i.�\�3�3�H	3N���n�a�����y�U<Դ+��E74�Ԕ(4������ţ�Fh�u0vx��ZQM�4viA�f�4&isQ�
i��v>��� i	�cL��OjnE�3�C��)3I�9�� �sM���3@4���H�M �h$�sU`���4�i��M!
[Ґ��OJm4�?p��5qK���isL�2i��TK�3�4g�QMZri?3�4�/|b�H:❎(��ԠsGz\{T�
8�)�8s@ť�&h�(i	���!s�Ls�"����j�˼>��Q=M^����ۯ����p�S�C!␜RgSf��p\��0��*p���Qc�Ӕ�b&Jr�s���@�d��!S�z��')*09R@�sq�	Ӄ�֝�̒ C���H�pь��U�YZL��)��Z`�Lv�����0��T��h ��w�G�E�@��� ��׵'� 8QM�^��^i:�Gր�J) P(����f�I��E Qފ@%-%- 6���I@!▊ N�KHh(�� ����2Ҋ)zPEPE��QE �P(� ��S ��E Q�) QKڐPKIE -%����Gz(� )h� �}(�� ����
(�� QE ~4}i( ��4R ��3L�(����@
i(��@���`����4�F�y��Z}��+VC���ӌ����&C���+.G���\�|��ُ&�c�<qW�$�� aY��ɫ6la�'�H�cl�R��ݲ��1��#�"~��4��)��5�L4�I@�m8�
y4�h�O��*Qқ�=i�z�L) dԋ�n�Q� 枭�6�
(� Ph�� 
(��
(��(� ��(w��)�QE Q@�E Ph�����
(��@R�Rv��E %.i)i QA������ 0�A�@\>����/Z�dv_�s�ֺ���D��Ҹ�Q�+�sI�,����Ui_<��W%��SU��}��40���p���Ȩ�A�C�i2��پ�v�y��=� wׯj�V�r�0M!�'�N�k3d��_ZC����L4�I@�i�)�P
��1�4��4����HW4���JƢ-���1�������}i	�)���@��4��=iA&���ZoҀ29�=)�ҏj vy��
`���8�,/zQ�j��L�
3�Ӈ֓)jF8zR�)N�������1IKH𢏭!�E�
Z( �R� �(�R�EPHiԆ���h�- %-�h%- P)(����ڀ�(4 ��� ��P�3� v�4���t��)Qި�E��
 >����� �����RR�EPE�����	Kڊ( ��KI@-��@;Q@I�Qۚ( 4Qފ`R�H�<��%0�)
 ~Z);R�`(=)�s���i�ӵH���N�) �H �I����
99��Ґ�R�\P >���i>��(��Iڀ
C�ii
�r89�.rs�t�,��\�s���Gn�*
ZJ(h��- �P(���R�Gj�0
;�IH�(��A���@E�4 ��Q@� ����i:��P�Z(��P����Pt4���E 7�������<�樀�Q֌P撊Z&)h��v�Pފ(�@QH�����`.h�IK@ �Ҍ�ގ��E 
);R�Q@	E-% ��RE%S ���R ��)���SI@�P�G�E Qڊ ))I4�� �ގ���\����E2N s��`y��T�9�y���tM�܎k���`	��)L0�qU��O0��Ҡ=ɫcCI9�ӻ���C&��k.T� �֍��r+*�ڛ6���N�W��e9�Fu!�.i����/jLb���Hbw�4����Ja��i��i�;��'�qX��)�zT�)1Me4���?Zd�4
L���CD��?Zv�7҂iXe�|S��UP���`R�w��o�ݏ�F� z,2}Ի�@�6G��o�}A���X.X	�K����7��'�FMB^��h�\�q�-�5�I����r}����3�F�z,;�wR�۱Ҕ=��� /�R��`�c} �&�������,n���U��������O�Rg��7�Ӱ�LZ�XT%�饻z�`�6�G4���֡-ɣ4�;��-�j�Ji|���\yn
_�� �t��4��)A������((���� JZ(��)( ���������;�R���i (��0f�N� ���Q@Ҋ3E CFE!4��@�ӳQ��S�h�I�u��b�P(�@��(�� =��Q@�( ���P�z�M!�0���QL>�QE ��%(�KIL����Z)(����@Q�J ^(��4P�%/z 
)ÑH8~~��1qڔ
:���QҖ��&("��- 7��Z JJZBi��i�Jy���4��&�cP�d��&1�j����N����'Nz�&Rب�&�?Z�NX���p�p�hֆc�4i��������t�)�x����J_J`ӿL�sO�4 ��9�}�J3���9q���1�q���r#��=EPQ��]���s@��'��9G�t�x�7@�Q W8>���sȬ䀓4����a@�Kڀh ��%- /jJ:�@�P{R�jPx��QE ��QFx���&sK@h�iH��ⓚu% '�KE� �Q��@4Ӿ���N�(���@����@��+���-&)�b� �H=iQFy�4�(�1K@���RR�@�4� �QG(�� )i(�P�IJ) ���t�AA�E QG�E
(�����v����KA��(��ԃ�K@zJCIހFh�&hh��:�@�0�BF
��jNԽ)��Aސ
Zh��I�aAPh���m !�M>��M�V:�H��z
�X��4�*b9����;c�L}�B8���:��O"����42qA�I�sL�3A�IҀ�4��hiI⛚;~� ��⓽���c���% �:c�(����Ӂ���f��\�9��4
�����h�,���'�K���@�=�'z)���I�Gր҃��M4� <Bi��Fy�@K�h�}(GҎ��� �R�)�`��Ƅ��^iq�"�
W����`R���J<�4 sO�j��ԶҔ
1�1NP}i.)q�QK@ ��QKE!�&)h�R����)�m/JS�J����i	�CO�sMl��9�0���oj�����~���Bc����ޥg늭)�o��9hVzm9��&1�u%c�N�1�Q�I@⬑A�����`;���4���S��S9�ߥ ?�E?�LTX㎴��S��ޝ�L?Z9�P��F1��j6`��ׯJ����9�#�ю�ԀA���m|#?�y��rc�\��8��]�t%<��� 6���Y#�MH�Q`��Ԕw�z>��R�SF)h���u� �(�&�@4��4�^�w����ړ���L����(�Gր
Zm;��E-'j (��� f��Z(
;QE0
)3A P�I�c�ޡy����S@�9��E�^�ǹ���\��$7�/�3X�Z��e�n��>�+�p9�d�畎	��*��˭U���x5�4�199�� �q�f+rO9�`�}���z`v��z`�0T�>�	��Q�PLʣ �I8��&���c@	$��9����=酳�ߥ4rh(�p
Lc���J1�ɠ/���L���㎹�PFsS��昋V��

�w��
���i�4P3�W��Qs�X:ʗe�F:̸ՙ��<��XW7nu]���N՗q���9�9�g�,y=�f�4�b����#��g$�
�3��T�����z��� �P�
C[_�TŔzgޫ��p9�&��hc,=¢�=�*������c�x�j�9$�H	]��J�� x�֦����Dd�x>�
1�HbQ�G|PO4�Ubz�A��Y⥍���S��%ci>�0~՟o(8m�$��;�'֤
�:���Vl�>��p)�Zq=�F�.)){P�Z1N� n9�i�g�! Üt���RSh�b�EI�CT"<b��jLq�n0i����HFzS��7P"2)��+�L��d~4�jl~4�9��Q�\S��1ɦq�7�.)�z�q�IO�&zQp֌R� ��@	�OƜi�ڀ�E)��R�'�Q�t����?h#��G��b��zѷ"�#�M(ԁ}��"��)�sN��ց��))���)\c ��/@qN����jP3R(�4�O�H,4t�ȧ��K�=�B i�R��H S��P1J)��4�LS���S�^) ����qE� ��t���-!	�z�)�� 7���zSO�8�OZ i�>��S����i�B}EDƞߝDƪ(����}*���� �B3Tenk��nsԐ����i3I�����wFh����(��3ځ��/�I@�O�'N � (��'A@���M�֖���J��3�N_L�zp8���<T9#�R���n ��qW���q��������*t�Lb�2:g��00zt�W��)
)��K3َ�zc�Q����jG�T��~R;��b��9=���� g;@��T^&Q���R}����Z���8ZՃS����x�-e`�/c�O.�d��b�z� �0x�I0q�=+��(>q�:m$�ݦ���\�g�;5����c�j�wQ��~u%"�n�v�é=i���6i8������ 
Z=���(�@ڎ��P *3�%'z ZJOSi3��RҐ�)���QIE W4
C�R�4����\sKH)Ԁ(��K@u���)(i
JSM&��SKSP��]_$hNr{S�\���j�qz�� ~5�w�|�ݑ�k&{�+�RB��y��Fq��\���!�ة9�K$���=�^��%a��9�;��d���R���8CtǥP��5b8@9�a[?Θ򁑒(@L���Ӽ�J�e�s����&��\ ?
�-�y��=OU�;�8Z �$�FH�P��1R06��Ġ�j�$`r}�2�I�V��c�Un R1����nqןLSw�i�6ON�6Fh)��֐t���T�q�c�@OaR+q��@�\�2@�5b�nB�H�zf��`���S��~T�i�R���Hb����@)G�Rz�Ж9J+B	�2+(pj��<��y��#e�֦C�5J)*�g�	�r�*D��jQ�SS�"�4B�ҝ�i��� p▐~t�֐��b�y�����qRc�"��i�1LC1I���S����1´�"<qM�R�LQp"�7��qL*;�`3�&�@=*B3ӭ!@�Ȥ�5&;�]��"�o� �� R�(�X�c��������LT�I���6�F�Rc�o8�p#�J
Ԙ�&(=p)1N��K����Ƞ8���ҌQp��8� OU��s�E�a��m�O�\㞔��c��h_���9W�ӂ��N+��.)h���
v(�i@��&qK�� ��� sHc@��8
1�� �R��.8���K@�@�&8�(��Z!���A>�h�hzi�4����!��4�LBa�ҜMF�HB0�NsP��z�ٰ3Udl{ֱFrdS�Z�͓O��75�]���RZ�ցԚC�H���G�ڐ�h��� 3E'z(��E �)~� ���i��(������h����J�N���J 3�N�����ژ��9s�?JniW%��e[ du�� pg�F�8�+���h���oc��7g8�+>F$�R1R�#�
�{p��=��^`�8�!���0}��UU:T2[n'k�j8'�J[�G ��(a����HE'������*�:�u�@��
)h�
�f�R�D���PE %(�� ;ҊL���>�v�� �� QҊ
3�>� QFh�(��@j(�Gz ;�II�i�u4��cȪ�5Rk�Py�=��.���j�����<g�e]����A��K���# {ҩ"[5.�r[NFsY�ݳ�7�H�9'�7����is1|���|m4�;�`sMT�$ӰS���*�[dd� �OCWK�p>��ʞX^:f�Q��)v�#�������ҪL�W�x>�rF�Y�\�֚��`�	#5���Ɵp>q�����|��&����Ґ�X�`sR,'$���G���jFE
��F0}*�D
���N��'�R�H��l�
�0{Vu��{皱4�X�ީ���`s��E�p*"���@5�M2��is�y��g"��������j\�E [B6��W�������契� ~��+�SL�Ҥa�)�R�G�ɧ���4�Z?
SHy�1	��Hh*D<Tt����].̽�kBG�X����y1�r�T$k��5 =*�O��Ҭ�
�:S'�*0��<���NϯZ�ri�v�҃G�@�/j/OJ M���u����I�Ls@�Ȥ�R�M#֘���`T�Rb��8�SM"�c�B*B;�b��zi�
�Rl9���@*B���GZ1�O��Rb��i ������4f=i�x��=� �1ڛ���`�(�}��O�8i@��1@Z����拌���P��;�ӕx�pV���
���1���-H�
 `^���N�F9�p ("��Ӛ.@��N��e8)q� �<P0��J�)qH����8���4 �)iq@	���;(4 ��ʗړ� J
q��LC
8���BF(G�������)��W�0��(�$���=��&x��� ;=��74�� �S���0r3�҃�
`X���ޕ2�X6s����:v�*�W �'�Qy|��ޤC�u��ry4�'�?�1;���)��a��iw1���8�	�,��0� � *��l9nIj�N3�	��!�����2�@s�q��H��5��a��z����S���;T5/�)ᰤ���xF$��c��G����&߸3銸�>��`7`��@����Hmu��
�eb�gƛ��$�i�8�C��|����`}j������g})
V�#�4�((3�zh'����G\��LQ��~t�c��Rd�(`�8��f��z�y�i��1��bH���I�SH����&���h�})i
�7�Q�P�r��h�. ���I�Xq��֮�65�8t�s]H5'�z��u�*����\�	��\�4���Z@ix��N��R��(��SH�Q@
�T�R��m DA��R��&(Q���)q��_Z1�Rb����F�Jx҅�`Q���]��J��i� `f����`�<
\P2"���})�����J1O��K� f=���Ҍ
 f)qȧb�h�sN��Ҟ��p�Z\�J=) �s�(���4�11���
1� h��qA◵ GJ?ZZN� ����b�	Hii1@qM�JzRf�N9���54�TNr
A�� )ih�z����8�06	�&�-��c�BN)4 �Kښ3KҀs�A��/4��� �9�/|SW`S��ژA�����6��ޫ�׸`g��)�F:��? ��� A���p=1 ��L�NQ�z�
:P);��E&hh��% )��� (f�i�c�;sLi�zUi��	�,&Xw�T����Y�:��8l�V
�j��#oS���0i����Sq�ą��J�"
��CM^O1m��J�7b���ӏ p*9$�UY.��L3H��<��ކ��rK`�Jh.D����lѿj�8$�u��`���H��<r}(q�nQ��Q�n���F3M�H���*�ŷ�rz�# �:*�lH ��ӵ!�E����y��¦*�,y5RK���9�K��ON�V\�ld��\|�18� f��(e�I�h<|�J�NO<ZS(u z�d��3ކR"v�8�w)�)>���'�3�@ɤ�t�>��'@
����O��Q/Ӕ�� I��!�4��'���S	�4�销4)E ��3HaM"�A�� 6�;�� 2*D|7��~Ե2WE�ٚv�a�<V�rdVo�����Z�N�J�4���h� sS�s�`Վ��aO=j%4�jC���4R��c�^���M�Z���i�J1F3GJ ��)ELRb��_�L�I���F)���Ԙ�J曷���h��I�ΌS_j1�~(#֐y��I�qލ��G��{T�hٚ ��5(\]��zW-���qR��4���c1�柊6�S�*x�R����N�)z��g�)�dь�
���VTq���D2@ʣ�ւ�T#p�9E���8���&��ױ&�E��'�I���94&3����r������h�S"�z~t�lD����+��Q�g��8��֘�҃��Tz��?t� 1�G�Q��A�V|q��b�[�i�p���*C.����F2��u��u�2�Ϩ�N��9'�W�Ğ�b���Ҁ"܏�TEA\f�g�O�F�����Tul|��Rz�crN =�cx�Ҁ!���QN/���|�K��O�JN9�j �:��T�)�zv5L��z92rO�r�����
(�HFh��wjm:�E� �QҊ`��QH��v�h� ��S���i��?�S��&@�j��*�YG�k.�R��Zº���' �U$+��Z��e
s��RXR($��"��ҏZN� ���M����B�*0
�) �S	���ޣ�� ��`R� 9��4�P0�Gz_�'Z@�QE %.h"����ԑ��@)���74��4�� u�`{�M��hAq�W$�u�f��1P�  c����t�T��}j })�jYD�c��Zx�Z^� Zf�>�b��JZ 1K�����B�Q��R��(�� ��IN�уO�F(�?�.)í� �1@�Rm�ޛ��LQ�v��P6����N�("��IN�⁌ǥ%<�Ԙ���p��"�&)1@�柊J@ �S�I@
)�Q����9���g�A�֭��2H���j� -��L�YL1�Ҧ�A�4&����T�R)�a�02@�}�H��ۺ{ԩ�LT� x<H:�0lS=�ՕM�4���2��@�I�5����~o�H��
 �J~\gޚ�� ����#8�L�S���;�>�>~A��f�rs��Ls�{fF�2O�Ow'�i$��=ri� �A���A�^�@�"����c�#�HdN�\O�C��g.��=i� �	�^E'�@���~t6zd
�F�Cށ&�O��0�I�;T&&V��:U�u*1�;�HA ��@�7��(��t���� i`ѕ��|sH2m�3ǽ4u�jDRf�aЊL�c5hLs��U�-�Q������E����;� ��r�R�9�[$�����y%�G?w����~L�*H�a6wPj0.���V�w��Au���W��3e��G~kF�Tf�t�p@⡢�;��7�#�Er���&2dP��8�ù��Ni٤��%-PK�i4@h4�`/j;Ss�i��@�� ��^tPz�Y�Qz�Қ@�u�
2ON{���Mc�j�r��<�,��˓���R�7:�W
@�}U��$�k%�w9n��a��*�+�d��g�NpMVw�pN 5z+R�2z��KfU�P�(�
d`�t�,��;qJ�'�J�����H}�;`ӛ�q֢v����v
Ҥ$�̸���4)ela��'�o˞:sQn��PL~l�u4��8#� �sHp��ݍD���z�	e�9���e$�c��st�f�2|�9-V�Op;P!�c�=i�BA���BC��FO�Xr�8�ϵ= ϥ5b����B9���9�h���#�M
Z )sH}(�p�KI��u�b��R�� ��P��������K�P(�Q�4�R����3KڏƐ��R�1�R��J i�sN������4~ �Rb�3ހ�b�h��(���P =iGZNiA�a����R��@ ���� �@����֗4�� ��i��M=z�!	H�b�}�6a����p-��<��$�`�+>�l���ZBfR���c�ک��4I&G^�=���Rw֓ڔ�Hz֦!�&M.h�}� ���J(��;<S(ϵ 8����(4c�`�i3K�)��҂i( �h��� (�d�@�G?�/j`�H)~��P�?1�\q@=��;Q���1/ 1�Vm��?�U\v����昍5|��8�NW
>c�"
�F �w�JA�jNGlf�99�qT!���8��p=)��Bq�ҚGzL��8��  g�I3�~T���~��0H7�<�9�!��-�)�g�Br*o-��ϽPl! PO�P�e<Dy�o�\V��y?/Pt���zz
��1��8B��#���ʥxPM Wx�z���
Ó�jN�~4�0h���$��~������)l�d�w�HlA�\��9�s�aND$�q�����@�z��%�0���R�1���WN���X/�"��+ ܤ���(��r}h���G�:�X\Q�E&hh>���eSN�K�R4�'�=�.�6r�ұn5vRN�S��I
�E=�/ �ͺ�R����n5&r��Mg�2��['>�IszMcz��>Օs}#���ۭCd(-ϵL�\c����,Ϝ����>$l��9��m�v���N���L
����G�J��$�hc���h��(�\2��%ǥJF�=) �~�)��P9������� |u����� O<�!bN}jT��Nj5��q��+�� XC�����3����Jp{v��q�#?�+m�@�R=3U\��݌sP)���� p)�	�؋i?��3�	,3�R��<�DA o<�`7v@��Udw�|���v�݀�:~���!�JpG�5���4Ӝp9� + 
�F: *�dph�>楔�Jq��"!l N)��{�Ԉ|�$I�M	���l�d��@s�<�����Y���`�p�=�P�g�ޫ?-�����(��q�x�*@���*���8���8T���������i���1#n
1Җ�
�6�9�G���^�P26�͈_'�
��ځ�-�G|��S$rj��(l��a���G��@�� �T
 �����Uﳈז'�h���Rg�D�/c�T���^Օ��x�>��S��8؂A>��}�vE*z<�4���!8'#<�Q&�Mu�Ƥ�n����+mbY�� <6z����c���T*�X��5i�n$g/�5]��C��z��aR�8��J��H+�M12��#��m�_$gҬƸj��y�"��C�R��:�~�9��.3�}h#��(\j�{Ս�P��X���)�d�
�E2�	�9$RF�� �� :���=x�������+�#<{Sr9�ޛ�r8sP;�S��İ� $���q��RS��GA҉�~Nx�>l�O�4���wrq���ops@^9�j2��H��>�Tn����=1���,�F�0+�6=I�j@� �&�EP�6��5&�c�@
wj)1�4�Z	�=�8��i�ݩ��hTq�ҐR� h��Hy4���(�M��}ip�94���V��R搑I���F;�4� �b���NjUz���&���XЂ}�ڴ��8�ְ�g5j�}�8���o+dqҤ
C��<b�ɥ �Zny�R �����'4�i��4 �Zf}is� )�� 4�֐	FE�� �h?5�@>Թ�4 ��9��ZJ w��8��A@>���)>� ����� ��I�=);f�s@
)~�̎��4 �AIGր���J ^h�QT�)�h&�y0
b.��1֥�_�� �U�B����V��w6A�zb,(�Nzv�#銦�d��㊝dU'�)�`}�ƕ�We��H��?Ґ���q�԰��	�D��m�jl��@u 昮O֐�J y�����=9֜F:t��4�$94g� ���z��_�Мc'�4<{���`��:H=�SK�:TC��GC����	`3�5 O�Ty ��O'$aG����&;�OҘW� �qnpG�5�� }��Bv��R���Z��mr�����L	W�#>�ࣜ�3��sRg �}j@��$���M��0zS�x$�@8��q����0>p2i�� 4�r(�G��F<�ǽYU�$v�iq��ǭ +̽FqEZA���4R�>��,�mVL�����%O@3Ҫ(f`�$c&�*�����̻����[d=+]b��� �4������͎q�H!Ul��f�8RE4�=���X�9�iw�0
��u�>@+�� R3��c9�cNW���H����=
��9��V�0��4��mg�A�x����$��t���z;R)h;���P���iM c�CFi(A旭'J>��)<ў(}hsFh�GҀ���qK@l�c4h�v����@�J	� 4}i
F:����,����"��C�N3�
q�ɨ^�m����]��BO �
)�r�c#��֡e�Ǩ+��0ˌqX���H� g�.�y��wOZ��=s[w��T�c���g\9Z�=鸧�ӭ3<��4���i4�)1��;R���ڃ@��4� ����94�� .x4���>�B=(iT����:�h���@��ڀ 9�Ȧ�<r(�J\��E (9����( �E���ө����J������<�nNi��5��c#���Xc<դ�\�s�����  '�\�tFf���8e��N9��w�<Pi��
QE��4�L�Ua1KS�)�>���Y� u�W܆�&� qT%��y���bG� �����3	̖Is�j�4�OzL�B��g+�� �zq�HMQ�C@� (�Tf��@�Nԙ���h �h�zQڀ�LR�h �@4�i:`-鹥�@
i0v4LR�Rf������ ����4q@
� ��57N;��稫h��0EaGop�3�*��$q�nOl�eXR;SZ%o��������������K(���j��tl>¬�����=%R��r� �e���Y��o`�3]v�F3�@�rCޝ�p3غ7�x��NH�I-��סKg�AP3ڳotX䍀���1M14q+���;S�����' =�&��Y:��o� t����w�#
���g9�#�9H#ҕ�B���x��=�ߵ�<c�M��"���G\S[9�iG|�� ��a� t���1�H>��~h`J� �E�<���)���<@B��� �94dn�4��,�y��j��'���Q�_���L��9�S��\�|2d��ҕ ��@�O'�� 
�uX�dgR��M���5��6Ϯ@�a����H.Te��)����I8��O�cv�Ά�c<���w�K��
^ؤ1��⎴c�^� ��Ȣ�3@�>�SI@ց��ڀb�4�w��s��:R�@�Rf�� ��R�(s�@�<{��� /z(�4�
 AF2i(�{P@�%8t��K�Lf�����֐q�'CI�����\#$�u�
*�ڗ9���[�`J�E�r�?*F T&b�:z@X��vۋS=*�c\�P@��ϩƤ��#�v� ���ߵc����@�/��FZ|���"��<�)�Ю1Pé	�+�EHڄDg9����L�����{��]�a��qҺٮ��3����bt!�d���G	,f'��dUG'���jx�q���gPTf�Er0i�z�͐1֡=i0��Kڐ��4� �@0i)���P��������!�*�	�� )4� sGz SM�N&��
ZL�z��P:�iE +P:�PO� ��~���c� u���ҎhE:�P2y��I� 4 �I�z_�Hy�֐������Q�bH��Ep@�j�.��P��jXۂ�s�L�Ԕ�{t�n9
�r�氕3�5�<T�qYQ]�2y�5u&
o֬�QE'Җ�G��Z Rh� �E !���N�#�@'zN���
^Ԕ�ր  �Rg��ޛ�sN�4@����
S���Lb�~����u�(4Q� C@�KE &=i==)ԇ�@s@�(Nih �4RQ�`(�KMi� ���h�����ր�֧�6q��.x��Oz�kpqԀ
 �4��R�QC'n����I�JSқ��"TJ�X)��� �zkG��Z`n���9�Z�
ͳ�b�-��_Ư�S�*��Fl�a X$�UF�RXP��u�T�-Q��\s�<V�ϛ -��V���He�I����\���Y�l��X���<�C%�
���5@Z{�'q��Rw�R���TY�8�Zz���N9�)����������Al��|u�HIe����E��'�8f�*��<6Z�0 �95Q���IHїQ7����Ҩ�$�x8�1�df�e�J�K��Va�AS:sQ�R~���ޓ�M
y�S�HFh
��R���JJS�JL��;њ 0)i�� ��R
Z �A҂x�=qJ:�h� ?�!4�ȣ� �Ҋ\��.i( Sɧ)�/Z =�H�zQ@�Ҏ)�8�<PG����z�G�\�W);��U�nO<�fH4�sYJ���� �5a'S��\��F0j�W<s�V�n�\�I3ߊ�˂�`s��Ur9wu��w�Y
i�ѓG ����4�J  ��)4�� ���S �9��=�{P�B){Q��	�x��Qޖ�t��
J\�@�x4�L�Qރ֌Pތ�i){�M.h"�8���.i�S���ך�FG��E�֧U�
P�4�)�G��A�9�{T@c�J ����S��F�����dk���*&��Rg�V�<)x���p2��$P�,�3`j�d�J���,^�h���kI玼S�W'8Py�H�1��ͳ��@<�  {S��x=+9ax��q��ҟ�dz� ��):�>�5��ɍ�9�qOY��1�y��>J�Kd�n@�[�@#�LR�����@6���A�jw�"
À{v��s��)��|7Ҝ̬@P��
��SN�Ps֐�PI�X ���NO<�ܨ�:����s�ښb=I"��Ww�}OrjP�~�3!�)���h�=����{��9�c��4Z�O�GN�@lp{Sy�S�\R��g� ���j�]ݪ5%!3�'Z:���0��3sFs@	�LҚCҀ
ZN�����~t� (��QҀ4R
Z QE&y��@f�)s@�i��i���84��L�ހ� :p�L?Zp4 ��0�S��F2h '���P����� pii�zR�Cpn8��Q�Rj�N�����=�F��$���H�Tu9��M4i�領H��b���~�� O|�؂L��,uFW.z_�1H"��˔�ah�Қ&��S�0�p*2�sC�5VI@����>dJ�ޣ3 ==*��=*�-�3Zƙ��$^����T�=�ɪ�)n�kx�9�Z�)&�g�FkU�\��ii;QTM��	�}ii�dPh�M� ?�JL�I�@�����* wJL�Q�c�&qA��j;4��I׽4 ��E6�M /zL�z�b��)��8�� 

�kz�Z5�ci�Ic���j���RaS[Å�O9�zV�����:�� ��#?LV�kE�*H?&z�����\��mPNA�V-ܢ`Ǩ�ؤv
�Ԑ����6)�r���l�x����e%���I�'�9��Z���� �K���l0��`�xk ��:u�*t�2��8����J�6�#E1�B�+>�S1V
8����X:�*0Xp3��y��/�G9��������=��)�Ύ��u�j,O%���K���]܍�H�@U=iX
����j�
Cn��)��~T��ր+=�� 94Ƴ�
�
� b��K���>�ƛ��Mf �yl�8+�i�dfM�����TQ�sF�^I�N���4�ET2�ƃ��}*'����1�5\�[G��V�XsT��&����:
�;���
\�'XPq����9���	�Ӗ�N0q�敆E-�'���^m5��/�^�A=E.�ӹ��e��:�>��L�}��V����S��GJve
}h�neHW'�u�CV�Ydq�QRj�����<��{t�tg�~b3�j��3q��&��B��4� b9�0�9����8�=�F\�SB��Fi��mӑE�a$g��ԑgwN1�jE�� u�U�Ss灚WU g��Y�&T�T�c��M�U
@�� ����zk��@�(�O�B���v� W�?���
�5mۉ��'=�U|� ri���Z {�9�<`�?�*H�p  Ҍ
�< 9����885<`s� ����ja!�jXX�|c������?�&[��F���P4D�Πu;��V1� צ��A֑Dj���Wc� `g�; �@��F9=)_�� �x��QH��z��^	��`)�!��5bE��3P2��ZE\f:�8�N�nNi ���f��(��
R) �f��iz� B)s�F)=( QKހ���Pf��u��PM@��i�� �7�4�c4 �q@�i"�(i;Қ( �z�I�hix��� ��֌Rn���4S��8F��4�4u��PZ��;jKkL�͊ր�  ��ЮR�͕�kF$)��Q��4��OZ���v,��'֫����N2�s�*}�+�2Q�8�n:T^v>��(e h�H=�A)�I�X���$}kNIp���V\�2sB�a:�);�<�dԒt��u�V!�����qHÊ�����GSN��v�4����(;�S�H:���'~��b�� �w��4P�4�p4��hzQI�K� 8�7����A���!���QM� � �K�����:�J
M$o�� U��F*���:��T�el�cғC4VEs�jE�k���C*�7x?3j��"�߅0�Cڱ�a�0�:�,;�1�)6zԛ�L�ӆ�)XW �A�9ǽM�ڍ��\��:�~<U���c�(-�֐��Ryt�/&�
$4�o=8�I��"����q�SB�F*"�Rsދ�`:㓊*�3E '�<Q�*�ۀb20z�}�'qޝ�42)�pH���	�ʜ��sQ�҉.y��AE��2���K�S��Ydx��S��v'$�ӊ,Ź�G�L3�8���`�3�*A�SY��5$h{�ROJ�u}JC:)y��-
�_��<J�G9�c&���%���eY3�9����#(dr:� �M&ѓP��@M���s��r�M�vC�ʱ�r})�qE=~M1m�*�R 8%��V?�w8a��<�:��$fl� ��H�2���+
�Z��)��z�{S���)���)
�N�MF���)���u֚Ǚ i�!{R� k�3` �r@4g�ry���ז��d#��V �>�Ҙ�ʈrN[=��<��^@�i�\p��{�,;�?���	��'�8�A&�Nr�X��k ��Xg8�c9���{
v�}a�����7z�q�I|���r�X��<Jp�Qz;�ԄO&�4���#���Έ��J��#֩�Y7)戉Y2;�E \?1�֚0�(�x����-���ژ�}) �;~ni�FN}z�X�S��j"B>�=)�%X���Ȁ3�S���.����b,ۢ�njI`V9�G�S���E�'PO�U%�P��'5m��I�|s�ޘ`����H�wL����֣$�z��B��>���6�Ƨ�u�*R�%1�p\�<�1����\����j�K�t{��ʌ�H�Y��Z�E�dq�ZX#�:�4�D���~���y�*��J��@=*
�x<R��4�5P�Pս;S��r;zTp�r0�R���֙,T8l@� ޙڢ ���W�-���+��Lk�B*A�0:t�q��=�
lD��n��r�;R8<�z��������S����
6��GZ]�Kw�B>�A@� �A<�Q�aϧ�JH�p�?*7 �<��p�2FZoF��z��X6�i�($��zsR&9׭B3��R����u�	�?/N���Af}�s�8���#Ҙ9<�n}�Ԗ�R���gpF0 ��� w�S�#�⻖�y��� �$����Kn'$��=3H����1�	<�`��oGu�:f��2ѩ ��V���[��+�l��FFz��ג$Q�j�Vl���+"
b��7\�ⅱ�C�y�x� PdP895v3+ʒ2G5:ª6� v��s9������gPs�u�`.�FUGZ̛TH� ���J�q���8�n~�_���ǸPzU;�AQp��#�s�l��'q��5Ԍ�J��y�E��[�h�(T-����G������ep��`v�{�o&��S��`#P�?J��[�����4�
hLaFq���J�v���4��� �@���x��!�����D>V9?�<1<q�<Qq��;99ګ	�$q������g��ک��Hq�d�TK$9�=� *t/����3ڣ
�FG�=*X�l��9?ʐ�a�S�r�����n�c�f��������1$��<u�&J��#50�8�u�-�<�2�5��8����qS�(�=(H���#�4"�\�'�5&IB����� ����� ��<b����`��1��H_�=�_���� � ���y\�pC�{� �RW�<w�-5|��)k����Pe�x�fH~̊�}kFgX��qڨ�.K:C����S
e�LU����F �%�C����Љ��p*o�&�SY�㎴rH80�d�l��܇g\��Uu�T7�Qm I�'�ɤ���2z��id
pO_CD�C��f��0 㓞�����3ޢv$��34g��׭N��Zb$�H%�ߵO!b0E2�~a ��S���.y�(
�9v'�sȨ�?xCn�r����{u��)����:
�~X��R!	'9��P:�2Y��f��>�(U�����q��Nu8�� 恍 u��)w 1O{Ru�i$�g=�w(��h�n�Q���yy5	��RM&x��b���HN
�� S�2ː?�#�0F{t��Y�'�K`gĝx��[!�"���lD X�b��#<R�cP˻�֣���'�Zx�~Zϻ�p�����2p{Rtl��9�ԧ��۵Q#�y�<
�����
&9(IC�9�
G���9<�<���Ao^})�&9�}x�1�p:� *�1���ҒKc�=1@ǫa~�����N84�r
L�m5-����$��妭���d�j�<�@r����7��fQ�'?�;�S���[ }*�ڢ ���<���ފ��| O��j��/����kq���pjZ��)C�G^���oθ�}Z��>�#�'>��x��I�@r� c,8�>�X��:u�ڭ���eu�C�h~�Kc ㌑W��"{xJH�l��zu�K�.jy
{b�����ONj�"1n#�M*�Ff	݇�f m�z��qbI!�*�wp�*���j�2�)Y��I4�@v��N
� 7#<���`�4�cfuQϩV��7s�y���2me� ��$u����Ù	ߎ����9�(��H<u=kB�_��Q԰���T^J&
�0ǥ5��Ü{ԞYBr:@9�9E����	���.p1������
�}�v:R��\eq�@�YF�pT^٭(J�+�
	��f�S�c��QNK�!�!^F%�g=G�M��I9&�O3�0��Irrzq@	��M}�F<`��ARq�������2��OOJyo���Ԍ��q@|  �;q����S�T� =�Lga���5\�2it�$�:"@�x⟐YOn��h�w(
1�Z �hf�2GJk� �t��W��Nj�99� }��^��̀v�z�f����Ê`9�������AV
�`�<�m� \c<�sH�n'����R�0� d�ۯn�֒~GN)�<q�֤
��)M1��͸ 1�XW�aٌ|�<��k�nz�ym���a3ΤO-�[��j-�I�9�t�֔c���</m9�֑�ɰ�n�֏���زO7#�޵�c89�O��C�Sz� Zx��>��ɝ��U���S��0#Z��(ix�<� zӱ��AH�m5�qVq�U�C3N��P�� ��w��I� .(<
JLsրr)GJ �@��d�� �R�b�i�cgrh ���\�@�IN)� ���4S�@
4����{�t��&r( ��⒀ց���A8Z \��'��0�� �v9�py�c�*��?��R(� ��E����~5,*�rE4�d�'�TȹL���ҡ�0��w�3h� �sɫD��1���O1��&�g'��L�;f��� �GsMs�sR� 
]�u� 22IǠ�r|�z�M#-��b���� j��A��J�9$�t�q���� 9��1o��sR �<�������R���?� r�,A g��g`?�:����#��fRĀ3H���y=})͝�!�P|��Xu�R à'ޘ�$gq�ڞ����jH�z�ϭX� ��J�<���i�(\��⭻� �A'�����UA�ˊl��r{�ә?w��. �}	�@�7|���s�E�ɝ��h
�aFO^I�mñ�y�`Td��0�0$��) g�
:Ӑ)��`��i�~^FG֘���w��+��rE*6TQI�94�78d���2|�8�U�;p;��Wx�ɤ�+���N:�<�]J�q�'���OoJ��<���2'�\�	����Z��\3m�0�F(s��@6�
0@�L�����\F��P��/zRap����$�#���sL��֑���ĂW>��:��N��ˌ��{��l��{�^u���fIoS�� �\ˢ��'
y@�5#ʦ 	+��ZE\���Lq
6��jJH����� O��J�cf��	��py�H��l
����`�F9�j�˜g֑����(�Xr�� �ס"�q˜���<7˞���)�ۧ#���S�UI��Alu�
# G8�'
�)�\�;������P�0��ϭJer0}y�Ԁ��^�)��e�m���Z�4�����+9�9�ԫI#�>C�A8�:�<��$�t����☥�a��i�[��''ڟ����t叜�A4����І@v��f�����x54cvr?3�5�=��
B@Xw<f�J�	��֢x��2H����P�]���ExZ
y=qR ɪ,m��b-�~a��:��*H��>�u�g'o�2i#�s�܁Na�ؼ��O
#�c�� 0!r1����ź��%|�t����v�@`:���g,ۊ�pa�SFAOz@W;��ޔ�;xS�U��1'�S[i�҄p��a�9�;�����=qR0w�h���������&�wsӊ���NO�R}y`q�����Ӕ`s����9?7z`+�Z@�d��#
e2}錄��S�"�A�\Ԍ���u�`i�rx�Rt��=�qJ�/Ҁ�h�)�� 
1�(��� (^�b�sKր�(ȥ�6�@���H5(��0h�M1\@8�/z�!&�&}
�������׊�=i��NEQ%�eBOoSW�ʀ�N��`��k[���	��R�6�G�D���LՉ��HSw1C,HI�����N n�٪����
���ey�!���jH�\ sQ�����B��H#V�9��ЅC�y�+OˁМ�5�ی(⡔�*0:R�a@�搤e����(yu	5��j7]m�nprqW?� og^	�07�I���n��a�'#�h�i4,���+��������1]�W7�� q�+F%"���TpNA#�� 
���u����9�t"#�pF*iV 85r6@� c8���'�l���v9����Zw6ribS�'&���=��Nٓ��WV5	�� ��6N9<{v�
N6��ǭTa�Uیv�ު��9��Ҕ�3�(:iS�<�;QK�;PM!�+@��A��!�P �K��)h 4�� �w���R���b�b�&���P�&�8���� 4��zPx�4 �� #4�Mϵ 8�ڊ���sK�G4��K�j r�ڎI�J�����8ǭ0s�(�6�H<�����Qa\U�z��p}�H�n7w�Bd��󜑌�L��i�G�1���p�=*�$YT��Q�΢1��"�bDx�IȨ�6�r
F�������2�>����c�MH����dFs�9��S�X�=
cN:
j0��F?�K �n�N�-�_ZtG���	�� ;՘��?JE$A��3�B��F��2}������2���0)���z�s��#�'q'
�Lv�{1�����X��3�{��Ed�4,�FH���^F0*AU�+�pj��=j���ҹ�)�jo���sښ���	\(�v��Vbą�A��f�?�nd������r�[���}+EUPt�q���@^ �Uy�^�Ui����*�̄���4VrY�S��H̀~��#���B��1��0��_�����*,N�  7�S�����$ �c�QQ�z��#8e`ԁ��ݒ9��2�Q�<v>�'Vl��7��b��|�ϭ"�yD�)O��:ӣWj�=�`X��Ӷ�8S��$�|�FG��-�I�����S��Ҙ��#֚��bQ��S̆3��)��0ҤP
c�
s�{�PI0<���u��W�l4��E⚬:q�{T�� ?�
w�NH�CH�94�|l��MZ�QbS�''9泙{�'?�[����"�,I(ݎ1ۭ,q�r�f�m� ��T玦� �9'�� ��s֚�8����A���NzȠ�}h�iL�* ��1K+��h�p�:��S�%~lTA8�s�{Q�G^���gP�I�5(�\�c���qNE# ���dn0āޚ���?
���j�㨪+`�ӑ�ң#�ޚ8l
Ga������PI��p9<���m�8{�P0���(�&�۞�����ޣt�.A�J��8�+'+�52���a�:t�OVP
C+�vJ7�8��3���3*	��hd �qځ
K۱5&�/JUR0	��ڝ);@ǵ FS�R���R
�)�~����i�D)�r*]�[ `:��ڋ�"��P���,H��J,(�<b��*̐�z�X�$۵�
�ڀ�5l���۵'��E�r�^iy��9�R/nh�\��]�p�~��Z���9�E��P��J�j@��M�z��B���z� ��
�ǹ<R����=��4�.�G54��4����I�9��zRm���6=j�'1�O�*����@���0{����!�(-ӷ�1�V_�q�Rɍ����D,x�M!ڠU��`�ҋ�aT�l7#�O�f �ǧ4�x�1SF��*���71����U�WC�Ŝ����I�F��O����O
1�\���|��j魤ܻ	��T4Z,�$��p9��'aǥf�9�V�Hw�6�#l*v���%�y�9�&��IQU��h
�1}:V� �)�0E�"z���g&�3Q�$��'P
�H�.q��*Gr���$�AJ���(Q�;�qҝ�� N�R�ڀG�3�(�HG#�.})qA� �R�Rc�:� s�1Gփ@ 4f�:���JZNԽ�@
=��4R��1�\�}h 9�)?�;�E7� J(4 ��4��z�(�dq֞��=��g�ZhL^s��*I���`�5$Yg �Bc�;����	'�4�ny.�@����  �E,,�ʒA#<Ҟ�+�NiR f����t�(9GN���郑ނ	8�>!԰���@Ƣ�|��Tۆz�4�3��d�R�G���@!��~���$t� x<f�P��� 9�f�pI9����'<���^A�昆�(�Z~3�LS�*}�Ԡg�A g��B��8=i�I�89=�,A� �sH;�8�����.�8&����NF'���T����@��Ry殱���S��0�� V*B� �>���������i7 yf�"T��A����
rq�=�)P�� �P"Fl�T�{�g��J#_��"����=s��!�s�y ~�)��*ˈ�N~�Z��w֘$֜6����Xc4��r	�Ҁ'8#��:�fR��?$�=Jtj�>aHd*젒~l�Vd�=�JxD(qJ�a��@����z���(m#�qQDp��&���l�!����\׽8 F�E�S���;p���`�8 di�g�Zb�F��^��b0JP.�_ c���cqP�b�b@ǧz�>Tg� p����!�����5�S�y4�Q���t�l���M$��O�I&Cs�:��c���w/N��A��׊ �=h������8�u=GJ1�@FXx����q����$ԱdOzD��1��9��/�W�5����.��s�S &L�;Me�妠9���#��p�`Խ��u�lP>v�J�}
���F}�	i%� O_j�����d��6Ĝ��������	�(b\��~QW#P�#����NGҜ���@ѧn�<���5�i�h�A9�\��Ҵ���<6�ך��:�;�ip?:ϴ��u�B
@�i8�9擩���7֕$��S�3�@���ڕ��Ґ\e�`�'ҫN�g|�r;U�S���J��/hRhf<�2qQ�<�����#߽KE�!@� ҁ�Hbv���	9���@	G���E 7�! 
q� Pz�A�1N�9�S����"��O"�T�>���Rt��(&��@3HzҊ8�)��&}h ��ڐ� 	�Oh�&���@��"}��1N��D�qR��&;��+�Ҧ��=G�4"pp���g��8����r8>��l�\�j�aʣ�>��*��G�q�SǴ�[��F�^I* �jF�8#��£vA��9�Cҥ��j� ��E<�<{�!��s�3ޜ0zw���Ì�E(¡���<�1��8�"���>��Վ3�ڂ�O�)�CT�l�ӕ���J�#�3�֤ �CҐ6H<��*X�	⡜|��dv����?X8�҃��S"�f�&I���a�1��Xg�B�X���5cMÜ�sL	]�W�y�40�C!$TR6=)>~\�֛�O�DdTBs�9�$,�.rW���3�Q�NFU#q
��$�n�i%s�N2}��ib:w�@
���'��@�!!�{s�ڜÞ�:�.#@;t���c �x��b��pOPi	��x�iҩnA 9Z�����rB��H�rz�;c5 �R���Q;�8�L��q������-��)��W�ng�*{x�X��N���#VE���q���� zR�# SvÌ�Z"� 3��8�D��>�*1	�#4��*�)�G��O=:Uk�H��>����m�R_��ԉ�B�b��۞IϥL_�g�U�e�F|��Yqۏz d�����0`�=Ol՗e ��ɪn� 0=8�LE�<�;�ͻ��'<� � �X��ₑ3
@�(F÷�T�Q����b6088�@��Q�zt)��'��c<��RA�R�y�LhIT0 ?�DH�@d�N�8�z��<Ӝq��@	� �@?Zl��z�`()�\�R6OaHDh��=	�Lx����隰��ۜ�Q˂~^s��6�'>����ji����T�I�!�Ķ*H"9����vUP:�OJ���lX��1(9�@�p	�֜�{��֓�$�4 Ɂ�p@��Ք+#s�{U�,���*
�(\FCri�J�=�U�9'(`T��*7��J���eV����H`F��T=)7�1H�y�AևX��خ	2�Y^4� $c�U�(���LSx���W��
�d�O9ϽT�o3���P<�0�$t�Ɨ��@�u^yY���jE����J���M ��=�(ہ�֞��zR�sH��ǒ1��<�6�à�������s�4X.U�[4s�S�`030?��G�*#�N� ��Us�`��(;qHs�x��J@&�\�3Gn(��㚐ѷ�0Rc�r�E !�8� iLPs�Gnip)�� /�EZ3@>��
���8��A;q�b��9�6cR�����S�J� |c�4��|g�d�%7)�H��1'���N2��v��s)�!��v��1څx�>��)���=��M\n=8�hL���J``܏ƍ�d}���v���:f�p
��Y��q*`������}��t��]�Lu늑I�$�rOz#E������qS)�y���2^G������' ����b�����{Ӏ��9�������ib�N�O�4�>S��ΣB3���v��5Zo����x��M�@W�� +���|G��Obi�o*�g����"�>l wf�	���8{S�
cf�x��4#��:�<�ry�|ҏ�3� <�#��JT|�����M<}���,����!rT���T���n�X�@�6�}(4�n�
��f��c<t�"���j��>��R �SU�0ʰ� R��N)�✧߃AHn�7\s��UI�<�����<p)�&'�[w���帕���a /�����W�?��ԛ���,�J��Wny�Ԏ��8"��I�u���H5k;!�}*�!$r��R��p}?Z���rr���p(��F�zӊ�N1�s/˓��
�q��)$��1�Uicl�G^􀰒~�q�Ud9�6JhV;iʧ��!W ǵK�8��M��=��(��ـ	"��; <�.㎙�w��P��( ��8�YXc�֤.�r� l�-���]�z~��vs�q�S��(F�� ���{����p1�G�O'���O� >� ø8Lu柰���~t"�oZ�؃� (H���p)���<���H� 9ڣ�-�Q�m�i��!<�3�}j7]�z�H	���E#d�u��:�ҕ��B��9�@
���sց���i����b!X�y��L@<}(�8�~�Rc֝�#8�����P��1O�w�v��5
�)߂3Ӓj"�OQސ�s�}y�3�㊐���N�u��?1&��A
���R�8�L
@����5��8�d��=:p����ܖ�J4���q�Rc�z���i��q��c�	� �����3����JK�k�G�HNOQ�zj��Rq�C��$�� �u t悙{u������j���W'��4�iA؏\������O@0�HB�� 1�e��}�8�H9\�PF�<t�1�}*u�u1␅c�Jø�>���&�JWp����r� �RS���0iX.5y4�ӁH�E(1��✠��4�0i�d�t��@
���*`���1I���=hcE�@�i����
�xRj�0#��H�dd�08��FrX��OJ�bH q���0 ��~*�,�AJ�NFX�F8ݎ��HcӞ�i�Et��`�#��SJ�FO�*�[vq�AZ�PF3��N9�!�� zb�	\b�.�\�Za%;9�z����Gj_���zdP`��=��{�� �#�7���oJ��*�0FGsI��yS���� �~"���l�X��~cӚ*K[c�����4��1늰Щa��*a���Hۜ�
.d�+1�l�щ]�w�Ou ��*�L��1�C"�y_aV�]�$c�`� 4�?1�x��'8��5�8	�٦�yi��S��f:���c y2Č�i�۰T�=��oN)v��>��\���Ӷ�@?J��T���=iț���E��@2;�P�����ج$� s�� ��=��q;p	��M�
px>��N0ES�Ñ@l{�s�Na�PG��ڥS�J G�$s��>p�9?6*w�Xc�Ȧ�pO
�t��� �o5H�i�Nqښ8'��,xRz�@��a���$�9�&�l��(@`u'4N���֬���� �zdc#i9�Gj��a\�#�H9<��p�N���v�^��>C�����?�T6�\cԞԏ���HG��4	�Ve���cR����&7��8�4�v��ӵ"W��>�>f�>����榖1��ܞ��R5�p��@2@���8������{wgBރ��0��� ;�JXԱ�j`+��X1�8�*R��c��
F@I����M��ڣ�	��OA@�PpA�4����
c
 n܂O���H'ڭ`=��V����/iYB��Ƒ[�Jv~��t�M���t�Q���N���6:qQ�A恄�q�i��4�x���B�_��ǵ($��X.@F8�Fz��.��QQm���jl2,PEI�@���@\���;U�/#�4�Ҁ��zP#'�*l��5,	�d�q8�)�9��*���Z��NpqM �
&Gi�Zx��B���}M4L���8�S��z�('�ȡ
���zsd���H>��8�'��@O��$���{���CT������S6F6��3LC�	���Q����g�i�rI����hE#$p;�ba1��Ң$�H �S�on�2ǔ$��) *��@q��Ա�@'��Ş3�_�!�W�9�����i�;
�ӯ�WG���G�J�
9��v�a�8�Nҝ	�s����8ݞ�F1���{P+\?����,�r;Ԏ�]�dq�T �Ld�R�i^i���qQ�ʑ��MK�=���l�A�Ҝ� FOz"e�J�ӭF�S�;�@(.''�J����Z�I���zR���n	��I('-�Z�z�g�j��C}8���\PQ3H�H�lԑ���j�;�e)2:ӞY@�2ze�)�Y-�@�E*����~*��s�q�H�HN�
F*f�I�w��ǀUzsN@�G�
�2zw�hѲ�c���#��EGi#�> 9��Ef�3�<���3�֦��)VO�n�5I�gӏ��n9�8� �{��Q�3��w8��B%DVdk�����9���a)�}1U�0$}�
�^��dr��8#������@AO�Ep1ޠ�N���K�����Lb�(D�����L\c�8���9<����2n�t�I�
fNr9�S��q�H�&���PCn�ӵ#�1Rx�
��Pqր<�FGzc������Q���{f��Lwu��_h!� �ay�
�3�SD���62qۚ������xH-����Vc@O^G���!P�Cw�Oj�r0ns�jwlE�����I���S3���Q� q�8�[�1��Ո�u�������U�29=M7N23LY1Ry��4��~�
�P�9=i�keF7�c+n�#���S�q�f�9	߭& ���O��
9�US�;%@*~^k@� =?\UV � ���)I�'�b�8ϭN��'��4rǯ>�\Ϩ���n�3|�I�M /S֞���Pd�R���y��<�7N �{ST�&�
��A�J�f�֢�6��Rv�A�(T��_#���)�`a�y���OJ���	��Gߞc��.�� ��)k�=3�ށ	 d�q�R�`�w��y��,,K��Jc-�W�@��?�9_q�
V��q��M�;
�'�QD�1K#�P�=*���23�w�Aq�]����T�wJ�6
8�R��֐��zP�C��B�]�9�<�b�:du�S��R��+p�^�ΜX�������yd1-�Қ@b �=��1zm�z��^��L����4�NG?�ilg�CR��~}i�7�|��ր$ 2`7�U�R�t�={b��
��WRE瓌��OS���v*�{�9��G�8�z��?ʓ#84n	�:Ը�d0?Z`F}*R@O>n=i�{�iv�#��R���Hhxj�a���i��M*���SC�� �*4F�@;��=:#�=�PKF���y�8u �1�y\��� @W��)��zS$A� ������9��H@�۷��X�'�r3��}	��)�c�QDs.ӓ�46 
in0�Ң8L$n<��Oݷ�z�p	^i����*Fs��^)�h?)�zT{�?�sV#�C��sTM�'�����{��2���Б��+�E(�1�
*�bs�v��o���i
�>u`3�T��^�4��9 ��J�q�43�@�m
�g��'��PK&�MM����/	�y�H�r�;��b��y��W�z�N��c��2{|f�dQ����L�1۶*F}۱�4�b����2żu�5\��� � �������\����ɫ�9��8�4�r��8,ԫ�'8�ǂ��t�N_J �P�9�y�i�u늰W<F{
��/��})�U�ynrz��N�w�1��jx��� ��qN�N
���Ґ��:S�$���{��v��<I�������l���zzT[X��n�!%�n�=)X�&�dڼd��Қ� �{ԊD����i���l�����{R'ց2	AF�89�Q\��w9�2��	�Ȫ��*�B�{���4C�
H$g�7P1�yɪ0�r<w�^S���AHA#�)8�s�n���`q�֬����S֐�~`�'�,s�����ޢ`c�C�e=J��Zr)�X�s�L��|�ؒ?*t2d�,W9��M�.Ӄ�8�3*���@�W;�9\�c��b��E9�1Nq��9����=��)�[1�yr{J*�d�!s�j*lIW���P��ث|��������VQz%��.�G�N;���@
9��G*8��5��"l>A�>��nY��ǵX1���*��01��SBEI1 g�_L�41��v��MD�7^*e\݁���p���'��X'ޙr���/'����؁9=�鯒��8�|�@�:�%^I�̀��֦`J� )�me�=�ep@�8�SN�v��I,1�Ry}H�h#�M�9����;�Jv3���P&7�c�# ���S�c��q�HF��� w4 ��ɥB���
c.H��B����Y�#������������' f���0��hH����=�� G|��iHNF��֐�`�J��J�O�|d�.ѷ���H�&�	=�*� �=MZL�ev'=T��r 9��HLYLR>���Z�H�\��3��T�D9 �ЎMH�B�L�҆!���o�~�$1���R`I!8�ڡ:�'�܎�i��s1g�
���?£!����MM�c�اGq�7z�&�s=�N�VY6�ǩȫ��A9皍� �P�T�����B˙K z� �OpI�,N����H^?
q�zR0�d���ʎ�JC��8�i�H �w��b��@8>��wa�Zb. �Q��� ��N��ԑH�p�"����~j���2���P2~�P�	9�Lh!r��J�@�2Fj����S���O�\9���X����T����5e��YP �U�Ec�G��8�ҥ��<�*4R�u�)Svq�C	�I��B�����J��
U�88ɨN0;g�ZX�	���@H���)��ZI0͞���#�&��}ۺQ��R�o��݇qR�Fz��'� '&�{��P����ʫ\��p*r���T�%�8'�2K�022(�2$a�qާ�P�
�	�#!�����P+wc$񎘡w�:�~�jkL+e[
�'5W���`8 U �'<�☤��'�C�r�`g��4����!�p��qM�I��>��ѐ=;ikX�=B��9�����r)�,N�� +�=�S���y@Q����ր�O�4�_��1�T�z��x�P8�<f����:z�����ڝ�㰦�9���$�c����Ӄ�v�� ���Ԩ '=O�8��皈}yPrEFA�ҞN>����(b<(>��Nӟ�4�rE)�,\u(���p�E�q��NQɤ��G94�b�c�j@8�*h®7���BpOmݨ/��<R4m�pý B(79'?Zc�Z�x<� � �9n����2���H��Q����8 ӕw0�0���b��c���cF@!FN)c%pi��dܽ{t#�C#   ��>���F[�֐�@�by�'�����>A^�27{�"�%z;�Ru�f�Z�W�^��@��ޚρ�
t�� �I :@M�M�ϥ0dg�}M1w�0:S�\��1\r�Xg��J��u���A��(X�r�9�@���SNL'C��:�`O�]�:� W ��x�2}iL�>м
L�p���O5Xd�01׽(�OL���rz�S�dw�Bd~nz(��M�9SO���<Pa*��;rh��p{����j`'��Ҟ�Xg�=h&�%	p=}*�@����Q�ޟ�L�Y �s�U ��8�� <�B�8,9�P���v��OH� 0y�
B�$�*���U���4��� ����>NA�i
�TsM<��p��Hb`��Q�� ���̻��4�:|��}({�S.s߃Q�� �i �#��?�<�#t�ف;Gjr��;�H������{�s�N2sڕ7�8�Jw�`{}iNN1��>�*��~�e����&&V�wG��U%b���5�$E�m�"�ͼ�`UBK;P�*��:3��U�0�"�����-�L�~P���?��E��ɪ)����y1ެ��q��Y�� Af `��������2���T299c�z��U~0/+�֣,���L��$o�O��������:�2��U ��CR��1J�Q��Ԕ?*� �֜\�B�Ry�*��ʟç4y�m��₺
���={`~�e�wN��H��%��N������@���9b� ��`q�=jHU|��[�� ��ӌ��Zlsmݞ��>H�a�Za�<��=�"Xy�x���� w�LO'�=iv��q�ϵ0���?:�N��&3a�Gz�@
~e�4�̑��!�^��s�㎝)с���ڐ����_�����ڥ�X���U�@9#�4&C*����}޵^Ꮿ�����NzT���Ҩ�c�ǜP4K��Õ�Ei��}
Kϭ>E� ژ��r�b��pW��'4�K#`q�JI��Q�p�� 
���2i���tc�`gz�1�t�8�)gӾO/�T�O�����9���y�����q��*VN�<g�P0$�0h �?{� a�q�)V2��q�j�8	Ny���R2��B�zT�98'�*3��� ���I�qN�G98�_J
��I���Б�����2F�S	v99Eۮ)W!��C�P����RoN1֦�V�����ڡh��ا��2n&��+���8a1��R[��m'���$�l^9�k�\�wuǠ���p��8)�W�#��|VA�}�@���G�g�����2x��f&O���TDq�lr?�պ��O�S�T��H�@��n+���Ty<|��U�����QNA��t���7��[X�qJ�ӷ$ ۻp�e`v� ��P�Np��E\�?z21�ޠ�@;I�>�dK��N=i�;�9=1SEP�{
r���T���hB #ӭR�q9�>���0y�@8�[��!���pF(���آ���NgU���
��Aa���T�� �s�)��<���x�ObI'�{ d��FY�I$P����Ȩ��Pe�2��8敘m��i�a�HH jvK ?*�}܃@�/��98���`��P�v�Rޑ�����<9� E;�$��a�?�.ߔ~x��8��@��;zr9����u1�¢'� ǧ�(*����:t�c�}� N���0;{�pC�9�~�v�*���1��i� #�'<�@)!x6h4$t��|�X��*!����G#�P朑�=���#_��֞���7͟Ɛ��ߜ�c,��jE� n���$V������!p���)"�֭�\�EU���b��e�z�4��&�1�R! ��>�V]��u�z�����Hlt�$b�
8$g��9&���8�zb)�<SXn�/=�t��.ojx )+�f�`����1�,���R+
�w<�����N;�X��5�I��@�H#��&�08�)�@=qM,O �H�0��
r=�����ڴ��<�1�Z���˴�f�=itfƅO=^����鎵m���-�=w��4���U�qL����p#c�S���<�#�z��� ��������W�>g�'��##8��U�S� �zё�I�1A<F8�ŉ�]����
�
������}jX�1Ws6�5z�=�����p�o� �9�+���@����z��L��w5,
�>Q����RK�����H=��Bh`�#�5˝�?^Oǥ7F$��cډ����֝o� �7;�U#�C
y� !s���R.C)���F���=~��pd��G;�#�h��0$�}��&^zS�	�ޭȼt� ����
�"���V������:��W"1���j¨ s��E,{W��1�dJcD�W#�^)����D�6�'�t��m���j@���
�>�>	 �����X�v�Y04�:+;��#B8��i�*�$}qNE#r��T�ʐY�T��T�����;�Z��1�d�t�aU rH����P�*y���UVޠc��N*&bB�����P@� ���-:=����R$觸8���8ǖ�1�R�P�:����2�9���6��zc?<��6�s��z�T�
X����O�����'ހ+����K~ҥ�O8��M'p$�?J   �cǽ&$z��!'��O���n)x##��P:n��'����
�A�O�F�)�������n4P�� �
X�}*&c��t�rx�ށ��\�3�T,����օ'#�E;$p*�Lt���c<�x���hI� #)N3�~t𙓃�Ҳ0���� E���x�}i�4�B>b>���OV�J�U>�׉�P�1� .~S��};�|3P��OaMV��� S��=i��Zi<�=i@=y� +7<�r��K�)�R v瓎���˞>����㊍[��֚\�� ?xy⬓�t�U��&O�S9$`�� ���� V��L��sɩ`�y�C���f����u�DP��$���v��=9�$�+���暉���z�� $�M���lcғ)+va���SJ��<rGZ�.�j�N�$p���<�C+�=x?��T�$$w�� ��(TS����H�ܹ#�qQ�rG�O?x����q��&�	�T8�x�hH;�Z�<#gϽJ~g�����c) �Fy��Z�j����d>��i��;��1����)e�'Q�T�^�ژ�oZ��Г�Lws�=�� 8�z�f��w/~hi��q؎{�H�d�ҝ
�  >�J�FG|b��%��a�@a������ ZR\n�� _r�qR�V���l2:���;g��aGש�2f}����ֳ���a�[,3��Fy���c�41��\���ӣ'��?�&8c׽+nǿ� #��҃���. <�zRģ ����,R$Oj3�94�@r(Ì�8��LC:�s��Ƒ\�'ƞ�x���`P+Fw1���C����Kڇw=�6��h �BUK`i RoOZ �BK�'��:<㞝iZ</L�ץ2}��A ����G�i�V%�-���j6�펔�r�=}�(����=y֛�0n1R� �FsҜ������nF�ҒC��3ڭ�a��1�Mx� })1���m�[<�j�%*�����R��@�O9��OR0FG�!�LKeq�9�1+�sS�ـ���*�ԟ�m�kq�
1#8�t�P�	��M���@��K�ʂz��X`���G���NX���Ӟ��-"ă(>��H�*~�T@����� �Onr
INSERT INTO tbl_member VALUES("501","CHARLENE","P","VALENZUELA","FEMALE","","9298992088","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("502","SHILA JOY","P","COLLIARGA","FEMALE","","9097684061","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("503","ALYSSA RAINE","P","DIZON","FEMALE","","9551440908","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("504","JENNY","P","DEOCARIS","FEMALE","","9069328452","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("505","JOHN PATRICK","P","MUSNI","MALE","","9089457095","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("506","JILLIAN","P","BELMES","FEMALE","","9060268853","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("507","PRINCE JEFFERSON ","P","PASION","MALE","","9530810090","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("508","JOSHUA","P","SANTOS","MALE","","9058583962","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("509","KRISTALA","P","DIMACUHA","FEMALE","","9810473074","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("510","JEROME","P","BAGUE","MALE","","9363116604","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("511","JHOANA","P","MAYUYO","FEMALE","","9392928053","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("512","JAMES KNG","P","LUSUNG","MALE","","9154214138","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("513","JUSTINE","P","SINELONG","MALE","","9704746713","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("514","ACE VERGIL","P","GLINO","MALE","","9756463240","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("515","WAIZLLY ALTHEA","P","BAUN","FEMALE","","9677856633","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("516","RENZ NEITHAN","P","TAPANG","MALE","","9100713565","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("517","TRICIA","P","BAYABAY","FEMALE","","9262658661","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("518"," JANIEL ABRIJAH","P","MANLAPAZ","FEMALE","","","","","","2023-03-24","","0","0","");
INSERT INTO tbl_member VALUES("519","AKO","AKO","AKO","FEMALE","","9268033114","","","","0000-00-00","","0","0","");
INSERT INTO tbl_member VALUES("520","ANDRES","P","JARIO","MALE","MABINAY NEGROS ORIENTAL","09306247025","���� JFIF      �� C 	
% !###&)&")"#"�� C		"""""""""""""""""""""""""""""""""""""""""""""""""""�� ��" ��             ��                 ��    ���:�nh�e�),!`T�\�`j���

Fj����jJ��ZE!��DЖ  ����MHRXT��\��XR��5)
f�8��g�;��c����g|yeɬ� ��*�a,Њ@��Z"���,������q�  >� �w�S�;!��Ff� �K` �XXњ�R  �M@�� P     ��|������i`\��X���R�~o����     �~c�>�����   B� �RP�d�h�%A��΀      >�H�� F>�) �%!@�k\��XT�P��zO�       =�= ���R��  )(5�K�%J~^k�f@      _J�_L?I`X	i�)d�ͅ!V	af��
B��.��       /���t9�f��( ZE�� �@��*s��       �����,	nM@��[Q(\�AL�I��S�~^�       }_/>w$ \��)
D��X�i%���oE��[�     �/y��e�D�,�XJ J�Jf�͢(Π!�t� B��     w��g�(��,�%�YI`�
�X
�Xq�IVq�iJ!�}�g޿3|���W�W*MDB9������}���X�+��h�o��𓡧*�3����4�<�	&'$�8�)����mg�iF�˛g���O�?��
'Pg���9�����                ��� ?��                ��� ?�� 5        !0@1Q #2Aa"PRbq��3r�B`p����  ?���Δ���VM:��OI�|KOZPR⬓6ݻ�E��=~O�ߓῤ�6���,5V�T%Fz}v��-�i��v��Eʢ�	hp�#\�M�>�˚��#��ҥ=%ӣ���OO`�r�;(��(�W�X����������+b�C%i�=��'A.�)�5:<�*J�k�١y�ܭ�-��ֱ����t<��]��Wc�)Nî�u���=2�mE��ϥ�M�l�-G|g�V�m�~o^+����t��{G��z޽NJ�t�5	�E��K�g�E{�	gg�͂�t�֌�Na�����"e���xUb���C�x��.��۝�Z��-<�WBybtHQƄ�ە��S����%��s
E���*���r��L�T��춥���U����G��W'��;�)UO�[cbM��:N�֩v���rj��� ƉƬC�OG��.�E�Z<Ţq��A����({5k+$�
�ƍ�� �!O%7+���ϱm�"c�4�O=Y��0�zw~� �%d>T�D�V���9��Բݱ�.-��E����MO�F��z��!���=�K�f7E�=��5-�G̜Z�	��8<�л��3.EK���<ލ1���Oؾ�v�
�[8l����07V��y�X���f���ѯ3Hn�F���I�FK�H��k��Ɍ�(}���b�>���������Н�H��=�Q~�397fp-\�W&�j�,ʍ��Hs�6!��J2o�؈��BH�\ls_ �7����KWar�r	O�B2����!��WffN�w�����ȕ��Eķf����7�
�&|�jqr�A�Sf�E�z	$�?��LUH�BwAc��}�g
�:2�#ɜ�K�
1� �r=I�Ey����p<�O��낞��o���S��H����u"��GU.߸�91-�iI��DC䩲"M��#nH��;���ypN')�ǎ
�Cs�'1�7cBYc^
�_&�U�M>�^�lZИ��Z���m<)�ܾ��G)i��۲��N� 
��P�fV�����4O؎sع�RD��nG�)��~��m��'䘋���F^�%�:j�	���pJ����O�w�o�DRbqfZ�G����~0i鱥���}��0BK�k���X�ގ���WC{���=��&�DJ���r�H˘"^t\���/쩾
(�4����q�N�H�_b��"��� �<��W��<@�$n#�_�B�'ȱ��j�!i��7�F��%��g�73��?����g�b}�X.P�$��(�����Q8.�X-��z��I�� I��y-b��nz�3���ew+��ۋ*%	7��+X.�g�y",�y_�������kfI��ԋܯ�k|�>��'��s�d�.���D�%�	�Q���{k��Fs���C΋�o�Dۛt�6��7�ة���/A��>\�C�x`�v����"��-�4��.E�s&�Ý�v��艬�M������?��2kϏ�>4x�Q-�8������بG�&��3F�/��_����.��чy��9�h�-��~��X8���k�?���'Q�r�ɡ�.,�[����N�E,Y/C�i4�&��\�z��Z}�)8�Z���&\tn��w9�C����1���,�a�W�7��r+O�hԺ�o�ŋ�Y\�ȟ�\��E��U�$����3�l��J�"�6����K��g��}1f	�$A��T�T�rlW��}�쳄��a�����nZc��'��I����i�$?�kO����֗gBnO��3��1y?a���<�"1�^V�E	v�A.��=�4a)�%v9~d��|w�zF� �T=�tz�.��=������H���"|��u��b��~[��� 5��q'�LE��94Sdً�&^�!����-����9�,(3��Nfs�tV�8����t@����{q;bb5*�Ч�3z/�~jט�8��B����BU��dL�����K��.�/�F.�kf��_�q���/~`�.��ح���r*��=�x^�4�#=�7�����jĲm�ыE��n��f�i�}FI�̦���@� �����̎��)X���g�~>N/Y"V��MɅ��b��}ERa�Qmя<���DD*�e��%�J���m}�͌�r����ƚ�և���s*����*I�?g��VY�`�� A���W���![%���/$[�>��4z�sDO%��8~�X���n�)��zp6���-�zd1��B�z����b�ہ��Fg�Y]����-���D�|ױY"h�b����9l�	.D�>���b�quF^ɬ'�x�B��R5y��{i�:�m?%�=K���5����Bv�������-9��a���7c��|~T�G��HX)/��=t��2ӟ����1����!��`�a��hY�����(��^J�F-�,���g�ZCB\�9�Yz9b挹���	��2���r���<�PU(LLg��0�L��2��TN�9U��
��!4��S�.D�$D/Sl������� ɓu3O�j��<s�(�M��4nz��\i��*4ǉ�M"��C>��D[�� �o��      � �� Q� � �0��8�H8�C �(�4�, Ds� � E �0$����<��<`cGbAA$�<��<#�MSH �� A�<��<��<  �@3A��<��<��`�0�	r� ��<��<��<�� @ J �@��<��<�D `�PH<�(�<��<�� !�$����<��<��8 !�b�<��<��<� 8D(!�����<��<�A � �
8��1�<��<�,1L @(B<��<��� @ a4 � S�<�� QE8��K�Ib�<���@0�A a IC�<��<�,`J$�A2F8�<��<��P�(a8��C<��<��<3K�#@��<��<��<��,� ���<��<��<��<��,��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<���                ��� ?��                ��� ?�� *   ! 1AQaq�����@��0P p��  ? p��L]����h룯�b�])ZǠ1|V3�����̨�8��b�:�s���M$�0��tG����[�T1Vj�=c�����X"b��/c�}`���"ͼ�x�i�� Xvg�� xĘ��ϐ����������ν|b7�5)���L����,I�=��! DG�
��dd��������'u����
L?���
�Ѧ>�XK��K2�Z��8!�� ?�,��"TN�]a��oJh�s��4�K���#	R�?�8bҗ�\�(��⦉�+7p��N�e���$q�_J-�D�7��b�Ɂ�O�8<Lr��	2N�x� ����
j��
��fd�h��∐N�< ��!�t����z�VP7'r64��q0/q��Tq��rb�EV���]��lI�fj80E�zw�fۮ��Y!G�Y�,0L�Hq�%9C��e����ʔI4dW���32��J 7� ��:�DB��0ils�.a�d��FQ!V!���� �u�@ ��?��5�h���R%����S �v��h
�wxJ�6��anB�����,��93�X�!{#{��*�-�"!��<�M#�|��M>\��Q�Lǎ�1����;	�����,���|`�U��b�,��0P^�g�"h�g�$@��,��2E���d#K#3�A� M�����k��/���.�}�`C��}��v���d(�' ��������A����ĐṘ����t��?w� ��HxědH'�0% p?g'�' M"x\e�ZR8�3fU����aeE���	�'s���"~��a{���M%�z#�A�L���`�:jr%
�>�$"�{�QdB{\ ��R43��}Gx8�rF܄;��f��YJ'���>*Y¶`�^���ѕ�a����_�hh��E=

l���@���XR��}��!.#a��
���>�ߌ T��8� Q
���&��P)�?�Z}�UQ���
j}]b�n �"��X�D")�����e�?85t��|��a	���Y+�Ѝ�4�a�[#�B��ą�����%J7��#�,�|��#	�^� �Έr��<JW~2���`$�[{Ⰲp�O��b%��83dU&y����?Q A��O�1�A�'x,3hܷ�Y'd��$��#\����4�u8E�E� K�Ҿ�/�   �?�� 	�a�M��r{d�Ef�?M��Y���-mjG>p� 
ax�w� Q�H�h0]��t� �qϮ)�.��������Q!�BC�l�ơ!Y����DT�~��C�Ljw2O���T�#��2C#Zz���av��y%$����!
MI�&�u�x�[>���P������ZSg�� �~�^���N ��R0 A�	
����.��PD�LSd-t�� m�F"�{�#���ID��W���ev@&�dL_ֲ]&�!���-�S�햗�	������$L���l�����|�83�#q8H�M�,�`AǿX�بa�T���_ƕC��+Y�� r��8 W�Y�Ŕ l,�����e|�����R���f�� �*�e���𽟬���Dz��BzIۚ`���y(���P2��'�j�$�	9)��jC&L-*>��!H��&Z��fhk_�q"�G�&����Ad[�@ .�}����B�XB�"P�Ԙ�Y:eS�-��ť	s�2�����E����8�Y�R!8����?�N#��
����x��w��%�~�,�O~\�H�2�=\�������0�� 8��3L%��rҊ_y ���;�"`+�s��FO?�Q/�H�d�Ӽ��J� D$F�j�����N����e
ݟ�P����$!�N�U��PX��y������0�����
�x0S�&f
�� L�Qc̎"��D���l���.�E�d�7�|bHP���>1No��� 
S�Ƭ@�~p��%�@mR�QP�8B ����I]h����
�ƈ�����EBe��H�����@b������Uo�ɳ�o]F& �"��K,���L��2�(S�f��>rl�n�,���EP ���q�	!Q���	���0A�E\�9M����N�ό�1�*�\x����:Òf0H�r0��Q�a�83A<�8 �h ��TL�D�8���r����"D0%9�eV�D��Gq�j��#C�xɈ�!"!�U���
�Jk�
S����
�6�I�JgsyȂ䉥��P�[�7�J
ZG�KNhb8�/)	o����c�� HD��!�
����yq"N.躃6�%�!�c��L����qZ���P'X��'�� �"X�~� ��M�q��F�=�Y2�K�?�(��|�Y
?� ���T�p9j��'4bK�劈����M��(�ŀV��S	��
G�� ���߶ZY$N�� W�$	E5ˊ�pR��À�xD�,��y��ILT\�X�Ӆa�l�~�o�w0(��_������EPo��"�07����k(���c�D���>!�� &���Q���!#��A#Z�3M�w��	Ϙ�g�A��K"a�v�$���S?�!"�8X�K+.��\Q���0� 3NN+c���b��>��TDW��)3ח0��� h����@8��"G��2d�k^���kd���	S���f��2 <�+�Y��'X �������ɲ"�[$�<vd���o�� �E��]������taB�cw%-�L�(�9	hn'�uo���6�Q�w�x���F�Q.��s�8H'��S�X���-�	�6��_�P #�� �gJ��B*�5��ru�ø
`^�@���SHO���&Q#81\NC���.d�*ѳ�	��ی�!3|��_��Pd�
 W
u����.|d^"��LBR�q��	!��� 3!��� D ��7�x��KM����\�$�|l��/�
O8P��6��#�nq
X����\��=#�jL�����[���^�cg��[)^�j	8cq�)�"T	��"f�*��$:^L�� �C$����� I���-Y���
����q�J��� <� 2P����#^��	����� �&-�W?׾0P��A��'bk��Y&��8��F�g1�Q�B�I��T�Y���]�W���T��Kij^;sdb9u��"���$,o�m�G1�E���@�V﬙(rz*����$����ӂ�Z��8 �1�\��F��
"�U��D�z��L�Uz_����@�y�Pl*���
-J8��ܱ��M4p}�M��ߦ, Bm�H�f�a!�:�mF ���߿��+e,<t��$\O���
�$R�O�ĘS[��g��X��/���ŁB�r,P,����/'�ID	�S�$H E��*ߒ�pI%�jq�'L���L�����c�<᠒4��C�P�!�[`s� �2�]����!$$����1�x�(W��r`�
'��|N��A��k�8����{�A�@3���X:J��YHrx�L$*-5όr
)�x�̏���9r���� ][ǳ�ό���B�nd��d))�m��p�b"l�_�#1P�M!�r��@Eİ��!@`�#�����=~qu�8���~>���"O\�%��kB�n��;#��"��X�Sq���z����a}���bZ?y	G�Y���j8��I�}F�����":t�J� k�QH�u?�(�.'�X`\+~~���O|�Yy�"N!��7��j�������1U�g�� ���-��T(o��P 	�I�E`��<�
$b�D�H/��Og���$���L��p`��~�&e�<��jVq&�؏�+Ƒ�`YgK�/
���L�G�L-�S�lYY�Q�
I�J�I�D�x��,e(����c 
?w�B ���0I
�g���&S}a�؍,�B�Ѷ�
�cO�5�?��P�`����ȉ,���&R��;q�:���tSS��PruxҪ�^}2!��2�`6�N�6�X�ar
���:�s��,���ы��%N�� ��8�(�3����y�$�d��8N���Wn���g�>0I
H��a0��{0�Z��@�3�e^:0$1�$��q㳓��������2�"1A�MX���岶$R�X p���!��/��� �5X5�6��X$
������^c�����沉W�� ݰ$��r��=�}o�6B1���b)dB�bq��-���$D	�~��z� {����@n���� �.""Beu�+�z}�rP������l:�x��yCY��BIj�c$U�<]�H]7��P']���G�p�Hj���5SHW_~rh�*�Ϯ5B�Tߟ�bjb�?)�5��r%!�2�� sA� ���mi�<:_�tc�N�����@����D���7���w~gC�,H�^�X-���b�@M�*%d��6��� ����9I�p�d 3����$L9
qSD_z��2z�I<e�*����:}pjbB#��+P� �V��I6��rC	�@Co��h�ͣx�y�z�w#0�_�
���t��Fw~��AY#����Y�]7�b� L�e�
�1���w�7@п����`��n����+ِ�)C�Ɛ3Ù���<P�$z��Q�g��7�ۿ�~0e�c��U+�o��A!92p�)�3'�F6z�ğp
INSERT INTO tbl_member VALUES("521","CRISCHEL","A","JARIO","FEMALE","MABINAY NEGROS ORIENTAL","09306247025","","crischelamorio@gmail.com","crischelamorio@gmail.com","2023-06-30","VISITOR","1","0","");
INSERT INTO tbl_member VALUES("522","CRISCHEL","P","JARIO","MALE","MABINAY NEGROS ORIENTAL","112121","","CRISCHEL@GMAIL.COM","CRISCHEL@GMAIL.COM","0000-00-00","PERSONNEL","1","0","");
INSERT INTO tbl_member VALUES("523","PERSONEL","P","PERSONEL","MALE","NEGROS ORIENTAL","0998280854","","PERSONEL@GMAIL.COM","PERSONEL@GMAIL.COM","2023-07-05","PERSONNEL","1","0","<p>I WANT TO REQUEST . TO PLEASE DISABLED MY ACCOUNT.&nbsp;</p>");



#
# Delete any existing table `tbl_news`
#

DROP TABLE IF EXISTS `tbl_news`;


#
# Table structure of table `tbl_news`
#



CREATE TABLE `tbl_news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_news VALUES("7","8","What Is PHP?","","PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output","2023-06-29 16:50:45","   ftypavif    avifmif1miaf   �meta       !hdlr        pict                pitm        "iloc    D@            0�   #iinf        infe      av01    jiprp   Kipco   colrnclx   �   av1C�    ispe      �  8   pixi       ipma        ��� 0�mdat 

*��7��B2��� �1@��3<[�+����g 0�������w���_|��|=�n������Knkܟ� Ff�K�IN�Ӕ��8�9|�`_�w�z�ob	c�pftP#�	�����	U;H��� 	�W;2�t���y<8�xm����%�ש�r��p��5��i88����VS�3{�;��v��D渭�AeK����_,E��]��PT�s߉��-FVKۮ��kyz7ʅ��~a��cH�$�t�*_�%<IO`���]J\<o{Cg�6tz� ����bY+w\��b��M�H��55������՞���D�=O֧o��s��T��767��I^�!��\�.����m��"��~�#������(G*W��%�S��"��A,J������nc�(�\HT�a4GTMԆ1�m���)l�G�C����������A
���[�^G�ҩ���d��*C-\�����:�N�Pm���^%��	�ߣ|�9��R��j�]k񩽷��XQ!�Ag����}��������8�S���S�R*J� $M����^X�'Ԅ�	��k
�����Dmqo�F�9�4
�ZE�P�D��ᔑ�WF�,�it�E�e�F���0�� ����X��x�?��-d�B��!c���Ӽ,��Q&���0I[�tQv�B|W�F��H�Ϟ��+M�� ��B�LSa,-����C&���������`$3:��l�Nܤ�"��t�/|�^ | ��4�I�ʱ�ee��_LO�B2��.���u���������}��%l~�d ����m-��d�Jj���W!�X�b���B:t�7��kA���E�H�&z��t���vJY&;�+�etİ;�b�x�����5"�]Oh�X.���;|#
~��x�c���z$mz�A��M��X.��+=B�=� r?J+w��]�^5��m5��wBd�LE�W�E�xWrx�@ �w&<4n�q��¬�*L�nr��^' ��:��v��6��lb&j�b`"�� ,|
�T���-P��ό>��
��#j2(�e��p�t�t�fp�� T��L��Ů�������X5EI�)����R�x��u�Ġb���8Q�.�#`�>s���n[+)I�+��-q��"��c�Z�{q���4���8�����*�Fܫ�I�'_R+�%<P����ymp}��jP#��i������@(x��C�y���Ĺ9��b_T���p�����f��\�}AŝȻSC�N7�?���O�bq��O���|�aIA�ʃ_�V�e���9�N � ��R�h�5��������U�-û��?��Y!]"p��9֪{4��9���U4L�����,-=V <J�+��U9<�xR�%=S.��`��O�f�A���Rj�{<5c�9��)T̙�t���@�p��hNBYIԛd�,�	�;�|���i\��o��\*�e���v��E�q\���[k{�7��z��UZA��p_B
�a����R��R�C���iOM�2mu��1.��a�!�4��;y�9Vg�5e��J��ffhA��_�j���:eM�o���Ж}��\H��'V.SZx��T�ٞ/�|��I�: #@J﷫�����(�BQ�ߝ_���:����
���>�|w��긃#Y_�C{ˁ�)u2��?��!I��C�a8��]��'��O@��%5��1/�'�s��w`ڴ����[O�������7���ߜW z�%��=^/H�ӗ���.F+��5�w�_���E9d�^��

I���pg������j�ˉ�o��� ���g��(��|W�#E2�$���O^f]^�N�D���-������E�	ٰ�	�!4�8ڼ����Nl����8��
i��G�	0B����N�� �Y=
�9��u>G�y�qO�I0�֐���5���
�*6��L����
���I��J�\6��q�&4z��S�^u�A7��q)xT �Z�I���=u֑���^�!��چ=���&(��:+�_=l���]Q�ʥ��`�k�T�����!?C246a�E���N�' �-O8�잢��Z*j|����p�ꛪ���0m$������.��HV�Z'=N����
K-�8�
�ǻZ��P�v#��<��A�6���]-��)) ��[\�j|�J?��M�����^�u���O��[v�D�,ֽ`4�
�J'���t,��P��o��*IɌ3�Ǖ����]�4�dR�KV��e#�K-$t ��4wD�۔8���Q��@��p7�����o�	D�@P����r���Q�V<����A!���(�Uیu"��d�)%,$+�Q�"'��
�#�KVps<��
�fW��Vl�@7
0~�
��70UN��a	m|�F^zI��*�q�4�cױ�{�Rta�Cu$�T�Ikw),m��|����3{x�� (�Ǻ��諾G��\T��]��D��_;8���O�0I��0�d�9�M�r<����j
��ؖh���;As��Ăѝ(q���A����ɞ�N�Ū:n�}&X����f-^y�|���:T��m �#
$�tK92K�&�"����f���y��N�<(�LfZ���&�4��˙�'��z���t�We1����#KV7�	��`�$Brq����\<	Ƌ����Ng���V�2c����9�p����.5�{���j �2��![٣�HV�3
�?7��_�n*���P:U"Y���3�y�����ds��*�?6E�/�?�}n�ik����$��Ӿ˛@(����1w�1�'�c֩�`$�I������.P9w@�����a	��t�9&�9���{�j��X)�H�{X���f)���I�.:��L[ijT�&yק�'�(��͘��?�L�۫Ӏ~��{��&r=l�(x8���fz'�ڑ����v�ڹؤ��A����� Er�n�3�'NrAv{V�v��Q���W�⎇�Ǻ�)6C�[ds��7�d	K�Kc�Ou����^s�@l��D�䋲���@�L�c�b`�c�A�'��oq2��E� ;�~�I
�5쪀�� �gb��rt�E6%��!����:�F2�TY>�+�>��%��\m�,z&�CD#~�����SC�*���9�b�q�59�o�Z�'B'���N��t���o��#x��z>�H�e>2�<��	�8�(�r�e /����܈��S����@^b�5L �S���z�vJ��Գ����Q*c�Q�HGK#P|��s��kSQ`�����9�\K),��M�m�*�������yk�sc�k�j�mâ�q�}�j�Q(���!Gtc1�[.�������@���5F����:�I�B���H¥���˜1�Ҳ^TС�9�SxԐ+�.�%�)\jj�w&:Wb��� ������S��x<��!���(���p� Ĥ�=� 4|	��ITKpI
�����t��,M���Y΃����GFz֌pG��PC�t�L�M
����+��s4woh8�6S�����м���
i�����u+�۱����i
~뱲đ2u�껒O
�H 8�Z�)؃�@j�m�m,�b"�+��Pm�������>a��酸��cat�cc+�� ���h��P�lr\:O�@�rdM�K̗b��}2q�.���aS����B�TG9=���Μs��4�M�ѵ��LR�=G8��ՑF��*<NL0��ᾗ��h������^z�T_/��0�E�PY ;��j�5�^���>��7L>��d3�Ha���#6y��&F8�:Qt����b���)��OV��g��k��2���y�F`a<(z��zjX��/�!�����2S�$*���T tۡ.��4��L�E��-v�M��Cm']W������	�]j���m�%�yC%b�O=�E׭e������{3u�ӃRSz��E;Vt���=,�b�b[.&\�� L�_�0�՝�=���gcB���|����A\��%[��lN&��b�!6���u���T���3���[�	�+�����.�Yxu蕧߈l>�_�
g���Ji��.��k��CMD%��=~:���һ��@�{�G��yDU��L���1WїH��9R���L�t*�����;;�X �������.H7_(��0��"~�,jXG~
�3ǚ@������_�ۏo��@��� �r�4�O����?2x�kF[�1�/��C�}8S�S��]��I��H�n^",�U��t�������g�W�ݠ����U�������
��ʦ��H$�1��Q�*���ZH����{��;�u5hC��:��8����>�6���o�O�v*�q��Y�f\� ��c?�i|F��s,ʩ7�'{83k݌r�o�{����)^�T���D��?lh�ɗ�$��Cu��a`wVt��2�%��̽����e��/k+p�c�/#%��E$���uwh2��O������Y�p��I�񁭉s�Z����S����Ω�%ʁ[Ô����p��[��k見�M�D׼�E����ރ���*S7�>uD0�Hp?�f��
�-k����L����
�2��RD�65��5Qr���{,s��o���O`R���X�,щ�p
��g�D�=��Y�;��
�|\�pԞ-��h?�܊��|0�.x�@՘Hy�*M�t����:Q���b��R�S�
1�Z�6� �D'�?����������N�<\+���W��M��G�� k�Ҕʇ:Տh��zK@dZ�3Cp�n�/�_�� �% DV��R��~���#��f4��
� 11b�ҳ��#��GV�B�14h� ����j�i�I&�]A�/F�	�#+S��E�p���k�3���YH�P�ۢ#��t6�J��(�nd��:L��BZܥ*lt[���xGg�m��$A�8EP)����oK\�K���C]
�G��f#�g,��	���ܿ�*������_ /�2t"�_N�,WU���7��t}X"I�h���&
4��@�Dੋ�+-�<���3�C9B+�K�]zZx�poT#/�:#W�)��PZ�����2u酤^U��)�ݶ;,�B��bF�
�<yd[�)�ë_r��Z:�mfdM�R�8L`��(�e8��wf���1z��� ,-q_.1"ah!�TZ�e�>�&�1͏��O01�����;���m7Z��c(%���j(�`�+�v��T�A�:�w�>3���7܏ʻ8��b�@J���6Z�2�a.�P���9O���)5ׇ�"�S���@�j�	'��B�
]�F���*�	^���>ZIp6�D�������ܧ�Q6('�9op��i���W}��,�q�r�<��{��ϝ(��n��Q=��E"�������$�{=M 'ҿ�<�s�_+��E��mA�fu��I�
Yh*D�0ԥ�m;���rQ�OP�x��t���M05EvP��1��M����S%mY��U�
$��uݟȤ�N��`~�^1K\�g�� C�}��f��3cl0�ʀ�4�w�$�rY���7V��o._d㑆�!8��=�c)�hM� �_'�6������ݯ���?�.Y��H;��'��Z�j����ūOS���Z�C�����(&�h��"AN����:����h~�&��6�R7?a��?��o`��'̠�d�?��$�.�Q�X�q����UO�zC�i�G����
�!��s��:�`qʁ�˶��Y�(��ޙd$��}���k�^+�����(�=��"D���ӂ��ʆ����V�1��D�x���]{�_h����oI�٢s�����d������I��v�k�|ǩؿ�x&n�"v9~~�!*�Ow%<�
boj�ל����G�[���m�&��J��� ��c�x���#�@��Z"j���>���f��R�B_�G[�IKrQ�l�V-�F:�ð�̊�\�4n�z�4(�W��@�y\���J>�CN�}1�#[S1􁳪i�"V�
o�{��
��S�H�`���;���<�ueUw�����"wQ��[AǾ�G�e�8�J�	���r|P�/���j��4���G����$�`��.rx��<Fҭ�Q�v�c
s�)�s�I�����ÍD	���nuNY��XP���˦��h5 ;�2��f�YޯQ��=��V�����s�g6�(;3��s��T�ڢ'_;J����Y�
 ����.�'f�j���1	�΍���V�J��qZs«��t�&�Ed
(����2�!�Ҧ�Q���t��05��R�Y��I�����M@��IJ������q �����2��h��<n���"!rq<��<�'��b�1(�No������]�+sϽ����@`��k#w�h��p�[
W���n�� �x��㊳�� W�s.���h~�7��tn�	�@z�Ҳ�7=Z���|l.�,[�	D��Q����ۓ��/N�"��Ó+��n�|n��`|>N^�^���H�"�Hkņ�]���M��C�܃>L�lP������ÇLT� r)�2A-��{�-�mpب<&�@���m�ۗ�,O�����:N`��o�P���|3�#��E��4n�\�lb���z��~%��'ID�"rG�O'gCO�Qyi�?+��;�V�/%�;�H��^[Ư��J�%��N�e��Y0��Pq�8�n"	 $7
���%ȼח��4q�L~"N�.��/5�"�>[�9�G�~�k���\2��ƞ�l/�/L��v� UyU3r�DRr-
�K6W7S��Z+�RE���������y�����a&ۨ	��0���p,��&+~�!Ưn�s��!V�)c�3R�+�T��O����Ʈ�h>	bn�7��7z�0��p���7�Ecd�~[e2X�����`����ī�Ȣ�%|'8E{&�hZ�<��Eo_����b��.���,��_W;�D'�.R`p��b��f�j���n
>֏�� !co���O�~���%���,��ԸS��>�՜ϩ�t4�K���X#Y¤��.ƙaG�(ӊ>�Q4�D���C=XP��Ɯ}�L��'�;Q����/*R�cҏ���U�w+CVh�=u9��;k���<�G�����L������W����
��L�t�B�M�%ułf��Xm8
��z�Х3=��D��`-p<��z�{�{�T4�3hg���J<��+/wn�����qf���
S��%�(Jv��i�Z�K4�~�a�B�$Wǋ��Q���a\���n#�����Ifg .{~\�b�ů�a�a.+1�zL&$�%��lnn�X�h���h'`�G6L���ڭ��<q?��c=�%z #���ꞝϳ��4�y�i��s��$?QTu%�]!Kǆ�l�����y��{i5�g̿�
lC���XR�@1���M�?��!�y&�0�I�@,߸�e(ҫh�X��[��U���#�̂�#w-���w �'���yI�!�B: ��m������U�F�uP׭��󍪹���ż����S��^Ρ�Wy��<W���Ha���LF� ��|:8w���~g��|i�������I}��Lg�OM���o�m�E��,π�
�3 �9�d��C��\��:���
����3�
b�������E����G�:���EB�r�.����F4��Ҏ<� S��H��S��Z�(fT�<������&�����_Tř�i�D���XꥵQvf�#�W��������샃
wia��bc4�߭C�"4R���69D�ZC1�g�ˑe,gd8����J�cM@h���_�V�PU�n�"��2��rӶ��6�����eJ�s����)*W��h�M��./�.��M΁��]�w�å�(�xTDHGDv��-u�p�K��u����VH�c>����Ư�m�R�h�%�s�����KpJ� �^ݱ0*S��	�� 
gE������VT %$8�=.s WJdI�~m�P���&r�։P&ҮD��07�t��"�b�����3�Y�lS0�Y�ϯ��&W�����X�(K<�f��r?F�v�����c�l���O�t��A<��
nL�"G��t�dAp\�
}7,9���q�b�N9\� �8�b=uL�ʄ@�؉sa��(�)��%�Y��6?�Շ��B����M��'��q�c?�SJI�w��o� ]��s�!�&z�@5�đ$��Y��y�>0��t���q����ciC��6LY9�D��2.�HI�U
�!P�
�r
@Ox�s���i���C)�#`�Y
�^K�����\��w����C�m(!wk.�%��s&�BE\ m����rʏn�8��y�5C���-3w�ચ�<k����5�x�..�ܠ��8oΙRk�.�̲|��b�=:�Z���O��x�L�]�OU�}0�Z����^��aρ���N����[>�ז�) ++E��!J����Άr~5"�F�A�Q���ao��\З\C��1k!S÷w�CZ����^�j[���aA��m�J#�j���H��t{JJaR�y���ݧp���H��F;����!�����X�	P��cYX==A�6�}�W>Fs'�O�%�����%!B�v"�+��؍���������/��I�[m�����4W5H�ZS*9�02��6�P�yo��-�p|jk�Գ�M�����Wf	\!;�hSw�u׍��Z���l��츮�(Ufbg#��>7�#��ߥ	;�%:�+4��I��H>�c&_��k�x�
f��<~�L�N�����,�IbՎ�dZ��^5�-�oY��0��
�w
@=
�b���}��e&�_4i 7;v�#�Xjr{�|���J�|/��C�rciSA�G�1~}]�P�F%M(�q(Zp�I��"�m�;@��8S�P.n��椗�a��xϩ�y���������K�6y�i�r�eNF$GK�sOhs������M�<
-�?��Ci���f{6>����9���^F �+�r�}�)Zj
���;%��������� ��$����oq�<�f����S�L���8����G\�o���"�~�(�/��L�e�B��wybf�c����V���h{�|i���~�]��y�@�.���1��D	�z�z�V��o��`��6^��{�N�>g�:�U0�޾��?���Q�j�ٓ�Ŵġ���T�ۀ�hQ�7�A|�l5�[���r�\���k�礐q�G����R]t��W�u�D����P.����9����օ���5���%�
a�p�Z����n%w���A�ih�/So�5�2m2)'�!�d��:G��X���׈���Gdj��[M�Y�-��� ˈ%<2���A�����j�6<6ݓ�NB9��I.� ^�?ص�!���)��>�X�|XY�
�0��w��8�mN�l����Rp��<���ܜ��:y�f�% K��ѬG�=�,���f�#S���2!>WN����y[n	6�ɬͮ�C4�ol�Ѩ�.kajs�j_H�>���5�^���&F/�h/'�9jRq��Z�w����	6L�ֺ߲Ί�K����"�Gt

ݳ`y�c��1ũo���X�+Z����P��"_ !��*+��TR;�'��� ��������Ŧ��R���T&�Zb����aɦ��f굱TeN����j����"|����*u��:�ʝn���p�x}�����!�c���H)��b�r��2�|�N�,X�/T�E�C�x������1}��X8��{�(��3d>@�"�d����*R2��<����iQk�����Y>q�w�&0�}�6Dv>��5�'�	o� t�4��4�X?�]F>��c���}G)�4t�K��P�F�*\/K��kL�e'�G��lm;W��s'6wS
�/V�c1�j�9�ߊ���q#��B��(�r�r*��*�@{�������� xs5H/3��gT<�gWh�}ɗ��t��7$Y�V`E�ɾ�9�
��#�nu�5��<$U�VQMio+g��X�L�)4D�iꖤ:Iq6���ʐ3��A̽�Ō$�9]�e�%�=�s2"��#mW�L$����x�q��B[r��P�&�cH<B�I�b*tNޞ(�N�r�x���[+��&�@:e���W�)r����;S�]�%��CJ�L��T�2��"8Ze�/�ܱ��Z���!=@1nD��"�>gP}�']v��k�2Ҿ���f\���r�
?�񔶗`ax�Y��<�N�\
�R.��z����
 ��d=1 �?��_��fq�9�E�>��[fqH�[&�����~�ۙ.�S��9!	�$J}� ̄&��ǡ_�Sf?eh��u���xN��P�8���%X��Ő�i�8s_P?0�K/��蘺�/ǐ�L��x��q+H�\<�����D��ͼ��Ҿ]�~KL�T+{;5Q��֩�ZT�z�-Zx�N��ի�sȫ�j��>���h@�)QW�+��ȓQ���%�i���EL(��b��^���@^J��͜9�.�
�7��b �Y�P��!�� ��7� ���D�F���6'�QX\΃�1��;�~M�Ez����v�|���[ǲ0��)��j����#�@m�7�m
5�SYV͌�M�[��.���o��GM��vr3���|��fm ��aM��K�d�Ӯ�A��ը��p���0���=�6��\B .�{���g������a���~9(hd۠�ƸB�x�(&�((�u�y��*4s��U\��|
r�4��^���dN�0H�zB�(�舃�t!�����jd�iGb�=�v��n��x�J�n���µ��	k	g��)��r4o?g��xGL�k�hs�C��'̍���aK2�g��S����U?|��d��վ5B7���wm�����cQ�$b[�g�X��r�zFI�|X�=7�U�n1%�倲
�"�D{�M��j;�h�n�+�,�Q^>����������#&�g�>�6��d�\�-P�,��
%�M�������_�RGϱ�@V��I���Q}R���ê�v����d�V�W� ���W��}6�����Zx���)hz������7�~A����xn�����M�9w[�Qe���r[<J��A��Fn�F�ׇ���~fZn[a�(���MO��(^6��$��Ԑ@ϖ���W/
U���-Kg3������Kz����6:P��y1O�koog	/���K���I���JMX
%��r&��g�"���e���Rf��LH��9.K9�&>��?c����p�T��kO�(�� ����j���KE�I��eZXH%��]�� Z���|ˤ�2ld��s�:k�"�7��<t]���>�������+�<��<:��#S�a�/�-��J ����p�[9$�rO��V`%�S��\
�?Ĺ���W�=��G�%e��72�k��&W�_|��.�v�w��ӽ1H�Tr�_C�1��,6�f5k�L7��ᄏ����f�˓fi����
*�	� ���ː, �bF=�����LNiFP�ȳ)<[�91A7m���O�jR�*�0i��E��iv԰Dϓ���&���c���ć~�9�ڍ��7�7�7��Q����@��ʁ�����
�.��;x��あ-Sa�05yU�q�j�x�6j���܋
Ɋ��%?.B�M�jV�a��ط~)Ã�l�܏c�3�,���M%{�l�zorKȡR
���SS�
x=h
ܟ�����	2'�j;uf�J��
?���*O�S"БSm�)F���� �֠"�&�X�������s^���f��R��0o.�R\y(��%[�p��y��6Ǿ�cܷ�Ղ?
FH����DY�jOշ�,�eB�P7g��O�ڕ��w�?'{t:�?�6��餛n��W�E,�%
�btt���� �(�@�~G+?b����{����{�.|��4���%��C#7<�j�]w��~����~�	���d�R8�P�)+�u�J���w��j�(��a��/­N��Za���ۊ66jF7#��M]{�+��ͫu}��j�9�3N��T�v� &�R��S�\g�3.��!o�����Y�vo-�`XI{�u3!���7�pz�$�k��'��V�ٕ�[� Q��Qb�3�qY����a�b ���)���ZC�ސXF��q��u�T�ύ��) �gL�F��߼tJ��ЕPO�h���k<?ڤ^�<�}�!(�Wғ���1Zx��n���Ɛ��d��o$�d�@4҈M��L�Y��T�Ζ$2��;.���/��4��
c\��&\��N�+�<���>�gC�.�Y�ţZ!�a��AFݯ�#�����=$ Cf��ӽ@�$`�Ǟ����.�}W^���V�ϴݘړx �37����r��6ny��P0&�J���Y�6P��c�!�KY7�w8����������1��M��~pZ�P��Ҹ�Z�Cz�%+Q�0�[�J�PJ��ɒ�7O�P�:��&#��)�VU�O8 �*�	���F�]Y�7*0�C���f0"�F=��>V�.���B �	�Bw��00�u���Xo�ԗ��K��vJR��:�l�1|�f��"%��Ba�p��������MV��^0�[�-�lt#@J�'�)�!�/3�Gvo׹���~��j���^��ppkv����G!v�Ds�xV6���=�	0e��2}�����F���P~1f�}nP��xIV6�T����עC6Nn͗����)f�&�Y&P�޽���w/�O�IN
�1�'�|&��{+|V:B����/��Ê��~���C��Q��g:�e���25x��D"�4(��	F�g�iр�Q-�o��N����HQ�_Z¿����b?���7�·踔t���~�P ���7��W�m�m�a����ꓑ�o��f�\i彍��	)���b#����FF~㞇�.v[A]<,?��� =�8@�pH�����*�a�����ߥg ��Q�r����j��2���N]���
�5�lCE����UZ�;g}��}Ԝ9^C:���r��t4:cec�,�8(\�¼��f*tg
Lz%�2)�83�C9ڨ�k(��_f��S!���k	�WE}3�h���L"o��)@��Lv���֕����;@{�#����N�|奙�oQ�pe�*7U�s2��h�)�H%�5�ơ~��9;���4b+Nd**�-L����.^�]%�������k�O�m`�,�O	�A���=���K9H!2��I����}�}7�,
ap�Л�)��c�L�,"w#�eъN���N�=��%�Q�
f�Zw��e�p�h
bb1s�k�I~��a`e���y���p*� �����x�MBh휸M ���4���"ԧ��]�����g�ř�'p�ճ��ga�ex��c�H�"�*���8�"�� �/CL��߂\Z%0'L5��6 ��V�x�s���0=Ci�6��4^�ē��G�a�F�n�3�z�0F� �-���G����[0��v9s�vS�[Gh�d)5�G��>�:ʮZfB�I%RK㿳^�(p����ֳWe/"�v���HsO�m���CQCR�^v�VL*�O�������n������~{�'��Z�޽�(\n�OMu�,�P+��$����@-��<��q�u�����)��{�����S��L�*$J���7�|2l�Ik�:ɴٳRs��6�'��M��.V��>�0�5���0'=�5���Td�l��k������c˖�5�	�0R)�-.
Z͸���m��B��B��ݲGߕ�=�@;�;X�ײ����6T���c+b�'xΡ��^ީ�����RV��[$��Y܌Y-:���������r%K5
 ��E
��\zDp<E�]��x#lQh�z�:M���(�`m�K�GR
�3wS+{
M�*�Z��6�
oc�\�na��F�⒠���֜}�v�\��������jL��
�>]�#��1f]��[0S�J���*���8Y�o�.Ej:or
Lx������R,x�\Ǒ�m�5%�mk,��vz&辷z�p���q��v��
v��P���7�.��O����*
�p�ݧ4 ^��"��)Z��>�yE�6�q�Pc*����}qx���l��	،ri�E
�>�J��D�]�q�M�lƳRߝ@.�ؤ��/Q˼s����̏D�7`ouF�ΘɊ]���,�e�����?O�� �4�`��@������;��?�-9�_�=���SDJ��s?\Ry#1��&ޙ�o�^\a0`������nT�+-NU�;+8�6l��uL�פT���m8.��2�l������o���9t���@���m?��#gdT�<�l�>�#�[�N�ҺF�oņ��w'��V:s B�H	9�����(2mz��h�a��3���5A
D֟�#h
��t��ٓ�m���2��'�gyg��&�<�sόJ?�+s�(x)����������h�
sWpbпo�׌do��bJ5�s�o�c��׀�X�G�I�_��:�����1��&Tv��B�,#��t��<�!=�#SK��B�a��ҁ�o��y^�t���hϤ��'CV�S��̡r[����;E��e)(�>Q阼�@,VQɒ��X��9������
''U3�";�����}@u�,�2�RQ�-*K2q�_ܳ!�&&�<&AA`�!�Ԫz��3=b�o�-"��
>�ĝYo��rwsG=���E�d@�sZ����~��]a�>`T�1�
�X�9�p�����(X�;;t��+}!�JI�|�lZxi$��t�u�����n�9��OhPx�?��e"8�Xٶ�q���:�l���Y�g�e�i<�(�Ƶ/�D�JS�� �d�#�{ZJ��� ��"�h�4���_
�s��x�������K`�`�;W���J'ev@��Ыq6�\p�;�4}U��F���L�s&�F��$芢�C��� �	�Je~�3���P�2
9e�!/:	��@�`8��K���:�R��(�w����=-�1�vJ�X۲�v��;��&}�P5�d�����D��ȏbſYs׏`�>�0Z�z���N鸐�W�)ݵ-'���}�ސp��9�+w7�řs��GaW{�^$�T.h�J ��J^
�bCG\>,z���1�[��8ˇj���_mg���N4���
���+y�Z���&l�<��2�g��8qb��B����dW���٘��A��ћR5�,/��H��7O�w�D�b�� c��!f�Y��b
T�"ы��?jR�3����ɽ���r�mۛ��y��h�!�=�I>T,�h����F��|�GzM�\/����4��gy���������I�A�^l ����P�)ڵ.��eB=bx�q�|�Q	�JO#P���Ӳ����g����?�Q0�ۨ��;.�����<�J,�u�#=��&=�H#�T�Fu���&�!R�g��b����)|J���Vd��@�ۃHn���D��
xw������g�36X�'�H���Ʊ���#��S�A��ٝ�޻�n�]'��e^�J2i�ц['U�sɑ/ޞ�.��^@�Qʧa�3<��7�}��\sji��x��d��I3�8Z�Q<-W?���������+��8�m�(�.�.��ɉ��� ���l���1\��L������	���yK�] 7!z��Pބ��Q�ŉ*��+l%����%��������u���~Pb�9��z�V�	^����-̅a��g�G�}��ɷſ���(�t~YA�jOX��� ͪ�1 G��-����K� 5��9�at���-Ƀ����P'P�W&������z���=�����#�z&�Y�N�xsG��<�RoAl����4[L�U֖��F$Ƀ��D{��'�*�|���'�!�U7��T�t�o�O	�*���o	-[�U��H��v�{5�.H�Ԝ��1w>��V����[���Z���� �Z`UB���	�[���C��-��W����i���2}\��8�Q����'��U���ڿ��j�nzxd
f�^RY�p|$s�����d4� �%zco��8��W�>����#�iھ4������5��Y*g���Ω�K�&���
���h����(O=�1��$�j�<�Y��X|��a�ĩ+��X�;k�C
���x*p�@*�������O��N���6�	 �;���K�w�qP�}�~b�^(�)��.�q'�'ggi�i�ɐt�OE׈��T�o\F�=� n�ںLp�"lB���Ǖ�x��ьO�_������m��;IL��o�>�C6�[r8i.��=~��"`��;tf��~1{�e��3ͬ��a怫�3��0#R�2�	 _�va���g��m�Ҿ�Q��I��Wq;]ͅY.h��jw��;�p\sH}���a
���֡��ڷu��e��!"3��(TZr�3T�����=-\Q�q�H����zLP�Ie�L�G�Km	aZ,Ř<�O����ۯ	�!��:�\�#;�����<��q�3���7�^�D����?k	���
���=�Z�jUW2��O����3��˝� �	
g��ŋp6�'�x���6���U	-��6�?��"=
��-�{��O��kq/> ��ݖ��8��E�y[���5�c�8\`��e����Н�P(��r�d��igv���=�^�e��r	��e͕8�����si+�PP�b�j?V�I�/��pϊV�ެ����)��Vx�E8f@��푱P��/�T �k���2pd�s��`&VuƟ%�)<�5x�gR�e��Ov�Zޓ�c�K�
f�2���9���5M6�t�WJ�0�*��;���?4��@����c�X�*�W̫1?�k�ax�h��$ ���!���)�]F��9��SrmSM��|u;��g�+� ��%���tsܜq���$4�䆰(Sn�X��;m��J����)�E뀘��.�l�A�T�_�2Y�Z���{o�v���}�-�#�R]���
|e^M�	���~C�(!���{Dٵ>H
G��9����rKcntv�A뵿(��F��k�����"l�����>)�L��J�ro~G�u��/�8�WS�f�4�N3EP���n���[D�p��0Q:KM�wC#K�d����gk�%pZ-l��o�<�y�rq�5q�����Top'��R� �S&�;���e�M�0?,G�Z��f�%\�.,I����f_��¤�i�#c����$�؝hp��8
.CZ���}@،�#��~:�-�~P�iyxZ�ǵ��j�;�_�&P'�m���tل�<}��i�c�)�|�4aC0x�(T�p�>|}	����c�������5�@���� :G�h�>^��ŵ�X �(�{e��%�����K��S){e�k��8�m�z@¥),��y���io��Í�X�t�[A��������ߺ���"�`�aR+��������x�^/U��ʴ����;~�a{[QHJi��
�I��mA_�ڰ$�r�s�X�`�ކ�v�T�b&��so7>��Ip'[�r�۴��4F�1.�<k��w۟�ܽ�A���$�:���$�%������	\��B�Nw��=��Ջ��'���gϧ<,��[���$�6�4�F��'�lxC�����ٜ��v>6�
ue?�7���W_H��/ZՏRc�1f�� SA�;�B�4���L������P����e}nV��17���� V�ǲ�#� >o�|;��[\�9�XRp�(:�D����U�� ��	�Y�ױ�rf��p�f��r��e�(~��� ���/���2�T��|�P��UHk
��v�\D˼�{�����,�	[-�
Ҭ|���	��iߨ
w� �)��W��X���^$��Mj� [W��`ݖ�!폊&I#M�����4��A��^iw�dlE3�[�w�͠�i���iz����ȫ����t`
_!D���a��Vʙ��h��ȼⷑ��Ov�և��W��%(��x�&W�m��;�͙�p)$"�W���KR���a B,�9�UV��2��%�3u�6-s]j�];���Z&&�ͻ��)�krC.Yr?hܷ�ϒeVs\�d��l���>�I�V���I _j�%�E|+A��ȍ�Z�ԀzR�`R}{)���GO��$���|PH�-�k�~���<[9R)��D��s%C�F $������d����=@�={�tЦ<�E~��n���^����ں��]&g���v�T=,����6���u1/���AՓ�Ŏq'����Y[*�?�@F�|�咙���4j���b����ଣ�x\��2+>�MT��6_� �8��&��8Q[=���!�mP������.���w2�?�?���b��f��ObA%QLֆ�W��V�'"e�L_��w�'���T�,� ����쀎5K{��h�}*0$��؄���#'��W(�)���K�Y�pq�\F�������W��
�by�/[�J�
�d�V[uV��n�zV�����ձ��h�i�������-0��ޙ(j
P������VW=��a� (Ij�%�6��r�����c�2!Z6���_v�#ې�S���y�X5t� 

�\>��~#ٳ����H]�k����Ko�h�s>�����H$���-�`��+
�N���[�#%�aɇ�4X�R�����~JF)z|�Gi��_b�(2rЭ�7�:ɪ��CӽJ}�\�;E�%d�{�����]�"R�>��gG1�����~�,�� �S�c��"����m��Z޹����2�����V���|k�xz�T)5`D���R���NQi)���OCp�eY���op�7�b(fV)�lA��8�Т�r��S�F�b���A%w�A>�=X����z����|T0sБ��Jk.~lK4��ޚ^�)ڞ�J\Uü���a���cd�ӧ"Ԉ:�n��u�K*i��Q�DG5Ѣ�j֏{~��US��/q*�p��Ͼ�S��j>t��WF5�m�E�������K�A3*c�6�d[u��݈7�\�K�dۘ�T�T#��}����-Ct�f3������T�6_�Fhf�01�y-$
�d�?5��YM��1��e�*-��)hƪ[?o�h�G��ep���f�@���F,澳�7��AQ�B�e����5%��Za~ev�f'#�"�BT���ag��-���~l1w%} ���X���s�i6jG7���el�D*2��W���%��Xf���]�0�O��P�O#�;�;������CK��������S6��7j���r��� �0���=�G�jL%cT��\2��2�m5�
�S�x�0*�PŝR.�R<U-�i��
C����D˾!�>]���$5�J^S���J���"m`��r������[# 4"'��h�-��:dcҦB��&bkWbi�ԣt�l�J�A�V�"L�O����l!n_J#wFQ��ѣ�/�T�{s]_��N����Gu�L��~D�3QT���u��x�oR�Q���>O�	f�J$�w�?��]�o����J�-sZ�&�0$ ��.Ffj���R�j9Ѵr�����ڸ�/��>��NнrK	�w��Xy�5)r��g��G~�w~�de���p����c^7�~���o]��'0i�Zt|��}'y�)*YPGA�p{s��EGS���,��~�0G瑹 �Dyk, ��B@g���=x3pkg����#�R��nb��شB�������c�Z��ζ�~K����{������	pj,I/�Jz�'�L�@�|Uv�g��Q][���#�d;��Թ�)8�;ҤV���O�:ky���i�0pYHs�?{
o/�h�L�"��X���=b>�?%�0b2���<d��m��8���9PrV2�y�u-�;Е�����]_n��d��_;j�B��e�������f�YO���5H쇩�F6��8��U��0?�^	*�AP����8��缲�_�����C�j=k�O�
�G;~��|� ���A��װ���io������Z4&S^7�*S�:G|�j;��͖�T=?�HGYq��Ϟ��D����
s�@Ѡ�L�ìB]����j�C��;Oȩ�>�c�Y	���4�UZ��bFh�]?��k`�xd�Ï]eaΊn�9���>'�HO&4�Z9��/�&:��)���V���s�e�V����i�Z�TW��� �	,lb/{����2�	�FE��E�}���G�0��&[�B+�o��� !ǁ����m�8�`���d��q�R,?��4�_�АG ���க�)��`��u��ғ�:f@yL1?1t��v`豺��&�C���ږ��V��GJNč�j�]�)b �.SS��T-? pc82����Gl����V<+�R�zo 3V�%$�M��&]b�phEL� "��m!uO�y��x�Zp�� o�;������'�%�F��"&2�3_�c���4���`h-f��T`ס�`W2���M�5|=�����0&�$ڍ�����Pq�]X�L���}�D�j��i�S�C{���E�!c����'v��p8����T-H~�`��
ٯhh� [��������"��i��
��F:Gpk;za�7"r�u���v(�=��L�F!i�qd��ܑfJ!����N^�lupC��rS�c��N��
0���E��EB0��� Mr�����W�I3=l��Xj}i63ڄֽ�����.�!l\T�k
�G-�凗��јY��Y�Ȑ2��	���������A.Fʄ�r-u�٭l�bk?
Gy�
F���̚�o7��
]bg��Eae�c�v��	'�։5��T�?��;w�R.������v�, ��Ց���[�~��ᮣߜh3���,uJ뮹�is��*��ZT��Vr
K���rg��fp���濣��N�U|f)Rg�����c!X�+�ۂPC�)�ߣ��ӿ{/��'+�M��hWw�;�(�I�|o��2siw���J��}�
؜��po|�L���KH��ȭ�/�o�R/d�����d��t��� ?�y~aO@����ħY'|��rq�/[W�TXD��Φw��?�39�
m���h^c���)���E:���L�KZ@??eP��\��-��l-�H���	<K��\[��5뾿�����x��{ˤ��,�׹���
c\5�!��)&H|\7�yJ�s؃~cV\��]T����zNa��E��m8�X�L���\ݕS͑lM�Ge�ALī�K��t�'�r��A����#�
NCF2��E�߱m3f��dM+��<1��8[�}4m�j�C�����(��˩X9�:e2�߹&����R+���L�/0�ժ�L�l�2���q.&�x.ҍ���}����v���[�&H��u|�Ͽ�MϢ9�Z���.�hP�rC��Sܯ}�A�6$�E��^V(͉����^D���,�$9�ԣ��.��\;�&�
פB�'�X��4l\p/ >(��I?ڙ�߄f����M�
��B�v��ۙ�)b�?ւM	r��)���:x�8�
�<���9�Fuouq������P%��o������W��Is��k��.u��kW��|��Y
��"R
�4a_�#�v�����a����^	�/ѐ�_x�rz���C�c��o��u�]`�"�dL4J��ؽ�1zI�c�͸]�W:�nooIyNcs<�|*�r�P�K$�Ž��}vTn	6�k�,>��M�,�+
�0�����
�7�㓐/ĚC������B���q�G���~�vv��P(�[���ܒ�K�#]�7����鉡���	� ���␊�b�H*�BQx5���!�S�k�N��	��Gs��"���U�J�\"U��A�X
/}���N�!��h&
"����%`�ۥ9��>���!]1m��V�ɝ�%�w:�{�`5��=���A�t�V�1��g��	yŎ�M;V1�Z��̂�-5ͷV������0�!�s%�$�a�ۚ��g��Pr��ag�T	���\�M����w��r��?Q0*4-m�&�&0��
� ����	z�ޮ䟭��4��k�����{��(�͎$�.nU%��\W�Tjk�A�d�@�W���Ȭ����9;�k̩� ;t��1�w��uֵ�.� B�t�$�ɋ^̀��b���Z`��K�k#�R���> ��mo�N
Y���q���L��>��P�F1x�&�e��D�P��
n�v���#�W��/fv؁x֕�qO2Ϳ*<pSat�+y��		J a�7�ǅ-�/�I�x��i��J��[m1��h�<U�4���?jrY�m7S;p F8����AV��n�M��HP�x������meRj��������Z�7P&R�������S�[�ȕC�z�p�G)�"4�*�! �����T@J���6��������V,�|���O���sX��H��{>y �j�v؎���ak�H��~�k
��z|c�+eNx��4G!���aB���+܊]�-����)��Q���?O�j��&EP�Ed"� ڿp�52��b�t`Ep��7�z�_˃�
�r����m��!Q�p�+?=��L���Y�E���ȸ(�RϦëe|B ĭa�I�i�k�̲��N�y�e�����=��]eC�Rt
?�n��X�6�#���x�[���h�
�sy��+}�iW���7���-:l�?�ԩȹ,�e{WJgӦm�<r�T�=���m�j��1�|B[��µ�D����^�l�M(�m�]�<����5	)Pu����`�_��S�gz�ݞ^��+�ޏ�j|���jV&�w'E=��쵒>����X����<8���B�,F�.L��,���3_O���:U��]�/�>��@׸n�3u�������̇�?�c\Ulm��?�M:~�+`�s\�'�� ��wڦ�؅��yc	���8c*l<SK��)�`��'�h�;i��
U$�9Q��h���z�!��_֦�c(���2Ay��U�Qkh�� +�KP=�cdZ�0�ɍ%>�&�V�k�h�����Y+�{m���>��r�NܣG��'�v�s�Rsm%d���,�̓ 4�ԗɌMj v<j�2�~�C�E�I1��p0KVZAL�8�l�׼�;2'��1��kd�7�i\��ⷝ7.v�0+���d0&������� i
֎U�u���jc��J^"��4��<Ζp���,���T�Q�.��e�<��
�13�ll��&�m�ۅ[E�3̔��;<1p�s�]��:ԾmL�̅�򷆈"��]��P|Q�oX���b쎫���6��z�xXd�����C�a���s8 xi�ar�A{yԢ
����R�ۿ��(��~��t�~�#1��(����e�����\��NU���7�4qif%�=a��O�����5��_H�,M~�-�O�{�;�u��ߴ,�yǝ�Xu?�XY?kƨG�h�1zK��ķ������34d`�l�TՍ�΍XNd���%U~{�(��(�B3��o���{>�z �I�bO	5+���w"�(��x��8� @I�V�� �#KP�Ի3֧�^U?���PN���s�s���H	��|!���W_�d�cH�I�� 5�1�]�v�-֯6}-��u1����NB������wN9��E-w,�B[p���ܤ���� lX#K�R;��w�.Q(��@�J\��V{=����y�.�V��
G}c������g��c�hu߉�YǼ��6�JHɟ��Xb�����c�8'�>6�;PFf��k;�܅m,�%�lU?|��u�}�tC���ۂ���Y�����	ې=/:3�G�!���ɵ����D��a�����l�G��s*8�9'wb���S�~,�+���4�3E�(j���Z��6���/:7R��R��Tޥx��b�����TpgI�^�<]ߝY��!���*BpA�^�ŋtJ01@��6���Z#�K˳����j���tF}T��6i{,��^����B���J2
J���r�Gs=��I��E �ˊ�u���A��n�fG�i�=�.������#@�F�#�/6�P���9AB�HL��>�ݪ�!
� ���~��=:��Y@)�%��hu.�����l7�\7Q.�Dݣ
VpO������˅ ��̱w���o�,�`d@V�{%��:)sϏZ-�����3Ͳ������+�"':ު?��80P�.:���B0|-�zcP�>�{u��o#g��d���U�����	�ӚUN�Z5G�D���2	����������q����R�G	i+l�g��n�VDt� /v��X���zS9ꩫ=��ʤ�_�����1-S3�(�aL�QZ&5[���o����P<��6�'-�.��B04-
M���$�TI��{��,��Y�wgT���b0�0����[�ԃ+md_�{p�V�2�A�(�anH~��p����t�����֍���/DMiKۄ�eeE�w��M�w`�uq-��ޑ�_�4g�FD����<���s��t.P}�/�w8G[��rDv ��E�t��+,c8vˠ!A[�@h����1�Au��uf�K�£��CdGib�Y�l��ec�''�#«���r��
rs�9T�p~�����`��ڈ���ͪj
š�=0�/u�?�M#��ڕ��#��\�Q�F3u����� ���j��J���k#����+B~��$�N�am��5�p��f�/|/�{c�\������X���M��a>D�o�]�8��Z�OD�Ĩ�o�k�2P��j�=���}6���{>�ׂ	\ݷs�agϖ9�R\/rf�t�x&�3�|Ϻ��%4+���yF�U��e35�tq��X�
�me�����|�w�9�����p�[�SĚP{k@�-C�>6��Z���ڻ=֍dQ�V:���悑Cެ�����2�&�S��	QY��+��;����>�)s�Y��{7�����Z�\��0B���]��~Aa�s~�[��#��o���/�]���zE�2�G���HC���׃��f�?%��R�=�䢜!�E���4G����P�`VH-����a����
j���b=v�	���h�Y��v�^L+��,yqQ�w��Up�E�V�Q��9�����6���8v(t��ާa����U>�#��q���� K��½�2�6��~��t�±��"Y��b���K�A�����s�>����KKdDcJ�������6�.�/d��+�U���v�_E�w	�������<BW�a�s����"5��Dq���C(�a��v�e��6���D��s����!�|T�O�U���8��B]����P������ �u�q���:,:��q5ͼFG���\{y���T�X�fx�
��'��%@Ef�X�yX�6)��N�����c�Py�(��J�����s4#�B�����G$��D��	{�.7��١z�R�Uc郜�[t'6㎕���Py��1V�(!�"�S��;�.6�0QwJއL�7�b,��D#������W�W�c0��J^Pm(o��meH�N��!?_��%GSaP�j�m�|��I���?��j��mfI�	��6,r�J�8
@����K�^��x������k�A�1([�,��4^�]�3v�
N����_�,�P%
.�z<����;���`^�4��ĭKE	DT�IY�^���X�Ɯ����ћG��jJ������[���^�4�`�tD��z���.���qA��H�˝V���>�ß�sr�6d�]+�U 0�V!�1r�[��*y�x�L&ID�`Q(E��ni�~��i��l����j����/�f�5�݌	�jܢp���������p����j�l�ׇ��_��MUȖ���0�������`���^��{e;5K��*�q��z�f�'��K9�He���}��)K�u���ۿ�9�Jl����.��T�����*�o���GP�	�)���X;��X��ǐ8���0�Q-	�+��̋(���P�2vX�d�Qh⳷�=�7J^�e8kl!R���P�����[��zd鑛2{��NDly,����܎�p�Cm��
�G�R&�1�;�x��9��ܽ�ى�+G�@y��P�t�/y#�����{��Rw�_a�p����h��}O5�G����Q��?m�����ŎK��) d#)!Ϊ��9+b;�f��e�7���6G�b�t�����2�Qk�_�7=��x^yHt��%�Pgj���\o)���Q�	���jJ��-cڔ��f���:��V_�u	`��ԇ, �����G˔�ıg{��~T��uP�l(��m5�e��lc.�!( -��<Qɳ�I<�_RL��,z��+��
����T�xXRW����`D��!����� ��^���i�1�P��=�=\�K�S��
`V_��~�c�>����_h���Gf�=�_���M����^o��'�~5���m�J����T4�|@�>^�>k����3�}
���U a��K8�E*T!ͣ��Z
.�a3
����2~ٌ��ă��{$!���5kn�kխ�!�(K�2x���m�J�ݿ���Olr�K����+dǪ�#0�ekC�t���@2�������܈�������8�D�@���U�����EK�]_O#���X�ԟ����
��Դ#�P����W�8b�Zb�ei�G�\� �0�y�����y��Ǔ�`x	�����p��<EH�V�3ERya+�P�q�PT�|�E��FQ�H�ld*�w�%N�-i��Mwȡ���z>���᩺�>�#1!��84h���w(�>߽���m{�!���5_�^�cY�yܨD>7s�v��� �r�g�R�i��r��4�|��b�����D�ꂆ��h��p,ѹ�:�]����o��)��Ǎ����o���J�8��X�ǀ��ܢ扪��V}�ÜY8�L��=r��g���k���r�%f#oi+K�1�le�+��F~����8֋�,!�����A!r-�w\��IP;�L�l�|'
l��ϐU1��jA���'kb��?�vc(P7f��N-_7L�����ôU�����7	l̄	���N�ay|WRD����G9�%2A���E�Dv����c�_���9���' ��j �>�K����}~#C9cv�'��_���=�I{�i�r�
 [����rV�C��x�\.�l�両��)�C;�~$wͪe�޴@'����c��޹�.�.�&�����#x_��{�:&<(���K��J
���Vo��챈�Ձ���w�K�Zn�����W��qz�����ñW_�L���e��?�� hj�U@���Si�6P���v	^�8֝[^9�𢬧Qͱ�z�#1S�N�QeqT��~MuuX����7fq�D��ذ1���= �
��B��&J�~@�ٓdG��5�<MĻ|���v��6�5!�)�o�W�C~s�ކC��ua���#Ǭ�Pܴ��0|�
V�

��B���Jiy �l�ޅ �^�.m�z��3Ɋ��ֈ��D�����tީd��Re������'4jZ/T�A^�Q7�A�'r���%~`�&����pXj,1����N�E�t��]�ݦ�%7g��Qk2�,�g����@풕
d�
�#�����DS�;�*�b=�#N!���
$6p"��V�k��drT�;��R��auv����{�Z��Xw/G��ov�=�i�T8:D��ǎ��$Y1�X6��[H ���&�S�Đ�u.z��P�����cf(�,�j6�������N�͍�+[q��j�Ꭹ{6����=��@u�=n�T�O}py�;�*��l�u�
��Na�X��ů-���I��TTO����=n��\dQϢ��n���C�'�ǒw��!�P!�9Cŏ����/T�m�-���s3�L�myP����ƒ�>m��`���>�O�yr����%�ol�� ~�*�dU��[^�/��^��Ћj�2ĭ�w⢖�����M�M3*�����S$�HH��tR�����V�K��x��4�u��9?�r�
�v�/�I[u���0K�@�,�j՜t-���Ĝ�ƧŖ�g����}2wE�X]F���:�����x��Sٰ7�=r ԰&�� T�c�.g�Q��~�6�0O���uCc��������@D�	�&���,U����4i$�$e:��W1�i�)�zS�`7�s��OӖ�P>����d�G��eg.Ջ��{�'���o��&&B����>ª^��v�#<R	���:b�0!���
beIj���Y����z_}�{�`&��a�V���7&$w�G��J��]�i��p�0ɺG=zH��T�cgQ�\�r��p/%���%ᚸS��iBK�l��s�:�\�k��t /��wmJ���i��Jd��Gǆ���S� öE�yP <�!�M��Y��E�a�q�;�|���6�D@�\�C����,C�3�3��J�U����"� �����s|ڏ��@B�z)�_�u�e鴩�a��5R���XE�h��p6X�WKU����C?���c�pT6�fNK�K$�G���+�h�s��7(������K3*|����W�Ͻ1���B�X�h��[A�S��;�����G�Si��4\~�L��1�����lg3�ޛ<4{���gss4�1o�Wа��K7&#��j"_*w	�
�"WI޸S]8�1�k/�IK��-ɘ��ş*p���� ����̗"<q_j;�{���cgz�� ]�Vo2/��l���*�r�F�>�wz�kOU����P�L ������
��QT?�昘1M�4\(0[Z�#�h�C��QZ�Q�����M�o�%�v�xn���9zK�����fo�+����-�cF'@Mԃ��Pқ�Ɠ���9����e�O����GЈW�.;�Qzr�����j~�d�
�@$"5�3֚c�P�H1+6N��,;r�ќ�\f������+��0U�����js��
�t��|*Ts$��}�3W�B����)��Ѹk��M�,�����
&�����X�
�>n���QT�T�S�Y�xw��!R��B�X�� =ҟO���ߨ�:�����.�)Qq��/qsjq� '��'�9,�]5xvri��DM?Z\<��H��1�K��ma�W�=�ua@���b�C6�?F4�)�=���5z���
�ĝ���j-+^�a#�6E̎ҭ���^��_��/��$�]�Lh��
��Ŵ�)A*d���T��K`�C6�bQ�+iBr؏�+���ե���̧D���X48�� 3�
���}]gV� w�
���o�3��LڬɃ�Q���e��$�~���<��7��e�X�
�z�����A�p8���%�		�S�d�vJ��f�jQTq�yJ��쒵P����):���T=P~ٸ���0��t�-�Iߛ_}����8��+Ѻ��[|����<���
��F%���b�b2S�7�.d Чj�
٤l�;�e���������w�uRC�iB�ZQP�m)]U�`��Y@V�4i��u��%��֤I9�މ̄�ʈ�,����7V"���'OW���!���ɭ� �Rm������@mu]�LJ 5m��%�n }�@���ҳz�(���h�&���=�{���)�I��UN�Ũ����Fb� ��[�}Y�>
��T�8����> w���h�.�ލ�/�
M�v��}��L7W��X4���$1��;�>6e/ZJ��'�^U��PG��2�䥄�L�[���B���XO�b�Q�a̾l��qhS
��s��ts��x���;4��j���+Ud��lO ��!����|�MO�Ӛ#�:k�4�
�eW�:&Xs�(���{:ڡBCh��vՅ���wϹ�))�
a���j*(M����#>$[����Z��>_м�eۗ�*� w;E�HQ3��
Տ��g'د=��,Q����i��z�>�>!�3-E�V;ym�)���D�,~�X�h!x>��r����+�C���5|}�C4�s�,�]�
:U���|�l�g���i��c��d����|�9/�����m��s�7�'��j��M�+�
�4�xf�:��U��Ub;���K���h 1�%o�����n4�O��~��c�zh��^P*E }m��!>Da����f�i�Dx}bW�����#M�j�#�5��� R>uI�;B�� V�U)R�o�,�8֝�W�]E3V�8�:Vf��1R�����%��+v:���b��-�s�A4z�)ȇ�yJ.S��X(o�*}��
�����ӗ��bf찿b��7\�T-�����Ӣ�,\�nD����g���1�uμ�K_p�}ԄtT{��i�������dT��OD
L�)ݶ����
#�+N�jv-]g��zE�DY�JG(��YU���c0i�m��9���]�����Ř H�t!h���j͐����3�S��D]��۳%�_���̷Q�=�R\�I�ɫ�i"}��|Z�:�w$�y*q^���P�#5��.��%,��jM�$?�!MY�l����c��Q+ ,����C�9�b��{]��i����?�?ń�>x
g���T��_�����:��bYP�˺���]�`��,�t���~��5Q��z<���G��V!|�	 ��%W��|���#�W��fEIM�]	�J���ȫ�f�
��蝠�s
Z\�o�PZSW�[�_�ɾ��5d�>_#$���t=�;�d������?[��\eB��K�뮺��D���o԰��p؁��Fz���(w��qjJq�:��ι��e掞7mw�n?��o��K�5A�W>��B�'��C0�7E ���O�Q
{�x3Z�g]�H<a�
�Ob���Ǧ�S�)���&dEÞI�T�{��� }��%_i&����d��t� �۰��ѿ�Ҙ����8OS�&��5Y��t]��|��z��H��?�g%@��:a�>W�,3A�1?�.Y�/<��z����8�ϳM��N]��<%��Xy��.g���~8�RU�yM��IR���*� �超�;���#�Qq̗������L����H���K#��9���\�XȔ�(����+HC���Jݾ7ʔ0#/�7X~�J�2�_Ǘ
��K��_��#�9w�= ���@�ĦW�Y����
�HL�#{w9z��b��d(��υ���-��^ h"��';���h��Uj�>b�r��vA{W�|dMI6>ϫ9X���5�pK��)���G�-w+�OՆ�@���$Chx����c�L?:XC~�{p[]���c�p�^��(�q�7�ޫّ����8��B"aH�5���'J������_q���h�g��%��z�q�pe��v*%]��
�� 8fZ:7�Ioc�P�7���l��$�\*����I4�����}��!oV�_��v5�~me�Dqp��	T<�r��	��t�-$�T7�C�e5��D��b���:����)��c`YJŜ{�q��V����$p��ksD��a�����k���Fsn2HЩ.Hx8rI���7%\�D�.���Ax�,˼/�JѬPQ��� $�Ӫ�VՉ_�n���;%�}�S-���a/�\�����)���������J��O���ƻ�#��?k�at�C�P�P�y���>0�z1��3�W��F����1�a��_w^A���*1�@�]CO���}�ţBsU0F��%}�/��-���K�/T>X����<j�V�r�N"S�d��O��i���?/T4 ��JK��2WMa��$���,��>�B�Ku�����r�锈"��y���K��h|�$��� �$��E��c6�b|~?%�8)�6�"�f���J�fp�����\�˚t�F��8L�w��j�lT8]���\vX<�0Ov��/�	�ooՁ7�h�e�<<����w��]��Hf8xG�D1/��t��U�^�����8�d,x��x����/�ܹL�+,
�;��2J Iߥ�Z7��4SO�:>������_
�lx8Uy�)�w��D��O�3Zk����t:��2��+7<����+��a���s�m�,e��m/�u=�+4��k�J�C��[��"�(.
V����֓"
B�ZKv�
o�x���Œ���O�L�A�,�r$�0��p'd���vK������Y��#�۩=qN��ȕ�tْ�j OD�=;o�V>�d��9���;�-q2/6���~���^`���'��֏��ʩ���>�(�?�3@��V�8�4�㝷Ke�Ng���L*�y���'l(E�.�A�.��y�$�HU�\���Q
�Xu�����HЀk��3"H�:��`�����H��eձM�,��fq�����>�v ���O�Tׂ5���D���%���YVb4�4��}�/�(��W���(�6��:ԕ�$���o��[�b��Q��0�4�5�d��؛k�y:��n��lq��,��^�l������ɔZ����X���TP�� +9Lx'�	�C  �.�3n�t`Ys���q��6B%<��I���T�E��@�pk��2}�J��mL�9�ƴ���:�mc����7�(��hp�ѝ���TϣI�Ÿ��dB˔4+v/Y���993��Ko�<"m��Ů-fh$ED����,z?����6��Qw�=�M�)wO��#�$���'���]��S_�s��p��`f�����	Mt��t�o�����5��+ǜM�e=��.o|܂���E��`�/�|����V�4�OZ��>jl��F��¢��\�o��Hr�["7s���/\�����M�c-sBx1<O\��O�U�9$9�FR�_��� ��H@{2���P�S[!�adT�	�|� �|�N%p@���D<8E�\؁��G�N�����fjk��V���w��l!����^Z�x��7��k���k̳wy�y���~z�lH�Q��*,ö������U�+�3;U���Zf����R`Xt���R�Vn0�5����Q�<�D�<�������Eb_���2ݠ��&�@��[h�{�� j��u�G^53�?Ɖ�R���N��j���fr@�[=�NP�ӹ�O�)�Z���B�����(p;�i
W�N!Q������,��0��Z��݆bK���� `>k��=a����>lR�4��V���	��h��߆��<�L�TԊW���o>
1�'k�
�*-Q��ќ7�<Y����+���ݎf���Y���!�zY3�A����0sj�T� �=�P�"t�>�Q�O�尓z@
�I����r�	`�-3F��Z�@�p5m0N\?~9�&�����o�����v'P��Y�h��W�� ��Bf3i�.�5C0��xЛ��Λ���*�#k7ŝ �;�ar�h*�T�6pǬ����/
�=E�e�_F���
`r �܋kٽ��d��i�m�;��8�7�Zw��I蹧7�k7���Ndհv�O
G�B�h���G1�r��I>�����G{BF;��O.Ҟ��u����`E)-��G�6
ő��V�^g����*}F�B�&���i12u�,B�+��
���=�Hh;��L�rC7aõ{�D��m��o�F�_s��^�͠X'��r�g� !�?�T�hBa�^��0�1��	�N5]���=���S�5�L�k4[Et���1�^^:՗�a+��hM�AS	VV����kkK�e׼��uO_S�iO�cpE_;�$���ʵ�~��`��lؕ��� J��v�ZU����
������`I+�o��J��v�m�Ab��h@�	/�?ɻ��D�p�� 1�����r�W+��$�o�|�3
^`g �Pr|X�3QLQ��l)`���!Q_���~�̽
bC#K�ʩ���g6ٰ���L���e�͸�L�_����ZF �2��7��H�h��;)����.<B��,�a��a�^�V� �d.����
z�__ ������[bx�rk_1�3��A�A�M���͡n�t��i��Hx�/@�"�Yɋd-�Z�p���ы��oJZ����l>��qi���܁�ͅ�	��X���e )���R	���1kjM�*�A#���QƇ��ub^�8����!8Ӈ��6�]R��<���Rl��ZB�I?���ϪO��\���t���)�]���(޴Xt��0�R��dІn(PF<�5cB�. ���<��U���C��`�8������Y�p/�����s�<Ofu�����a ���.��� 2����_s#s�*��o��墵��ꜙo���~�'@T�6��)ꊧ��/�e)tK�f���$�.�k�i�d�d��n�Ζ���b������o%Mܙ��yV�قl�q�C�w��f;�6KE����0� ��Ǫ$���v+[R��Ɂ�Rװ&�D3P3 �M�a[��U�Aߛ0_��o6b�9&�Q#��=�t��T��h~��>�z��g��g�SH�Bӄ;���ADS���V�`��(�W'=*yx[��d�X=|�`Cٕ]>}=�E�Z_�f|Y����
bJ�Q3#��f]���I6V���#�����}�X�	���>�Kc�~��O�n�!Z����ڑ�����-���$���������:���;��.��4�����/�"P�jh��V{���D�-�K��}���2�h;���/y]��$?� �H"Q�L�:�+1כ�Q�
#I��E���wl���\4��2�淮+�|M����x�~ ���<D�B��]e[��ޗ�>^ΨK��\�K|_i���1���$�| f�I�*��0�c4�
��Q��i��l�｜յ���A��'Z�GX���g$hn���]�m��΂�z@`ȫ�͹�b"��)�P��rj���r���|�$S�y� �[�EZ8~�u1���.y�hS7{���*�zؚ���[���j'�]i4���=f��;��Mt�֜���������n�u�i9,���e����x����.��>�xwI��p��ΟxPF��GNkV$�X:�{s,ꎏ(�R�4j�k�ɡ\��/w��2���5
�����M�#R�Kmè����p/�H�;�b`��Y���]��<���v��$̪u�j!Jdo�9aMn���L�5�MP'��*�~�f�K�E��\��x
�S0)��En!!��hc��P/禞�CF:���g�o�iuӇ.%X��'hZH6'@:);lz]�7b��0=R����|�E�͓ΈC���h�>�� U����N�`�lȵޣvH5U�҂���Uyuh:p�	$=�e��$z��XH��?��d�u�KL�xt��Z2Г����@/
�!Y*9a;��7���<aO���3��ݢ�̿^�,1x���*���P�_Qo~�j�~�hSk����C#� � �d���5�O_��ف�#G}��]����y0�a��8��f���:�j��Q���ye
��������"C��r=���@�ǉ��'��Ԑ�ݶ�߉}����)˯���7$�1��[tmW]��"���i�RZ�4�q�?�;ʏoӴ�0:�l�i�&�e6���Lh�5�)�U�e�n;����[ha��� ZЉ��Tn&G�/�:W�n��; �ނ�U���!�87V
L�B�bWLb��y�}W+"_Pkn�ӵ�qQ�����Y�!om+37�rI|?0�
���ih��iW�P|U�/��Є<ӗK�����D/���)���j��C�gQ�- fpP�i#���Ӟ��>�=��;H���'�i������I�ك�n��m4s�D/Z<q�6�#�TKu^��t��r}�` ٕu/	9S�`^��1����,�\�IA�aA$`R�꒼/`$�6(
��<��l�b��/h���T!"H�q�!о��,���%w�����5�v�o��W���A����W���yL���o3��4
Ǹ�J;i��d�?9H���K	�5����c�Ѻ��8<=>X���X��z}[\\���j��G���dOl�Ŏ�e�k����z�UQ��G��������=�7��n��,���,<�RD��X�PH$�v��_���
��~��e�4�:��~M��	�b}w��c�9��>Ԧ���V J���N�1�Jb��%:��^�[oCٝ��O2@qԇ�ʼ�E�yԫ�^㡡ީv�_t��?�N@|�Ǜ&����8,2��y��}"�U��7J��I�k�Y&Wz���B�#q�nq������У�����ތmr#����~	�s���jY�d��玮�Ey�5��D*u�~\��oR*.%�}UY���I���,��=\Uz�R��\�ʋ�ꫵZ��W
T
�9� �{ ���FҠ����E�Z� у�.�'օ�S�r55 ��Z�xJk���
*�A�s��UP�4��Ƨ9L	�}���8�8&��]�hu�AŜTI������wP��Y�T0��ڳ��R�QS�s))�+W!���@Vl�g�O&�4�j�����-�pl���6/)�;�G�s��(4[e�"� �Q�u2|k���e�u�u�kd�k�ݜѵ��Ounv43��^Oaό��7�6��3q$�&�V	�~P!�u}Q�x�1��"ǀ
а��g��u���k�6�`B�=h�>�E�e�]�\�F_F��gt~���H$ܞ@��c6?mƒI�w]��_"|HH}$ft/�N����=v� � t]��
�j"���A�ft�ܭ [$o�O�����|qZvg�d'P��'ֆ��JO#W�lzJ�RC+�	�S*��g'=��A7�E�c��H��>�'��1�K�
>��Oz���y(��$��p��	~L~?S�č�n�
�T��L�(��?���\�i��0
���*^����1����
'f]�|��n��[�'��2�l�_40�џ8�m�P��#T����b�cŌo��S ?��&WnzҠ!��_8$�~Ї�y�������pr:J���TF��J���5�G�����sB�q���k�F�W�	��MaB����um����ٽx�}��o�}���CU=c�D0&hl�F2t9�j����*��o�yq�#�)�� ̞�MMG��k:����d+���N
m�*���LΤ�f��5kK��`
�)XV_�?�۬x���=�`%{Ά�^-�r>��������9.7�7<-��mt��IR$M���,��pGj�Pk��y�ܚ=� �	A�K�M_�h��?HbL��������)�A����oShG4�F{+�`�r�x�-�]H��_SB�<�d
	]�)�e	���+ԗ&��	���Wu�
˻�V+��5�b�����L�@��������l|X�I��񣎠w6����p�!B�@#ؘK�$�f�UD���C��8X���F�x�j��F�Cq/� $I��!�1M�����)0x֣c%���K�C�� ��ǋChr&1����RL��w���fÞ�E�VH��2Łw+.tA��ă�6�xCgY@ԫ���[���nV�
�M,�* Ԛ������ʑ������
���~lOW�ƅ:�yn�W#ߛ\1#�s�Uɂ�V{M��<{�b��,<A��3��".�*QHg��'�t����!���C�s�zY8ܱ7��Β��ʇ�s!lֲ�֮���c_i��F��Td��טZ��F1��O&Y��v$���ƃ�%���D?#�e;�����)u����p"11U��[���� k���F^6S6��	1�	�D~ale`{Fj�ۧ����A�/�
�fC�t�-��<ns_�xǁw����h9]݌��=U\[�	��Af@ǀaI8�/⛸,;v�X,����l�Pm:��Fi=J��v���A��n��6m8�4{ec�Z�q���Iݍ��|lV9��*ؾ^$?��C��߹�B�!�\>�H~�v�!�珝#�0��KS���3΃|2e��A��.����i��z�����oCo4�	q���e��+��;b`r�D��X���(��҆���c/�><ؙ�y�-?��3�7J�����G2�He�#-X#���x��5���6x��I|�E�NtVVYOBX�~&5l��O?�&�fQ�b>��5d-�3K�?��l3��Vl�T���JRu�!@V�2Z��~�Mke�6��_-:v�#fgS�)IW�V7F�f�-hg��}�|��B�en�0I���-���������䥥1uT磣�Z���
�7Rs���T�a�BsE"�7$�5����P�V�"����F`���yV�.M�-��w-�lAr��(L@o\ϟ���ժ�I���\�g�8�0_h�Q��k+����]:2��Л�t*�{��/�A�F�m��(̕�e�43ڒxlD�q��pĲ�(A"ޥ�bO�r�CL@ݻ��8���ʊj�9d�t�?;����Ҭ��L;��x#��E�n��^q=�ӱ#LCw����'��AQĕC����7��ȷ(�G�?6V$0UW��o,���)�x(�$��Φ�������6k�m�$�� ��R�Pw9^���x����?U�f̈́�2�,ߺ�OT�C����!�g�BM&>(ݑE�*΋��;���<*4�[֢��\]v�@Ϙ��u�	��Ϻ.{|йY��\��R�"��0�H�4{+�=�������@$#�H"��*�d��+��|,)��<��Q�K�}p)lC>�LȃسЪ�S��m+�!���y[[����W�d����
���DťM?p���E�`i����0�k&9jV�F�ѝ�v��h@�?�&)��G��	��0 ��p`��JȮ�/6�y4�9��(���eV�3ћ	����/�h�W"��
*[���Y⺲ƿR+�C�rW
)�Y/��%�6���������t\����Dv�&�Sۅ�ķ�{�wuu&�o����4"��1�}����4*a	�dB׍�yBi�v^j��ϒ��b�F��eM�����>��ͻOBw��j��;��o�7�Ⱦo�(N:Ik�<��1�)�����?����U
5gR�����Ҷ��<^:�r��<���<?k߮6-pZd\Z|AZ�a��%L���[䚌�V��d��W�/N��Hޏ
b��$z�Oj?F}�E8� �0'B���jص�&�$W�I��Hk]�߃y5kL�X�*n2klrq���!��~�Cxb�HᄿƂ��9�3 ��g}�4�o�J,�*�3��4��I�|�1��@�R��V��I�V+Sq�"3Z�����̰�đ�5*=�`�
�]V���-{�/q=�~9y{��R��T-�A[�o�)5rqh�Y��5��u� f�C{g�� ��h������hP�T����2F��+d;o��Jm��`#�;���B_���p�!�gX�M$W�\�*E�ޫ�J(#2�ĸ 쐹�%�,Z�{�����߹�e��MXV�DQ ��(cljY�F��]�ǘ��Z�F���@������z�.�\�L�-ޣn�Z��� �<��wV��0N�9����Q������%�!]��ո�`%u&!G�ך�����3C{mr�sZ�0  ��H��T�>�Ae:P����R0L��8�%QHkw4>J�J*�	�O�d4����:�>��xl�
$�vÃp����a�=N��0�q�[D���uq�(i�<3��
`���7��#Sd��Y��5�D��7ga٭?�Y�+D����%�WͲ��F�s=ᥬ�y4�"yN��&��2���^�5Gԝ�|���ܸw��fA�jk�Fw����^���M]&�\�!�'}_�xX�-d�]�g���\��� $)yIoK
�0fU�g#y�ˡ�ڦZ%0id}+x,Qt�r�<7��~b�	WhuW-*c��ZI7�>)�/������5��I5)�����<��"d�e���5�Я��V��X(�.]�r��aG��4���+�$��܀q�jQӲ���nR�J;��Ga���Ŗr�;
�P �cb�����7��U;#o�BH�G�;̎�d��Ŧ�i����=�9,�e����Y�(S������7 �Uε��j�b�� 
Ϩ&R�o�8GɌ'��g�]yKb�e'��[$���y}�#�=<+��w�׀} �>��5�hh��'G�E�@�;bȲY�N4ض1O���9�HTHS�ҨLaO��r�R��݆���)�j]�S9�ѫ2��e�a�4S�W�A�г"�g�����S�㭦I#�O7k�o|m�f�}�-��t���9�3?��
P���~���N�7���"$��Sﲂ�a!O����,@�@ǹK���z{�o� �o��~72�	'/$�y�(.*�Z)C_������޶�I��=v��O��@ʂ�A8��q_�Ժ߂�����n�"O���X��doHg���l�Mdc�m�ŦM���ո�/�� bP�C�i�U�(�����qb����P��c(�$f� ����`�j n�H��Ls�Yk���s����N��b�@A&^��	|2�1f��3��\����+p�י���Zw���몕�Xn��W����Tc̼�-g���##����UB�%/��6U�ٝ����"�|��a��24ی�Lc����sL�������w��r�j>!���QD�c_� $(��U�N
���5�����sKR
mf�)GL&13qa\�R1~@!o���/mpm���OMZ����%�I}�3��`K��=��/\a���G[79���ow�Za0�����*�A�0���琎��p	j�Ķl��і�̔����}�'��1��"<]�h�����Y5������"�0s#ۥ��0o�-ĳɭY�t�8|�����f+ܠU�c9�%�)�n��������ᷲYV��:;�r��RZ��
Z}RM�����7���ə/m���{��PX:�����(��(2[�7�A��ͷ�.�ml��F���dRT���$,%��=9�a3R�s����:����#U=m%_EL( E�Oj_({��~U����Mt��$;$+ED<�+-|G�u6����&G�	�K74gçGW.��B+���Q-6�H�q@���dC��f�k�ɮY;wP�[p��PS���)z���a���Y��,jW�0�ԏ�ˑi�Y7偂�З�1���Zo�
s.���q�k}�iA;�'�z��XU:��$N�[/��5=h��H���,�����ro��2	�&\�tN~�O *\����X9bq/X�/H��zp#�y�k��.6�SXW�ʣq.�ʵ�f$��$Z-�\CKW2t�9�p��{o�Z�\� �:�eAe��F��p�BkI@����H��R��i@έA���J��:H>rS�,Q��,��߭�$�w�[fSL���I�>ok)��v���:	����/̖z�B��7�a�3���	�o��\N�~��ŵW1C�$0�����d��7	}9����<F7�."�5�.�����7����00��,��$߲��8P;
M���]������!�T-�a�X��[����k���Pt,�.�γ�|os���9���}�a؝���Q@U�_S�.�q��#
5:ut#R-�B~i5\)�O��,��k$Q�#�_��u�v��V6$�)���=�Nx���@idYS =�C�p=}�DN;�[�7������;�I����җh�Q�����#���A��M*�~r��[�]^/��ƅ�Di�,ͳ�*�a�}'ܘ(g�}��������t���kS����b%�0�"�֩�����6�ؼ�y:�GOf>��(�f����\�=B�"�J�yLH/���]�����T-��_�}a27� B�f�~���
�
R"A�WC���ǥ��:޷j��g�
��$�躊]���R� �Чa릶��k���tD�{~��UyKS5���aڨ�h\l���:rQ�gOo�$�
�M��\�4�2���*����eM�
��zy��Q9���;��w,!��g��,|�el���� Q�5��=�h#��,Q;l �fw�(��Sβ��lÝXb�]^��`�GS�)m�qL���4��k����e�.��[&_F/,cR�Vݟ7u�_`wxJ�bF2�lZ�8uU��<ӧy�N���":
$G�	��k��q������)'�#BXh֓8|��SM7d��j�����*=�x"�`���f���`K3��u�h�$0�YH�p��,�x�?Ć���
L�$8Hb�p��W&
�!.�\��0��߀cUX�v�� %�\�2�'����&�bi�䚼��u�c������vae��p6�9�Q.�O���]��t��b�c�>DK)
��I��Yć�RD |?f�@H#�e�w	����z�=C�%c��.|���F3yE��
��#˩�bu�M3$����|y@��{�Z�OP3zU��f��OH�F1 !�����((a=Ye�LM��z�+�.3E"���Ǫ]�xX��ê����m��&�2��k�\���ҭ&���Җ��bZ�[U-m%q[�fw<���ղ�iV�Z���
�O_@�W�z,|z�|��yh3;�������q���b�PG����J��8*��q�δ�>_1e~��k��� �z��߽�9x{���a�R�3*t�g����:^����]�+�qҢu�c�����
FH�� �@?Z����S�hM��۴��u�C_C���θ�
v�M�����4�%�Grb������_n��������x�^�����"��`�j�y$Σ��|�Fv������kSQ#��Z�%��ū|ոۚ��B�i��IM���5P&Ow�
Մ��z����b�2o��;E%�:,!�wg�%�_�G�S��fG�QZ]Y��6��_�w��:��_J"+��1Q�Ӡ�i=���-E
�3n��T���h�d�"�WK�&�+����-��_p4Nl?����ED� �t�
z]&�a0VԜ����j8C	��c��՟Y誔�{�N8��rd�����gLr:7�aF�U0�k����ػ`LM���	������<A����/S�?EH��IgOr�� �����<��P��̎M��=cࡰpڐ��I�1fe��^���⢒�
}��2��� ���j����-<*�n��]�����9�l_	g
�|���3�k�.Ϊ-f]w���)�[� <zG����I��t�uv������~�Hl�
{�TIhf���cbZ�Β��A󊹏Ҹ�������g?�+��P&�E=�h�3�т����?{�?|����e���mG�(-fSД�&l�0&N����F���!Z�
^hi�!<��u���; v�c�k���z���T9۾�S������z��R���1[E���x~�X��$�V�����|�ex�͝q�"���Uh���l���Z�u	f.qt%�b�WWmLi��)�F���e�; *�Ν��L�\��d.
 
�O�|��6���V�!�}S_�;^?R
�[�<@�Cz���v�)�	h��{u�b0��J������\Y;��ו �%I�T��3^勁�<�ڛ��p���Z��Q
��
��ZdI���D�q��k��o�R�+S�$��m���Mu��WxDȍ�E�D^�����^���� *S�je��}�,���mFO��Ϻk�2|'�u�����M:T��\���ܕ������ie������{����7�5���;��%��痾�,��zq�5+4�{-�ͯ��[���a���$��3�������^�H�^��ٲqm��j"����Sj������(�s��^Ҽ!�;�L⃂�����[e�0��.�k⡻���u#"�� �*p.�>!Lș���E�h,�CCE����\�ʶ�(���8����r��M�D�gt���Y���;3��{��Ō���
1E
<�A�!��ӕ��;U��@���Q/|�Kƣ�l��/�lg�1��0�XRɛ���g�J=W����lu��0��g�(r_6�z{� ������p:5)T0[��cEF�c�hE��������QFW��E��u�&���qB;.����n�Y�]��
k|����
�$�t���%�2��C]94���9�ޫTc:���iӣ���B���q5n[�;5%���ZodU#gJp" ��ϘT�|�1�D���+|}.�x�u���������a��
;9�~��:��$�k�H��H�$C�Z��
l�Er���"gs�D�Q?�5�'��mJ"��w9���<�8�N-aq�)��>Mm����<�52(,}�K�HKZ�\,)'n%�V��g'WO�qAK�XěoF�$��\v��������'�oj��=�Fx%-�[��em��+P�C�R���.BV�̳�0���'���f?�s�ʓ[ԋ���Ky�pRV�x��A�#$�va�3l��٧M�Σ��0��Dl�.�2i���X����0�������$�-�_\����AC7�M��
g�F$��G��ϫ�w*(����Tt&Y�C����1�e ө�8�\bw�R
&��]�ƌ�]�>٤�s�U-}��LT�p����$e�[��iX4�0��
-�7!�o407�����"R��l e(��D�oAn�i�@�t���lb�yP%�b�65�B&[~��h8�3�
��%	��>L�;�W6]����E��x���D:��pZ�����b�HИ������8ސ�C�^8O�� P7%�B����)��Z-�;�	@�M�3[/��Y�,���ב���\Y㐵2Ֆ���
,�^�C4xSNT�
��"Y%K�RA�y��!��t'�mJ�!��d�7�6kI�gրg�| �R���sV��!��fu(��x���m8w�N�R|�O����-���HV�r�̎�c����yb�����%fU�g��{h�P�|��jGi���z5g���c�]5������>n
xo�ll��];�Hd�7��ӟ�4�lH��p�i}I2C�˳�[6x�y���d����Vh���[ɋMU-FU���7]���ցƧ��H��Kw�[?��F��!��JQ�ݽ��AG��0a>g	N���>&���V;���\=Vٶ�1>��������.:��&��Gڝ{������<2�4��p)�Y�ӝ�R��竃�u��~�EQ=�P㘼R�O��'g��������d��~A1�mM�,�����q��
G5E6�
���_,������2��+�1�_�r���������,1X�]�l�e*��<]h=^�iyo�l���S��~D[{�I��W���Ӽ6��dt�Uh�|-���Y�oQ�o��0)k$a���r�2����d� 6<q�T�Н��O?�χ���u���vVD�ifXo�
"�*���?��!xQ%�y#x�X�{w�߈I�nu�� L �w#�Om�í�(���[��_n��=��J4��1��I���8�ǀF��1��);�p���D�uL4BS�Df�;�{$��O�f��T�S3���M벧g�kK2V�^�>n�(>:8�K\��-\^�ӑܱA��A
 %����1q��s{���Ci�O䚾��O��$�������r�";/{�#É�rf�唼��;��=(Ry��*���9�FvVH��-�qX,k	�>Lz�ؑ����4f
��؇��Y�(yi2�����EMW������7����W�Um �-.��z��%&3��ߪ�
�ʹ�"B	��<vM������M|IU��;M�#x��S?������K
�)j�M�7l�N��}�bf�B�	y
�F��<&�A��]����`%i����m����J�|���!#w�v��!��|��`�-�T���BG�փE�G�{O�zI뷺A�(����N!�vK�%oI��d󉥢l7���r@�kREև�3���m��/��7�[z����G��J�(SƲ4Aym9���ֻ�	TW��)�	�63�1�Ƶ���K/ K;*J	�"������W|��?Xd�鲽�!]!{��
�b��z?a�ǅ)�uZn�TpGw�n����ق�ۥ��)��yȃ�Oҵl���7p,��Lg䑿�n���������b�(�͗��Lf��m�7!&I]U��7t�2�Ӧ1R�V�_l�	~p|�����Ю����p9�~�;�m^�!>�QT/X�w��d�t�6��{/t���[/�λ���Lގ��Nh֎�|aQDj,
J��q�G�
�C���c]�ԓ������֊*3���C}���	��Or��(�5�K��|�O,���y�e�i��4X�@�5u�g3'cY���{h����1_���
�)#�I��a�������N��YbU��֩�wp~W�6��m�m�~[%�i��G�����_5�W>Hu�>R�a�� ���"-���{u5��ߨ���������Ӱ<��Pf����e�|��	�JR��W<
F��x0��ȅ̃_��I���ޅ�^��&Z��}E�Jq6mb�;�'A�;F��b�����

�\R�L�X)�
MN�|�a����4D�[�����=�Vs���SmG0ի�]���ј�m7�2�6֜J��R��lM�}\�p��}��ɓڜ2{2&��Wtu��Q@$X𑡤nq@	ejĕ�a��{�����4��?��H1��,��+d��c�u�ve_(
E(����qV�2��I]i,�S⤽5�Ҝ�Mj������bW�+�<D"=�����`nZ�n����b3�%�=��q��7H�VN�Z���bT��t]�@3Ƨ��"�ʢ���
��Ėh�f$6�ט(W]�Q��ͽ-С{:��\4��*'��i�n\+�p�m�9ߴ�-ݻ�*�H0�����,�Kҡ�
�G��MVkM7�6S´�A�|��6|`������yc�-EwG[}��z��o�Y50��C������,�_�]� D�׺�Hi6�;"m��n��i�1�<�Y�?c$�`t� j�������%eU�C�4���	 ��.,�����%�V����m�ٲ��@��Xhw��5n�ȸ�����n�\e�)xd�_��E;��cXMVZ���0mt$��������(�����g�
��8̮�CR�^gXA-.��|��1v���� ℍ��4��S��J!����:2���Ѧ�<M�=I�~w���P�6��(
��N�Ǒ6^�.�l�c$'7�����@���tsbO3�c���w�:*Qh�������
�zn=I�m�k�e����d	k����(_
4�՘Ħ�N��n��=t��DKI��tt�W����zK�&�\g��l0�GVd�L]U���>�6��
��+��yD�U���L6L��7�߆n�_�d���ʡ$��Z��
֊]����F��T{�����A��*Y�D��CK/�"��A�.�x�Q�P�gZ�gУ"��8�b��0���h�`�����ھH��W��%��#�딀�h]���*1+�t��p�<�y.����A�t.j�?�����2�WU� �𣲊��:'�?����X$�|�Z�ԟdR�B���P����oƪ�^�	P"�(_�۷c�n�d%�fRQ�W�'_�gu
��,�`�+�y��6�t�܉`�'	
�t$�i�̽գ��k����?���{�|bᄇNs)`��L������$M��M��?ҭqg>�x��y(F+�)�"	5Fh���V�E�U-Q�2!"C�=}��`_{h�d
v�t5�e.+�;J�Qg&�����?$�wl!�
��9ձ
�D(��������&�1+�d�x�5%���=����M��#�?��z$ʹٔƥ��ٸU^��gsj�'���Z����w�y�����F�@��W֒�|H�>�'�VF5ъ���S�'v��@������Z�Ч�z�&
���Z,�#�2pU�Z��-*�n:�Bֲ�C���5���v�^��{����l��ֶ:/���}���E#EXU8{��'��Fq��s3t��f�Z@7�%��:�/�'F�z]&FOo�%}x
���Y
ĕ�xŖ�䁚|�� fX�2|�j͑=Y0��#ޕ��:(�{G���1,"S'�RW�*d�K�g�Y�� ���K�uO�z6X{̨�{������(�+xyñEyM�a�dOvq��ga?��Ѿ�b�H�$�=�~.
ك6�=��13�3$�+��#�>�����.a�?���X���j��J��f���Μ�V%g$���1m�`�|�����v��Z�;O�ZS}]�S���cx�ak��p>:���j1x�~��W�������s=P�lٗ�ng-{^	�f��ҵrhJ0���T�J�wcϣx�Uo�I���f�OCx	��~V��]35�ƃ��R9�*��v�{�f6Cn۶�G�'��߇;���zKfY�[� :��R)��9���Xzm�؊8G��0!�!=�K��.ڊ����F^&qu�%b�����D&8�$F���t B�l��tQ�ڵ%1��Qbc�m�I��;Ě�
����1�JS���m���~�y����n z����|��k������C/)����������J��l��}HqB̷��s�\��-�,�B���MF�G\��m�ޓ��	ݐ����Rj
�9�!��М���8����ǀ�,�A'�@���gR��*���&��z!u��f�s@�d���\�
Zi��I���+c���DU����]\~�k��եv��7#���ú����T�\Zo�����a���������2;�{k��ʏP�,���*�8NU�G����P���jߞ�%�I���;|�g>w�
�������/b��f��}�6��?r�0�$�A��#�j��&�cNH�����.�7!����z!���ǫ�����H�w������� s�q��icx�����u�6o��H�(�V��$c^W�:�x?-N�o۲8�#�9Y�����Ҳʏg�FX�p���b��WZڏ�SX�}�}x?4�Dԧk�׉�J�]���D	4�W��37�pV�hC"�L�BY�.*=�/�������<|��.(�̔,����@>Ke�u����zs$z��[�VN��|�n5`v5�@�G���/�� �s涛oc��.!�(��)���Y�̣��}�Z?XG� 'C߭>_n������ݳ%7�5�����K+\y!� �乺�ed
��6,��
5X��s�_j6�6R5*g��4W�4��<�f{ ��e�������Ȏ�{�EJ�p�Ec�t���ύ~8Kپ'�
sk����G��>.�B�&���mi �.�D	ZI�L��&w�B 2>�{.D��NǤ�X���E��c4ϚYʹ��
U3���Hjq�YP������Hy��;~�4���2P� ��;����D��"�uMe7�)�e�����}��Y_�%��ؿ��Z:0���]_
#�1�$�Ý+�J9QV���KWV��ƫ%q�^��SQ���:�\���0�AI㤥=��Ui���[����}�¬Lo�h�Q�&@�D�fA�������WV
!�y�����K*��m&�b{��dD^չ�$F ������su��3$y(�at[�#
�%ݰ;�^Z���źm�a���I�{!��+��-�GS=U����y�'9|+6��=c���������^wP	f�Lj����w	à?!�8<�ޤ�֒z�f��R��D������M2�=Y����������'���[ɇ��� �A>��x�_r�Y�v�5"ܛ�N��L!唴ǫ�M$�fom���e��������D������n	u͑a��'�LC��,ٝΟG�uT��vކT ���5��m�Y#�������n��?EqF��D�0a�iP�JD{��ҁɃ��y���=�3pc�\���Q|��8�a�k�d]&�cT,�u��R��[���^g#�L�u��ԡy
+����r����po�w�h+T= 6�ps�-�ܔ�����
������7�PG��࿀�EL:LG���V��1�~�����d/���L��GE��B���!hḀqs�B�Rs�yXg߫��`�'P�U~'L��U&���F
�X�#�J�'y�&�˞�+]�ʑ�#��*�1ũ���
����;N�}V8*k�d@�a.p�q���_��s����G�"a��DMCt��]�
Q;D%"����WɞD)C�R��G�Gԕ`'��VYT�s�ezx�<W�YU/We�"�K7�0��
���
��c�m�z;�R�}6�v��و�O.�y5��5T��&�2H���|嵓��ˇէ�<7z����0�WS�?�����/�׏6�G�Ȓ[���l���)�� G+������
G�Z?M�~
{>>y-{ޓd�z����� ��'��rdA5�8Ep�zBz������2�m7�p�K��m��a�ڮf�q}�H��hTL�1*�1�+y�'��������
���M��Q�p(yq���;���rQ+4���y&ؕض{m^����,�DC��:��s����`���
Cҵ�x9T�&H�����S�1���G�̀��(�[��)_������`�X�vi��uPv]#��1Q�2��e��<��ˬ/%;�*�[�J�߱~
����$h�W$����f��2�+5��h?;h"�'����=௸lX��gWCRL��"���)�E��J�H��d#?��	��[��_z��Ք;��wa�����qÇ�G�w�Ȩ�x���psߡ-s�N%\��0�B�SbXR�wW9 ��W~��z�N8,����(��\���H����P!�;it��b]�&����N`�(�0i����g�F��7�󅪯�Z��ZM%�7�і}�Yu���H�� ��zr�[�8���.����'�1Z>Vi��śx:ϑ�|�Z�۽;s���|Vm�L*���԰�ܛ�{"X�^n�
��|C�2�t-tDip"�
�u��q��&	�T����J��#K+\�y�:����&�e<�go�ym�腡7��J�g[T��ӕ[f������k�{d�P��Q��S��i�{�����)�⮁��f�\�x�=��v�S0��vت�D=�<[���w!(٧����5����O��I/�����
��^���Ȋ���R�W?���j��W�������;��PS��Dm��Y��$1��5J����� ^��.�,���pſ��r8!Ƿ4�0�m��	� �K����i����}\ԁ�x
�
�`#�а>�*�^�Р�U�~h�R��T��������v-@c<Z�f��ԋY|v��fY�?n[��1j	]�B�/?Q�k��.a�\�|�^zHZ`3�gr3>�<u�Րt𯭪���Y�T-L0�`����r���wC�3����e�eᙖp���-�Sj��/��l�����+ �#xC�.���1�nT&��n����xa&�R� z��l�"���'2-0�=�\������z�+@�59V��&�����(S݌3�p��ϫ��v�(�ĄB��]��5~
�w����-��љF��E?5����2~+	*M��ڎ�"�6�C%=O�
$�
�n�9׋�
��Jj�:U@F�M��	���L�i�DG"���]}�l�YG�Gv����+����왆g������XT�k�ȥg�s�Vʒ�e� ��rB	��e����2P^��;��5Q��{7p�w�u+��|+�Y�M��q�'Ӽo#͔4���q�'Cw�j��lY�����CD�"(�omrt("ҷV$D�j�Q�����B̑�M�e"�y5j˽~�2bX3���f�n�A��n
��������
�����feu��G�O���Iʒ'ʻ�8�$�o�R�	g�s�7�х�њ��H|���&:g%���
�Ȳ�쁠���x�j�:d)�H?0Tc-�|M1�;W%�k�4���F�7�
�yN9� ���tG.�
�h�2[�8�7�Qy�	܅�T)�^nl�P�ޟյ6V�@�!�G�%Y�A�VC��o�H���k�:=��rٮ�;�L�yg{O�>A���ȷ��F/����NӿM8ג�"s2��`�̧2�N��+'gć�s��\�v1�~݁�&�bIL��>��%Mm#Cﷸ%�O�c(;���fUb.��ԇ�Ɗ�Iz���31��XZ`}㦒?����d��	�"��nu�Vg;@�=r�2Vձ���Q%��3z5Եa��;}��2k�a�1��n�*z�/ ��2�}�����B���cn��n�P> `�������M�3Ϩ��TEhy�%ƭ����d�._C�`K���(
��XM&*P�ٕmVv�����fc�36�ͨuתWR�����=��}x��r�pZ�Am�-���ӹ��6�����k{y�8C��bh�79�����&R�4h�)�/\�/|�ee��b_Lň��}�۹E>_lk[t��Zs��`EN) �
�#.�8S�)+v� � �Z��9=���A%5~���yv
��;5#�x�'@��c����gkVM�c���#�9�4�cz�4
�-��\�UVB8��t6���L0jl<}���ץ���%M0��O��C�w��N\�[;���C-����B��Kˆ�2d^�U��Ue��sOu���	�ȠcK��	�@�p�#:��hK���f��:�3i�
��pV�H����{`����X�VqYI��%�ё��4w�	�{��O����Q�Y�̃��m+Y�tdt��D���a!�Ji#lg]	�/��y���ǍбU������+>���L���~�T��A�N�8�z�k�U$�dңO���5�[���@!�L��Y��d�Čh�i�U���|y���~�]�LN�d�Ɣ�`�we�Krҁ�r�ж���P_y3k���@vDEoZ��NL�޾�όV�iTp�J�"�[E���媼̊���W�&5C	���=��+��3���.��gKz�NU��m�w����PBis �s�v�ք��U��+}�(C��Kw �+n��D�~M����A 6
|mnvCo�� �,�
��֞��;��{�usԴ���E��c<��:
���J�����<��k�4�4S!�M��O<=;q�Қz���tg,�A�����>',Nc-Y��U����u��Gx����ቔD��1χ�Qm@'/ͳ�o٫�n��Y��]��ɥ����b�cF8�u��m94���Ł��T;�&��X\z�
��p"�̴6k��������m����0��H��bN�`kM��4�M�?��]�Q���sq�ٜȰS B��Kt��f�R�I^��n!C)
t��Y���IckJ�pL P�]9b���T��I����=���{�X��V�jª^���_�{�e��>��!�i�C�9��V�x~Fk�::�H}�vH\���s;CX<�1��*Z��̣��
YP�h�K��a9�xn<�
NV��Ơ���Wt�B�)ѣx�-,�!~����_��Y(��������r�6<Y�.�!O�݊���.P?�p��&�eY��@ �����p�5���\�.2��k�T�ea{��-ػ6�Qr��
�etI�1D��8���+���J�$I��R�f��4�4G��.���P ����wf�hl�>P��P���!�咀!�`q�O~���|]�� ��~�vU�B�Lr��e��E��EY����(�|$&V�H��Z��=.��	�OSĘ
h$JD��(*߫^���U������<g�R��$�cu,NC��|�)嚕}��o@Az��=T'��i05>��
 &�P�D�u�
�fS�[����1
1jV��y(.��3��䢯�t�|G�2�狢
��J;li���?�X�g����f��g��w}�Y^��)^C���nzdog�=��=m	��ņk�lx�JŒׯ�v/�]��c�z'�����.�V����y�&��V��݌�}�RN~�ĭ�KK-p��
��qo��BY��l��P�>�?��F ��'��� �͏�xn�p/l߱�W@$�c�\��ϟ�YR����rig�2~,g�,!�e�^?�
��\��A���ֺ���%���x�tߝ�sV���{�.5;�8�`Н��R���
4E����SY}��F�~��������	����O���hd���R1��yM����n����tb�\�<�ڰ`�����b�-s֍i�N����k�M�nBa����$X�ωP6�~(ȥv}2��\��4���T����E�(<��
~q�{���V��sc�O4�/�jg,(k��(g�(��Ni�k�^<I(>�:������Q/<ߗ9"�8�l� ��O���M�I�Oj�d��y�
���Z��
�ˈ����6t��ǈ�g�B�h�%T�c�����P�p}Rl��\�z�Y�[���cÞ�`�$�L[�o��b��[�'�0�
b��)��/܊��~G� �8mR� N�_F�#����T�������;o�1�xn��3��W
I��f���ch�^^R�C�#�K0�9F��6j̈́�ʿB%(v��g�5�X������\T���P:D�G���Ԩ��nr���e0�D�d8d9(鹂 ���tK�5��r�v���͛�y��>��#���~�[�"�+�2���e�3؊�����x֠�9��{눒٣�@�4���t�|��2�`� jK� ������ϼVri �:�}�SX}�/��Y�)v"��h�"�]I17*�.�g��[Ŵ\Z��>엡��D����؎ �	E����� ;�ņG�ߠ�&1(���*�Ʋ����c(d)���L-�@���q1��>g"�IZ�A�	�	�9��s�64u�dCup�=���ɏԺ'i�(���?:����7���/A3V=�b�LS��m�yf$I��gr|�=ur�N�����.�u��׮�M�j������E��E���M� �k�0�	d� ��*�Lr�b�&&���&t��Yj��3WI��:b+O���D�?��&R��������G"�i�l\�_D뢊~ Vp�q$�+ms}�_�\r�L�������Q�K�Y>{�A���ծsZ�5@!r%���ڌn����c�s�ާ5=0�t��u��5��L���k�ۓQ ѵ��[�S�� ϡR�����]�C5c���R:��8ۭgB3R��-�eo�?�/�
O�4+3Z��2?4�)��>�����X�#�ـg��p��r�D��N��'��^��v`��Wi��#5�J,m��:I�s���]�wufR�N�Zj��=�
əAw��D}��:c�{N�yІ���h�td-p���)����;b� ��χ=0?BaW��
[_ǎ,�dU���m���;�z�J�1�cL�7T��⳷��3B���|�$bl�޲z
��*m�{����� �hJP[H\w�'i�"}5͔j;��?�Q�ڰ�F�8�*m�ħ�
T�@��/�S憦M�Ai�)]������aL^�
ϴ{֙F�h��H��'�?6���.�c�t�=���A�;_��pe���B����ϲL�w�*51�ؙ��U�ʂS@2��g*L�{��V,�%>�������PD�����ݙ89<0�܊$����{��E�`�\���������� S<�7z�I�}�r�����U �}Y� ���T"K��z�,�j��j��X�w�h�U��b�e��95��X���NA.+��T��^���rPl\b��m��$�(�3��
61�z�Xj�%l7��V��C03�����I�Q1(�N@��2���@0뵊�3�uj��� _���>zNW��[9���1^-XP|�CƟ)��R��U�=�H=�u<bP����*�޸��J㩕.!N�~��5H�l�IO�(��(LĚ��
\�Nט��f��00��{ϐ�����@�'�8`�2M��shNeg������\�H��hr]L�d����A3��`*�H��	}9�����_��Y���q�:��ۢ�Y&c*�Q��Y��E��i�S-<��xLkQ��hh �T�Q�;��oG��e��}=C� ��.���1]+d(h�P�~O��I�6� ���Ŭ�׍U׀ɱuϯ0���Z1��������8��G�.� �y?l���6K�KlA��rK�"��W��]�xa֟��P�z���l������$��Q$���4@���VA
T�X][\D� ��Ǧ�0<�,U*n�SX���d���r`
#k+��-�}�
�Х����º����P�%�ʲ�5�+��a1�@)��+N*������Z�#J.�)+�D8����_�������m�X���0�J���lb,���W���dn@l�ڶ��u����-�����VY�-U"���d���D�4/�:<���^\���~�Kd|�	9�}�藚ƌ���
2(��#DI
>�M�9xs��ӭ��Ҁ�%�L�1}w{�}�²�~I"���>�S�n�/�\}�Sv���̾dQ������.l<��Ӫ��$Jݥ���Ӹ%�?��A����z54衂�hr��+���1�pg�f�@���Ju�?P��ҕϏA�$�N� Lmn���Y<N�MY�
�w��M
�?�QpH�ѿ���c
Qk6��s|��SWh;�����t9����IV7z�MV�|�����گ����D�(��,J��+#��S�8�R� �S_�>��Xdu�����b�5��������h�dh^����w>ze�Ҥ-�t"��Ě������%>�p�c�Th���ǁ��"���F��Ɵ�_=O��u�VϦ��+(�S*F5���%����*¦����dz���`��=!M1Ob����f��H\,������<���1L�s�wo�L�W]�������:�"�i��� �j�4��0]jN5�UL�A�R������ݣ��؂S!~
�Q�9�L>�}��.W��3W�(Ԫ�ژ�V����
k	�T�l�1ʭ�꟟e�(�Mp������FH��,X!�`ur��0�K�b�Q�;���@�oLHlx��������-�#A��vT��/�~��{�9,�48��Ӄ��b�)&�ʡ�'WÛ��FwLl������9%�}��_�F��(���:]�+Ηo��LJ�D��A��xq��J���ON����+m��3��Wls��A���N���յ��L�]�6,)�����w
�\Υ��=����{=E�}5NՄ��&ki%"�b��۾r���X4��_�l�p��O��[�`�l+,�9#I�A��.).^�_i��M�_!���#^���j�x�K̈́��ӫ�q�J�?��/C�a��?����c�����o���汒n�2To3�� 5UR�줅$�D�;k�
Jb���^�Tϟ�T��=��kB�
z;cjw8�

PX�ث)�x�k��3�	�W�ᨏ�������zc��z?I6n�6��#$$~D�d���ּ��93.I>��hg����y�Q���K�K"�<
�Zf�7�6��ޏ�#+M
@f�9�Kb�,Bꕓ:!
l�4���BR}�uN�<�pbp�w���m�k�[�3��3����y]�}a��2[�<=Z {�i�hGɲ�z ��JQ�Nhimi]F�of��%����|�-:�F�A%^����<g}��{�HJ�Ӎ�]��.<��=������+e�*��^C�Qa+rm�gq����[��+/�^�l�q�Q��P���J����ɦ��n��c�B Nr�G"4�>ׂQ�ɷ���S��}�TuX�Q�~)��!��2Z�3��yƴ�|l�M�U���8�%��A.��-f
���(V�tpA�M���*g�����u���,�<6tl���GV�dR��=H���ÿxjj�r���*vN����w��;;�u�}.���E�c�(��v�+�D�k��|�PHO�^����N���f����BH&
��C������ȣ��,��H��)4<8�>^�;�"2�Z��L]g+��wW��B���[��I�m����6����lۉ����?b���:
5 �
�o��0���[���":�����|�@��n��7҈J$
iX��MVA�3����(Hvk%�,"޿�������%�}"�v�}��c�p���η�W�zG?��p�/�6Mz7��(զ�������b�Z�����F�c_�cp� �� 6i���&>pǏ�"-h�h%�Y!���$۳a�6 ��Y�U^鲺􅊐���ƘX��e���I+9Hmf��$Y�#�y�q��O���KAh�V�\CP$���).�����+��&�5���Q��HK�f���R4 J!�G�s ���3�JE�k�O� ��h�-�i���ϵ��c��:���~(�Γ) ���V"ѬR���d���M�ʐ�Z�����q�?���e�ϐ@�LjI�}�\XS�%5|���V�
0�n��b�>��Ҋu��A��/�؟�5֘�\��y]A�+�pi��Y���;���VҶ
Ҝ%���m��:Öp���r��.��e�5&v�o�18f�k0F�t��4+�MKv��l��S��ϲ1o������y��<��6��2V=���a
�
̔.�!T�ss�#� 1��$���j�"3"�U��f�����Yr��\�������Y��ph�
�Y��7��R��i�6��Y���7��0=bI)�\�
�u�UG򠽈e����'���N]�|^����fr��Z���6F)3I���Y��Jx�?��"L� ��#��cǼ�b��R��Tz��6?4�f�p� L�F���z�  4W[�;�Z����gV;��<r4�p�U�!c+�w���3�x������T� �N��d�ަ�,����>\�N4<��Y�7��z�o��0z�˟�ME�p1�MN��v�
M��O�����M����с4b�qv � ���o!"^9�GUZR���꣄I�QIx�D�F��]6�(H�$�Fz~Q��P���g�ٲ�:E��vM�a�>ʥСœ�˚�1�V/���*|"���#8fq�Z�_��-�b[g�V�B3E��!wj�%�H�h
����/���`���f�4&S�8��:�!6�7|�LU�_
����sC
��eć���?/XtL���[z��K��c��I�=����9�I7"HÒ�*��A,k5&\� b/�>%��Y{��ЪJ=��w0�=���a��Te�1F�o�k�`��s�]��~δ�<�#�vT^������@C�P�z˃$$�9gL�0[`��R����uDZ`���s�n���WN��İ���Fk1d�����c�t|ٷ� P �E������$�E���x�GF#����f�7°����nH;����o3�=���<p+Y+�$���"H
��eu��o���J�S_p�1)��U� �S�To�oے0�o�w��A78&��73�%Q�/�8�&�u+6fд ��r_���P���D�垞4T��mb�2߫��L�$�V�ମba�,
��4���!����}�_��]�:�Ou���:&�X��᫰�5����l}K=��A��<R2C�l�XLTq���R��iv���b�,H��U`���<�w��u�V��.�u�v$��h��c��LG�{�,��*� a�F�c\���?9d�5�S-�:O������P%O�'�8)/
W���q�^.�Sȗ�x4����S��U;�y&OPv%����{���ɢ˦t��&ww�f�����n�xy�(Mݯ/ܼ��a�P����������>�^/3����Z��+'��H�t��&�(��R(��܌a�]+�W���<�N�Fip�Ś�PF��/����Lr?�@�IT�����_#�\'<��
��j�M
@��(��<����	)9K�ߑ���>��=.gzDC���Aå�\�k�����RC~x�р�L��X*�L.�r��t�d�������0N̥�5a#�4fn��}]��%u��))C;��=��᭜����L�.�Nm���-͆45�!�`r�`�l�@ә=j�p���}�����0�3p�5�AM�)
���ج��u�I��+�E9C�;������+�Uh%�졣�@t�u���cp�Gn!]��A��^U-�6Y2$�b}�G��6IvL��˒�+OeLj��~K�̊a�5LyX���'��p��&�2[ધ���X�68t�u3�$�������Y~(�>�8}U��:p|�����L%���an�F����bᬖ�4�>����v�'�{�=ګ�̮z?���c�8^�_��V},$&P&�g����L���u{*���z`K�#�0}���h]K1&��j�c,�=g�k�l�Yoma���`/����������w����f��O{�(
���~����bC_yC���Ir��>;^�2�>��aZf����*8����>�����(O,�a�
��������~쫆akM3A����Uy��Xn�m�EO�r��{/}��C�h���tE�.�
t�we��R�h�6��x�^jdQ�@	���X�QWK�^.
�ߊA��*3p���v=�`��!I<���E�Qn�l����m8�Je����8���	<Nps��6�l�@����Mڔz�C� �s���y�:�볨ou*?��{�����t�����s��^����)�b�g�!;����;Y��j����6o��ݒ\C�4m��4�'�Y����"3��GҦ&�ss�Y�!.���q�ѿ����q�J�hnd#�zA�
�{(c�k�4�D��rHJ��Yw�j�.#*L�K��k�v������6Ĕf�% �Ъ�/�|�ܜ/<�{�ڭ�'`\��3��@�}6l�-p<��7�V!g4��9��ّ�uG�$J��L�8=���2eJg�U��T�F㐬 ������pJ\]�?�Q4�n���{,h�T��.�.0��#=�g?��k��1S�Ʌ�(��#����h�)���+�d��DA���{�ѣ|��ڕt�ٙ��x�]P�mtw�xj,"�6�(��؝BJ[�I�@�G=�{�e8O��%5T��[�컺�D��TK���i�	?�mrle+^���-C��E-�2�kF�ys�/�PVG�����`m^��!��t!>�A���a��+	w&��#}o�	s��c󒐺�^ŭ���+&��a9�^,�T������S4�!w�d����^1lZ	S��B2�B2�J�����¸��t�_�bb���J��^�p��W��4%h�@LP����A�Ԟౢ��T�4I.%�Z$��K {��/���#���|���k���	��V�ź��!	�`���d|͗X`.�b�=��J�xr�l���f 1cL�+ J�U�t��&��k0������؜���2��8�������B^�K&��CWͽ��IBt���Z�����U�L񜙺�,�;�2=y�lf����Ū���<��:�������`S����2M�����/ �q=Q��ħ
y���e8#-��s���[G�4���� �<�Rq���A3.��T���������� ���4���?����Hr=��g��)/<tK;�3�J����r��?*�ԴO��%�� �av,-pͲ?k��Z$c;�V;V,V������;�fki˯�nM|�����{e�0��p8��
�Յ�����7<И���ww�����~��x(�<xY�v�������EAb��,����Ʀ���~�y��;�d���]�Ԁ�W/�Y|�W������7��2jS����zA(���x�`h@���5

Z��<�^�U��4#�  ��qQ8�3L�hO�sn��wBS��L����nga�{�9��Ni�� ��W����g��~,�ѐj��,�R��\J/���/[���%a��R�m@
���tغ�C�0_%Q&���G��ϴ~����\�:�M�S�z�����N��E\�HD��S�}n�ҫ�Yk�`��ȏ��z�Ɔ�Z� ���X�`���M,��)fd�no=���f�z:~>��(M:ۃ�4�t����\�R����9Q*Q�H����g�ߘ�ۤH�������u��,�$T��8�p��?��r�=ih��f�}HO@+��ɯd֣�,쳕�yjy�M�e�F���m����aE���G�U�Gv�
^cѮ�~A�e���(f�kT�ǟyP�;X�"���e7+���6�܌�9������l�<�F"�x�+R�NV!�}�t�J�ǀ3�J�F��[yNFӪ�Q?Z���d�h�����s3�L�
X.���V'�a�������A����ř%�|��O�@}4���8�ʿb����y��a���g,�}�i{e��LЎ:�ڽF��{8
�y��9�&'�0�ߧ�M��ݸ3#т��ǜK�AJE���2�A��m�8���L�C��G/��K_.P���
]b��8no7��
���!����'��~�!����H��٢aV�z�^l���6YD�F)}�{��M�_�(�A����7}X����x"������6.92x�i�y>����\k�m]5Q�8�����1yH8q�H�C�kC_��S-/[���iQ�
_ް|5��,�>�6�h���-�y<�i��:"	S�T��� �~��ƻ���S
�ZB�L�����~M�`k�-t�Oב\�`I���X��H��Ҫ�~:C���\'�{6�=�LN*8+/ё�?���C�th�5ͥ��L��o�z��仿^%GI�����,���96gL|P�4���.ĺG*���s��D
<�6r�gu��|
���Hj��Y��2uU
��Ť���V��`w'�_�u$g)�����s���P֫µr�˥���6�z{ ��R�b����NK�� d^��F�A�0�Χ_Fmt\�c
���.�yڡS�X����(/ɪ9B+(B�F7�a���&���l��pN��z���I��SR=O��1�V�'Mg��j!#�ׂ:j�$�<O� f���|���I��j�JbTu�Z�p�e�`_ �|7������p��M�GTd8x�ϖc�R�		�.rleg��B�c#�Bc�|.%M}Ut)E����! �E'��v�[y?��F���Ķ:�nb��pa�>��U��g}��
���4E����%�ݠܥ�V����� �sA-dJ��&��.)C�lk��<}+R�j�Z����C�X�Y8G��V^V'"��8 GF3h��Sz�b<�R[��0w���r1B4�h���&�%Ō�K�BƮ�Ê��d>�q�8K=D!����)>��[C�>�sw�lE�k����Q� .�L?PҪ��ڽv<�t��9�
�m^W���R�,��;T���S` ��Hf�M�m�S-��f^ÒT�R7��B��Y4��;��/:�F�` � �;���4��.@�{��ð#v���˙��(�\�J%��:֥jST"o.�F����Eװ=�3�]%MvBdx���'Q�k%��hD��G#���\(��'_0�{q�~ߦ�rL�T5���)�����JC|Ӫ
����ڡX�y!��)W+'xvLs9���(��$��eJX�;l��7������2>Q�;%���Q&!z�:��>3��J��œ
��XHk~ Z���@ZB|���<G�)�!�0G��o� a�%�/u�Ę����L�:3L�1�=��jp��P"�
LPf6|�_N�L���I��)�o�E���Qi�D�Qb�wy�o�5־��J����)ŕ<^��$�Ґ��if /
�������^D"�
��e�ہ1;W+�=�,ɌgN�e_�h�C�-.�* � K@<HQ���o�j�)�{�S�E.��BvMQ�%����pJ�հ3c�T���6����<��f�Ϟ��ώ��[!b���$�]��o��k ��)��j{�Z���kX��jf�>���줂;E@1�1�1�xRn5{Y�D��dYC3h��#���/
��OFP�׏��4��J�g{��o�������ݤ#Y�}Z�Hj��gxp<FT��?��1f�M"�{�eϋ�w��50?��aI���iᯧ��Uݢ��)��� 9��=;�e��C���4�h�H!(��~��x��T���`re �y�;cjaGO�[�&$/�b����O`3>тn��A��&���������9UX;�xCJ�1_K6�ŵ�>)2K�|��ߙy�NA$������y�n�27�C5����A����{bH�~F��#��1a�erUZ���ѱ�T�7��G�:�	�n]��yR�z����"�����*��&#��aS�����c�����x��5hBK¹�s�/��9�p��oї����t�
J.7�%���
�M� M2�>CMV*{����M�'V��{K$��ԭ�� ��,P��ؠN�R,����*ּ#N!ݑ��/�u��8N.m6��|XyTO�}S|���a

)�`�=6������N(��`��F�]�f�m������"O,z���Kyz���. Pj���e�\7)I@k/͐p��STZP���i�3pTK3�ҿ�*�U�ycb�#9�����YHGU�{G�y�U8��D\�\���`��p]��
 �����G@��ٵ����� �d��w����Z~�;s�}R�ƥ'�́�
��ɨ.�z���hܰ����5f��ܻ��MA���\��CY/BYW�o�
������gؖ��̍F@���9�m5�����I�j.d+�����W{���q�������2;��.[8y�����ف�b��������aօ&o$ϓ���7�`k��Ÿ�=�.DF��u8XX�k��ν�������3J�nSƘ��ӧu�\�
!}hT���%����!���p�w�/�"��(L�5��FrOxmX��:�:y�40X�~.ghs�~��%�*��y�a�y`ט�#ʝ�3\�c�"T��&���i�}M�?�<Y��3���>ޖA�'�B�n�򞷌��2��e����[�����^�����^YM���cY�S������f�����#e9�aOK�)���y�|����6�ў݄�2]֕����Dö&���/�D\$H/H��|�e����M�'��	x�D��q�|q�X�a��;*M��5I�i�Q�Ğe��fep�N
��쁷�O[����_q�T)��M��oK����ȏ\���/�5d��u�x)��,�n�P�QŢC�N+��X��Os�����+��Agh#]*>���U� �l$�uo�Q��[��'8h�+`�����Tn+:6�l�K~�iqQ]�t4硼$sS���}�'�{���IN�~��*�]��~�e	U����Is�7����2�0��s����{x�X,�����q���3dikw���W�GG(�_RG��1.���@�(��h�x��6x�N�����@�ܷK$i�8d w���a��PK΁���g���?a�g��q�~�S<�މ�_V�RV�@B��`A�>�ɺ�(F�_��|�Ft7�o�Õ�ڡ&7������|��IMk��;g/~��^�;�['�D���P����6�V�\��6�
V̉�f[	q��N����7�V��Ҫ`:K�x�B�˃��\?��ޖ��|<M���&U'���X�CS(����<
e�LcM�����73�zNX��6a����]18J費s>���2�Ip>�;�פg��7�\e,{cސ��TG��K'<��l&6�a ��ѭ�(��A �b��]j�}��~�b�X�C�q�'g/�!Ӱ~��1HTEK��b߄2Q
�Z�9�.
^�n�f
s���Z���Iop<��2qu�ss"W��IȈ��w�����_Jk����zF{)\&����ļ����i��EF	���e3��ͪ�]ī��"܄���tt'O���Zv��E�B&���zύ������ �E�0.�}�_�ZI��E����c�d.�ƍ�{p�g힆��^_�9P�Xs@�n����h
�S�SZ:M$�l��V�Y�ρ�K�^$]����q*��B�?��<�a�Xv�8��d�5��G(��i0����C���JtE���7�V�	�_�z��3����xR��u7E���0�7j29m6tٞ��[ ��u�d�*)�V.� "����@"{kdw��N8�?�o��p�L!� h���dt�ONw�i|��1���Ѩ����T�F�B���.[G	�K
�����?��V�C4��ڪ�)m�",�Y8u����Yi_.�LMK ]w���,l
����O %�y�"=�hZ��o����� U�ok�_J�U9��П9�֋_���LT��q^��D[�&S���J.g�/aHo'�7�E8�D�]^�f�5�X�(Q�8� כ���7IW����[�¹��ns�'��A(��6g�F4��̕N�v���?J.2�<�S����H�u��%����2�A07��-��,4�����?A [�I�a���cۛ
3÷DN��=~ei���_s�����s����_��n�P�.�t���Q�h�8�_NY ��> ^���Yi�b	��e됟�����x_��|�,�^qk&�ڐ�EL��2�;)�Jr��]3��O
<N9P6L�5�С3z12!&�:-l����Q;a��ABu���S�N�:6��(�i��аY�����٣Π9�	u	�L��y��7H�]�V�x�qf�w"i
��Bi���]�Hv�*y�=u��]v�9a���-��z�!�'ϐ{B|K���E���댸����.�pu���%�%��w��3����D� Q��O�L�u!��.P�w�R��'_���fB���s��N��bx��C���!�)sy�Ԛ�2.��(;K!�-@����� �#K��tH��?��@�R�ߙ�'+H���)���7n�#���Q�u�&f|>�gI�$=���`�&�Y�&����!�^/�,ȉ]�!
�����\�FS�_��'�*�T��!'���M�\��nQ&!en�0!��'؉��@��~����x�k�'��Nmn�\�'(���D0�5�`�A�;�e��jG������� 2���|"�K^�0�-��c�C��y�=\�`ᔞ�K|q�eɹ�2݀�>�h3R2����d^�w>���m�ts*6��֭LK�������ċ���
%�|���	�� `~��q(~�V��1ce�)eDU@GѺ��D�$��Q����'�Y���4� v�Ma��N+�cuI��P���z�J���
�=�4��T;ؓ��?����`WDTltz��o�������jV�K�	
 ��Ћ@#?G�$ꛇ��w!�?[���<��hٍB�t����y�e�pw�<*SZ�ߋ�0�a��g7\ ����r��� ��5�݁]��*i>�8s�n=u�/ʞb���65��N��%���FX�^�V��T�lv�<����Լ��$��!
%�èS̸�4(2��ezw�[�iuv���$k���`#*[�嬚L��$!�e��J��X���k�ux^�ugY���e����]t��Z��h_��S:r������ק��z�� AVi��N������E����/���'�04BNzK���F���e��RA�>J�:�*��D�e�z�}w�8`u�]�����`.�:d\���A�l5�'��=�y��m���kP�?��"D͠.�c�Z}*�㫘O� @�R�u*u��'	���V�>��+��c��ίG%�J�@� ��tǿ��0Ń��L�~ ���ϥ�F�"$>��]���#�l7�� �b?� S⟖T���+�B�j���Y5Mi]�#F�	5ځ~=/g�ʑ�=^�����A|�߶{Z|��Q��4����?��3K{��ς�Np��0�Z�N����
9�-iWl-���M�ꂖp
�a��1�y�x7�?�/l�S7P�O�pA�v������og���匪��9�W*U��{{�#:5�jL�jࠫ�>�D5�O͋h�Y��U}NӞ�
:ӡ�d�Nw�O<~g{w�x�z!�<�M�3���	f�2���V��E���������0��i�X��7�2�@��BL.^�I�'�~�i���?�ɋ�2�UU�6Ys��t�j�T�.����V���f60궓U�
3�k?5��t$2�k�B�`��T��x�7XDRj�V[TQ���6�?�7+���c$����D�����Z�d}���5��G�7ͅl��5������g�M��u%Cx�7&�i�{�.�k8�YR��y�Uq�)݃l?�SpЎVg�h}Y��{Y�1p=�#u
�a����<41N�SE��4����?(ԁ��G�c�IF���&��a@!/cK��e�j�'5t� dN��@ i�J4��I���H���b��˴Η+��Q^=�&C���7�ѶW��O9��ꒀ��k[�%b�j��zh��ԅ�+x��b:�ʶ�¾�tf�se������Qnms!�8�][�Mcڗ��"wq�cs�y٫Z�;�<�Vv�����*SΛ�qw�
93]�	�\`��Ň�f�O[%�CU:)������~�Y��3�Q�! ����r����=��U�l�Rl��0��g��k6�$�j�%G(���%��Y�ÀJq��5=�qrVU�ZGV��SEs:�H�\>��)�o�����=l���cu�,��#=Q�*=x󯩓�#VY���r�7F��)T�������������
��']�)i�ަ[rQ �N���5��]ܸ������gܐ�V�!@�\�vS�+�b#�j�t��ZF��$2"+�Ω��)6�w�~R����Kb��{�˨�p5��Q����V�{J"
�s��{؏�$ڠ�>������`�	���4P
���̟c�K}�m�*�_& �J�2Z�-"�R�)[�4/��~��(�����P���l��R$od�f�T6^t��bD|rVPSŊF^�m#o�#����#h��*,
�Z$n�R�����}/N0Us��X�+�y$��64�vuW�V|3���q�Zk+� +�
"w���ۮ.O֎:4�-a�H7��9���K;��z��Y����2� `��^�� v-�m��=�Է:*���F�0�v �H��3yC�/������J�fC�G�_pL]�����3i"Uᴧ�%i�p�����9��U<Ҵ�gR���0z����=��q�(��y�PY #���u�+mN⬌��8����:��A7q�G�)�G�li;����l�Vı�* �6-�Qh�X����j���B�;� G�b�#������L�'Ҷ���Bě�'k�L�#6‵� '���z���`+����qph�V8���C���ق�r�#��oMNP��5�?3H�om`�>��/D	Ӄ@=���4���T�+X��){7^��Ag��t�HUD3���,9��}�>��Si�9��^{�x��s�@Q.�g������
OM�\�Rk�6g�j�{�S��M��ߓ��A,9�}�^�3W�\�~��y����C�Y�oF,�)L�眄��+��^�Q��E�aby	Rn��T�#�ѱFU2�O��J�R��A2��[�@"�2y%R�w��>*�)u��>��_����"-���0:�������Ě��n~{�b� ��~F�b'�(�hS�iEF���K����T�`,`f��1���}s�u&i�Y�3)(���V�}� ��G��dN=n���˄5S��z@�<�/�c�S&�'2���"��FX.;@���3�v]@sg_�d�0����6�qX�<#6�=�I"B��f2<�F=G��?��<עr�]���ڞ$muE�c8"�q��k^͑��F�rh$bŒ����kV棻���zE�oa���*$@!GU��̫�N�	�\1޿Z	��d�9��R��F�O4[���P�.�[o��:4r���nR\�����z�\��֮C��!�� �OϞ��O����<�6�?�F�7͞M�,=��s���qg	@v(��h��(���cH[�l�l.m�;I��Z6u]��p�֐����{@j�B�"R�񊛾�[��[�N{G\�􁄘�:�v߬B%�v	gyo��nz�V�;R~�B�.k���ug��{7LU�K�ܾe@��59�	�0�}s�(��Y��8�B�WJ�RPdh
��$�����[���;�'>xJ��"�rO�����e�M�&�2y.�䨇c�@��%ꪬVwV��G��	��W�<
�3�`Fl��ٷ'b�A�TP��=7��;ض���%����c�ǰ�v�Nf�@w���z�����G��9$������m4i�M��2�lѼ����p�%�wi3uZV�G�뫲�D�P��Ą�{ !g|��ԛ4/D`Y[���V��ZU�	I��x����9�4;���l�0s���?s �?荧`�.rV�l�@tMcwl��ed9x>�hokN��1��rS��b	��"D~�v�i$��S��,TR�챲X�fi�������}Fpd���L�	�e#T�dhTM
@*�b��k�ki]���7�I�cjӤ��P���&!�N���KWܵ�Ę������ẖ�?�<a���(���Ц��mPj�Cͣ[0-ȯݹ&y�K~�sm�"�+ݏ
����Ρ�C�-3�Ӝr�F�Ny vs�T~�0�>c+$�J;�G�z3�"�_�N��ڙ��)�g�.p�n�4+����l�~rX�C}9�R�C���,f�|Zθ�����6��mW;
L� �յ��U/R鑫δ\=�Tːr�i�CY��R�'#�!yv�Z���v���4PZ5�`!�@�;VXO�Xrm�Ӫ,��Y
c�����j?"�u�/�QT�%7g�~�D�D�\���2�+J��=�H#(�Q3G�\
�m���e|bЁ���R��z9h,� ?�h���	���@��J����6�T�M�'�Z����l�Q��
���zv�G`G�eWp1K���qt��L���6< J�Dd�(KX�h����&���LXͥ�C�
;3�ւ� $ڑhH��gʀsҮz:�y�gT:+=G"+����Ak��Kk�ې��k�;z�Jr�֩�����b.��q`D�b+�j
�V�y�F����U2@��K��`��$���.�+����mTxo���W쇿�x �\����������+_���" �X�cT����ҕ���ӭ4f�t�0CL���|�f��'O8g��i�� u�{�<
��' 3�
��A4{�])���Wz���NL���Ҽ�r�s^��6� \��א���1,׃XZYx�h2�MR��.���a�00,޶!(j��^�.k$!��J���C'��~�x;�.8�a�}�����r�|/�ܓ�1�;�:
��"R՝v{3^t���uIڹ�7�d@yG�p >:���1���e\J�?7��e�$��f�} P�H|�_��7	K��d�,g�l���~��@.��}���0l�E�������>hNT3z����0;���d0�<�g�2�@
���:/.
��ޝȗ�f8�������-
:\v�ޜ����U(c������%Jx����Z����<4C|'�6bt]�}�dv�>�B#Ol�=�2#z��C6w������ʦ�/�W�d��V��t�p���z���X�;��V�w:X뜱%����.e)9�#K�;D(8B�WI����:Q�ݿ|��c��z�I������DOe	^�Wq~n*Ov�'�^�Ӹ�y���H��]��qj�!��-%1ʢ=�`�
$c�g�6�{g��L�b�4Y@���J�2%��^���ъ�F�=F���=�_f�_�膹�[�q~O
7S�9(d\k���]����E�ͻ�^�QJ꾒�^��m��§�N%�DI|rJVL���'K����BQ/�b<X���};!���
g�p���6�0���@��<3~�ds̄tŕ�&����ލv�|���aތ5�s���N�
,1&�(�(Q^���y�A^��h�%�����x�ͅ�"xI���n�Ԇ
6ҞP�9g�>((�^HD�?n�V�.���<�KC
����sT�x�����H��d������,Ђ�E�)���7�zҹ�G��ሖ >�q����n���-��8JX���q�mY̲&yi �||j�Hq�ȍK�΢G])II,"������1����a����"w&��l*y.�9D�^���0���i Ez0|l~Tf\ 1ˤ��c��||���b�[� ����sP�&�2��B���s�u~<xG,�4�
���W�\v$�L��?�e�C5Nk�ɧ��p����"W�]�hX�Z��� ;��s��?���E�q����hfs�zƷ�Z�r|G���tB���)��[�ފ�veh�*3��y�ͷ�ba�-ɠ��w'�F�i��z�HӁ:��:���w�7b��Gl��JxQz�Иd���r0B����5.�!�B+Ű�'	��Y[���}fțN4�NW�Δ�Z��ep1
�����6�\�F�����qV�>�ו��yo�m�N��p$K�x��d�֤��)���v;�Ӎ2�J�A�J�/��}�i��L0��'Ħ�y� D�N��Vr2t�µm�Cw�Y��PK���~%=M�>��/7!q �7s����A�ꅃ!^������>�ڶ���'�ͱ29���9�	%��� ���h(V�Y%5����+6+}�}����~Ђ_��~5$&5F:fN�x1�mqT�=�=�*`|L)���5I8��<{/ǋ�P���ڜc�h!�������o `/��k5Vo����Ln��G�)�l�ì=��􋀽�O�>��F�s��fi|4���w��yS1�>���!�5��2��ʼ�/�����Q��^Na��oS�l�ݫ2���z+o�U
ť2fL�ȍ���F��h`��y�{:X��TSb~t׵(`�M,W.T�o!)x�ȭ�rqH�N������F� �����G�ManDA��}�$���R}�O�@64�Խ&)�'}��`�E�vxAh
��]F�pG��ZsTr�����B��o�tܯ:��]�2��诠�j|-�Q�1h��w:p�#B'G!��Ҋ�%���u:6��V9���Va/�ӷоrz��X�H>��ˤ?-m�yoT�'̆#t�1����<;U�/}��2e(;�d��2P�V���exz�zI�T�?O@�� 
����#��S��1�Ϡ�Pޖ
�=�a]!
]q������4�&��<�l�tdW����)'�?^_^Hp'$y��9)��>I�
��0oHcp���g��fjC�p������U�Vl8�K}�B57
k�©֙q����:�%�"��A#D�g�����	�t���鯑p��v�&��z/��t�Gp8'9�ð�����/?��\������f�-kI�;H�[s��p�h�=T���c�`7R�w[ki���`:7�G��X[��� 5Oh1��(��
;L����;�F4��Pz��m��CJ5:Ǵ�g�R9BG7�����>���Mn:,�Ѻ��&Ĭ�]�4 ��m[�j���W��Q]�(���Ng�t�F*C�L��m:Μd�����/b2|��H����Lnے9�C�D��rv��Ư.e��������
Q�b��7T�r<��^
�p�z
� �Rl�2�>�$N�:��K�]��#<��f��[F ��RA�!ƪ�e����W�M[2�L��h4[~�1��d%��e���G�v�}�޵u�%ɬo�{6�2��|<�]�*�hr~(F�<c��(�l� ��|�s!rrbv����l��%lkO�K���Z�?�4���r�,up�%gA�m �������1s�J ����Y��]��O��< oq���zC���6�Ә���mXj
��n��G�W�e�Y����
; �� ��n��ʙ��M.f4�|'�:&tq�K���&{w'��)οn)t%�f:jVMx�T����;Mvm�?�/>W��i���h���
���%��%�7��$+!���y�W4��ї�8ȁf?�3��ȓ,�o�3�T�~���i'�����{���et"
d~] �Ǹ�T�t��� }�is��Z�Q�bp��F�J�zj^��O�.t����bCF���}����b��%U�{�;��D���bʰ|4��4�<�@�\j?5%H���	���z�����O��Ԃ�Ln��f؆��c��SN�0Fj���8�}':cY����JZ�. �_�A3DnͲ��~��t4k5��iB��x����He%��5���A�mp@uY�C3�[ ��4KrIւ)�B`&�n��U[ZsQ@Q�Z�0&��Iw�����Y�+�+�F�R�6ݩ�K�F��
v��qV4�H�Oe���m&�O�Tw����I����V*��;���)?״��y	�^ޓ��|w�39A�hr
�qp�,9��f_�|6~�7Y}����GA%����[�`��)U�b�z
.t[
V��U]JAV�	F��/ŃG_
�W2���j�Ԓ��'����~Oj������b��W� ����ӘY���ζ
����T��rp:�BOJ]����rxD(�o
��ּ��[�*������6�޿{}܋��D(���c_^�k��bNޯ͛F
�l��
:�q1e��@1+��o���U����f]f���:��_x��>y�?c�?ly���g��c��{U�(S�xZ�bx��
��x�3I��XS�0��l�6��+֧��_S��K��/p�o%'�+���(��0!���i�Qq�����Q2%y�h(��Gm��3Y4��M�tj�H�NO�|���,�ᘮ�K��m��s$�)��d��j�q�L+�X�n��C��������8�գo&��;y1���IB"ۓ���su#�Ӝ�H�s�C���ʶr��5��Mh�S@����JW����F�q7�?��/�st;B�DJ��&0�������zs�� F���g����p`�	��C�x�~��t�1m^��g�!�G�e��sLE��!�`!��`u�=\n��_��)J�1k�h��q&)q�g�z�m�,��m�vʂS�rp|R<��dl}�Ħ!S�Z*��D��(d`=�㩳@�s���(���- 
�0����΋P{Y�I��`@_������;��֍QI@%�D}MS�2-ԕ7�^�x:0r��v��ml1� !>�p�}UҸ�v_6;�s�b�[���/���v��e4]R�x��Bn�y���l`," �w*7��:��Ï����O��[�����d���W�&t�x���7��_%�b�Ѽ��k9_)�v�8�(k�������ϲ�}ͬ�����,���-Q��)�39&�����R� �:�Ph� 
�9�vx���,�ꍏv���Ռ�)Z����$��A<�\��Tģ��8�P�H��t����8��yT�N�+���T�^f0�@�L M�8v��
\������=�Ng)\��~��9Zcn�k [
o,�qݬ�._铙"=�}���ޕt4����C~�^w���K�d�:�o�^:b�2"p�LJ�幗�D�I\/�Ǫ� ��H8�lOo[KjK܉��,��]�����f�S�5
uܗ ;�.g��U�L���c��N�Iv�F���~�w��~���V�o�8�Y��l�Z�DP"6{l�[��W&���To-[!�d4�N�'�|l�$.�6�t�����B�Q{QFA�Ƣ+��r��|�5�=�z�$��%o�BT Lm�ؽ�_��#�ie��$�Y*�}��k���r	5�e4�N�ﳌ)E(�=A�A�>��ur����s�+AWA�ﮯ0l��
���j{B�tq��YVP,�W��(��抮�K2�	BLlv�1�~��2�>D�؀#���Dy���J��Od�j+3r`H�o��}�\ҧ����f��=l�	�7������R��F!,!���Ro��^7Py��0�i��m]�iI,%G)�g{�� )R'�k�/,B �7�f3��A�y��00אM\ʈ�V��� b��d������6�wr��i���I��!��)�d�E�ܵX���FE_�ܢV���3W7����p9�=�"!��Qm��=�A�#�!Gg���~�)��{��)�����c���P��uB#}Q��U��rNxI�[W��S�RPS�/M��f�b��{Y�L�G����VQGS���07��R�.@��	��>�L̀�J��( ����x�(�i���p���u�&��=ġn<l�
��c���|��'�X���`ث� ݺ+F��ǀ���gl��=�-n��:���
pSR2�'�K��7�������Y6�'����4'g�5�k�&5���fj��������v��m>���<��y���T� ��+̇Lz��oH�?������@��
Iu*�㥓{Ԥ���^��Jdi�uK��� 2dt?'�8��M��@Y� �|�Bjٱ�=)x]��ŨZ�H���1}J���i���/�J�
%+:8H�"��h��0�����	{�"=�fg���Xv̏)6�G�;~���h��&!�\�����2�x���B��5�kRdG��֪D�G5}���\Ka�^gl]�t�t�.�;�
����������&��$n�ʬ�k.l�H���t���G+�>�����f�Z���~m���.�t�C�f�k��С~^[�ř�z��F�V:*=�F��4���7���8��m^$
چ���?h]�x��.���y�X �I�J��-��J�*����3��J���߿����aK��R���_��)=ܻ?�.��J��%W���g���Uk>��w�7���ք�J���M7tm���$��3��C���m�
��*��T�D����1)���01u(�JW,�qL[�|OAl�!��D��C�ؔ�+'���Z���h²���Ƞ����Ў
>�
���(�ӓ���QU���e���&$�5�� ˝���j�����(K�H�
ֹo-�J�n�B��)��k4�ʒ�zw��0�vTPJ�ϥ3mcːƎC�ep@X���;ďR��m�S�=���N����� ���ӁG�c]k^]}S�êi7iq�@����M��ܰ��|iyq���O]vU������n(�L�r2w�(v�#%�#���)�+�/D8������Ԯ6�;)����1](Q�ف�6u�O9�O��f�����]�qG�!JX�0q���i6��W��%k(�,�DȭWX-�t��-@�<9z�#������q`�ݏ���)�2|M,�����V����|ta�J�!5>�Y�V�������4l�7sÀ�@�����O�O~��TE��7�� <䮏י���Vw� ��^�@�V�Jژ�z�~��Ղ4u��[���)�jQ�V�g������ERt��[:k���F$��Wd���%V#>gQ,<!uZF�3�(���D
ĐE>�$��Z��0�1���7:�r"�)���	�l�tl�p&E�W�H����
�Z&(@G�B:\�s5;���թr�j$gg��g���0;�sJOymcj���&�a�{=����`ⅉ0�ǂ�GwU@��Qك��BO[�}G�����T��Z���$-�
{�`"�'g����K��zi����?s&hy��|~en��K�0A�����$��Ivm���/Y>��]u��B;e��U3�؉TDCP���7�;�{|�S>*�ͥcy�<꺰�z�Zr��〪�nǗ�'��0jƾ\T�c��rG��拕x�9��2_�c�̫�r�j��4d�%5�Һ��2�Pvu�##��t�F�}�����[�A1e��`qӔn��>�`]�?�]��^ ס����_�ղn�X�l �hi
_?4A�1��uWv4g(�\�pyr6��*��_���	
����x7�;��.��A��|j�-C��Ɨ)�)��u��X��:\X���*��
�b�J���9Y�&1��Za�U$�	?α�5hjPφ�5��-V]V߀g/x�D]s�E��,�4F�°���b�Ň�f5{K�)RB���t��h�+�:o�)�Q(aiq�?�yw��%_�M�Z|�C
��8�l���@���G��y���'�up���*�ɫz<��a��o�'t�j���ڙ8�|1v�j*6���1���c�	Nf�#��N|ZOo�Z8�P��Lbw��(���K6Ʉ���.U�
�}�%���%���k���W%	_�m�کfѓ�a�Gi�������#��3^�D��͜O��69
$�ng���}Di� \�ӰEM�����.\uF�ۙE�)�&�}۩�t�Ԕ/���m�$���d�ǰZ��3(l{�׈�h����)HSERS��]�E��'�tv#�.e�/"�ir���/�'��P�~�R�u����1ޡ�T/$����X�- [t��srH�EAG�G�i�r�	B��a��ݨ)�b����2����-2�q��/�����p6jG��9�p]�`J�i����&��\ʷ�]n�����ʟ_[3����	@L�S�5��6����t�ӝ��������Ⱦ�7�/�C�S�/e]
p�@5f<3q�_C�#q	�2�}z�(���*�Le�5ĝ������H?03��a5M
� �Xb�e��ۅ�o�H �GS2\� �F��Y���=�e���]��:˫���Æn
��F42D
���Z��l\I��R^}a�d�Է,��P�#]�W��ߓ��ʟ�<�?́~\V��0G�2{�g�VR�-��)�4�����V�1.L��]�o�f�G���[YX��''�8��2��ڭq��uH1�P���3M�9�a�bT�Q(/2�ph�*8ӊ{;��=|;j�sNxz� Q	}���������[7��!��?��uK�T��D:$�
t�d�q��X9 �"�t�D��צ�3)D�[m�ly�� ��eב�ԉE|���������H5)b4���L�(g�&��"��"pS@��o(��#p}L��R�R�&Hc&ui�@�s}&�W�̜.`�_�,����`^Uv˖;�����I���b�к����E��'+ꗕ��66�.w��,:�	�y�ح��E&��)������B��⢬�"LNT�&
�3U�1��\{�S�����p��АCQ�� �0���U{5�,��/"8)@0�'*p�Yjͽtl�@�JX]���8� [E���=P���FMaX6_o�o`�Y���E*�����u�&㵏u���֩��-(�׊~`���}��s���*�1� okN4C=��+�w�Њ��e?� Իk�����'���B@�⸷ϞRH��Γ���
8op�a(g::(ۏ9J
ξ���abrTZ^G|U}�|Wx��3��`
Ε:j;.^ߗvK|���YCJ�;3xy�>N�0���A��c�7��+jeK��Ż�.6�&�ԣY	K�����U�3���
�Mh��YS�I��{�
�2zM;~��a�T��z͋ziԍ����� ���u\���n�eMג���s<���|�hs<Ű�)X,���)򐹘��H��M��[x/s�ث�1Hʕ]p��)��4��)�n]cg�U�G ��ϯ����|�gX�?"v��O�+��%1�!$	ል�������+��nݴ�I4^�0#M�����*7�u��^:_Q��:Iۛ����t?4�yQ���bt|���� ]@F7����c[��ۦ鬋-R�(ħ��F�����9K/1����	�ڏ	�@"3|�)
��B4�C��0k����~0�Z�ّ5 +���r�[�74d½3i���7*u�쌜����o�k����������F~�X$T|�$Sȟ��h�	�6?�\�����u�@4��Eo}��Z���T�
y��\h>��%̃�O)@w`vn��.�̧@���lY�*+{���D3L�j�f�k��'vN������f�}�s��C�x&���C�%S��ͯ>88#��.(����YR�,��
�48v(mV�3��������JiB_�Y���s'�wBK�Վ���OEڊ��cqV�M����Q�*�l�=ȶ�nI/CB?а|�P�܏��B�ꏺ�a�YZ�T�T�sL�~���8�f�MK=>[^N�Qދ%oq��'r�]ݡLn:er���񎫆=�ߠ�
�������Ӿ�Innқ14f]��=��+Vjj��1C �bi�f�Dq�A]��~P6���D5K�̐4/s	�=�} ����B��� �>� �;9�K^e�.�H��:�|V%��I������M�
ְB��S��Q{�~q����d��ɝ���(>�O��":��e�+v���-v�p8*�pҡ���r��U�
z� ���!�f
��C#�;r�R2�g��7�Ѓ{y�W�M���_԰L��݁i����� BU\K�������w
�,/W-���U07"v���>n/��D�9ErP����H�� B
�i��������o3��}РK#��b$r�Vr(���Thg�{l$���� ��awM$F����?���J*�saj��p��G	�Ow�ng3M%`I,�>˃BF�!,�f�C�D}��T+�$ ��e{��؇��u8T�t��A0%JT %�U�v�}{��f(�a¢bL��wr_B����Ϡ�͛xܺ�&�,Ay�kiB�
ڛƿ�pϧ��Nn�Y��d�vܟ�n�(�W2Y���� N��a�mF�_�T'�� �>���/�'������&'�&�n��G����IQ��g��U����P������=���g��^��yO⿖�>2LP
9Hǘ�Ş���0�ȷ�3{6��aM�
��F{�ܓjj��O�'wQ���x��%���C��ᩌ #�� �"�/_I�ϸ����쇄p���Jx�6�X�Y�����<n�jG~s�b����^�%V]������e�a��t)���{h@��d���>���<�g�QV��H�T
�̩�;���W1�C2�+�t[E���.iBn>����39t2B�<�=�˺���˖�����1���p��z��TݿA�_��S�>

�ME����}q�;<�Θ��.&܆�ő��}�t������� #��D�\
�?%Y6��=۬�6����@r�dPL��|Lw�1>Y;7K~p-�\,ӳ�F�B��oZs��N�Te�r���-jy_��N��俚[�����<� f ���k�?x��M=.�Add�
�i���$#��T�S���,!wVJ/n��,���k;�N��ܼ9�Re���{!F��%Ϟ��?�L��k�s�-�Y �6P�d,Ê�h�4{���<����Tm�K� =Sm����#�=у1�@!�a�R�@:i'��=��8�SyqS�`��ӳ�e0����w
W�+�{,)��L���{�����h�W�\�cI�� �3	����.��P
�6\Wg�B-�X�Sb����.ߦ�����7l[�˜���ƫ���=V��x��t^��+f���t]�m��u��X�����t��,�W����~���"L~�S�0�w�π��b���,�^���*��s���`dLh�1���:b�ߧT&X�
M3r=G�^��c(1C�yô m�/qZ�&�k}�@�������6��>�!�.!�p#�H"&�"��k��k6����;�(�&D�����"�ʚQ���<�I�5"J��5��Te�օ_�c}]�ܺ�j������j�n����N�W�%3�
]FA�S�w,��/�b~8M�L��=Ի{�5V|�uVHW`��}�g�˿�6h�ܖ�NvV0!n&Q�V0g��^r��69�^�6�A���*a���:l��W{0�������C���j��l�x��߮���#�2|Cv��cs��Ҿ�r���ןA8�C�99�~s#����W~�;m�������M��?�����.�!���+$�A�����1>��p�>�� ��[��
�~�l�/>�a���^�.y��{�Y���v��y!���ox���~�l�/�ի�W �B�{k8���ș��wT*y�GIMiy����-
��=
ur+؍�
ުB��	D2�x��H�Fm`Vd��IGCJ�?g��;M��0��P�9@`h�.q	g���2Xj�2�[�k����	��Sް�B�34.LW���U�ns�?�+{���s��o��'r@��D�*/���-G�# ۰���77�����O@R�o=ز�x�)�������c+�W�ҟ�Mv�7��+7=�]#E�`����4�:�ذ��ׂ�|!_���yNh�xd��AFt6��Xg���X���7�. }�IQ���`�-�.D������E
� �Nz��������
B5���m�ȩ1�z3�QN�-p:m��s�uD
��d�
N����[��?3��6d��L��3���f!3�6�(�Ρ���
�cv�ƃ6:���2�3O;��Mv(�^V:��VP"��,�p�ɏ"�uw,gWL��}5 y�0��#}��#�#ou���ٝ����E�	�X�F;�����<D�u�8��K�Ԑ�iT�ӈ� E�[ón���e1m��f����|�,5�nD�B��-{[�dB�p�V�b��^��Tp['>��y��z����r˭�'�"��'��M����
�nye����Ғ��;
��N�F�<bDe�wT6v�i��(�弮��_��)F�)����:X� *�[f�.��ϭ�F��<���0d �����E�FӒ)g��/ʚ^��G?�=]t���@�w;x��
�TU+����{kH�_0���w�P��E[���z��R
���~��
��|dj����餋Л�鎍��]��"�X`		�7J�$X�g1�iB/w xQ�R�Rȧ��ӵ���=U��8T�Y� �䥮e�B �Ex����[���x����VHJ�U��}�@>êMhZ���_9+��i�G�U�
evɤ��[ʭ�����W.
��\�}�KqW���m�<�j��ڐi[���kP�c
!q)}�N���G4ǸXSϼ���:ٖ�e���'EѦ�8�*�,5$iD^F�e��L�Py��9����2=��7(�QI��%E71�ݯ����	�@��[����T����_k������l!�0i���6��~�>���?o+���i͜�}¦�+��/m3��������P*ev˥ܑ�(p��Zi�VT��N���p
ȓ'����,��P;��H|:�R�N�2��w�C�����3U槁��<�E�<�m�A�&�¿n�^6�*�R�rj������Np���$��>�Z�x�J?H�p�Frg�;�6���Yϳ�x&����@٣W}� B� ð�T �`��U�_T�����pN��LA�T�#���;j&�S�ߥh݈�I�%B^����J@�!��3Ǖ��r.#��K:#c��c�TI�0�������F2Ke�LF��7�3aC����+9��Ž���e�b����F�OE���L���H8��*�W^��	9dC�ػ�ױ�JYm�J��P�w����J����V�.���z�cI� �큙�;��1��ϲ���A�s����b�������-����~���>>��ON[���B�Dm͙كIj�yV��s=��!NM�AO}h�e);b��D���!�Kl��6$�һ��>�ט�P_�����S�Y��f�́Z��.���;����q0{�H��Ѫ~��H\��9Q�o�}����~��G�	u��d�`5ΉŪ� ޶I�TA���N&{��>(���
P�Gg!�K���mi
�НO� [��TB��.�4㊑���$no0�I�f	�c�pȎ��s潋�� ���a�z.�x�4�vd��g�b�@/����`m?�@r�i�ޱvy�8����>�=���gO���U�M���`M���<:֥{�
1�,)}���J�a� ���V0���j2N�Cۓށ�"23}M �ܝY�m+y��mAf�?�MH��� R[���V�z	s�ܤz�ʷ�� u����A�,�W�Loi��3��f�<�_�t��'A�9�
�}�@���S}y�rxaWԶ�}w��x#����[���D���*1zö]��7�؜��� �bm��e�y�G�9�Y/	�ѝ����s��PO�e��w���_['�B�J�+�![���&���X� 汵1���q�6��:�o�LB�ܤ$	�!�d3�AUl��c"]$ޱ�{E���d5"Hf%�1ʥF��#>FT��
���m��4㵚S��Hڤ��ȑ��,�ږ]��"�)l��4<q���������G_%Z���Oa��#?Wc!�u���:E�lOG�3u�T���1�H���b\s����X����p6
�؊"�[�<��o@�6�C�R}.u���
1���!lk�f*�K�BC9��-:y:'��F�E������QAʳ��D�����,�<�q	�g���7n�!�Q�[A+<����J��߄�#mӏ,iI��a�]�o����b��������Au�Ğ$��҈��c�B�~+��_�j��	�ƍ��<ƒ=�e�Ȝ�]����P��P'�` ��? "���؂޷wg���|BT��J}����U����Ե
�%.���lҮF��V�$7�6����?Q����!��B�dQ��{�
�����N�ưr���+:b0��'��Cgd�Btp���p��5[1��3,���=� ��i��I├��-f���4i�ٛ�
GZ���
�܅��$�}��a��� �һ�8�zR��t)�a�~U_�]vPF����G�2k e�q�3@��[U���tw����6��6C�0�
v����X�i�D"4�P���}�mއ��A X�[�	aoo�nEl�%���qz!���
����13e��d�|��O�ЀU)"�����᳟��$)GO��`���I_�����C'`�S��f���[�����!5��t�)��@�UNve�K�=�N����'��
$�L��dr�6NJȻQG���,�T7�P���h���0VJQ�Z�r�DR��{/B��9n�,Kw?�G�I���p��w��F�8�})�;ى��wrOj�<�KC��#4Zܘ��5z��n�y�
��=�Gͳ"PR�
�+�[���$A7d3���y����u�Qd�+Y@ܧ���kϐrZo� �h��>D6!��`ӰT��Y�:���`*��7��k�%��4���u���缬�D��z�=
E?e��&�Ü���R[���.7�d*$�8f��LG]��=df��I��;�=c0@?7)�Z���d���ڿ��,�z�A��<��l�fov*��aK�*'���YV��k�
��q�_��J��2�m�2���iC�ژF�p����y/g��WG~bJ%d�
�{����'�xbJ�s��u1�W�\������0k��`���J�P��e���(�G�> �#?�����|�d	D��B��3��נ��w�v�B���6��|�qu�H�ݔI�Hl�br����h�Oi�6�o4e�GX\P�կ�����K���d �
"�^T{G��U
E	�)go6/i��m~��Oـ�(Q��d'>Y���S�4K%�;/l�Y�z�6 �����k��4���@4c��^fJ�B��&5_&��GQ�O\ ����]�75l��ã�:���E0��k/�����h6R�ɫN��s���!m<�S���Z���]�
��J�[~j���h�<Z!jR�'~���ýa��a4��'���6=�'�t|:��A��n#6.�H�;�aX a����(�
N�#�N3�"+����n����o�O�LP�-�����	�C@����5��Ml�?t&*_	��Z{��K���t�:��D��x_[�X=�ez%�Q�'*ΫLAO��%(NW������&J�}%jL'��9��S�����ň�U>Ns�zF�e��pW�[L5���[��m��4V6���Z���k�a��5��qE F���K���֛�E�~6v����PI�(�-��rH�~-'e��]]�?LJ��`���G�@�BC6�� ��n��%�H�x��W��n��6/
?Y\N�む��a3؊�1���ےE6���x3�-\��O�3|��˟��2c!�,�l֔�U��>��tgoV�֒�c5�ͥ��9�����@Zg�]IG`��Zq��ٰ�Y��if���Q������J����
튽T+�����[c�x�����x�Z����B�q�&��|{;HW��+^��a�&��3O5���ej��|�R�J(,#z?���n����L)���9�k�]�9����7����G<�(����tz����S�i����YG��/�|�]�4d������|�.�M?����<��+��y�������-�	B�8fO��u_9hXL1�p�0���9�ղ�@�#�,��(f;���(��{�"
o�F�g<;��ez��a��Q� �'�gR�(�c�|i��(#���������&�)Rh�ٓ�|D���F����i�=����\���)D��VJ������/�iY���@jq�ƥ�ן�w� Td;�4m��|�pa�[g�.�~ޛv�e*�1�bTsI�l�MR[u��?!ieD�atc ��E�K��S����L{|��+�!�I1N�谒]�aqN�j#"p�3c����t��j�A�	����Gr��\q7�2(g��)W ��Hƭ�`^�w�/��Y�r����]Z��m�L��O��>�g=E<)�k�0�P跹{�lI����~���YKj�~`�U\����6 �S%��a��Z�$ Ԍ�䋮A1�!�
�6¨h{�_�T�~X`QV�\���I'�?ٷ?����� �B_}�US�TX/m��F�?�F�Xr%01����k�nj�}9U�v�K%�_w?���[��{�z]��6���xP�UMa�����*Nu�!�: S�}�̓U��E����R�� �i�O�373�K<՜*A����SI��O�9^��{�Y���6b�+�k�;���>� �xN��x��hx(�Q
�#g&�u���Rꈤa�����H�@��n�Զ��w�0?�X�:���*�FS�ō{�R��aD�k����[k�4jXU_��Qr��[�R��4��H���)��A��������X:���#��RB��l�R��C]JF>�Z�ŧ�K<�X� �(�|�2v��FE�}�,"��h=Vdz��E�񥬪�	h�IsP�Mw`Qa��7aw���ʏ����ŗ�F-Yn0[�Q��׉��(H��H;�:���	T'�}�+�5P�)ޫ�-kdo3��Pugr*�q�P�r��W���&P�Юˋ�+H@�8��0#�����Q�/��^�۷�|��*T����kH�) [q��R^���<���"\�U���dڡwg�W������m� v��y�ǥ�XSNY�� �4_Q��B^r
rj֢����'R��m�)���.Z���1�a�˷ôWx�ZI�m�ݙB�)���$ƨ"C����A�e�(Bq�)�O�D���3k3cH͌�dw���x/�eW��D���-ȍ3C~󍐓�P�n���yJ�Y΢E� h5P J�_U�{U�Wf��K��X׀���n�g��}F��������l\'��{��t�X����q�a��IZA�
�]R��
4�
K.�wh{I��i^)l�޲��"U`�!fs�N=
91"��m�V~�F�/]�����=�Y������
����@�6�`&�&t�4�̩4���9��gg�����Z��k��R��P?�.4|�P��C��H�m@�|vsꥨ�L�ᓮ��;�K"2O�eV����'ȴ�A&��ˠ��N}lMb���&�"��o�ȇ,�Pɣh1�#{&s���A�b:�ѾץC�rsq����a���ܶ���,���K'.-LFk51�B��SK<'�B�[�Y���L�ɿ��0l2���e�;�gX���c3�[(㮚Ue6x��R%�<5 ��DF) �9��v7�̢k�˴+���ٿ����H�e��������F>9'�e()���K�ʊ�1�S;O��`vBW4Ot=K�v�4*f���a��*��|�xj�n��v�;M�A�?�!���:���)�e�Z �g�H7�`�Y6��ރ��
�]5oclx��x�u��T2��X���
���H�� ��N�1!�ct>��D@|ބ�+��F�!ėN<��!��T�v�����-c�ûN��@fNP���f\';I�_!�1�F�hOt�$L�A-�Q2@Ρ�6��ǎQj��,(�u�t�WcU����s�G!ٿ��]L� j�k�S.�01�=��f���CVod�E�������e��Q��kWf[Z�H�(��F�`{p�����:z�:�nN���n~���ž�]�-l+���=�!%�	�m[!:��D����{PdU��n�4 ʂS
�6 (� 4kɊ~M���s�/���'��vDy��$}��^�?��'\�L	p��Szמߔ���ßF�FmJ�k_V��

O�٥"�oVVk��>�w�}�
��x5�n���Y��GG�S�,� ��Q��	�3��?��(����^��*���[(s��H����ب�CR��e=$�����ɠ	�!�4f�L,��ԟG���Ye�
5S�ᩔ�O�9�$�<��g��m2��xr%���6�1ʹ�ZWģ�}�d�`�EjV�������w2^rΏ�+�3�s0���j�. �d�\>ܱ�i��w����D���E��QG�T�	3������Ϲ�0?�ܫ���jR�?�
�|f��?N�&W�;@���a���7d$�9A�5e	^���W��L���Ջ�0�j�&��d1�*
�٢�8�hh�;8���aK��z���TB����U����1l;�VLi��F/�!!��(��jU���B�����@H���N�L=��"\�;����۬[�\�`�[R	?C2UuhPh���Q��v�	��b,��'�橠Ep�Ėl��.�I��y��n��r�1��RZN<s|�B�Ҿ���v�c�&?��e��]Q�n,͘�C0AvW��ԴR��5*��C8�"z���g�r��P(��9�,���	��_���#
(9���2u<��_�KzV0;��n�,���8)f���h���$g1��`!ފ��LFX���Rס鵞=ǭJ�����Y�������J���uç��������@Y\`�&.Bz�2[��2/J�� /�B�,� �������pN0��T	V�x��<4���+!����r��_��~i2�5P��e�ĸD��Z�-_/�P�k������<�n=Av9
z��}�Yp�$��˚��OZ����G�4���~9^.�ˑ�B�����>�E��~Zi)b6��mFĦH�vZq�:.�ys%9���pN�=E@����V��"�¾is�`���t�2S���yH�f��E���k�
ɡ���Bj�.��%>�s�
N\L��`y�U�HBn���/�h�lA[1J��b7�>����[��G���ƪ^,"��¾���uV|1��<t�ގ�O��W�����b�ёr�/D/X�sp�R�E=���ⴗj3�������R�7|XӤް�E�x�M�x+� C�	������ �����YzP!��o���#a2j���w[,T\p~�ر��Q����o��x7Q���s�y%<�_G�w(9H�1Li�b�\�����h�����~��;G��?c�=�K&*D��?�O7`����H�C�s��lF]���t3%���*��[�]�~�q��N5�t߂p��5�>#t�����p�#@�`?�;r��f�y�F����5ٷ�hr�@�R�#�0�ba-�v-�TO�EW�S޷��Fύe�*���8+���ת�8[D�M��,
���a=����[�h�W�W)Ʒ	�䍨�x����*�r��z�r^�S[&ʱ<0��5.�hVzֻYAI�[���$��I�҅")�:{-I�]{���T8&k�I��i������Vs2��d�G���þ��`{%��6Ey��<*��q��
�>��W�㇙�J�����!�7����s ���Y��:b.�4�b�*j'�ә�8�ݸ��D@����o����g��C^>��ew��*�gR���ߺN^�_�Ŕ���z��[��(
:G�'��)���@y��!�
0T�Łwb��"�Q�\4u`C���u��@#��3Oc�@��2�2���9��N(�e��O
�,m�ȐJ"����$�	X�
���^���B�Y,�,M
��0�����ޑ��?�����,�S����e�I<���+�]q���g٣+�z� JC*����$9�aQU�� �#t��י �C�2����)`�g��B�/^�����P��	��N ������<���D�h����^�Gyto���G< V}�`?�x]�����9�B^<�,66����Ǻ��X�}!ygC���%@L����qTq�0ĥb��"z&4��$����ё���m��O΁�/_�]���ɵ=V:@!i�=���'�k���tHƶ��7C�9|l*-�����gT�a��!�Xt$9�H�{�b�0��p�F�3��hz�Q�6��u�"Z%z��`?�Dk8&��9���K_0QQ��?.L5s�����ں[A�5i/'�!��3(	I�д3m�]L�=Jg_��-�;p<I
��N�=A����E��u��kk�¶3j��E�#d���k������#�BV��֦�DFI�!Ȯ�h��&y|۔ v���$!˴Jh�.�ܢ�sԿ>�ظ�/༘�-a9tZx�T�@Y�Ǟ9�� ���GE���\hG�&�a��}��.��)1���c��=CEJU>ʂ�#���r���������3$�ˀrb]`�;�o�}i�n�0*�i���l`pa��*%z�iJ�G�z�L�r=8�V2�8%��p#%P�N�p}�:����hQC��,��=J2�z�I��Nya<����
?�@�{�o2��j�������j
U-�����̀�p��SÔH��j8W<�jl+=��C6Ơ���ȝST`!b������[4=a�Z�knb6�
ڄ�<K���#U8`�u�
��5�˨���� �u���#@
��,e�T���͛�e+�ش��������<`����� �����̓"Jk�W�P�u�(��w�şYm��K��V������<?'{M̹b1�Y�(K�����}Uf�bҷ��F�9'�s����GY�&�$��c�=�1�ǵ��>r��J�Ҕ^ߦ��)���}M��nq���U윑��Gg|LK[��O��C�d�O+Ķ�m����L�p^%���$aZ8fՈl���1u����'�uO-~֩`�C�	����%7U:�Uj�֫cFr0-��8�pݻ�{�2&I� ��IC>���Y ��&�9v�~�!��kqQ����7�׼��(
�(_RZ��v���t���|���R�5��
�����|����1�9�r�bl!����.��X���u��~)�eK�V	6�&��~v��!68��]�U�g�=MrT��Z��4,�K���r������V�2�1���qBB�W�ô��v��A��@�ʞ�dr�׫u
��"���/A܄6�˟u�<=���M"c�*���q�È{��	du��H� �2�Z�M'ܰ:��qq�,G �W���r��h�[�6�6|&/-��ߴ֖�3�2{�Ii����?}�����`�P�WɌ���4�me�����ڰ������ ���߽_m�� ���ЏbN���-�)�8A� T<��E�x����
Y��Z���gM���}����n �7@��|�Eq]_���d6�ٙ<3�@d9��@��҅�����_��6�]WD`r�E��L��]�l�޺*yyL�T��F�2���+��s9^f<2��^���F���pG�KBwS�QE���bK�U�Lݛ�"Bˠ�W)s����Җ��D�΃
e������:r��|Uc�cc;�姣��2��� E����Q���UV� S���B �4_����_+r�I���L<X�f�i��/,J�ǋ��� �Ҧ���fG0�:����(|�-�O��v9nD���� 'P��5r��?+����Qf��^<Rw�#J��@�O5en*�j��l�Z�oF���5�7��#�M�d�WP���d��	� U���U��p�W�` �.2ME!�6�dM���5^�G���{�r�W�+lV����|c�'�!��c?�U�%�qז[�Im��К
�3~����A�����X���~�O���lԟ8�fvB79�jG��;���U$�.J���b�B���83Ƴ|����d��f���!/lPI�/ՙBx�;�* �}2����V�~q	��=��xho
���bMm���%����h�����y�����!p�S�E�˲�ӵl��lL��+���jE-�[�Ǝѐwk�%��O�rGYn�sr���Wk_������&�W�>"z��@��m�LMr:Q&�� �SFě6�c����JL��8���3 ~�%k0b�w��/!�5@3&�
c\/���b����}d�ĩw����H�ޣLّ�`U�v��9*p����Т�;�)���<�B���A�ԢY?�;����Ϻ�D�ca
�g�f++�Y }���F���S���F���Ɍ
��KG�gSH!��n�)��O����:�I/g�d���ҩ<�I�Ăj[�w5�j�5����)Pe'��+R]���h
qD��j:Z8��}�
�(58����*���w��%�+��>Z����DgI3)<�YX�, "� ���}�"�[)zh��5�v����7�}2�Xɷ�u3�$�ߌ�cE:F�𤓉U9�����;�?р,�$�G~8�E��)MOj<�M�e�Ef�K�wg}{쿶�`=�/�&����	���U�|�_�k/�C�+R�� ����'�>'�z�/�N�+����Oe�%&=wG�Y#�p�;nYL{�g2USٱ�Hk�� ,'+W��Q�so�"��l[$,�D����|·k2u��M�
���3~�kp��8[a�p4�M
ê��M�7���ݱk�Z�q<��3~b�����m�n�6���g����O؞<e��*�h_���	:��G*��<��ּ�
����|]�u�H�/ڊl�L/x|T�lm�ޔk	��_1����j����I�_��ǫ�H~(e��H�2�76��O����@,b���&�̞Y�����
r�4ӛƇ�����(/T�r׻��x��-���*�O4h�d>_��
��W�ZM�j�BY��.5��=��{��j+qW,����ϡ��Ҟ��8�<o3qcjۖw�����>�\�F
�.+�b��%�˶�+:V��O� N͚ͅ�A���_ ��3��Ԅ��"V!��®��V�-�B6�QJ��4�����3���*.�����@�ix7�s���9+�%T�����l�7&&(�QJ��M7����e��*Ī�3���
&�����s���|wv%_g���\��!��98id��S���ww���|���.�O��p���8* �6K�oF�j�]�X֎7 ��]F��CD]���˕�ӧ���U2KS�Qx�b�eW��fm��VS��q��oo
ThK�p����������ڕ,Ef���$*L����B�ƥ��Ǆ�J��x���g�7u͹�J��&zC����[_�Y.���ƌ v�{m�4&/�1q2Z)zZ[0�~	|�V�6���pV���i��o��j\��;NN����ձo)�����|;�ե��`P;� :��Cm�dNC�A~�I_�TR�#U������� ��q*�����%�Tw<�V�w�A�����,�&㷰�y�!�<��.�h�N*Yn��s���a���H=l�E�	�"��_�EO��9DRt�{sA�Ϛ���]��v��1=�Ӭ�:[���� ����=z�&���e��(l�GŌa�~��>j��	O��<#��u9�"��rS�\�e�KRS�e8PǗ �S٦Z�w�h+��䞒`�_�z�0U�v��bOl[Լ�4�aP�S����皭��n]��9���|��G����+�|����&*>DF���7�o�}�䜱D�l��>�8ּ֘���m�Ơ�U8�d�V��ZN&��b�.`A���S��
����|w[&�ʿ�
CӇ�����x����������x�0T����y2�GJ,bB��t�}DJ1���OD~@�y|oi��_�R����25�� ~XpMM��~Fu0��� 7�����B�g��$9��]�i 	W��
={ϟ������\����!fJ�{l.����
��@w�'%��|̱�q/KZ�FM���=��^��EOA%b��rn7������S���(���ˠX�#6e�3�_]���qJE��´��@�ͥjmF��z$6�WMB�@�4�M[���5��]p�Iەl��]D�O$JyY�KIM�F#�<�9U�X�)�z|�OuUcD�o���C�w���U 1&i̧l68�;��+{�p��JK�^n(�%yz6��������Dx�+;����c{�'ݠ���x&�i�+��C��qU�E�)���XV�]�[I	�	:������ &+���|#]�;Q�oDU-�*��a����
#�ξŊ�X��w<�k]�>	����j��\�_����n�����A-�Hޡ���c�h
���n_�E	kNk�_�5N������۝�k�D�Ϸ+��=9/�*$�������l�EU����yB�!T��콼UӮx����=<�Ɓt
#G=߆�P˗�=��%�����/Ո/�ٷ����j{gV5�}`��
{@-3�>$
�ii�ݵr�����0��+��ɞ��U��L�ꛟ5dl�8�:�S��1�'�r��kX,Ͱ���:ȑ��O�q3K�������B,���1�QK{|�9@A.�^��fǑƄ��Җ��P���(���v�NEzMI`r �
��7<9�/\Y�e)����&�:&��|#�����N��R�&��Ґ���2�Y2�]D�s��?`h���R�23݈GAa��a�Z[�Ż�:g�F��`���)倸���qNHf��LXS����}�C4|$����,��ٙ��6�-�j�Ⱥ��R �$�Ϣ�3�]���
�_n]:ބ�<��ᱶ}�_�[>���g�%Le���A�IƾZh�Y�p�2.;��2љ8�NJB��a�����T�z���3�}sq���K��"?��G��0�م8�����"�tNFd�;�t'QA��+0��n� � �H=�,��T�h|�n�0��BWThX�ߞ~���t1���\�{Q�C�<�.8@�� �D$r���MI�L=�HQG�1�n9%�#�M��u{3Wԉ�hr!!��f�WVGƈ*g?鍒�����]Dk4��o�}������IJv0w�+%Tꍑ��A,u��.�t5���~�̛r� &z=NG˗��|^���{0�
�i�`xns*��vܽ�Z��j��+D*j�L_�U��6Xn��3yĂ=�$WM�0H�Z�="����8���|v^��ڞ�����?��o[4���Qw�q���c�	��͝SI����m�(�h
�*�W[�`t���� S�	h�D����X͞����N@8)I% �W��2�a�Y�!�肃d�Tp08�e���hg{�Z���\7D�$�.��*�<��X�E~Yk�75I���6���*�17G�F�5�g	� +(���˵heVF� ;�
�O�Vx��J ���7� l�F��9݄:~��x^�,�69J�J_�<<g�Nt^"�8�������� �'&~�:!��6��"c�I`w��Ż���H_����r04	sr=��� T'5s[�ȶIk׊��V%�w���_I{���	.��
���ڸK���!8����#�fu[+22h8=�����U1��LK΍;��� "��yx��C4�0Ҹ
.���_���O,5�H�7�����E�NƇ"V�R�K�>�/�[|�R8�"ykA��X�c���ѥ`�5���	3���{$"Nd@s��m�S�p�'�v�qLtq���͈����.��N$g%�3�����7�].�2c����OP�9����O>�O__���кf���nѱ4���i�a3_W���N�6f��|�`���-R6�`k�(��'�^�!	�������a7��?@��1dށ��@P��������{��薆*ܲKJ[H�&�Y�x�������t�ׅ����H�T�͏�٧譬sP;�H�}X���<:3�Fk@ob��C��/cV��:�>Qm~�&�⣺ʝ4Px5tE�����7B7�����h����LL��q{���я��Ic�J��̕�'�k�R�PfbhC���F�Y�����֍��i�[�,�;Ρ�	Ӷ�kTC����DϜ�P��^��>�o�4�����M�}��˰�ո�Q�v[��8�P�ҧ� =���� �\%�y��m������V�ytg? �QY�����O�D�̘�Mv9��Q��֮��Y�D��*�,���(Uv��e|�k��j���p���b�n��&��|s%���/%��(X�b}o�^B!��J첟r�X2�~���R����X(��k�q�4�ű�P�:�ڶ!� �3�Z���I=��gĔ���*�[�Lkoӡ W7}ͩR�>�FT����nӑ X�1B�����q���)+�/�0��}������'3�IUX����_��o�����L���6�b��	��R�b�1��/n�y��ޭ{����������g2\cNZ�����g������Q]r	�o0X^W#���=���!-���(���u�w��3?�p��Ć�@G0e�AO���0n��p���>�)qD�I��g��q,�>(E����AY�mP)�1�������+�L?��UxB0��V��ǧ��*���!�(���b���٩�X���O�A���W/�J�˓lŎ��q8�Υ�=��rLN�B� ,ST�[��z2��n���ё�����S��^���\�� �}n��C\�z�#�o^b\ܐѶ�^a�8�n�����7=/�H�F^m���Ҝz���%���?:S۞�[j���G�H�Q����ܺyd����PG�saB�����l�*5X<m�A�.� :
�0�Ṱ�u�������I��"��@@����] ���,[�nYd!��=:u=}8XjR��ke;%��,��Z�i��O񢬌cy�ޮ0n�_��@�lFU;��� �iFA
{1G�mX��f�āy����Zյ���gc~
PjTt"�E���T]���<Xf�@�{���u{u-8e��D�̓d��O"�
1%m�0q�u�t
I�E����3"+�:;F��߱ 1��w�͋ق�q��ݔWf���.�_�w91�첮q�9b�{�;�!�����x׫�f�=o��ſϵ�3��2^��v8N�Zƀ��Q�J��6���"���H)��
�����;T��ǌeK��m�^�8��Go'0ƿ�R��?�����l>ɨ���{NV��klF�����T�N��I¨&�w����Qd�h�8�>��R�� ���6Ͷ�3���_T���L7�\�U
�@��(A�5�N�y4�K�؜�/�������Uj��S�;�R���sڹ��>��\�$�P��  td����@t��)����� 
��y�B+MA^�6��?6�+Nπ�+@!�c��6�;��+;��o��«"zt�^/�:��HE�#�Q�B�ˡ�9����;��bu����k��4O�ؕT� �1�X�����Y��8�6�B��C��-9�C©P�*���-��

�ٳ��f{EzF�7�j�k�Q�郷��}C��-�����*M�d�3��B�H�d��H�:�Z�˒C�`���4�.��[���R+�w�4i%��7��F亓ё~*P�7 �u���Yw#XP���)�\�u#�*5I�a��)���']u��'��c�W�we"�|A���.�eO��➯C���$N�Uc����X1�.~,A>H����p1���2�̜�m�v���s(@�y�)@@��0Ԡ��է>�����CH�XK�O�As�+���~%�U�ɒ9�	^ /,�x�*V����g5�B��<�l���?�,�j~ZU_?Zf�(��!2�b�)ѐ�������I�fRA,7�T�-[��<��٣}A�߮�m����u��"IΊ�^3pKCt��"L|�����b]e�o����(����O�A�AY�k&C;?�5j�Nr��M�'�.��^p��	���=�IH��k��9���T�*U[=�N�m<MIZ���7a��z��M�Me�h�>����%�e�ma0�D����T����wG�^`�/׏���Sa����W��zinq� *ܸ^�4ʃ��Xi9�u�7��ƌ���M�e���*�lX?Ҭ��'2,�ǡ���"�C�fq(7S��Ů���i��ll�Ĉ|�?��*�u9I���U�~g�������!8]�LN<j�_e�"li��#�mN$T.z��B�	�X�E��<4��
�[�4��a�kl�)�U�?�2�H�m�����{-�-펭Uo	=yhi�r���(���r�a�m�֠�N���
�t�q�7�&��Xk��⫩r>��E�|��w��D���L�uQ�uY[9�;��͇� �b�}a_Y�ŋÝ#���ȗuu�e�l0��F~೒�kn��?L���?k�*��r�B�J]�i硯��F�ne!sN|e}Jsr2����
�P|�(KK;T�484��*�'����A7	S~ˑ|\�uṈЧ�f�9T�y������_�>��:�t�i[����5}E��7���~�<$I�4�y�fp�*���"{�(>�*+�Y��$ϙP*����k�Hg''h��v�{3�h1?��9��A0��ČA	�.�M��[�Ǜ�w���c�Y��HP0��BW�h}�>���i��/�y֫
�F�!8�r)G^�0��y��?���CXƣY(w�qHi]&ٻ3��sj�4��[�w3����y��=zW���3eT첈P�SCU��j��f 6r�>)��B֪Ț����/o����3Se�kE�'�*1�HPhIh���2^L�8�(��M�Ď&�9-L-_����G���"���!�Tq����q��&��h��e�Ө�D7z�e�72�ߌ�:�X=\a�z0)�3E��f|��g9��z:r2ݰ����嫤f葂N]Y��r����cX�Wւ�5�.�i�=�7u
[� a��,�蝹�0�g\�n TM���B%�h�76F��Wٿ������K��$#�U7�v5�n,����m����&3��|F�BG�{��	z����n���<?k?��L-��.hV�~G{f��%�~A�4ۄ}�?d�&�7y�4sGX� r$MD�n��	l/� %$�-�Eʂ�;�Qr�<9�׫f�M3.K����p�Z�k12�������0��P�edl6\@�~#j&�j$�'���<kRg��s�\�-������#�9�W�u[�L,
R�v����������
$N|La'���s0�����"2+/���s~�C�)	E&��^��¶���g��K��5�+0V1�QY��-{�Ecdg��
ۺ���L*I�e�%�$(C0QN緕�+��>x�=�j~A��h���S�4�[:����+� �F�A|����;�,�"*.���r��
�m��-So�`gq�_�/����>�m�)�S+�j����u�HɆ`���<��\��}�XAL�7�c�
}r����*�d��i#�@|������p  4e��s�|��5�B�:J�ᕌN�_��[G{`Д�X�-�6�.;�&ZU�����)z=n��j�����Ul$�Ǧ��J�r�bs��S�/��ȑF�ʮ6��z7hT}�����H�x=dqv�i�]��8L�`݋�|5dQ\���9B�N�y���%�x�����3ֻ�(���	���k��j�}�a|u:��&���i�$�1�ϱ!�	���%�hh� ��R��	��H`�_DK�)_{�c<�F
��թ���O?;��&�.�_n J׺e.#�����u��6='��gj|��]^�[ģ�Qy�_HrJZ ��)� ���_�Z�$P��>����H��j�.,�����8|UL�̔�/ J[�ʚ#���)\=M��	�T d�>�
/:ff=X�s�l+���ˢ��3��۷*��vϜ�o9���I@���4���[� ���*%�w9	�����:�F���x99��m��m�����a�6���yv��ו(������;&(�����^R#��~bs���RhJ-���;Q��T׶��/1F��T���wB�:�]�c7��?���WK�
�T X�M�-�i)�ԛ>�;ԅ�J2��3�[2
;�V��#=���bT!��y'��{��x���Q��CJ��٨���{Q����&���3���/��K��>y� Dh��b�od97��q�B$q2��c����E0�b�b`��j�%�ʃ	��JG�zF`���P2%٣�	`0�6����
�Q@e�9���ۺŜYR/��y�8C�d��C��DT�1lz��=۩Xt���Q;��"P-�����t�;�:�JGm|��ʣk�Ԯ�#�K�cZM�\���.�Ş�`�mf�C�����?�Y��y�~]�f���(�|�}�.Z��X�c�_Tx���A0�T�gc�ڦ:YA���r6��Yӟr�U%���S`�T��,���IuF�qR_���O�J<h�(۠��������"�bG�(w	l0u	�<v���¿s:�go{�-9����-e�w�)��#H�de�8��y�QE��a?��\/6����F�HA�6��(�Ut.�|3����Z2i0�����ߞk<d���z����5d�$��f���pW�8�+6��>�S�����ن7�{+�vS��M�� A����`���ޖ�.�IW�d��i�K���f��~U�Iw�P���E`�};�����3!���
���)N1_��[P�d?A�]^M�y��_���+���a��篸�c�����E�|BR�T�
���	�̗f~�D�^�K��."/�V6�4���[�վ��`�P��Tl���nc�9� �J��&CX����d����I~��D�U��-�>�@�)�*��C��C�'�~$ +�����%sQ��<��hC�Zi��#)�
`\v�^�
 ��AM;�G�VCf�W���Õ|�N�&Ay��g6u77�,;fS�����F���]��M��d��G�j�h;t�Okp.�^+��j��+i����ťg.��|�>Q�7"Y�)R}b1M�p��L���`fT���]�B;�Z�`�h�׉u������[��
����y ��5߳0��SzJ�^U�<���G��m�}�7(�Ժ��'uؓ�ne�U4��תs���%���9!U���:�|�K�໹�|�1��\ֶ�?{?MCd��	2�3���0�[q��'�BU�]�1fb"1w8�ץo��~���,
�ŨZg�R�8M���W�Ӣ%�aTrC���z��W�д��f�2|G���ky��/���	�_��\ȎVZ�^�n
��gx��|�h~��[N2i$QF,�f��!8���RnXS·yF�"F���w*�P�<�c"p������#����!!=v�"���nw�*n��l=zDV�d�Q�D��Z�w�r�v4���'�w��8�հw����� �LB��m��KKb����c���䗑O'��L:B�X^�{]��Iw�<�&9F��mv��}�؎bg�ђF:*���^�z��0�X���G����_�㋓a�Q�'���P���>��c�$��6��&� X�����lP!�$y�Xys|�g�3h}���E))
E�Q�6�"^����?z��)5�Bm���Nb�"��lrO�⺗}�ȁ9�坒���
!u�_�@�V�-�hӏW�tlw�!��@���Z^��M����ĭTP� N{���>�v�"�e�=q;v��N����~���t�t�Y����x� 1w�Pi�R�Q�Dmb�-}'���k�8�y:Ί�[�e����_���<�w9���x�����?p-�5<�Q�D�Y�+v�{�����2�&:�v{��Boe��Md��*`@�'�,k����@�
���T=��fz-�7���A)��T��{nP�L;қ!��C
��T�	��ëq��J�׹TyԑT�+�oI��
��Q-=�c��Ēq��<�F�+��� R�I=��V�R�Mj�������-b���!6�wWȥG�4pPs/��[�ǭ*`��J��\��Md�,� ��D���猾[~���:��N�[�l�FqQ���"�
z�=$���`��5����`��"�8m)���w���������E���������̈́�H��׸џ*fsL�� r"��Y)�R^�>Y��B�� .$~M�tG�`cQǞA}J����T�/�j*�K��gۉ�>` 㿋)�>�gWeR��1�/��2�'���ٜ���t/ ѳ0.����x�R�hS�a���u�rܬ0y����[% �L��K�Fn���R���0H;b�kZ�wwV+c�ps&������q�	��d�Fg���]r�����n7��o��.k���#�n]���&����E�>=���)�h��k1S���e
(ʃ7��L��dǣ��[y�[�� f	�j���g��M�} �+{�&oy%��=�{��@yk=�tR%$�V�5	�*Z�`�kl��0v�h�� �����R��5�#��W#D:������I�r��	c�g3&�T/�t������n2Af�L]d�Q�� ��V���߿�':J�']��C���`�
~h4��#!`�D��9�a�'�y��C|%���d4O��!}<��4�ه�T�8��lȖBüK�����Q�#����Z�iz���ד\�"GVl������f �ۆ Z���~���j��h3�c�
w���"������ڶ4�y|K(
�o���cJ���-߇����P/�bI���E����G"�`�E&f�|� ���kh&�,����u�5�Ιtl)���ge���䆽W�Я�Pz�2�kBw�0g�C͕Ƙyjd�v8n��q��#��wi@~ۥۭ0N���gS[��\N��VN�)��TY�q6C��i{���)r꛴�V2�����X���Ѿ��k�]��pbO��:bW*�_���H.�}�M<�{�i�m��[�K� k���Ώ}Gy��B��t]�6�a��
&��uޯ�gy��~
:|�T(�K�HC����Ѩ�i�����I��fX�sEX�:y3��; �+�i����hQ�W8m���8�����a�**���'5��m�L�����X�$g�U&7�F��"~��'LEYhYS �SO����%��A����pO���B����\�W�3o7�k8;c��;d^~����N��qg^y��������jh�3[���1/�_�q�A�ې{_�#aF�:0s��:����l�L)U��V��Ө�䎾%�V�B��`
}������㭊�ǃ�����ԉv0X���I�����r����D�lZ{w�Y'�A�����Cn	/Z��.!9�"Yϧ�F��5�����x�
��*�^�?bp��c&Ė,��K�����Po��i7p�G�mJ$�nD���x��s�P��*6MVT �A�1F\#��B�خ����hR<�|�:&�)1�����)=h�a{����R� 	�Qv�_�$CcB�P�|+�حq?���V�
�5�F��4����o�K"�|+���3��Ш٨�H�u�E�ϗ�=g���Wx�2�j�fR�-P�g�2}7�Y0��'�~@监ǿs v���G��D�%�ܑ+I4�gZ�M���œt������
�Qʘ��s���З2����d��w>�K�W���aa�W#a�����G^O��}]��`�(.�M���u�U�(�SU��s���0�����l1[���s���pT�G��yK�B<���()�ag��y�/w��/�}Kíz˘��ow���Yc���,�����Ʋ����^j�~���p]6KX�"��r�=���I��C���r�͟
Y�mD���ʤkԑ����B���/͑���l=D�F!R��I�N۵�V���#\k0VŜ

B.sqH�MBQ�qr�ڽUԐ�@{�=
��
:�	�m��+Ȓ�����������h]Mi3��OeZ�f�J��-�P�[\�ۮkN��l������)�~�,~��W9�����8R ��VL^`d�%�͒�
���PW��M(O k?�sm\��x�<�~�7�[O��x��1;�mw#jz�m�W-�2T�Jpg-�����xn�ߩ��z
Q�:V¯(f���?ژ"�{��=��'��eL���R�|t��5C�?��{����W=�2�8|�t�a�ڪR��׬d�D@?|͸��>}�(����SF��L4������8Ji�#S"C�ԑi��o��h_��(Z�
o���u�)�$%��I�w}v�a�R|$R�J1�� ���b�I���Ȫ�)�!�jv~�H
�&6^T�s����<H���^ׅ��_?�ˮ���/v�Q�p��U\ŵ��6�2pT�ݨi���S/�P�XG��$C�~c��쟨F�+-c�PuH�&�l�J����T&�q��OxrX�O��	�q��zVm��p�V]�z�zu/��?,��
4�p9��{ $��^XB`_�� 'v!�Q�����h�+:�s%����r^'j�?P��;��	�ydr���ށ-���5Oq���@I�Զ�T�=fr݈�w��,�{���s��o[�k���@5��
RM}�a}HN4Zn����]Щ�<k I0�>o�&��)��ɗv`������m���u���S�e�o���\K��f�=gA�ph�gw '� �g���-F�$��2 �b/��7r�T<f0}�{-����{����Q��e�?�*�����qh}zb;��،��15����;׻�i����f��Q�>{,Als�	a/ת���9��Y�j��|5AG��.XF��->=��}��R����挾�ϡ�
D�J:߻�Xwb��f�B1I��{�u����G�տ�Vێ��4Di��wΔ>�,�{��O5��/rG%j����ީ����yO��K�����!dK��Ӵ!*��
�ʗ���|$�Qʵ�]*,R�ɩ�'�4׆���U��,4�Hp�9������-9j-�!�����8�D�����!9��ţ~��I[LЋ���O���>*��w��c��&�d<�'!C�ͺJ��JH��1"���+��dhbx�@O�#3������g�,�f�GV
B�,Oj$okE"(�8����9�q�#��>�a��>�z޹���a���?�����{����y�~|�Z��Y����Vr���oi�:a8��
V�΢�e+�D���w+����p��"�83�K ��u���AZ<�����Zֹ��9`�>��313d��(�,ð�G�����a(���ɧ��m���X���܍8�������E�b٨��.T^�iDU��.��L�񠐕Hs��8���S��?���R�5��Q�D�zv�\�rmW�������G�b
<<�.�iwPc��ܦ��Urc;7߽R:yHY3�Ɲڼҭ��q�ؙ�_�⍚�(҉g�ԅ?
J(L�뛬�|P?�b��ݍ:m2W�մ��_���P1^���"��f8��ү�^�������c��bg��Z�v)�FH�߶!��*`��¦��֡����&���[���dg�$+��תڋY�M����2��Ѳ^Ξ�%D�F"�Ⱥ�L߰ب�$��� ᗁ�����c�8����fTĝ�kg��+j��4�o=V	 VΉ���Y�5�����:�����q�Rx�rc�H$-�\De.S�t��F~0��]�i >��������֩���Λ�� $��E�	dN fBh�'r�8Z�ɓ4xA����
�o�mhw<�b(â��D�=��9�3��sá�&Z�`��5|������9s ��c��CG�*�?�-m�ԅ�%A�$ʐFV�S���S/b������*�\�y�~[w�����0�u����p:�����*����s`HG`'���m�o}�~��y�k)�xf��F{��C1�mGy&D�Xudq�tz	��<Y����4
z�Bؽaf2�����p�a��X����Bȸr���i}��N�:�E_?��e3IZ (��0��L�eЇ�vh.�E����}[R|ZMܓ,�V[�:i!�>�(}nL}�Aq�J��rT�9��˫���u-�}�Z��ta���Zp�`��Ly-���똞��8������Qz)��G�>���	<Ղ�*D�p�b�(��-�=w�"����'`���!8s�X\N��{����sM��ɘΠ�4�/�3�� -Py:'��&�4�@�S�������c�5٭���[B/��W����v��i���� �]� ��{}���N�t M�6܅�n-c�p��`�:&��߶���W�VJ ;��P��e�5���ݜZ��kSr�6�j�y�R�聮�v~�M�_�җ�]
mo������E�i�q����g_�`�r�>
f�?�TZ�>�P9A*���3MY���_�K%M ���R�Wo��.�RE�K��\��&�a�>r�U`���ϩDO�zxC8�:�ҟR<�ZW�r��m�8�j�C�84���;'�v����W����o���L��-�;&��;=te��"�ʈ����7ID�MNs��X���|a�
cݺ��u�
"�[�J���μ��dAqu;6��lH
���J�I�����y3?&X�|w��'q핛�U�)o!����,XS�sƽ$I�}>��#0n�J9a2���~�8Rj�t��A�u}VN�r�]���n�3�u�{ ּ���Sv {��@g�'��7���p�C�~�u2P���]���7,J�Ё���`�#{R+�=�8'��ޕ��a
�����~�v�n� ��z|Ag���񠛙�i���鍓��7�l,]�r��E�fx-�g�Vv�$�I�4h�v����Z��o���O�o�+pz��y����^�Otid�[�j�*!2�O�х�v����������U_�[���� ������F�!�{}�4�.LO���LF:�b$�1��>���&<1��_>}�"u#H��M1����Bh
_�L]7�s�y"��$�ǥYz��*W�_�Bw���Y��c�7�p���`d���|��	<7L�U]�M/����<@u��@�Z���l�G�ȖX���%�_z����w���O5'z��_�Z�Ð�w/��s
Dc��lO5���DD��a��5|�_X�,ix̑f�_��$�
1L��+GY[2� KB6�6�9�=j���RPJ>���P�74Fk�d��
�Yre�y��PDd*'��|��/��ݔӽ*?[W�H��)v`_���������D�ܻ�������E�Z�L=;��/9?��_h���!�B�L�X	��ܝZ�a�]��1O��Q�(��Â_�r�rom&8WrM\н�W�������v��܏��LW{�P+'K�R'��=b�����{��mv5���V�2���fI��l�ݎ�"mj��^�S�{ 0I6���+��,0�a��%�X]��^�����H��h����rML�@%[ZL� �n^������O�(�/,�
�c3�Ɂ1��g)���)o�Z���F�Ҵ�I�=�KY���>aV;ú>�
��)n>�O`X���^��&�.2��|tc���	���������9��Ay�ť�D� u�-�w<�z�J+o[l[ ٜ��W��z9vb_B1L��8:20Wc*z�h��(+"]�!�0'��%ghhqv�>7<\V7o����F~:)����eL���~�@E�+r\'��?��|s�uTT�7\�S��<�@6Z��#�t}	��vh�?�Q��q�-=#n����?�? ����͵R��t��Gb�P���#�
x���=T0<�Dp�ZT��^A���{C�
f����O���ƌ�
r=h;V��R]����\+-����XEG��c�\�CpA��y,(�&Ҙ���B�쬭�e�[(��zI�u����X�L���qg�B\k4�1U<������|zȐ�o_ȫ�/sV�l�5��:Ҝv������J����o����@��YZ_�L�9�+�S��.ݘ�n�����[}c��7r�5GO���:,S�%�3��� �)�����h����䐸�
!��C�L_��V8&zJ�%��N���"$x6����G(y���s�]��F>��q`^�mG�C��ޔ`ڇ�F��l;�.S�7{�����ﱂ�3���%̭H��>��&X&wmĊ9`#��ޱ�bAW�-ݎL������4�f�S�,�2�(�N�dX���,m*�Xy7{
�&>�������
[���~~B��Of���vYڌ�
c7����tϕ�a��'\^v|���uʩw<2�y ����Y��J7r=�pV���D|���ř~C�{�_���w�{���1J�����oB����+vdZ�Y&��͈u�/s�����g��7��a�]@*T�W�T��>���)�r��I}U9������!;Gl�g����:�n쯬?�
�w�	 ҕ(]��`{��o�qUCs�O~f�:�gԕݰUq��;{��/e_3�L�z����Y$L%�������]h\��t��H.P�޵���a����u��Tn:<V�:=�#+b��;Bt9qg{&�����
B��@���PG�`�DJl���ϕ�(}UP�5BY����!�����q�'���NlU�-a<��Zh��e�H/[ZǬ�U~p9��6���{��8c�&9�qR{����r��s��W���Sv��ڨ��լ�ԺB۰d�<t��Gz� �淙�-	����O�9i� Js�5��Mh�������3�J������ST���M�8�(ţ�8��~
-��.���Q���xt���No�=q��LI=U Z�t��`}|�^���!p�E��kr��pLOLPR?�"���P@�@��v������c�ؑ�?I�cV�a �D��ߩ��.�<R�L��c�ѪRC@x�I�ڪ����/�/'
� �Hc eѿ/��0����"T��������vH�����p���&A��V�ܱ���ý��&��]Z2H����)�R��#
�ái�j��o�L�Q-<^2B)tƅ�
��.�>�*QO��;�����]�X�Ѵo����ϝ3�Bb$a�^,�4; �
����l'jn0���	�4IۀG���]�V1 ���=�eh.�������)u�x0O�zΟV�2�^J�~����P��C�%	4�9l��M�,_[�ܼ�?4����_�G& L��=���{`휓
��)b��=E՟��PȘT��k% $c��X�B��:�=
�2���RT(�a�Қ$��F]��"�mB*��s�uKR�<�n��Qq`�(@��ޯS�0L?bUw歙����G\�ؐ�=�����W6��� ��m��f(�oq���{����!�(�JD�J�S�S&O]�Ƈ���4�h@�Ej�j�^����T�ֻ%��z���\(7��[<���q��Y �9�нX�e��Y�d� ��Q+Y��)4�2�vX0�l4�.pi��Vp�3��{�D�
��{�8ۺ����pp��OBO�eh�t�t��c(�bfꏯY�wU:P��-Kd�{qaG-B�,�&fUs�A}U���܋��.��X$����_7G�t���pg����)�)��Gz���.'���̙e�'�!�:�%s�@�v6���2��������Wu�-?D�˸
A����ovk��њW3=�w�(3��j���滛sο�C��EI���'i^G�3>�F�e���պ�3��R�}@�z�(
�C�}���ư��%�KԒ�#mc���h�`9�,�
.�[�Lz��sjbz
L ��)�p��7_����iQt�5~�2�K)I��U�XQ�{hyO��"peL��=h�A�kA�4 ^J6:�Z.�tc���*�%iCA����x�8\�� =;���6H�6�!��m�4�a�O��b�)[�K�Dq ��2_�\�/�-�i�g�mמ��e���"W��Z�N��ㄍ ���yl4�!�aT�jU}G���7z��l �{���~hJ���E*볲>�X8~B
�yJ?�.ҟ3�$~=�	;F�~����d��Ku�7U
[�xc�]/�k|7��Ri��s�Ë���v�d��:��wU��<��[���%��>ss܆Ÿ+WZ�|��f�\�$�?���f�&���g
zHj��=L�;*c���ޟ^��U���4�x�d�$E��뻼����J�V۬�(J�
j��h/_]���� ���%e��M\
�q�a'=K �@���؇�*E���1bH_�~������Ov���"�`�rFVC��t���i�H�����p�P#,>[`��W�T�;W9@4"'u�f��
n~��g���|�[�q�����@J�y�{��V��e�޻u��Zӛ�M������;Y"Z������WN�zs�
���Gy��	;?���>P2'�/���z;CS- f��j0�|. �Z�a�|��{q�ka*�������۲���X1mv>�$)�� ����w�����H��	8�;��W;|��X�� �e�?����'�	���C����Ɩ�t<��ϻ�k����,��i�H")3$E��������ϳ���U٦7jا��?/4Bu�f!�8�3�V��P� ��9�����?%�V7��Iee�ipL�(��di������8x~f�?	�U�NwJ}r��di�9�u=.�s���x�]�k�[�oF`V
3��^���sq�
�k�����:Y�/
��l=W����o&�5�B0�O_���\�9D1����O��Ў�����Uȗ':uY�ːB��^�f��a,�N���Ol
��SL��5N9�L�@��[��	o�o�S'ùP~~t�إ �s&_E�T���şk\΁�B�GTƀ:3l������̙����P<��� �LY�&;�	���-��Ώ/~��ȋ��%�\Ъ+���d+/jg��d$h@/�  ,�  .܀)>���%�g=}i��g�I�ұ��p(s᥈03�$`�UT�H.��T޻`�!���	����)��X���ׁ��+� ����׿fW�W�����I+�4���+��LR1T��me�ȭ�%�
�e
�g
|߃8Ks"8��0�)p�����"S�g���g�C���ǃ�!���xe���f�2����6�>��%�z
�	E0,R�G��!I�.6X���?��nZ�8Ӥ�Z�,�����dLE�h�x̾��#�w��X䥗M�����P�� ��_���i���s�:�
��p�.|i*3��y{�b0�it3�eo֢[c|�sp������iui]��05]�7V�bmLR2Z_TU`u����z�|�~�I�F���K{���4Սs�QJM�m�,��5g`r[;��;=�^�?�W���x	e�5_jL@	n�g|�&>��n3����m2f2��F�V�
��#�9��.a�V�xl@>� �+M��*M���g�Kvq���#�%�y,���؝E���oqP����2�� ӯ�p��p�gI#�Y����C���6�}�I�\�Xў�;���h���&�g��Q��5��m�-���'ߧ1�?�)
���*o$g��I�9�5W|�p,'H@��\\j�_w(�P��x�F�����x�՘N��i��N��[g�:�F"6L_��26�m�8k�?[�17.�� I�Pf�i��y����p���ô	V��nr��5�C/ݩ��Ǣ��zW�n�I���|o���~��CHBw$���g/�e��5�˨K���V7�`\��"o\���h� "����v�[@�"(��4R��k�^$QPmWr����/N�X�n���m1rdur�{��?jS������ǣ9&O{��AE�7�[�	�Y���m����B8��cR3H��ˬ>�&��<��ږ2�8BG`����i��8Y&��	���Q��7B�����z�if�pRF-*��4GŹ�	�I�������l	�	��䠂���胸#u��/�zݡME��,/Ks<ٕ�������^|�~G��"ERunNE6���+�"��Б辗H��IL�
�Ԫ�D��1 ��8l�q�������`�d�z�Y\��T+(�̳�E0�K��ʵ�wx��ջ�כ'����ɳ,aqY_�"�D;�jxqZ�7�aqnm���e-Lh^&ߏ��n�- ����m�!%�xȮ�bO"��5�#� ��\,S.�6��T	f��gj&O�Cm��n~��#ș��s�ɬ2��G/SM��PG{ߐ��v�lvP��U��;�H��k�"�x�����Ցף���^�6m �9Ao�a�"�d�_J��`A����_E�\D��sD��$C<ٕQ�'���aJ�Q�	��[���?��N�Н`���Ji�䷡�g#�#w���/��D��/�>��G���C�e̲�v� v��#�����ZR���	Lk�� �)����A�>�S��Zj�P��ZR��5�2��p����V�\��<~RN7�iNf ��>�p��C���dJ��y��`�������r�����C?S��V�����AV�O�m�L�BE:�q�D��;i�l�}&��3ߡW����w��K��+�O���4��(��v�� �ԗ˾M;�f,ifT��H�\V��ЎG�d�\e��;�cZ������D�����8�oK��Q�_�8�!O����__�}Y�g��cŤY'�-i6��>J���)����޸�8m��5ڄ�h!�"p��:����d�����67����~"�B vU��x��V0�'�,;�(~��}�`��Ȅ �����Rg�!�Zu,7f)tBxǦa��� 9�ӫ�R��.�QS+
32���U�|s,�����"�p `�	�#G-�5��*��P&w��$��]|���է�Ķ5>w� O�NnҜ8�peW>�;�ٝ5��p��Ҽ=t9ͮ����!���(�}r����Umʜ<�b;IH\��`������ה��2\�W�,h���>�2����ؤ��c��id5���x7��c���4p�uޜ�쾎�����8���K���R0�1m��gE[��7\/��`�>P�&v_�9 e�u��#>����.$�vӧ�q�-k�*���͡����s�S��yu��e=�A��F��*�8}��[��#{�8�)m�z�7�;�m�a��-@<IF�:<�D*���oŸLe�ԝ��o�Ժ�/*��կ�B
�SWo�I�h�iv��5��q"�GS5�a�w+�NE�&nk�:Iz������&,/�s rQ�%����3c��
O�'�rW������t���:�v��L -N��G삋U�{Q��`�5(GR޸2�n���`:����o.^����s����!�,����ӻ�)��ra���~_'ߊ�����!��}�3Ͼm�[<RYw��@;>�6]�P&9��H-G,���X+=�׍:5���[�2T�y$x��G8T��x �E�Ռ/��WEt�,�������ʪ܃�!��I��,t^��1�%���y�*��y��4�BA�=�䢪o (�haZ��~���R���]���N�Qw~��;�x� g���m��s��=?�����<�Z���d(�� ݾH��ⷣ�%k��`�7��	�O�����&ľG��A���t�0���R�C���_M�+��݇_\�ɟ<�1�*�iȤA�n��X���7Q�����R�W�.�25Nz�?Y�ث����u�.<-���i�s�^�q��J�\�m��C��nkDL�3��
��1 i!��@+qm�?�}-Wjss�>�B�"tb�q�\&�l�g����<;g`�i+ ���.8a����V�թ�5&���>I��$�A>p�?  �>o��Js�#�m�Do5� ���ج3d7�����޾��l�A����X�e�S`�l'�]������(r�c�z��(����c����p'�c�o��9��U��&�Z�nDKu�� ��E���\
-v�˥^qevqz{�)�s��´#��p��5��K��kD�UP��5S�������U���^�d!v��k	(t\�Ԉ����.��;t>���G.,J����E��]��M�f)o��� ư���,�X�������������˔H~�1nHp�m�N|� hE��H)���{���;$E+���M�yaq+�
��>hH%�ኊ�fYZ�D�G�U�=@���u���o$ф�ݟ�d|3�W@��Q9a¾]�h�ς�p�V�	�&�}+HlM��BR��+���k0F��z��>�ڝ}�B?����Q��|V�I��g�:I��v;Q�quXo�[��}.���W�*�O5	�RR�������n$��@�5��6��x�����؆B�YPT��-��J"��Y�Ş���ΰ���$�j�M\�֛*� Ri�ƪ��cR7c#E��꧱��m�y��	��p�c�릯eE��/4��j��r��:�l���a��|G'��2�I��2)'�]d�^�Sf1n6&gO,�ԌP��$2�����RŠ�*�� X���{6���ߒ��gz�t*88囡[{��ߘ9(��4]4wH ��s�e�S��
CȺ�u��8�R#��ۮg+�E�r�$Q���G!�v�*_�	FoX�MGE��[k���Q~�;�-hq��̖��D$��Z?H�GS�5�O[2 ����GZ�~�z]���G$�xs�dA��� �X��D�u~��csބo��ʮD���$��g/ g�3T<(�0R�=�����zM����^^�"+�m
DȑOLy��f��������B;|��]�B�>`���R���-Ei�S����
p�NHX��?`��ZwA2��F�'���}�Rv���AO��;��ÈFgi&ൕ��U6�,^Jd�p�ʢ�j����9v��T3�o/��5����.o��J���b��x'����v+�B�5e����˶��K&Cϧ���R��Iq�! �[u"�D%�JBC������.D�u��+@,BJ�e���A�!r�d�4�jt��z���'r��&�p���1��a._�Ȭ�s.��9�(��dUV���'8�9>_
���e}���_��Ά�B"oG�D��ne����y��^9�y�|����<��N.��㝕Hx� ��>����^�/��e��y��<���G茶ud�}F
k��m�����զ�𤎌���m[/�(GFc��
�@�����5�� �h��K�H��/@ ����q��p���f.>�t1�:_�h���+�̟.OF=��$�A�~8Hk����*KG��uI�|�Q�Nl���P��院a,�>` u9�Sl�rv:b�_H�q.�'�<9�9�x�$�=翠ng=w�1�%gW�z?Q��ݢq���j�bG�����
_ј���?�_�}� :��ॺ�G��5��S��Z�<�֫
��~����(�Wp���}�j>j�#G����Tj�>�1�J��7x���9����E��lr
��|���gb�!����m6?}�Pla��`Q텲B���d���<Kx�����%��,��<K>&s�8f���%��K�44e1�v�q�|�3	�'������?z�Ќ/v�qC"y�eku[a>��yB�.�ͼ��Zf���T$�h�;=}Ov��)���˭�������Nt@�N揱��t�b���z-�QÎ��}�:������T�www�����A�Q<ڀ>v!;\���}T�������e�*�#�W�y���-�A�<��(< � q�é;|�D��
x���0�tTܴI���yc�5�'�������Y���Q-��p���
55�H|����Xށ�~8e�;i{J�s��`��^6����	��O3�ӷ���TY�B�6�𸞐�<���j�S!�#%E�ޮm���l�P��Ln��FB���l"Ou��|�f���¶�"�LU��ra��5VV�:�������Ew��y��RYø�B��}I��DʭI����Xo=U~��H��ɿ�FoN���8������:G�52�LƓ��)Բ����f��24C'�n�#So�x6��3�wO-�so2@�*������Pm'n����j�+?�g+鱹vb�
i�����]޾��Hч�D�\N�TKkRiMr�7m�	��O4�Ey��

�;���o��>Ԧ��p�l�o�cA=��E��O�[Ќ�WO��<�w��7�����C�t�{��΢�g�)���9T)�q}X�8Z�$��b
Y���9�_��˺a�Bh�Cq�u�
m��i"���r�)�����դN�6��d� �~��WZ�'�`��k����- ���� �D�U^ɴ6j�wK ��B�-�I�d�l���Q�$fj[��.�ln��T�m���߼ �.�L��|:�M ���gFj"�m������4&��9I�u���8*���ެȭ�BE�6QR?W�ݓ&	�l��T�I2Z�_��Л�P	{#
}�_	��)޹�)����rQ|aza�"��Q�����s��j�u
��sP�6��߄�&���k��$B�)f@�#����%J)��N���+��t�hI��"s��Du�4�wP��SC5�A,F숖m������mC`�r������s2|��v�U�ï�[>���)��v��qO�Vhw����s��BW��$�������aRq8B0�%�\R)cN�H�J3����C0�6��N��^�L3j��,;����R0�;g<���ݲfn�������7�l`g�e0#��=:C�E��5҆�0X,{}�F`�L}��������+RN<$�7K�Ƶ(�=Q�\9ø�B>�n(�5�f�Q#J��X)�'�Ǹ{Ymd.�HfB�v�Ot��"��'s��Lk�OY.�:��*]�J�
����~�x��~��H~�dC�,L_���hs)M�Z�����9q�&tB� o�7�$Fg�֩4�P4q����1��y�I/En"��%z3x��X�5h��)\ßL sEv
E�"�|�����d��ZՆ���\GԺ���%��6���������A*1�&CW�7��r���Eec�뤡�VʭD�X�`��g�\֗��)M�d������Q,($K�pa��H6,R ���w�8_VFTe;r���~�0�b8�d^N��C�x'=�oU�)���T�,ښ1�����ϖ>�­�oYs��W^����M̠�v?�{���c��q�.C�oڝ+��K�q�60�;��Ѳg��W���˱bf�S�n����.��u��qp*U��k�W6}/���N
��|e���P��{���99�֚���?��H�3T�E��������xf���hVN=��R$T"��K+�ݹK��H���}��G�^xB�Ҵ�IA��r4��tפ�Z#�f�=V����/�K�yy8F��c?|�xǎ+9�&�:Z�_>M,\S-�XM��gF>�-m�Lh��K�����Fru�yc�)A�qL䰺4eLg&Q)3��D�ܡb �b��Q�5��5��#>�]��z�Vz8E#��9�2��,�����_��m?����ᘠ�YmL�������O	�D���o2���~��1�d����yעwY��:�A������ڍ��Pd��>Ni3��9�H2�W�zbV����~O�A �
�[�L9V���^��M���Ľ��qi�����h4ۣ#\��K���D묬 �����N�͋�W�FĔ��u�)�
y!�-��]�s�7��P=�Վ�)���\D��1�ႈ���hi ��*��_��X��OcKyP�ښ3�sN>�3`N|g��nޤ�b������~G�3�Z��f^����C�AN�qg2��o	6�S
T,��ó�"��	oQ�>p��p�>Bf'L
��s&5�\��bRW�(jT1��=�K����,U�M���C�}XkE{9`�
OP&��(�����:k8Z%a�V�\9�h��.���y���b���1�7A�@aԷ��Om�e�O�>"ߓ�\�A~.�N�K����[�xE �S�V�VZue`�fi�]��[����ʆ��.��zP�~���s�%Vܯo4��^k��eT�����6�)NLrW���(Tc�������P�x��o԰7��dd�S#MmY���/+
w��(u��� �$�-�� �Sv�S�@�[��Sloʮ��%�f�(�y�8�p��j�:y���'�&�`��]=��&�V�-rbH�Ji"uw~�)+�ׇ��Q21�����sl�MÚ�erp1�Ɨn�i"?~Lt�o��0�P\��;t�U�"�z󟷠�=ځ=Qz�n������m�;d���S[�	Pg��pbW	@p{j{~�U}=x\�ԟT�̮����<ͽ�b��%�)n�����,��
�z!ce.SC�m5t�<66U��l���jr`	'.��*'���������I�>�b� ��Iv?s��fx�8
���,��`�#<�I �үXi�K�m@N�^�X�{}q   �:\J >̢.%�
�'5���a�o7����%��&3U����cR��&(F�w
��\,XZ8��<b�W�]��t��$�ܯc�@k��zV��9�۟|���X�/%'��u@1��=|*�<��9�7X�^�wkqk8k�8��[V��Q_�@L�VVj�9k��;Y��]��#�����_T|��K�Ѧ��`yl�uʩ��c6<a�1-���X�Wt9�f}���Rw�Q��׬]����8�A �\3�z����]�m �_�9EE�;�a�Z,�V�}���U�qzYz��\�$'��?F\��qg��^~��V�{_�4������UbV��#*K�V{�Ԓ�pX�����HN!����?фh7��d�@z����^�L<K�@�0\�ѽ19�g1�f��цs��u5��M��>�=�^9�fCBϨ ���Bh�S���aI��Eó#2Y.��Z���D�	�x��\����	�*oz�����I��0��
?d�XP
(���j��+W:�����hrf�TuuQx��g����p�߆b�+ۘ�1;����K+t�E~�9>I���i;��O��<=�*�������P��K��J�8g�}�L1������jS��]4 EOj�ǀ��dW]�sK0d<�c�d�v��=�WX���}bR��6x��c���c$�]"�W��d��W�����-��	��� B���X�ܢ�q-$�G���W�~��
�I�|\C��S�85��}f`�Yg�W=�v�p��a�Kk��B8]ĺ܄	�P;�8��=k37{���Ѷv�>Q�ѭ%�:>�.�"O �1�Bv�;��ȁ����>(2��O�G"��BszO\^qJ0)+��.|oK1�d�0"�]�9��:�kK��.�c�l�����#���T�e�C@�!�efR�Ĩ
���}[��o���p��%���8���+ah70�Ax�O�k×�4@�^�B�z/w[]� j���V�.p΄���D�A��j��u�3�2����V�`����#��H@�����|h�Kv�W�	,�iB�%���H����dW��� V���6C�t��b� E�?���ҷ�|H�����3����am'�rHXRm;�������-�
3c:u=^��W�r�id�ԁ�o�))��hԔ��0�r(��8��0�,����R/�]&�-� �[��v� &1C�,��6�t��A�jN��E��	�2��x��!�.PF�f[�>�
�A��=7Gϻ��H�S$I�y�'t���#)�c��+��� 
C\�e3@��T�%Kʯ�?j�`��9iX%2)�
�����ɤ���bT[�"�X��b��w'��q_�<���wdL�J�n�ʻIS�U����ҟ	�?�X0��e����*�L�3*�W9�qu�¼ٷƝQv�[l
m�3���~�na#�T�ȃT[z��U\$�]�����{͆��i{4I:ň�P��V�&�7�_�m�C.��o��2�Y3��9���v���h��Z,=�F����9����{�k�_���|�0��~#C � �{5���yFP_-����.:�]sA\)YVw?!5"ԃ��;hB3Z�H-��-��l����D�G)��/�)��l�$��2��=�]���M����;���>
J+���T�s-L���߁����i�J汻�)Ծ�5�`�-��`fy�Z'���ۭ��!#N��T*u�C�W&"մ~���C��>�]��[�I�B��'>��K��
M_:t�OT�~��Pdk�������j�툪㷷��buS1EG���p��w
�8������$�Ķ ��<�%'!��6�*C��ݬ���ǭq�{�y0�h�� _�)M,X�4�67Q�xf������/צQ�^�6��g��՚N96ظ�8K�vemS:>��+�{t!���1��$6��3Ik�\���R��[��{�W
��P�?gby�sNd��A�~�j��so`T��k�gL/�Z��3�˨��D҉ΗP�\	`ZZ�����9-�S�}�N��JG�`�2ڀ�KKX*��O��r��3���߅�@�z�5�Q]0s8Leh�9S/���.�"I�8��٨\&\U��E��.S�	�E�{ഽ�
���%hY�  �5���9�c��v�4D�q�ᝍ�@���*X1�h�%������1z�LW�����t�H[ٸW^���/�
�+��o�o_<�#���	1ϗ�u/�7��ף���*T�_�+��G��I�,x����h������,Ŝcl��:9[�=���X����\�y�Wi�v�j��\�bi��쳀�QRM�q�U壟zxR�Z[�[}N,�+V�G�fx�`G�}_��M:�J����d�,��Z͎���7�]�<��� ���9���ՀQ$����Z���.��=r�T�'�b�L�����p��A=�ըQ�$���y�@�J��eמט���*��}��ݔM!�� }�rt|�ӽڦ�3BVok5"s�e��.� �QVR�I�.�,\�d ��A�LgI��L\v��u�Ǖ�Yc%<�e����A`�
��bs���!�`X<�HVrNJ�.��
��_�����i[�y|nk
:0�2����N0�\�,�K�
�w�l�w�>QM�ƧM���b���r��i\0�%�I�oX�f#y�uRp=g��]��h�#k�	�
lK��|�6O(Ӟ+��20���Ho�cI~����Vו_=���jѐJ�V�c�{T����v���D�������C���(��|���~�G������?�)3�Y�o�YG�@}�,���Gk�h��v4~�oq��8f|a��-�rl�9�C9�����MR�����[J�>d2��q��K4^WN�Xm><q`	�=�n5@8�v�esIδ��!���y0�w'�9_�����|���#�6A>]���ߓ�����G�I�wO�0���%�7�3n�#� w�6d�N���x�}.qW�t�^�HPF��&�ދ���Ɛ�Z:�y�
	��K֥k�8�Z��a�8GZ���RLmN�Y_ _�'�fu�e\T��/�6� ��_
 T�f��oo�=�c�Έc��*�	 c�G���Qf~t�h{��=͕}�O���Sz�[���SM/��w3*�zbAfSY���~
��u�H#��
��#-�CC%^S���Od�%{	:ǰ��/[�d���n�v����J��nY����]�E�D�T�r�IĽ��,ye���p�e�)�E����#l��cZ;��I��hR\���4.7���H��\��"�M�
�5�t�>��:R�Z~~Bۏ���CO>Ū=F���<q�`[L��r��(��"a^�(a��T&4�Ǣ� -��8�x/us�4��t:i��3o��1�S�씎�#����|	h
�)���V�ny������cJ�u��ց(Wk%�{
g%�	��4��;�ơJU�+�wA�����AbIa:Ѭ�����F��o�!/�4\���A�;��p 
7�20�h�}ۅ�A�͐��֥�JŪ�X�ry���h,�Z���q���˦��kؗzb��_<
�"s	y�����D?K�]K��J�7�29(+���e��贀����'e�'���G����TP~G�K/�o��H��}Q}���4����Y���;���j胆y�q�gS��o��E���N*c')!�zh+�u�
$X:�\�Ǌ��[wsP���1�YR��@�ҝ n���,*M؞�S�+[ R�XAё �Vl;a��y}`r����Y�Y���+�	d�������w��p���P1��޶�}U�?�wO�f�L�c�������'A�#�L��TA�lҮp߳�H[�+�ٸz΂e8 �]�sCw��W��J�M;���w�=6LK[�+���B@���P��+|���.�C�𞍕��e\�
�}+i�l7��$����*P�p6n��6HIV�������i�/w�~P�*L᠂2(����Z�v�����9Dq"%�?e�W[eP���T�q���V7���H�f8|���4l҇�+)�U+l)MA�њ�a���,c�o��x����?h)�\2p
ow2{X�zKF,\���4s�na͸���� �w�oC�Em�	5����� �No���m�h�!\���V�$X��˦T����X�~�H�Z]�VͿ�v�f�GCy����t�xjeDf��fK^2�k�` Y3	������	oY���S��{k�̎UWS��߫hIbZP�)��HW�;rδ���d��a3l<M�d��» &��S�	s�t$F�mW_�]L�����v�A1���K��F�p��p�5�mt�-�o�����?����B�� �Za�t�~=��	/Eٌ�Zي�=3yG��G�C�Le������|�h��N���ƿm��޹�Ɣ�ߗ �RN��C��0�هv	�al�T�RaA��Z��0]4)qc� W��`HE�NM�Mc�h�I����߀S��6,�vz��
�tx������뺂������p�52�?73��>�>��iL=��`�n���g�L�J��2��0S��h��8/Z�Q�u��1)�"�~��7*����5���NA�?���#�������W�f��ֽ��%#���Uh�ipk:��ӥFO:��:
R/, �ǐ`�Z�M�*�������Zc�i�t���������s��Rz����>�M#����>3�o$5�U?'zl����>'�D:18����Y�� ���]�ܓN�|\��ve�Z�LJI���"���Aec����S�n��A��������VQ#��O��y���|8]��;�隫��q�n���h��M�8X�zE׈6�(93.��pN�؍��=�X	|ʮ��Ŵ��|����
P����~�7�5��=~b�g�
�����v��Vٙ��E��T����O}N�+�����kr���d�3kΊ_j&���0�ͥ��Y/����'	a��mP�\�~E����?�]�ho����6�و��|�r���h��^�%'�[�V�֌>%!��
h�F��@���w�j�̞c�\��*5Q��>���?U�oџ#��zѽ�΃��g#�R����X���}k�3U�������y�eq|Ǎ��gw�4E-	H`.��_	��L�˽�d-�������^��`Vv1D����*+V�p�	�l�
o��ݣ����of�o�h�@�P<�\̷E�,��/��!Ľ���x�>���?�
�����L^1;9݁��I�����t�9�{��q*�����$��"	�mR�z�D��$x�H	~1"aRi�Ml�z�2�ܸ���c��J-L���<�;P�O�Fu��OօӯpzE��a�_w�-/;B��d��~��+Ztx,Ʊ5�����_g��s��MUK^���D�|ޏ�����E��zc���*Sf��4dc[�\�;t����M���jΥ�/����B㚷��,F&-�[��U�XPGFuBc�o�������v��f��mv��%b�����z����|jq�"M糿�҆�l��P� �%ﻖpmqtDA��(�����5��hw�E}��w�H������)���.��,�?�[��U���j��/�
.��9b��R�S�2
r���x�+�7ݥ ��_^��@A�CRT3�ɏk.ݨ�
��\l'�	vV�oyΧ�OE�s��	X�*'�)c�(�����-=ꤖ ���o�H4܉'y.Otp[u��-�~�+��˩�G���!�,�m�a1��*��DGn��2
p�����0GA;Flv.�o�#H�w�����'h�Y(rI������>%1v`�鄮x��c|�B�8��yS�le����4�6g"ӳ�ϩ|k��-�יȶ��M��up���VYѨm$%�jB�U�i���"�ׂ����)����F�"��Jo��¼�9�^�vB�	&G��\��m�G��jV��x{E�x�_����%���wU�ܡ��g �
EL7���5H�`%�zCҧ8RJ��7
5�-	��� �o&R1Y����Y3|���9�S�8�U�f����\z
�yI<���_���B�!��79�]�?Ha�m�W+u��%��������W ѩJr60�Y���C�r
�1E-4	�	_�t1�e�
�jд���'�mvh;���k���-���G%*�����4D.���
)|��PF��t�aW}�����^�G\�D��D�F��L/(L���O��/	�z]�����?��C��we�.2��>�N��`
P���n_�`Ib�EH}Gn5b|�8WJ�>�������%O
��o=Ŗ��0����Ӌ��Ռ��q,Q��s�.�ߓ���������2��e�*������s��(�]c�B��)�'D�7�1n��#�������=_j�
�:Dlo����ͳn��64�p��]��R�C��1`H�
���e������,N�^Hݹ�;ׯ�IW��m7�m&z ������A+��J�����S	�I� No����KџN����j��T��!;���N\�X;���+R(1�/���̑����T^r�� �kܦ5ƚ��C@le����dqf/�� �i�߅2��΋#]j�)H
7:����K��EG�S.g��sF �te:hÖlb0���F$�Br���Tt� �å|5�X�G�s�#�"L0Z2 w�̾��􅐙���r%\a//0ݮ�R=�볊LMߝ&�rڒ.�`.�°�A'��b�#���( o�$oI~�����_{���"KH�6�M�*� 
�n��>�1���9��D�\P���6nJ��m��P��5���V�`7fh������Av�ꈢ@m/ERR��i��0xO�6��@r��g�)C���'r1a���(�(����w�7�P�n�����	�/]�6H��	�q�S�~��vk�k�tfv�B(�V�lCN�g�6^:�.��80<
�,����(����E-�,�3�� ���z[���X����㪡�p��h-����{�kh��XU���y����x���;��GzS��O�+\�K��?���:nH�938<�.�+VV}R���契!�u��!�"hc�t�Y��fN~+e���2Л��Y�ܶ Ux,����9�7�1�H�"�����N���X�h���W�
��O��]���G{)�ٜ�&��#�R=���������I�p�g��Cyˉ�A�n�y��'њ�.�ݮ�ĩ��ٶ���+�IeY�
+��Ff��>AY�����C�j@H�X�o��*oE\�N����c�:Y��'"�V�ɪ>]�b'ԙ!q�Q����%+�� ;���z&3�Mm�ߴ*2mv���:���һNj���QChL񰺚۶I��~�,ҳ��&�I_�6��h74r���3�SM-����5���}r���<&O�[�h����'7�Rl�mR����ހV��|�ڗ�Ȳ�e�bj���7Z���egs \>�����qi]���F��vé�\��"�#�c��9o�@��5ȷ4�G��u
��M�Bx�˥%�E�^o�[ڷ
�y�l���Ąr�r��R�E����WV{��bGmș�׸
������%����Ǉ�?]M�WzB}�0���/�}��I��YN��M`|�L�k�+iC�L�]���X�t�og)O�6zCO�6��-e�gA��}��cR9�Ziםz!�W����ݕ�o��>9֤�K�_���X�K�<��m�5.Y;J+����U �_�Y��/���|���/{<`���M,>uEN�`1���++��C�G7��]ݺ_ЯJ��i.Ov�Z��+"��F�oҵxq�u�.:u��K����Y�г+��d���ƥ��_�������X�sPp�w�)}eA��)X0��������>}=VJ"��m��h+p����5�:ݷ� m�}��L���Fe5���#���d�~��p��j%��Z��]���pȨq���OI��z��%	�@pC���!�ϼ���Q3l�+�l���&Mp��|�'�桩1	Hj�L�gdM�唹p+��%"�)�>K&����b�7��h�%�sS&��n��-�gߩS�-Il���Х�����Q�X��fJ`*4��x���ig�p��m�����T�����E� N���B�`=ً(��$W`s��2���tFW1��[H��3�l2)��w���^��.�w�oaܸ�^��y�&@�w��η��c�H���6(@��Q�k_#�q]�-��UB�
�t;�m���Λ��fvԪl�1Mn`��!�IW���s�����l�.
�`)�mC�:�{׃OC�ŉ`+d��un��X�,0��Τ-a,$Tײ[�Ƣ�
E0b����eY���8���#�XDL�uy�����G��lVq;�?��z�� �ԏ5q�̈́�I~M:怦���ǽl�8����.lv��&}|t��Wm��8K����3<o�v?.s0���62Ic�����z�k
����u� ��,b}M��!z8�s���	h��:���A�ّU���]�Ӗ�h8� `^\�bf����`1�&�|�5p���9�R&f^�G�-+E�L!��o��}�Es�wW4�:c��X2;������E0��i
��!�0�-
�6�Q`u�oB����	ՙ����dnRd(�ւ���R٤�M�Л��%�����|�d��(�l��-r���Rþbx�k��r<J�E0��2�.C�~�Q�!��sc�:P|�W�ADi=�����NL��Yew` vI��̕�ϐd[�?�JeԜ�#<$���A�7��yt$C/3Z"�n8�r��ZWiWT͘�*�D^�k���R� �*�s'�	�^�Q2��cnSS�-�n���,um�t�_���8[}��Q�����P���(YK� ~m��b�z�e9 *H'V�D�iu�Z����;��`�(*ŨF�|{��O���n\�`i%ix����8'�t.�w��Ͼ����bM
�sS;�Y�A�8d�r�k(w� ���^!EKB>2
�t��O��>��c�I�vE�0X-�k�:���8�Ϻ`� �UK�ܸ�׫���8�&��JBL���=��s�L�I��%#��ڬr���^�1���2��z� ǪШ>�Q��G�m���g;�դ.�6�̫`���i���D����ꧮ�g˭EFS@�d,�0=1S
y�Af"�U����(�c������]H!�Q�)�7͛���!\=<����ZNg��ͬ��·�ԲH�HύHӗ�%���

����Y�<�^?r�X���9L²T�T�{��P�&U���w3e
�PF�NI�y$s��[.������OʊT�o�Bȑ$������5 ������8Ayҵ!.u�4)�6)��`�[����1Z���^��W�Ul����,o{��;.���"O2�%��rRLųH���G�$�ә�4x�޽� ;���~�=��ܦEmD�8?W��~�t�n���S��h/��9�
�W��Ѕ�rbz�x_\|{�X$~U�Wg id���t����1Y�.����`�	��'�"D~^�,T���`Q �spYJȂ�#��_8��$x��e� R��d}��^-���Sd@Bi�J�x�F�X�Ɔ�FD,��,���w�P�Kv��N��?�A=��a�ZZ_���ː���-�b�2��f�dń=!h�r��eپZ�>fͽ���X闘w��p�}�s;f��ɀ; ]��5l~�ߌ�m�#��c���
�?�L{����ǉs�qMiU�>�����}ج����:<����o���/Uw��
�Hr{m���v�$5��E��v�$�x��U?N� �mP��\�塢@ Os��k�_ܓ�庮Z,B���S������1gS}s�6�;ްJJ%u�� �6��h�H|x\	������!�(���L+���e賈C�?�ˇ���zyx��6�h
�k�e�e�:�СlY�\���(���a��_��o�*�
Q�%�KG��WM�*���qЬ�@�k�y��m�{��^ӹu������4�F][od�����_�4:;�f�w"�ެ���W�|=�(���(�l�8�o-��&!e�8�.����"%1��1,I�>�Fw�
�{�V)��Y��~Vk�C����}/q��l.����cj�iʜ?
�]�}�19�>�~z;b�f$|2���~�t�0��ަҩ�B��_�u9h�IL�/Ql���������"�6$/n[�����x'�p�j�oc�݂D�e�+�!���g��r���9S�����Bfm��Z�m����>�A�x����Q��v�8S�w�v��H1?��[d�@E�I���"Ly��o+X��\~��(o��CLS��(���u�
����za�������T�R�����K��:�M�o�
#$����$��|����Z��]��8Ӫ��(��LGQ�D"�q�&�p(W���2�!T�����%VLz�N#�;�kͬ������F��1�$��6q=�mi�֧���!� w�Ţ��^t�8fN̫�>'6P���q�̬�&OZ7oO�����ߋ[��E��@b�am��2�����0O}�'���S��F���a,�^syB w~�@

�q;Q�\�/b������ـ��V�MJzT/�L=��Q%E%?��$��{<�0�Z�ͤA>��}��A��|z8/�1�a�~rT��R:�
�����ꑃ�����yBH��I��:����O��-}}t���i�Ͷ���Kb�6�f`�A7����M����f��8WpK��T�L4i�Z��Z�e�8�%�gSƒ�V*d�����W�e�|Re�~Jm��(�*�;s����nզ �I��s�R�6�K2�ud�w�e�w9�n�}����w|�Tt|��/j�}~ ��8�p����$79�ja�������N3��a�;A�gՇ�]�
^�#}�>Y���ay]#�U�T���
H
=�H����Ba�e���@�\��!��f-Z~0'q���l��.���8GWU)m��<��^��_��Y<v)G��_ղ�?S�Nk�#�CF�>)�j}�Ӻ`N4*�)){YwkJ����Y�����_�;13�[�LB�.�9��=��K;���G!����*���>8���B �2<ܞI������OdH�j�B*5�<D�R�y���;�Ӫ0�i�}5܇�w3��wPa�4����A�N�-�͍$�9�Ҡ7��6��|�aڡSB��%�'�����g�N��6��?c`V��1V���E1�h3�,{a�-�I;�nc�]i�6	��:ӝd�i
�7�z�V\)����Q�SSiew�mx�,�B~*b(1�Ftc6f}~���a/���f_�z5e����c���:�<>�n�߼o`��aV�jO�ٱ�'�3(XlJ<��!��_�eTі��z��>��[�ڒ�p�(�.*
eo+�$�з+�ܐ�Tc}F-�:�Qe���(�H(z�ʴ
��T�¶��M
*g�w�w������o�lN��趺Yp��"y�ϕ$�c�%7&M$i���>���>����0�f��?>:�*����=
������HB��ҎfBGp\-�?pwu�-�83sM'���ei�^(���Rڌ���2��(D"r�]
sY(���#�h��ڇy�0������+�:}5�į����R�
��씜��A�=�g����:��b}0��>����������hc���J)�	��D�=}���@\ ��(l�	L�w��rc�L��	C���Y�����_:Wx29��5�f�RXca��;eJF��C�Ln�8��7җ�s�QM���z�9̲ �\;p]�u- ,IIp��|{7�IxΔ����Lp�a�{��6��lX�Í��-`���$�l�QW�*I��˵�V&K���N��Dr�
z2�~����˴s���vh��+%-E��������>!π��g��qf�H8x0�W�+���:)�L�Ƽ�.�?��@ȭ:BErk�K�7�P�����.|�F5���N����nz�W���O�*k���T��ˠ�
c��u����-W�"S���'��>A˰k��mV��s�=Ɍ��>�Z%E�p�83C�T9��%�E��)�=�d�v�4�?�H�G97;����;���t��$AT��i�M-�4�k�K���V�t�-�3��MQ#<���vA^��QJNf�rJ�G������8���k�ƚ8\�m{��$�4 U�}e�I\T�L���t���4A�^)>*��>��`��=}���3�^���S����5��!��+D�u�\����C4��+V~#m�D#��'8\��07�h�S��`�å����Ɯ�lD�9B�7]����kY̠�#TZ���@�^~+Q��4L�u<ݯR�m2�xxh1�#%��:T�] �Ԕ�FU�`[U�o�.
�9|��H�Z�X_����o�,FL�ݶ�/d�t$`S��x�@8۔��'{�����αn��=��8��Rd��$��g"��`����p!�'�+7�I�s���^=��F�A�NP���UռB��vT{A	�5�A�z8�ᵗ��;1���p�3s��Eg���E�v�@4��KX�3H=6I*�UJ�%���)M
��2�����fB.t  Re͖�nFι?�Å��)K�jA���U���gG&�T��2l�[�{`ڍ�s@\T��+ä34�24�ŬW��Ҷ}M��3��r�	
����3����s�/Y��+<�pX���T�t�Ka��o�yel���|bO��rE�ࡿ&�G"d]W�g.�5D.&��,[�[�=����8���N�W�B�I���BD���Z#퓕+��ș���U���n)}bR49<��QY�m�$�K��~��U�e���pO��`R�zV�6���
ڻQ��H�[Kx`�7r1�֤�F�["~(
����l��|8A��Z�6��5�^�#s��� �d��M��9���o�ʨ�EB*0G���ZB�̷F��t
q1�Qq����¾���Y�o�3}j�j�xk�kˡ�^�!VF؋â�ة����\������v���m]�S��*���_���t��_uh��Z��A��˔�U��k����gzh�v�C\�9����>�ݩ� .����e�ѯ�H���3��<�-���a#vUL�T�*��^`�K�WF!�I4ڲ
4���J���~���M��q됨�!��:pKz ��OY�=���<9������L{m|�݃ 5[o�d�!O�|�~�����X�"�n�[�~{�\��ʲ�')қ�n']�u�X�`��H�KD�۱ժ�gN��l�<Tz��4u9�����/b:�q�ud2l{R������h7q'L��$a��ĽԁSH��xx�C�8k�;��4�6�ܼ3eh4�K����ؚ}�+��n����V.��u$��_ч����8:�

v�Zg��b�7����������h�A�_�:Fd>�O��A��p�4��E㇣=^�̓��L�F�����Z�
n@�*V	��}<M�XJ�$"����a�hH0M��M8����\+�3 M+��ʙ�O�e�h�0v�����z1=0�,zu�٘B��0e�M9P�¦.�8��_C<"�/��Ů��ّ�߱gk���Y��U�>��F�e7,Wj�t%�p��p��k	�0�m>�[��Go(X�Aɞ��oO��U-��e*�9з�t��A�����il��q/J�'��8֥x��d�a���A��٥�pc��ߨ=1H[\˗��:�w�ܐW���:]�X��<#�
���_�KA��~���)���#�l�	e��B@"~�f�y0#8����>n�J���w6���
H�((�&�K�\�R21-�Ju e.�&��M��p9���KK�⺈;�b�v���Ǆ���c���k�% ���S��?}�W>o���+���V���)i$u�ڝ4����>ҡ1]��ϴv�+ڋ�,�I��ze݀�K���R�4��m����	���FU�.\�)��,���]?��LS������noc�*�ۨ��� )bZ�9��ܯ�ٝ�	��֛��F4��ty���.ƮIۛ1`I���>*�q_�ͳw��-j���A���;&v�&�s���*�^Ċ�3���Wg<�e|�L�4a��X�0a�S��nx��(<C��z u"���
�E˕8��̮po}:Wa�rQ���JG��c���rZ���s)��c��`Qu8����B��쿴s��J�
���)�R=x�!�F0�r=EU:�
r��D�� V�J���
s�j��R�~��ֹE�U�e���>i��0�%�b��//m�,P�נIA=@#2L��V�Q�鏫3��D[�#�J.Y�b	��G�V��`�N��Mӧ�7�� ���}�M�k�`\d����sݖд�W �j��p����`�Y�o?OH�n�+����$owI�٪�6ܬ��t+��_n��M�'�ՠ ��:~�[Ll�O"�	�	Q�5`��~h�)��G*]�x:t{0&�%���j���5@yAmT�ͶKJ%�Ŝ^����
�@a���\a{@��
�"yB2	-\��7�`�B:3y�a�վ�*ʕ�7h�p�Hj>��nsV��|��Ny�H.T��ӳLQ��8�
)��ɍ,X�,Ñ������5��[���i1�w���@�х�_K�v��f�#P�#-��P~�;DG��-c ���nD���� 
�|��?�5UVyu'w'ű�Y�.܆�wہ!��j�	@K?1�4{�)O/+��4?u�i񄻩u�/�U��S���@K.��XKwI�񊨩� �<X�2��
ik���W�H��V�cR�0�Wō������E�'odV4�DT�4�Ȥ4�#���tq���M ��t��R63�0Z.��>���0�4-U�FE���~�Ao��j��S���İ��د[����`�,���& �O<Rmũ�N���}�Q�"�-�ܝ�'�d��=,ֵ�G��B!vO"�h��ʇ��anB&��ܙ.�eR%�E=�
׿O`.�pH�j ��; �e�,MF⹮�B����ȣ��@��:�+Q����s⍴b�e_i�N�RD�`gƋ��$����y��*d�Nϼ�⋀swLQ-��f�N������;kb]�{9�d������Qׅ�Ԍ�"bKo��v�~�|?�Ԋ��nnRܿ��.p��\�V�*��#qk0Ԙ�#��=�~��Jj��5@�,�ɰ?O�ɺ?���6~R}̒Xn��t �ew�(F{&b�����_Ny��9C���m��+xa?u����V��Yи&��A-�iFE����ex9|k*u�^����h$#^�\�"���G�f~R���S��$>�&E���oa %f9�mW[�����7c�8��Hdi�ТF�����!�j��A��Y��k�0BN
��:�0�B49OZh/;������|Gn�0fm:�H�x��)ꆯ�t�J�Q`
nݧ��"�{�ph���a/�u⍇�V��&�-.[1�2>���	�-��� 86�Ö(R�M�G��*�v24c��pm���]y�P�����@>�~fF�FM�+�hoW�����âpn��+S��м}kʍU^]�2ص��儇���.AE-��*���v���X:�&GR���� ��IcX�P�D��m�b��GnbuXsi��YY���
���uA�u�e~�RT7�8��Z�anK/"4� D��0t�c�M�
H7�j>�5� m�&
������a��5�:�gƭ
��A� �������{|������o��_o�Q��:���_s�LӊV�pu=�����UE�P�@U��
P�+��JB7@|߇
�E�� ��G�%ꚁ�D�����#�7����;K�1\�@�:��z�N��hUvg�l�]<�[� ��b{��V3��һ4�`����gW7�����3�nr�7��bDF�d�?_�'����~���]r�Zh��Q=%9�R���D�N���2����_����$��BFL_WWJ�f
��Va'���D��e�Z��C��`��z�S��J͌L�1R�#6�{�~��Z���լ�b�?��KX+;m�����:.|�bΟ行�Pv���]�"���ȯ���� y,>?�����lyKӋ���A�Ą�v�y��ahZ2K&�^��e��i*�w��>�?9�둁����0po�X;F���݃�}e}��
������Kf�#ݝ
��p�h��S��r�p����gС�d�]�ll����G�X��R����^k����>�{S��+{��q�,�s��E�D6
�p��xG�.�[� 9�8��I�p_���ܙ%1�Xz��)� �oC1��J��	��ߔ����%��m)���f1 �<��C�먏����㯕rs?&�\���+�����F��8n�:e����9�y��
�f�n%sxӨI�L=\`1��]�?e<��N6��9�.
0i~H䳣=��Y��,�o����R�`_���.-��I��|�-f��,�H��ltǾ�W<^��"�(��^�H��,fu�D"m���j|4V6n;t���X�^92 K���PV�h�
�QpJ��A�j�g��)rt�k�'{��MLd��fƾD��+yv�C�SޱÅ�\Eb��%nq���8&T�
`�ܟ(�y�~'�h5�9�T+'i�?q�f�4��F���c��H��B:�6���"�p:�hn�3ᯅ�u�a����'����ՈS�#���r�]��m\�F���2�N9!��#,���C��M�n'�Bt�}��Ӳ�ԡ���S?V�'�Sm����|Ƹ��l�Q,lO'��Y˧@E�kA��<�4ɇV��}���.�9��ȁF��(��8ܙ�j�J1����>u�p��k�������Q$��ӔQ��x>R���
�||�?���-�U�
֔��rY���n���.�V����kW:��v�GO��M��~�v�"���{n��(Hf�C|�q� ��0��d�f3/H{uA
z��tQ�3 �ˣ�G�`N�R�(�C�2R�߹�⦽e�j)f8��J�I��ʢ�8���Q�6o�
�[P��
��P��
ыt!������l3ͬ�H�mI��%��B�*�"�� (b=�jwL�ա�P/D��"��q���=~v�C�	+fnO�n&i �y�%�@�} �\����bXi��g���k�ӑ%ҵ,�;�#I�����wFw�P�0�H0v��<�J���t%��&r<�L��H�?����"J��x��k�~V#G��|�@�B{�'Qv����$wzH<��T�
s����a�0��4�G	�T",�a����*����w�	w ,.��-!�>�Y}p+7�)u"SEB��6��$��~��:���M�z-�T�-�`������+�/�k��f]+���w3(7�C�؏�0�P�Գ]�)3�`&�`�ǩ(z��'����͊eɅ�3�}��`���m�y�EO�@K�2�ߋ3�uE0fg^������<F=�L̢�+��s�6�f�e
�_
RM�E����n��|��-�b�Z�s;c��t�
v�����:6)o����I�dߊ�ݤ�AK�0�h�7�)uo���U���'G5P}?V�8��{N<�]�&�����xA[�]A�lN{�$��r.��
�7��$��@F͠^ژ!�M�r�'�~���@�k�d���L���G>����b�k�@�kt��w>Z:b�m�\�<'̆�l-vw�X9�%-�yY�T@����e���!d�v����զ�Iv��M�������4���QE�\�d�yCG2_�ip����5�g>����S��Е.�"�a�z$L�.z`}�l^��ǝ�#��b�c+�	����9I�cc��a�j��on��_��#W�)
S�cx�w���"��6����۵�Ƿ,�L.$�%��²0t mѣ��[
�G�X�^� b�c}�;䊳M�	������Y�c����|��ƾT\��*�3�Aj}V1	�<�+�q�"��|�E�J�f/y����:淢�/!?d v51Enn,�]�^m��x���
�1��C����$�v�}��L��W��j'�S��ɗ��!��B�����3g,�����&~�X����T��n�h����j?AlW,��a����gNX�x��ك���>ZMe�o�s��Ʈ��Z��Q���m������O�ٽUK�H&#V���R�L�c�����[W�J�9�v�+��l��9�X�7�E��O*μ� ��ɘH|k&l�������@���mJ$1��#����8/#6�i<��;^�ءaK���n)�U6�Y7&�V���U"��2;�$ڙ0R���^5��J� ���xb_5W&��|�xRbp�P7	#�?xZ��2����*���IRu�Gn� 镠Y��e`U�O�1_ߓss�C��I��đEt޻M���/hl�*�r���������B2���s�ib]B�����e�B��+��6,
|�g0aj���j�uTb�ق��%_i�jk��%H��+��� ��Z���]+[��e�<�6�m�Z��4�F��$���( UK��ep�b�wV����Z�Ì�u���j����u�<Dն:��l��d�������k�_��UH��S)6{'���*����㦓]J�m �����0�E��)[��Z.�i�����̀�%�z [�Kn���$�J���
�q ; �$�:��܌��
���Íf�m{c�W�n=Q��z�R�fG?�[
��;���Sf������������O|~X�1\5�V�`/��c�Yz�ϐߪta��	���fi����V�Ė�%U���sG������W�.������s�lS.E&�4���M� �B�����ؾ$���b�H1�?-W}s�0����ӏ��dZp��$d,���EM�����["��~�
6|����w���WD�':)��E a;ݚ#m,��B��Qo�O��.�������T]�hs��̄p�9�4s��g3$2��"�\�����<�_e6cMJ���4\;�J�:�7����������̈́�m5�U��O�a��.Դ�/e/�y��`�/[A��S@���>Ӑn�ż��_xR�K�H��F��U�.��i�=n���������J�V��au�u¥A���璘�h��oϤx��ңE1�0�%�#IMg%s�*�.Qru�@���O�����!�l�����0�9Lԏ�+ku"⥤��M&��X��Y�o/'+(w��d{�y��d%��\�H1 y����2��2���*��ADo��/h/���E(r�n
Osn'��m;�*����G�{��g;i�W]��V���bfL���LC�~��v�8�xVz8u?zR[�5����܇w`p�9�?[�����a2�-3�"�:4򘤭���dWQ�D}ʔa�\¤&%j�$jY���|�d�����Y�՞6=��I���_�J��L:]��b��Q/Ù򂹺n*{��(ӌ��E�Q�׳�vF4AL�C��,M
�L��/��i���"$�XkIL?8��ˈ6�̬pt1k}0b�,1�~
���ߚ�Ȧ��
'(�o��Ј�����3�Jn,l>��Y����F��)�n��Rx��U��n����#�����p���^_�l=��0���KUܐ�l$�j�NY�)�F��|y%�[�`��Pq'h����F�3}��)���$��f	���[���s1��|x'�E��K�Cr[�\V%o׵4�;�dPyy��ߌ��V2�K�Or`�pk䮾�s��Ő�d���ܶA/�h�<'�yc�`����H�MnzS�dY3��.}���7e#Ђ��xK�����~�{t	ؐp`��5�
J�*�W�6��:l|�l>���j�ka�[d�e��}ǀ�gKM����IB����v�
��_�
�D��M��:�h>F��q��I�S�Z�3��#M]��1���c^bgA#��@��ݔ,2�F�L�ܳ�x���L�u��Gs"lFM�(�>��qj� ��Ds��庉�Gj�_�-h�E���7
��;u��������e����e N��
���W0z=��4#L�o�h$�~���ɷ8�3<�v�-FkڿI���OA/��>�oy��288��b��~�^*���B��@.�#�K}��FOz)@����9r7�������
�����ԑ�f�,LMz�����,ʶk[�7P-^��h�qo�i�NO����k�0���K�]l���2fv�ث��N��� ���k����ga�afE�O�#�h^�yi��:��I�������[�k��8�DkFJ+�VI���!����SHW����8WX5��3�߂�p��"�'�7i���Iw�Eٰ_� �nӯ$�}J�Ȫ�Ufo�M�����
�	�vOP����y�5�����N�w��{��^�T��A)z���5�)�5�L/�r�K�3'.�`��[i���ǴR��k7D�v��W�A"?����雌�"U,���΂6_��
mT�n����� ����a�|��+#�4R&�k�)���X\A�����	�ܧ�nM��[�Q%�~n�:�w�� u�5
|ۋ閶�e|�\j�>�j=ț,��C>��-�qL� �b���Z]pNth���8_[ӑ"�o#C�q�c�Ҩ�[4joN��w%(�.y
�{u���l���n��'Lp�T�ډ'k��qzM�Ê��J�	ؒ֟k��,�1:,~oe��y1�c�tÄ��흅M�ݴ+_\��n�&�Z!�J`��`�_Mъo��	l(��=��^�Β�p��N!�R?�8�áQ������!�字Wck> /U-�;b� �L���N[�#�b�ց�W�$����Z��Α��G9A>fA;
��B��c�~,8p��X׼a]&!�@k	I�4�sF�z:9$���.��/�"<R��A��[`��=
����?t"�}�Bm|�P��|�c� ��Fa��KA�BGB�Ų��;���K��F�,�ܱ��EU��e��3�,Gs��ş�� ��D���J�&�e�j�S�\"�i�1�uٟ��+���M5�r�rc�K.�Kũ��5r Ҽ!5�������!4�qXN[�+,+�b3ѡ��]��{MQ��,���A�l�F��}U�ņ����?��q�J:�Iw�S7^R��7�:��g�Ec�I| ��*;;�	�N��5=J5�m�E��� ��w��s�
<PTf�Ѭ�>'r�9*6ͨ�;���T�Dӛј�HN�>��@�?��
�6g����*#�k�d��
	�iC�:k˖�W}΅ڜß6�l��o9au[X��a$N��Ƃ˖|*͕Y���)�a1eζ�z�R��K3�3*�</3�+�'��H�=�yK�4a�죧�
����fNI��v!Qɿ�Q�dz4��3$6 pY�h����v�UNF
17���o�l=>f��d�8뀁�9d�bxP��X4@`r>����b=1İx\|(�g͸���&aj�j�e#Υg��7!E�N��\&u�*x����V;Y��J̤�GYL).õ@�|0��s�0�stq�?9�����7�j�4q'�g7�?�/\�9�b�x��
mCx��b���9煲'�f�du�X������r��0P?@<���<O�d�Y�e�}��[�ƈiխ��P+c}�Ő�j5��{G)E4�BK����2�%�+~�}���΄@1Τq�����p2��ڎ$�D��`�b����\%�,����a��T�jR$�=F*َ�H���gC͟��p3
��s��0҈��[',�n0��\
Đ�E��6�م7�|���휶�6���(a>�Cz
p���1�DQ^Xڸ�=ʪM_���UKF殀�%U���ad
Brg����:�giU�əJI��s� X���N�����e-A}$��-��$ݸ���+#IN-CK��]cڼ�;5*d��$�څ������F�� 2Ѳ2���JJ��6}Ɣ���y��_0���oE6����jC*��\�7��pj[�xE�ߐ ����x_G(�`r�QJ9O�{��
㤱��>F�R���FJ��tKDjC�\���tg�&�k��ǘ�'R9�kMH��x,\Ԋ·�؆�@:w^��\�&�վ��=ː���
��@p��ۉL]�\�Ԣ&��m��z	C��Vޘ���IP��<@��q�������V(g#�	њ݅��e��� U��;�S5�A�Y�+	Ek�Q`���羆u̓��.:�L��78�?l	��)� >������)�����K�d��9�j��t>��3<���v`�j�� >zX�,��%��	
�sd9d�3���H��t5�Y|w�j�B����(�DU��L~j�����C��@�6��A�Gb����1�6|���TJ�[�n
�b I�F+�o]�1��<K
}��U�,p02<u�	��i�x�@%c��]��'��V��Y���VW��1bf��Ņ|M�+�����h },=�X�����:pN[)=8gW{�`=�����$<�,y���y�L�gb�C��E�c�Z��BջKTޞx�QX93����40�
`v=��1*�a3�d�H�U�VS
j
H�B F\WZ!�
�6�T>���Ri�5\N���}/�H�I��S~��Q~څ|1m�xP��`�k���_��e��{Ԍ�+��.��F��Y]=��tS�s:Z
��L'�k��˘��p^H�jו��,�C6Av�1r��^7��tYf,\ߕV������T����$�e��hW�6��h,
��~�GAZs�ə1�57r�̚�.(V!8�A��S��1j~r��x�?z��5
��߃�W�{�~@L(d_���x��%�W���c�Ɉ=7˻� ���s�����50A�|/��u�%�yo���N쟾qs�ꨝ�'#Y�px��%ٷ���k�./gR��R��R�5a�s}
.uF����־}eJ�f\��!!Y�ДB�a�mo���nkǱ�j���E3���#I�.�U!bqH�/��0m�Ѯ���NJ��8XƦ]A=��<!�$�`���ר��1V�p��^�w?@|�J���$�Z��1�1�Rt�FB�8iu��8"@ÐL��m;k�Rv�g�1ηl����<"����7�lô��gm���  j�!�D��%-�{Υ�Z,����0����=�_���_��;5֧&�?ّ������|��ly\�$�&/Ğ:��n�Y|�ރ��wu���xKp�������c>�lQT
n�Wڅ��l���Q���c�p���44��u(�nǯhd���b�"�	���܆��2�]g��T(3�Br��d���H�Q�I 2�h.����^K=C4hb��V��g?���wZc|��2�J��k�:��>~l0��䞞��^�cWm�`��D��yd�b��VQ|���lt/����UY;��:�Z�Z&<�b��~�h܀+����w7�/
w�.NP�5�y�j�"�]g�Ko� �鱆���S�OJ�N;�Q�M�D�����;�kw��_K'p(�lT��q��f�����(�|K�!ȱ{}����7�kê�2��+�c�,�OYU/E��0+��Z�v��H�v�e�ŕ)�\�Y�T�2<�y����M�`���X���tp-��WWq3��G�,�C�� 1�����#� ƇZ69���F�����l���Å��WN��E;G���5�K�I%��VM��uG�JY�&����T^���Hy&��޳8����jS��� �����b�fcʺڈ�p���a����d�0!=�����K�{��OW6F���?gA�� x��9ؖ��At���i��-�+��h5����4��;�'���pnm��
�Ս�?T�0y�v�[<;�s|��{7����Ǆ�H�7w��e�vd�Ē7�Fdb������9�R�#MA�  ���&j�am�ȶ��7�V�Х�
__E�E�LV|��Lq,Á���$�Y4�+�ۑi�:ή��O*��]ڑ����f4֘~*��-{��h��˂à(�#գà��"ӑ���n���E,�v`p�Q@�Q����ـj׳�ڜ���}�z��;g}�3��8�@Pݨ�e ƾ�-�u�G�FH�FރrZX��zv�Y�p�ޞ�#l>���-�:�V���P�/��mTh��	�f�%s���j���B�b6!/����h���[{�n2���0V�6�n�R`����.�	��&�b�Rx��B���w�����$+�Rܼ��úLc|�^V 	�%DNkɉC~�h �~���F�� ��Ҍ1�4Hj�:�tY�����><�a3��j� �;�Y���fsH��%�I��y��YCrg(r;s�֯b�|݁	]���@kfx��r͑>�ޠd�Y��LC��cҿ|JfOB@�̴�QZ����>�Q�גl����v �h��ݓ-r���L��*�k�������^b�wDT�ɹ�1Qo@�S��q��[����,��㚡�m�
��a5�A�g���r݁��D.��8��Z�2�d�:��T�������C�7���R���m��>� ��.�	indZ���2�͞	e���-�� .Fg�M,�#��v��ђ. \;^,ϯ�h�/Ё�K-��S<�ު;�O������r��
��{&��4����}��,i]��Y��n�
�	\��;���X�)��em��-��[f�Y,0���Y�Q
E�φLbL��I��}D�?��{v��hHJ<6P�L}ʢa��k3�F�x�f#��a��֬�եo�s584�Z:E�
/;�-�숣G�:@�5�w)���?q6�S\?�ҭ��⃸�ӿ��c�Z�(sz�v_�l齸��C�6����t��8/�xo�.et�p� j�TF0����:�e��$ ͥ1�꡴IdG���PZq�w�&4Q�N�{�f�w�~KpSj?V���R[|�&ru�Ыf���4AA�d�$w���p����--�Ar��u�_w�$�-_`3?Z����}���<4>OJ5�k�0��@m��ѽ/
1V�� m�%��v������F��~��}�g��g8m��W�j��5[�^�
��)z���S��g�x���M�z&/[� 0B+��#�ʞFT��/R�º��0�;�J�f�>��W�/��a��DɃ��

�]�@ eH�6�y�>�}��R��Y�fv8���P���0:���.Z�^L�⋜�?֘G��>�y3e{-I�������c~ ���s��g�&p��g9f��7=W�{5Xg�8��Kҿ�O 6�E-��r���k�OYQ��t��>���+A�g޽d����V���D-�
o��`r��>�r ��75��`�~A�H��MK�l"���X(��z�+,40�v����~LDf��N�g�ÿ@yB&K�o'�0=�]��V��Es�E�����/�,�{��H�Y7�8_z�������f�|7@]Js��c�`�S�,$�V����*+�:�B�����;ɴ����'�����B-T(��T�C�k��S�.ޑ��"٦G�Y��T���]�=6��臗'�˝�b����q ���s���|��ȍk�T	0����p?Ԉ'�� i�QތUK�*{og�*
��&�M�ƽ�_�2��@�W���T��S�8���DcI����΃�b�/�O���r����D�_�L-����+�Z��<I��TE��oqY���I���#l�""P����Lnˌ�i����4!��1w-x.�l��5�U�m��Y�,�6�^S�}6�V���f�,�tX��M�x����S������ �V�8nD���TӇ`��1�n�3֓����s��X�^����:�05�iI����p��e
S�aAGn��Ț�`��v��ǜa���� Ń`\�!H���cĮW����󠞰��.�am�u[[$ uBI�˽6\���J�B%��kR�d���~V: ���XAބ��D�g� �ɑ�ɻ0�T��GO>�'��0d����>�[�\����/�w����]���.�֣0��\k��mF_�w�8�@ʵ�SR�F��5�ن�/����)�HU��W��xv)/�'����W[��o���M#�Ξ�I-� ���_3}{�^�{���lI��!��
t��n�<�jv�E�_޻���z�q��)�]=�MW{cS�#���;8͹`�9
m� ����L.��*[r���T7��x�YL�z��b��ʶmme��w���W���h�}r�ך�ŰZ�]��ϋ1�l~Oʨ�@�:DԸ����0C�+�%��������D�ˀ�_$ZG	H���q~�h���;Re��ֱ�m�a��9	NMBt}�μ�Lf�R؆i���k�%�ϴ�{�JG��/�
��Tww@Z����6�Mn��u;���R�����M���1�u0�;:�_g��+��x�xە2p�"��m�&6�P�C�9F,�S����ID>�� �3�7�;U�	ܰ�@T��,S�|�P��eH����-����'^̉������7z������|����|��q<Ffj�H�	p�\�o�2�����c���E�����f'��Tmג�׬��g`T�Et���Fn�*���rY�^��G
���>j�������hՐ��$�~��#�D5���)Fݙ�/n�Kpb#�Q4�t�X��x=���v&�A���!�6�E��~�EĀ��}v�~ֱd���e66��rB?g�\��&�4N��7P��-f��%Q���	& ��t>���p�%y����aA���m�@>b�n���+���]C� ب�F�K4{f�Q���"�>}|D�ٸ��6L�d������O��J���r����bB]�/�<�|d�<AFd��5Y6��iMM����u��KB"֏���X�dℎ�Q��}�˸
H��Q�i�M����rC� 4
��1�7^�R/���Dʡ_3~-I��+�¬)�*3Ŗ�z��鳂���-R�Lz�zJ���3B�����/�"���SHŽM�����k�-�����%S��~��ٷ��aP:���Be�uv[A�KΞ~��
�ͮ���E�(�
�LS�O�d�Q"oi4��Rĝ�¬��@����Af�t��D\�ԍ%F*�zݾ��ᯌ]��ȗ�fkc���o)\gQ�e����#�z� �� ������ɺcv0}߹�J���������4l�Z��:�]R�#8��1���-v*
J��(Z�Q�����%�-��{+p��j���B��dzcj��l��!6
<�0�0=�
���8�TXLyY�)�X��:C����穒�&�#��
:v�}��!����K�u�y����ʒ�c=��	���H��B7D�a&w�k���K���9�3H�>�����8��������:1�72J�W�Vu
.����9�R�Ad�L;¹ �/��T!)�r�Gą+LN���_HX4���\�gKrT�"R�@A>���{/�?��)ٟ�o�Y���g�ȩ�>x���p��t4cG��j�c
����p�f�mʿ"�`�~/26mpv��
���0�S��o܁�����U��/�
P!�/t�x03
������?�$3U�s�D<ibfiΠ�a\C���n�g\��$��M8]S��0��ov5ƃ���Ô�wƲ�JK�4�|ϾX�,z�3s�# ahd�����SN�١���*"]��ìg*�{H ��d�@ڡ[��G�����SUH/��`�WJ�:�G~*��GVM�*���oY3]�	7(��x"��-����?�u@�a4� ��wK��'�(�#.��>�zP�N��a}�ϔ�|U�ItCq�K���"�L�C��_c��ܣ��̚	@��w������\ٛq���
*�(�r%��
#b�bь�&�&
��8�(f� �:^u��V���Q:�_���UҀ%V �j%���I#��o�_
��}�����<�$���[Z��y΢
��	��Z G�7GD��[�$�!Q[�S/��Ά����w� ���vtu]���ڢ`+/,s01Ǽ�x1�g;�5�X�s��L��=Y�"�G����N�W�B�����Jqog� Z�	�`��g[����s�Gfy[�^��R�&	d}�YSZ�8k6���"m�Y�ܻ(
���{N=b�w>u�!��H$��^���}�SĜ�N
mX���E������Up��{|q	oD��SU%�_9�4s>�-TJ�r�c#�J����xnwi�_N[�lʢ+��b)�p@���@��H��
�c0T;�&����³�������R	 �^�e4�rv�WY5͑�3r���
+�Q&���%$~E����
�d���ce�P��b�% �KX���>dm�������/���c.�q���j�7�,F�^k$�H���i�J�/�7�-��C���oT>�FG��NМ��lU��¼��W,c��UP��c���v$�Ê�w!ĩZ#�����ȇ���hf.ؓxb�\�~*sH�;�a��HiN1���N. �i�+�Պ��'c�;HV����lT UW���O����&Gz�QZuK�L�I4�N��{�C"-p/�'zT��Σ����f���W�7r	j���R�g�f�-�
�\c�T�[�h�ǅQ�!A�T�`�M�)X�twx���?�>h�%��U���?��OW�	C��T�`���EE�Ȏ=�	��n�O��^@C���g�'�1#S��KH4��E�\�Q}x��d�vP�-�(5�P�2C���62P�DP��=o[�6	ѣ0�g+5��r��r7d�O��
���hm����4�ޞ��Y<Jl[ӟ��-�VG�i��zh��/�R�>D�&
b/���b��#�穭-�
����/	��L&�"�Z�~��'朋�_�Dw܅B�=�9O�:�m��`Ճ���b��>�^��$e���w���5AO֞����������7upe�G��\᭛,��FI��!5��gW|/��y\�vJ
~69h
�Ek�VM��+qg6׀��tN�>�h
��^k(�v4�ZGu]6���T W���T��ֲ+�
q���p��3���j�&L�%�����)�� �Mb�����zvn�M�^4�
��jv��S�����
�m��`���ƙy����	=W�;Qm��s�8��
��,3�d���N�T��[�oD��e��<MAct�|�ސ��0����°�xuTj:�9����BLs��B�[�kܓ<��I-�� �W�Km�k�o'���TOg�ִ�b���������;A½uj��0��*6�Ģ��PrG�޹؆�r��F��K�k�����R�D��İ]�^b�#W
�.�j�����2� �y��U|�GR���aOe$����Ê
Ut""��F�r�<}�m��Juvtj���>����b<>���Bjr�4|�1��;���а	Ov����9�zz���pd�8
��N��鯭���YE�*7�yKh*�������j�ڲ�fv��mȠ�vv�G�c�m�k�C�~�cz��tn��A=/y>��s%+�=C7��8�T�-�;y:���=@@���3()bI�j�B�����6�Ľ��̬�Ɂ�F�EF���AT&��Ej�U<l,���P�%U% ;A�?>�r�~��l��"v�
{
E� �Ѽ�
��Q�%�l�B+��ּ�*\K�,u��G���"[]�:�^��ϙ4�y��:�UR8Q��v[���h�rX�8<�ǈ�H�J_��Ġ;E����V9�Z�kJ��=�C��;e���͏�!Ud㖲>�W]�	��6C��BKC�cvƚ=���[�(�*=0)��W�lX�1���3N5<�W���p��` ���+c@%�Os��W֣x'oο]�TQ�ڞ�IUbKh�n%�jJ|v�V�5+�k���@���S@�%��,:9q���YR�lPRI_�[��}�V�:�-'�WD��͓��1�+	�0��X]\f`Q^�I]$3%L�0d�	!��O������L9��(0 �Eq���sc٠'�+BsPu۰
4{�	䀐.�pPB^�C�[q�/`5
-_�����i��>�cّ/L�!a��MPa�Ʊ��ᄻ�����)���۬�X��5��q�����K��ǝ�Jd쀪��#��������\/9 ����;��+kt��#�d1�J�6��}���L/{��	��+� �x!�Qі�,V��+y�AY��G�@�Y�B�KC42}���ra{H1����`�6y�{I����ґ~�Ab#ue�'�>RAȤv7�I2p�@������r@Һ���ı��+�b]�H�̟�A_/�˾�w<q�T�,}�y���=Ļ-�R�y�G�@ �_~��(�,c��1�PjH���y�G�{Sgd�Kw���qHx������
"Չ�\���m�9��#�ܵ�=��*�A/:��1�p-
Y�RD�&f�����SK��c�n2J�YFf�
Lȝ��m�Q��(vr
ү�?����9�9��;%��� ��O��Á�V6ȢLT�M�?�5��1�XO�G:���J���(�@�M9�'*P=�>�<��hm�N��J`�M*� ��*m����NZa��ۖ[Q�:�X�*�dǀg��i򩐥��`�RlarV�K<�Ӷ-�7/C�����/L�x�.G�ؗ�a����爪�w=x�>��_��6�9r~��%D���&�J��@9�.�����%*)�%\df��(C��çʁ�9�JJ�h}<5I���b��QòH<
|�X39�ICT�Y��,�T����M�-����\��j�a�i����·~�M+��v���Sv/�$���c�-�{{`���Һ)���g�r�����=��[I��߁��"�X�i*kQb�.�?���+KS��"Ѿ2�ZO*)���K!(T�m�t�(�^�Ӥsu6��2��FБv<C��(����>��A�����ʡ���\�<�B�T\��i=��8{�M!.M���l@��?<Y#���Cr�������4�)"?ñ���7��r�9k�LR���q���!,� �tCm�F�߾���
������2G�����-��ۢ%��6���>�����?+F�	�I�����]*{�{9����D�L���er�?y#ds�d�A
���C��X�o���i�-hFH�QDŭ	ـ��Lޥr���@����d�"��S��Y}&y�J�Ld� P!�4=y���;��!����-:��ى@*/����f9]��UG��d������7�T-���4�-~2&Q�Xp9�@�_]���M��B��1��(�3�7+���W�:db@�j p����ب��T�|z�\��7��Y7�m�X���d=�N���1"q˅9猊�񕜣=�m�!k|��n��Y�����^r�	�Sk��+xĝ�x�d15°�:K-�������Ǭ�@��̟�����+�!_���ޞN}�.eOI&a�ջ2���Bi{Ϭ�۠�.�o?�/E��Q���(�Ԙr(�X6x	_w�kE���'N^gA�;d��r��u���@U������ȩt������$�pa�%�F�(Z�C��Qm�%��!V�f&��p}��~�q�ccH�0�w�8�YBDo�Q���3��l���j��^r�;���(��%-�d���i��&s�����5��oV���ꪇ �2��B��(��`������4�ڈ?r�?�r�o!�T<�؃����ŉ���rV�̧j1�\!�f�<"b��$V��{�w��S&���#B�䯕T�9f5_8{"�B5ے@(}�/��N!,̄@��+�r���_���[���U��g���$�㭻ஸuNu�Cr��o�k$�2;��b�����<^�D�=lzo8yհۥ/|�
�eP&��+0u&���:�x�1Fk�M�o�Lx>HG�r�9�3���2֜��-m�kf^i�:��_m��w��,!��?#��[+&�k~J��J�V]Z(�f�'h�:ʂ�Z��^�X�՝���>���&��jJ��T/��c���L{��
k`��g���p�v,�z$�J�>s����)ˆx__�� ����4�q���\͊��J��gG���Zc{�;�%�u�G�Ì�����o���t��"Y� �)|��9���2�l�cnf(g�/7�h���_)-�Ҿ�y ��̥3O������[�,�x��k?41:6����w{$�9SBQ�V5��rw
�W:��!f<�r]'L5 O=���G���
S�
�B�{�@���́;[n�4!V�M��*�
cF�o� {$i�E���"�b�M�H���*3�&�
�p:�_im/5�B�MܨM�6u16E��'���i��ڵ6�Bj[��,s�Qo�̈UrX6(�����=�;�k��O�]��y!b�*r�������ǰF��I.I|P��E]Ѹ? ��X��<�9�1Qp�����
��z�0��J���>�,�z|�h�TV�Ω~����Y�ٚ-{�O�hQ2Q������x�"pI����1�������0�ZF3ϖ�brt�/P��Z0�̪��Q��;p���h|���m�1�Ux�G�%�k���Tv"X��В�r��/���CcB���n�Q��[i���l�H��+�A�|�A�����P�Tt��i�}�h7���c��&S��q��J�K��V&#.CPF��vf�H3#�i�B�\&ΐ�l��s}�ܖ�K����S^�lKQ��� �m{W%S�����q�t�K�L�?x�8��0�y5WW�N���D� �ݖ
�Ss�����|[Q,TI�Z
ʰ�*C�>j���G�خ��}r]r�p�����"Pf�#�K�x��}���7���C
�v��2�t��I�A�'U��Mp�PA�V,=�/zwv`�ktUU�U�f���m���ԌXb�go2>���l�HVju	�a�Jj�fx������D�곪C���.g|-W��~�Ŵ���Jb����6�:l~���w&�l�'q״W�v+({x�����f+ꚼ����*��)JsQ�H�\��� X$�'ߺ�:y�K$_�5/_��g�)����k{غ�ۯx��[r�F��D}���plqa �zZ��c�I �%<�aH�,�5ڬđ�S���
%��&幒�?QiwQ;s��bP�u��QÏhЫ_@�R�J6�8���r-��a�?�+�]�Y���3Z� ��D��a)�f03��6*�[[E��603!�Y��o�:-��q�&d�f��0�S����I���l��Tˋ�s$H^��pr���cA���p��N����u	A��ax�zA̰R�i����<Ù9���>&s<����Nf�9)��ɴ�7c���R���1�!v)C޲�́��VSY�#7O_@�o(���z

�E���Rs��\Zr �<�$�y>&�=��N-P�4��̱�D��d�u&�x��̉�#2ѷ�+�NZrU�
TD�R.��b��@����
�P7Ql�Rʋ�
��FL6��4���.QYow�¢��f�|s��a ?��K���Թ�
5�'�\�?�
���q����%����n0��l��!��JG��,KK7�MDbE�<�Y�9O����D��[~Q��b�?�z`�0�o�:K6t�=��D�m�Qd2���5��S��kQx$e�W���2���XT,�k����$��'u0Wx-�I`��`�H��X�ȓ����u�Ē��1�Fz��'�A����
�^�o�LR�2�XuΘ;.4�E"���
�g�2�>%�
"�-��(�
��Q��(�!��4,V��Lo�u)Pt
��U�/�G�H�y9����b�?֝*F�o|�k�(�!��!�~�~$o�	�Acs��rx���Oǧ��q9��3 
rA��1�I!�W�v���q���q��q;���RM����6�.|q>�ߍ�+zX�?��7���tb@�0=�o��r �e.I�(���;)">����t�^`��X-@�� ?7���syC�l��Hs�<�M`e�ʿ������L*:�p{� �)�	��cd �ohĬ�
�>ұ�|'F�%�g�V�:~���&��6Yy2 !�JB; �x��a�C�'��Tlv�2tŨ��Q'�V�x�/�u�ǽ0�9���١��Is���sQ�H߉ol�⫚:
��MQ眜������$yc�a�W@����
�T0�s�fw�r��*�ט?�A�N(��n��x�c��/-�e���QN�7:v��G�9[�G-E�P�ߗ�m��������z�����p �;���͠��K���s%��)TKt��0����%t2�6�V����b\'t�#�����v��4��;)�m�ج(���B���T� &���b3�b%��i՚}�h�S�g\�g�,�$�O8���[�+�'g�5M �P1��J�nndͽ��YT ��@���QA�����2m����7�"v4��_�_w�ox# {�ӿ#B���j�]/���ȫ�� P����ɥ{��VáD�w[X����p{a�7j*�L<�[�<()�ƭP���ܜ�W0��➤��nCB�vG܋�������?u�������R�.��>k/�SG�g��ỠF��b�l�T5�M?�0³8l�p���D��m��s��e���*g�% g.�~Ną��}
B+����0�#����e4�j��փ�|��띅�7Kf�����>I�w�1�Ks=Wz�D�0�[��|/���")���(��^V1q,:0��;jj�g�V��ɐN$Y��Jc*-,��h,Z��kHEZE/�Ӿ4a��N�Q�d6� 'BU��
^�ܳ�[C�&�� ��d�}�J�}���L��1
  `��'-�/tw��.R'}R
p�7���Qo�AL0���B�X
=�h̍,����dq}���$�zU~#)�@=j)[�S��Wګ���56#���6Xb�Ω�3�= ���t����H��U�6U "kÑ�?�9��n����e��{���䮾��_|��Ϙ���(Y�z�9������o��!�H�U����k)���[�'s��`�� ��)Jy>񘮘a! ��2�%NCF�S���vD
T������4��s�|(�	�����>Y6]�X��5�淽3o��$D��\K�m�m���fڶy۾V�&n�s��g��-u�3la����*���z��kHM�j�USe���K�a��?�|��֐�&��P����N��>���Ͽ7��B���AB��A���e�Ê �pA�N����9lP�^�!�����SU�:k���>�hgY�1�b�Γ>���W�� v��� )��xhl�p
*lԀ�,�����T8�$�C�$���!�9v�v�Ȫ�=�al
��-e�C>/OAR�qf�s
����nS(�W���Zu!��c�$|c����k���r�����{T�G��-�9aֽ��u��B]�퉌��^�!����˟��&|���vy��Bz\�s��ϼM�?pS�'��K�혶�����
B���Zo��!��
U�[� ՜��e��M÷���ҙ�A��,!S��B!@�`p󶗕J��Z�F�� G�dF��w����{,�p���c�'e�R�{O^�%�{�}�xC�[�r�H�D�,���� v��r̂��I�;�ߗ��h;�z��l]:t����
Qo����R�b�?$��A��1�=�Y݋(�<�#���GŤ�1�e��.G�?9�Q&�.
tց�ŋ6�ƕcy��i�n�bhd(��F�������?u҈�Lr�)�.?��>���<�/��
��{�.�T�n�jŞ�Z��h
�R�
6.�&e�TW^Ч4{&����q/:ȴ�͈wM���)Ū�7Y�'-��;z��(]��:0!'1WD@�w��-Ԯ���VV&A ^�#!�c���<���p��	��P� �������7�2�eM�Ni ��y�ȸ%��|R=9�:4�N�a�^t��1�:Zy��!����D�q�!/�0�����Gz^���`���ބؿʻ��6s��%x�\
����$<3���o�������~�
wy\c��d��#�B�����9�17�]�FkA�fO-�J]>
���������J@ڬ�&V��X/k�T�CR�pE:Цq3	��,˯�E�6�d�b�[ ��w��h����䲚5Ҁ���U��.�[��-Hjh����\N.I���.������E��i�{(�����`����6������T_��r��i=b��Lt�2;>��؞n$��s�gA��g$��y�`��=Ɩ���j'+�����-_]@�Vc�Y���31�|fĠ^ȏ���6y�>jS+�͔���u�X�}]�R��ro��	i�?
�
0El<36	0�b>���E�Q
�:��η��M�1n�͇������ܗ���J2�� ݄m�I3� ���C�%�δ��`�������X9���P��WȞHE+��\��D%�~��������9U0���fF�j{�T! ����l�����%x��.r0O�̄��̑����(�w!q��[S�4o@p��/�j_w��껭��QG��3�.T�W<����,Z��<��·ʾ���/V�FYR�"��yMIƹ!M��>)F��V�����KlN�6'8�騠�;C�X7aW��fU���cM���~*��W��gUo.ÇSG5�$�}�2F8�R[ﳠQ����X�`��_�Ͻ/��̟�\�#�h���l��V�i���G��c�jXn_���v0ܜ��?�T�C �c�r��<pP\(�p��� ?+]<2�`=�LvAmȂsV��i�l��~S9p�T�&�m#����������D�$�����3�$�[f��<a��4��L�-�����ٳޣg�ߨk˻�˗݀W(C^?�]y�����8o?�}���l��/�#�m�%�� V���و����{�$E�z(-��R����P!#����\m���~N�o֟ƿ����% �`U+r��5d�	L����	6(�4���Y��|��ʒ}G����mC`@����N��~�z2�Z�[����B���{x��if�<�����k����]��FD֍Th�)q^7g---j�T�� ��R��q�pFT,�ּòUczXjZ`�>��#��#����,�̩r�Ce�sܨ:,ل����s��'ҍ��u�uҙ�_�%���]]� �hlrO�V��[ L�?� ��b����Ƕ�TS��CJ=��<���/��_x>���[3��R���N�n:��{>�mX�btQ01����怴Y�Z��PĮY?~a���j����3�	�j���{��Q:�?�ٜ�6De�(�0��T�u_����:U��l��t/0���+,`9�W8/OE��ךO f�,��$`�0�n��B�I G��)�¾��>�*?�Q����v�`{�C2�Mi�(��4}d9~�9+ -��i���a�B�#�6?΄����*������#��j݉BOO)
̗Fo�%Xx
��$M��S���zr0���wlWy��d���0G�m�<�5L:�Kퟕ&��UƧ)@�G��Y$�rvf�%�fB��5s�=]9U!��o�1�o��߼{�ݖz����H�2��mM��5���|(9��;�S�Jl��r��e�9Ͳ�||�E����mr�n�/�[�3�����6�ݠ����ez�h:���� fq�Q�H�;B�/$�����^yB��B���� l���%���*��H��V�%?����Ra�����Cx;�X��aD������N�R�Y(8���}���>B���M�-<��{q�-�v�UW�-�P�
�8X��C�np ��DZ,��<��\�X��O@�蓯�� �
L��뫯�������D��X��J�����s�'ӻ7D�����|L�����'G���\q(]�����+�J�~ï�@�7�S�{�a�_	��C�3Q�иApQ��P
��������ܪd̗>�������2QAD�O�}�9���4��x�XXc7p�2�M ���$��E�T*x�v	uL����4��Z������(4������U�^w"�(���+���|x�Ju50V�`3"���]����º%e��4]W���{���#�'2�zP�s��Z��?���쵔�<c��q��=d�����+,���-=_AKu�#��0f:/�>(�S�jH���K�Ŕ陋����'<E߾�fe�#��d��k��l��Y�1�!,rR\z��r@Gk��ޕ.X�Edh�.)%[P�o�&�

n��M����>��p��:ŋ9sJ9�2b�_�>Yl9v�X-5��{� =�L뻞4���8���K���yx�0I^M���d�6���u�!ɵOp��
�tq��K�F�P������j�}߶.`���|�N3Sr'����з���1 :
����т��4��M�b��6�� ���"��M\G�' �N�Hx�D����֔�?"�'Z#��,-���:���;6�){ h��2��l�$m�u�@�c��=�2��x�
���a�
j�<o߱G n�	�)�<'5��s�}�=9{��A�f�W��ZDq�7�Á7q���J<$B�'Bt��F��c���F����,Ȥ!�^ӻ���;�y��i�Y��	�d}��jX 2���VI��A,�D�gi(��(t� �`V�P��-5��P&���5f���={EY95S�j���xLP<y�/"��;��m�,GO��S
���������`9z�� �$]*���`[��iO e���s[L똨���'��L4kź�R�H܆�7п���֢w�O�_���m&G�	�q�JY���7k4�&���1�����=go�j� q�8�t9��!Y>���DK 胉7協�L�L�bdf��h�/\�t*�"C�p �:��aQ�lv��pC4_�Q��W���s�
�k�r&%�)y���1/���%����7�C7�G�:l�K̅�� �"@L����_8�>$m
�Cd�||CPX�P. Ob�q�0�
��d6P\$G��Di��9�|i�[a�c�LF�Q��Z�G.:��[��_�~��j��o�]�5Nn�����!1+V��U����~�m��<	�M2��Z�����P�HL�2��gyr{T`�b�&�m�-�I$�W?���M��@Ջ N*|~��ƪF��}!k T�qS�=�h��D$iqh����~��Wբ��
�w�o�Ӽ�V�ʬ;6���c/���à�Ӿ1T���B�?8���ME�=�*���T�	������Rt��B]bOJg(��b��zH�!P%���CC�����8@�����=�\ALՠ��7BH��9ۋ߆��pg�%ԛ-����پb;�b���[5$��H���z~<�� ���Ł߸ B����s�ͦ��Cn?=@���PHCN��K��6һ2-��r�1z�{�펢o�u�J���ܚ��B+9_�6´�.�kF��_s�\H
�
�� "j��/	�\:�D�#+��.kS�$I�v4hnr�M�
�����q{+|�탮��NrZ�}'�wRB��!�-a����ܔu֠�aodMJ�
{x�P�~:�"{Ʋ
0�D�ԁvM���EW����a���[����l��ɏ��[�XLj�0mdj���5�!(�\��g�}�"%�]�p���zq��Kt�ѳCƤ��hbz<�w?�/��'�|����A��'�c�!7��O����(WTǟ8��p��u�� ���+�eMK|W��R��y�XLj
îJj��H�syvz'�uU�P�,e�sԄ�����ZZ��O3���Un|�Z"G�: J�2͹�wЯ9�ă�P4���U�h�upx������ߟIξ����`�e፻.���=�WЙ��^N����6���a������(�-�=R�`�#�U�Ɓs�\�U�Kx�v����4�4���2��Nأ�BS��E܆r�1�*����DBYZ!�?����F9@�0QUF`�Ie��6��ښ	�Fq�ٻ�Q�h ��)�Q1Dw'�^�(�I��5!^�U�ebh̛.�V�� �MV��l��K��&V�	�;t�)�~�=L��ЭSl����<�2RǓ��˴#�쵧P�sL�`��% �!�Oo����h�=�A�H�+*�Q��=F̴��o�f
Ӊ�X�
�Ymf(1찚�1��Y�C:k�*��+�� 4�L9g�n�_��*m��W1���ߐ�d�c��MXiJ�� ��T�jy���?�dYV�}DW�������珏�i��^К\�SD-�
���]C��������h�o$'TAQT0�������Ij���5��f�a���q���8��2x�T�`���>luX�`��<f:df��7�����.	�n��x%�]��.��^�������-�eV���r�/��6ws��Xt�f{waR�Q�SŦ��Qbc� ��Zv�
��sU6�D84�S洴�ӊ�\�4\sJ���7h����؃�BH"�M�c�D��K�рUp�_�S�O�}� ��u�-���bד8ό�ِ"	:�s�ŭ�L�e�nE+r��8\��`Uy��W�z��]"$?���4�
i1���9d��	���Zͭ�n���4]7��W6��.}ѹ$D�-���bAFM�KM�T�%؟���H��g��rH�t(w��������l~������M:�M�^�b�k�p�P�Y8�wT\16�V�t��X��w��1=�������}i���4��7ʘ7g���p&/���;�=-�a��;���r�N��E|��1���PXq��T�!Bv���mZ���}�H��q�t�n�f�������2����3X�Qw��i1�����t�:�3o=�TE���Z�_E*}�Z�z����!8��~��{�7��]�p:��}Fu�ӇTR�ޏB�m\��`+��s��N�<W�l����[��⁋r�&T��a��'U��.������#��?-�7�h�-�D���/�3�����3�3i�pE1�t[CcOQ��D^�Q0%Y0(R0��ɿhbM��>�.� �	J��gD�^���E�C�@x�h��#�)N!�c\�eՙ�R�-�[M�3��t�<[�����x�C��u���٥?�эS_F�"ӊɃ�9��h �e���c"��`��>�3��+�[�}�:�!����JA�J��u�Ct��.�X�YB/`��[�]�l��#����lM����Q�)�h���1:�"ҙȧ	z�i?9�[� >fS�ʯ<-�qH<*�f~���N>a� ��d1�kL�~����T3��lQ��e�B(�£@;>�i�S�ɺ2�
2�}�>"�7{�tgvL�"�m�`���b����s�]y�dtցP�a�bE�t��d��n7�g��H=Y�9ڀ�X�<OB� (ЍV��F�$QƋf?�jS��ɒ����N����Y�Y���wh�f#	JkW�a�:͇�Vx���ŵ�q~7:*S����/��;*�Z��$���_s�u�:��
CٝhÕI* W�����X�����PDn�s\ �!���"���D�'��u�:A���Hc��lCIރ<Ig�?�닮���Y;���/��rnKc�ȕ�-��$~�Q�s%a#L���ڝ��fPL8���r1�7�����]�5�bI_�$�kd�fd��s��~xWF�AeIE5j�>B5Gc�f'�"�4y��֞Ԅ0�gJ���L�"W�m��+:�y�;�/ن��>�:+Gn�B����6^�_C"K�+�����qé�O>���8T'�i�u����\�T��w�.���1MD1��<�
XW6�v@�izZ��F���j"/Ѭ�4�^��U����D#�iu�oa&�k�4cG�w�X�Հip[kt�v�%�7_Z>��7�<2#�Ǹ����3��`���8���$�f�������w�wE�����������`[(}75D�#�y�X�B[ߚ
H"��Ϭ(c��)럕�O�#�` pgz�y0r����' �
���>�J�i4*����ep�ֈA�����}%xʌ��e;��K�$ X�^��s��>=���C��f@�i3�2Y�n�Lfv���D�P2�Cԑ1x�p
��8�<�o�XL����i�t5aZk��</$X�3Vno���"u
��`�XYr��Qͼ ֭�S�
��c�+�L6�%k� V޶����c<M�q
����
X�����W�̺���qc2��<t�Hn�<@N.��^ ɷ)۟���Y���U�%J�@�<;D�����j|c�N�b�ߢ���a�R�YB�1�����i���GuY� ���<u�A���*�d�T��<������#��;q�b��pч� ��X�[��r�}���y�:]��>345ZK�20�
�
�G��_e�U�4M���m`���qw��i8��Cy��3��K�\�b�Sf�7�mȌŜ4�\��i��C�KI?�k��!L�/WO�FӉw��ReD��w �q-�,�x��P ���cgm�0�^���w����Cso�^���7��;�tg�e��$(6xPߥ:���Bv�)�k#>�-��3����l�rRCwtC�C1�Y�k�������G�+SL�X���S���HB~���P���lc��Tlܹ[�'��@׳����]�E�+���J��C�n (�&>^��;�fz�[���hV������h�^h&>&�S&O}�u�zs�䕜Ν2�+���F��i���|�2��t����]�8=H;���F4Nq����;�w��0��`�`q4:���"j���<�7T��E�x�	�"�)l�Hi�,_�M�LȀuQ�I���E�y����#��������a\a�S�H[ge2҆>!4m�1���+��#\�b�D���-4�|��9zP���q���H9P;���]1.����G��Ʀ0H�M����	��H������y{��k E�^���2������������:�ze��|�)e�wk�4�@o�����P.��( e~��9X4<���(R���;�~ H�
A�u�v�����F�-�������yH�M�~���o+Z�g�j^jj?ˋb���}7 J_%W��x��p	Q��N��s��]('�U
Uc!R�NՖ��ؗ�
ò'�/bv��¾�A�'Q�%j���?����ꙇ���MS�Q�q�u1�&�
F6�Ct��MճR��8v�c�KA��?�L.�@����*�1�q]��~�֔y{���|������8*��+�0�c4��`]��M����ѱ�hV���>_6�T��� �te�q�öO���V?���3�g���:+��LB��"&���_=qwy&���+G	n�1��~Y����l�!�`9��"s�h!H`��^���0p�F� �5Ȋm/
T1�]�����0Z�N���W{R���H��a.�
%-�u@�V�Ճ��fW���G�5 ���I��ǐ�ev�L8����C;���?��T��Z�U��A�S� >��wMpv��v;�=.��i[�
��[_�+��;���sD��b�����ef4���h�xhi��g"i	���O��5�g��:�"/�����Ѵo�ݷ�M[{q��\kH%_�����4Ǵ@PX���n4�s+/+Y䗗����ӂBU�L����!�� ��/;��?�3�w�V�߷MA��<�y�wa��>uV�r��`~!I?�-Ɯ�:��$��s�h�e���-s5�dN?(���Y���4E47Iiaf=��.�+X�($FUs�0���
��<b*���07��R3�
:�ލ�X�֑s�{�*�n| k5�P��R�r�
�F��	�4�4e'�QY��-D�av~x,���W���Ǐ�F7�}�XE4I�8�	�c�c�oa�tj���%� ��[0f���6��S�6m���}�i:��T��y*tCZ�ww:���?���F�ÿ�S���CV������=��P�.��i�&'N��Gb�	(#���KW~�Z�<�:&9@_�B���:9}�b�6��z͛0��������>�:Z΁ɸY%3h�$Y�{�.���U�9�G>��A*�a�(�H���^x�#�M�k�C�+�}l�H�,t��&�F�K�Q�����J� �]je����l�&.��o�n�X��s<f}ʣ�nFVu�݌5�~�U�>��LPL����#��B#��y�aHi�g02�����*�>aj|,�*e
�E�j��{�_�/P9�kk>��
)R��Z0�����K6�)s��f3+Q������>۠��&  
�AĎXC۲��u(�rf����Z�sH��F8N2p�PP�W�T*����;%X��!?@��.�Rw��Lg+�R
�� �i
�ˉ�{]xZ���D�$DXsbvzV1� ��mm�=$XJ,�4O2��ҟ�)�cZ���U�Ke�l4�p ��ЮZ])��9t$
CGUL"�,Xvu8�"�� �
�_ޓ�{)�_G��n�",�ľ��Tz��V:��D�"?ջR$ӣ���+���OC;�x�e��%6S���dCRd}H8������4C�x��S�$ЁX�^2|	\>�e�MGF�F�&�g�jYF�c}G�k
}���+C!n�vwN�a$7�UD7,8�~bG���8x��n�B©���� +�tJ��Y���9�]ڹ���=�"��5,�bi����-���� ϴ���О���p�cR5�t����w�O �v[C�5E���ۇ�&�խC��$�>��Ͷ�f>�G�OĶ�Ua0&�s��h�����ov�<���3��3ؓc�&>��$U���v�g��飯���u(
.��Q
��Thv
Z�Tӛg��&A}�AZ��^7�-�H+H)�v���w@���J @�
1��х�J�ŻW��X�.
P״,R��r˭_��:Еw�ȓS/�x6ň�627�4_��5���6?��!��g��aE-�H&e�#o,�o������b9]��������BZA��Rw�P9"2�j����l������"p0wFH�4�<���)-([����J�9��I�1�0m�#�o1i|g)��\����s��ӰK�B��6���4�KId���ɤ^C���"ΰ��g��ه�F /{��+2��ea�BUX��NU�$D��6֓�e��~�TB^�?�Km��|��EC��X+��"9���~M���L*LT���)�8,a�B"�5�.�f$
M�n��[G�l������x�|��
�]Hj��5-�^��
�d1�RU9fP���q��_��ϭ��>��jxaOu���H����#\�*��O�XPR�/	l���YK��W�2�H�G^�fEBe����D�}�[w֛3���:�m�owK�M����Ś�d��]�2��J������E��Mh�y�$}O҅9]��}e��� E��%И�ْJ��J0LA�_���iR7�����L�Mw˹QX��U�z��)���ǋ�8�:Vw �T@��:���NEu���מ�v��`�I"������g��O�"mB�a�.M �+�w�)�m�}��d��g)J?����1��>ied��ǌ�c���	$W�ђ�[����{l*�Y���
��瑸�
�m'"v��C�Da�@7�'�&���L0+L�YQ�u�ă��P�<��\�^�;gM������e!��yҺZ�5�9�.�{�'4u5�1��"�j�w�����C����T�+`NE�Ü�e�|�(5�C�&��	�8��IZ���
���^n3>��P+b�0�Cc�"<1�g�3�3:f�N cM~�[��7js�tHc�	�����cmޖV� �?��+���ba�t�,�]�U�8�5@&@�0���Ӫ�����K�"�4����� v��S_i2��`��3 w������Z�N%�5"����
X
�q����f�M�J��@�l�c��q3})h�ɐ�*�+h�"w�
�I9��L�U�)��v�<�q�ٱ�!�����B�9����b���G�B�X��E��uƸ��Q.��%���=kl��_�*(�lo|#�;��+�iOT�6H29�f�X2�Բ��e�E8�5p	;��g��Crp
���q����f"C���O�#KG�%���эmI��G�;��p�}�q�*
N����Yj���˅��P�ӇX�
Ӆ,)���}��
�u�Lp ZXc`�dN����l��:kQ��C
g{�j�?��1K�d�ySC$��Q���K�.Yb���!�U���g��
��c�e�=gX��m�߼]�fyEz��9A�Y�e().�[%� pN(G�sQ�Ԧ��x?v����Wx�oE�6����#��~�0��'G���
�\އ��
  fݒr�A�8�2֣wO����a��|9�
�GJsb��q`�q������U�J�q�p�+�� �j�/*�����:@��\m�>O��`�* �Ҙ��_��d'�g�Fu`��˲���z�I���Jٝ��m�U����yi̽��6m1�$.����ϚN~�Pm׉���6���F����R�ښ�c�$��������3��/(�n��!����,��1m��K��Hv��OR��� -�8nj��&��3>=�M������]o��6B�v��L�:חP�5�&�4�:A�d�o�U���3?�����0�2:پ��A�-�Ң���3ipLɷć��lۄT7G�s�T�/G][�U��K=;�D�x�H?��rn���ě�h*p+_%z��~@�P�@pl��I��ܖT�ƞ�Ζ.' m?L�W�$޲.d��g��~f�У�4�a�mO�'�_jY��J����́h�]7��:1��nL:w��������7v��y0�L����<x:�]�E��xn�I�q����b���������e�:�d�R#���\H$5�_.��"�O��/�<G�.��V�)(���f�H����r0��a��Ze���A�XU#d	�*y�z��e��&�m��䦩�UTz���Ϸ4���x21 �����8��K��p�q)��g��ӭ�xZ	�y����˗d�ѡ!���ND������	TS9�JϚU*�ɾ�,:�%�<>0hˈ�60Tt��4m�ڀ� b<����^`jrh9]�������QB�/�Pō3�h�k�8P>�ފ�������Ry1�n@���=��S�AGe��'L�O�l%��c�x&�i��7��X�|��;6�Z��i�Vd	�%
Y�:wxk��֖c��_�O��B�#x�`Т7������^^il_T�ͯIOs/�r�[-�<2ۜ��G�!Y��C�\�:ȏ�f���uAE�͝'M��=V�P���3�%�Lz���e�M:�q���5rbK��q�5]�:h�s�UC�䏜���~}-�������|��!y8^���%g�zW�~�2uRs���L�;^:�)[4��j*����VEz���D&�;�o�E5݅АZ#>���Q;�rfl<�OF
�����z�@�Y�}NS%�:p����P
�P�Tڸ����r4HUuψ�I��v��1�TZ�z�`�mi_��2qǒ���2?#��v�p��Z���6h�y�jX �Ǵ�e�g ��{>��YJ^Q�j	@�In��-&M�R:_)�=�����$&S#v't�<�������E�c����b�c4yX-�En�{���%)���Y�1Ѵ���z������^гw�>�N:�@z٫�+/8����cTfbm\�z����4i�s.+��4M"Hy����8��j990akO���q/Ȇ�䅊�����@BЂ&�����wX���r��5��ԕ�N����J&����JX\k�a�>���1T�N#1��ċL��]\Z�ͫ�(N5�T��nJ�D!���p��e���Q�7N*�,��ɡ`��;3����ʽ�~�Q��;`R�a��ڨ`����"P>���׫�hé��H��O�?�#������Qo�1��;�nM20���m=?��o�h�Vl�L��R�\�/|���kw����,����k�$�B����3s� �������\
G�}�2��:h:�Z���֜2��q�q��W'X�x�-���]���:?��fW�u��K�g?�	u�Z~��ۢ��;�w���7�,?#	k���Z�mM�9˹)ǜ���X�Oy"	�o�ۘ�'<=+�ND��T��'B�P�J�/��~F%mS�~1��Tސ����S�d�)�X8H�����P�>V��/_ŊĔ���
∶z*pV#Ε9&�ѰwX��,Cד�X�AO�K��[̡��B���?��d#�I��i�8����BC���p~�v�r��+��l71H�В�}eYAq�.~�'p��Kw�A�W��
|8C��q�Zy^���l�*F�K��Xa)�\(�^y��AR�D�8���|#��*�F�i�������U���C���/��2��(�Hd᜗�+���u�
i��ͅU�;
��t�n�;bq�CN��8ߧ�&�Rv
D�٣@{��{{�����D�l��R*�{�ֺ5��Q�1F��t�Nz�`����ڜ3/�:)�w ���'��ɞ
�
����n=�T4�@��ZI�܋4r8�r����e
�G�ƻʜFK�sYPB��T[�ǹ�o�HyØ�H]��:d����3w�$����{�q,Ne,0��-��	3B��3x�֛U�=(�����!?�x��*/�
רҽ,�Q��c�EL�_�5�H?�U@Y �e����}�&��f.q*O�]8Q�R�p�@z�sj��� ��ߕ7�R`%�{�1|��0���2?�l����¿܉zUUs��} }�T&�p��s�F��O���T�A�r�6p����J�_���
�,�q��fE�c��}�`*�R�Ee��(jm�<�:�1��j��GcG�[N|+��f~�a2m)q��b��_��=97�S+E��0���/`jl(�+��n00D�H�
O�h�).>6Mj�
*�z�<gʢHq����y���Hyyb��>��a��D&��\�,�]>���i��1z<i����x��}2�Q�xצ�O��MUݞ�T�fͰ;����������B�g8�	H��д����}@��N�B���H��/�#�gq�FC��nH݈/�M3��?_)GZQ�7�PC��݅�^�nP���.�;����U\)Gi}#8��e��)�������s�xe��C����b�P��q��M��T�R�(����� �q����T�>���*x����Brb�|Fz�����ZȎ�CVc*���
���C2����#o������m8xz�9��ݱ��ɃJ�::�M�ek�~p��f�E5�#�C�-�9TV�N���z~J�M�)Y��=#M.��IV��HҖ���Ӽ��)F��&�>yǈ�-e�'ܦY�¹������)m�P1xeS��$ߥ��tWM���\��'���t�#�ϝ�e��0��"����תqj�v�D�޳?{z�
2�sho����%빎Q�/�w�2$��nnv{0�\�MF�r�#��7�����F��	l,7U�� ��@0C�����-OT��D�.�Sǭ�o�)7�句�G��H8R���ny�C����Rxv�`j�K���E/�7�>���Ͷc����$��#o��$P�.(�=X�w�I�������s_d>{z!�C3p�#�f�j����;�:x�!�'�ݪ:���I�(�0uh@V�n��d�s
s�:[Tǀ���E�R�h(�4��o��pnu�6�����_�,��8�A�P!M����ש�ެ�����q��V����ո6#��8r� Vpn�4M�y^�rqF��1��u(19�B|���Z�ي���������|��=]��<P��Ǡ������w����$��rc(�F�kd�*H�g���𛯵p��>ȹ�}G��5s�>��*}��7��F]�.�'��n�.��	?\Pp_9^�M�{�F͌(h]8����%D?�1�'�ZO�}��Ⱥu���u�ݳ������2[��Ǔj�w5l.�
�7ߟ���v����l����Kߙy](��նo�s}<����:f�v��y%���0����	H	.����U�KD/q�0�9��vL�6m#�S�[� ��{�k2�靣��"��sT4-���~�ވ/�����1c~8���8���o��?���]a�Y,�b�|N)������2C��YsV1��v��2#��v�J�:���X��Ǉ*��T?�8��m`:$��+�n{����p�#����a�����쐥,8�eQ��|����ܿoЪDB��Х���R*�)\/���M�F���Z"����D���"���$1*R޽��R���V���,�vmZI2ZZ�ސ2/+�����'���DD��;x;Z
�U�1N;$�޹�-�#����<����!�av��������a/��݋h��R�����z�Ӷ<b��n;�Z�H�c�pG>*;�����+WC�=�C	��o-�
߸���"C��x��pR��?����Q��<����Z'm���a�gK��n-o�.U^��4�(���s�DX}
�8W�7^�G��#l�)B�5�ZS��#�v=
���
\�}�� �>}�D@��p��{�,�=�/;�ښ���c����� zh�W+�&��Hj��wef��
�A��#����	AMN�E���0�q0E�r��)�^MJ45%\2��de��B��<��6g-j�\@:.�b�����Q-�.��h:�\@N���P��1H?�F4��цH����������A\�9�*�Ɂ��BmWgڡ	A�\�nӢ��l�,�Ì���|�3i�[��R��Ws�liQY��r�R|���A��.�wT�Sb?x�g�w���/L��v�М�y��nwCR�4�
�`C�h7���8Pe��/q3q5'Jk�0�x�_����@���^��%e�
�h�U�F*�/��m��x
���}Yؠ{�q��?t�/�(����[3�ι��I�^r���W�Y�����ډ7��Qٮe�<�v���8�~ȁ�u���|�!8�Ut�c}.0~%ȯl2h�u�~gսwqM'�2����h��*�⪗���mX�p���=��f��6��.�
.�T0��=z9D�H��p���WX���&/��'X�����=g�}�m�o�ڞ�fh0�����i�D/v~	�:]��okJ#��I�E>f��CD[q��
�0D���������wX�HS��v"����C�2�Kd�;��_������`T��������6'�YFj��
{��t��0`�'>�xGxۅ�{����E����Ա���]o�;v6�����~�@�6��c�@Zƾ��˱^/�R�m�j�&C�Y�s�/�1"=*x�!���
�k�?�C��.���I9T�g�+�$�1D4����Go���kja�#�/;4��Q�v�mw0�i$AH�2��>-E"��W�����!�%�(����OTvߴMR�T{�Du�A��U�Zj�ӪSJ՛\�9�����Lױ�#Ý�J�f��|"Z�쯿,��@*�)̮�m�'ϩ6gH�O�p�LziF�|�Q��W7�[��Z���jeΠ�F�_�.�u�
-���n������=%U;�?��}?��uU �ǃڇ
�sՋ�`P��V�'`Q��&��%�)���h�9���ތ²�h�ɖw�?�RgJ@��M�S���#,� ����x!���Fu5LU�ɝZ�sǢz�k�	�ߑLͿ��%PBb�̈́=b xI�~
�?�|*��z0��gL����_M
u������'ؓ���ک:L��V���	i*���̤�4�^�نG�?��RMa[��Cea��zlʴ��y�g�"�~ǨS��;�<�n�t��n֣*�nF�]�eWŉy��A�U�Q�)��rC^AR� �F�X=@����6K�x
mB��F��6�m#�N���������
zW���Q�P�����0$S	<Q@�U >�L|>An����2bO��H�0p��L�LsS���I?�5)�M��-2����#4�݀3�Um��cl�����4�������w{�C�|m^T3�ft�[��n	岷��Ƅr�)Л���=�ı�*�U�	?G��j���R�����QY6g���q��(˗���;�7�a�s[Q����3.DS�f�$�=�-�H(v�T�W.��4u�Ȩa���O?���l����r�v�dc�w���6[���~J��Q�˟5{Q��Q����N7k�����c��o2�BƁ��%=sԡ�l	�A�1?�;~�T
�$�e�e:٩`���Wԑ=��:�`����(�L+�!m��f�UX�{߹F4��d�w6�%����q������e78�D�r�n�!KUՃ
z�� m��¾����li�cW�r&��Ʃ���c/�Ȁ���&�/W�5�8�=fb�9az��m��3*�ꑵУH�uP��i���L`i�HS���d��i�������
8DDРq�NԄ<?9��/@����{p�����x���e*n+m&{��S{
��P�n�߳����t���ܓ*D�8^�ZI6X�~p5��v�*Sę)�G�<�c"�J�Ӝ{T͊4+JD�n��k4����vP�_k�=�R�R�
l�ࣳ�-#��E�w0{S<뼦X����*���ࠪ	�!O�i�c  �Co��_�+���6��k#Ӗ����Y�jQ�����DWX�]"BO�>G�h��wM��G/���#�� �H1-��<��QN�o�X�'$s��IJ,}�\".s�S��v��5Aװ@	/T��Q�FF��J�z�F�!�D%�񯮒+�tW��ёl���s����R	�B�����*���$���qwt�/D�_,���ˁ�2�`Ƥ�h �3b(r���恨k��r��S��] �>:�ΰ���= ��$_(�u���Y��Z�$��d�����=}+T�\��!T����xQP�������d@��¦��҄�:��X���u>z<��ꬾ�$'�g�l�	}�<�w��)����_x�oz8�/��ß����0 �����6v'����/��;W栈4
=��d�B>H�9��Bw(��S�-շȇF&^Z�P����?`:(�Nv$���|�<i�zN����! A�iQ���3_M�������7��X�$�8�W�KW���_��Ӥ*/ �x@�a�֢f��5����4��ΏX
"H�� :ѳ&�����XY1�D���atf�6u�[�=���;Y�h���E�������d��k��c`��g�nD��3qd���bF�z2Z�s[Ȧn�"�
׫�z�r&J��{ӭ-֑����8k1ǭ�[��<�B�,1خOUrX.����D���:g��܆r�OiS�}P�z���Va���C~�4Z�r���b�Q��!�
�j@%"��b�+�x0���9��G�1�3�;��0S	I2b-6��c[�Fx��Ƽ���ν�Ŷ�$�o��!(UE�E�W҉��`�Ih8N�.� �@�=��x*�"ތ�A��J�.�(��=���P�J&ljvItM{E<��mYW�7������
PP��
�-�=GloT`o�w��EOu�����/<\��Q0`/M��[�������b򠷄ꎹ��5��Gd(#ITWe�1�2�:j�n}t�j����/��Te�[��|�c�2��9�W����)��RhD��"��hΑ���R{i��k�U��=}>8g�6���9�"/�:��@�^"4wH�5	��������q�C��j���T&K�B)��!a��0����W�1�b������a*�)U�����:�Lr���l�0N�tE�� j�h�zk��'F�3��r����zEϛO!O���2=p� ��>[��/���D��uai��0@H��8�B	HDO1��^+ʃ�2������&Y�ߧ�2��0�������7Ε�ă�� ���yi}�IbW�Hn��%+O�4����~�!ف*6�"6��8�A<SuK�kwbd�����1).�2�����y9�
 Qm9�}��IAE7"��^���'&��sC���	��d��[�*E����o�^�<75i��'"�W��B����v�Ett��e�Y���*4�p�wԶ�(h�}��7��-ڿi�A�	��с�ȅ�+L�C_�ߪ�pg*�@fUԞ�߇�A{��}'3��ǈ����₝7���U�Ě��O�`��E�E�����*��aD����|Pc@��Ww��p�tf
9Oe�d�ׄ �`�̤.,�W�b�c�b^3���;�8=^"6H�����c������1?<�E0��<hG�(��Ur�G�۠�j����V�Ć��c�Y���%ϳ#��CЌ�&�{
��5V��|02��,�*b�u��0KCHǏ���=&�����kw�8��˷z˾G��[�@U1��L�m�Vκ�����0G�b�{ц�vUg¾� �k4ֈ��Jq�ŏ�� ��K���ְ�oy�����e���e���-(��a�	�:9���e���W=�z~����`�pӦve�|�z���uDǌA���<6���B�>��cٲRZ��Sׄڌ�cK6+tE�
-ڲ��V�*V��.�A�
�����r>5��d����%TL�G��)�e�H��)�g��I`V�Z�����1���4O4_4�b�B{n�'ʟ��oG�8��/,�uc�W���gu]��a4{a��|ق�,�8����x��\�0z�n��5� ��:k�H{��֓yX_�q�kf �ȻLu�C�r��Ԕ��Co~U~��:��"�z빭K�֩�
���슪�me��L�a��J�v�+�?W���,&��vE�o�'1�1F!���DG+�H+�K�W�Q����托U1\|	R�"���z:��W0H1!��?�]&~*���F��G�k�mk(�)�#��8{��������'���T��5��K�#d���h�/嵯9g˘��3jŰ`]�
�oq�}�hе�A���M��J��r�%�<4���3�L�mFTJm�� �݄:fN,)�@���2�q_f��E�9��x�(�/e���iw��4ri�q@�!�����~�q~>��v=�$9��Bn�iM �tu��KOL#���!���]���H��Q]V/�99�dN��6�h
�⾈�o;Yr�-�M3�\�9 C��p��?���dI�+�Z}}t��g�������0��1�"f)�t�=5�|*�⩵�ӴTF:LH
b9���1�4��+0�wna#g�D�`*��:W�[��+9}�P�|�
�ǟ�tm����uM��o��@�v��BvO8o_w���{�����?�$['M�F��辳��I���-SD[D4��C�պs�-�� T��|W�1Kz�Cܜ������95?L�F~(����������4ㅏ���Mք�1EV��M1#��j��
lLA�2-8hO.�S�I)k!,�*�5Z~Z|�tB<$������Bl�S����l8k�X*q��T���dhj$���Y�c���{	B64F�p�_!vU����Kj&�D%�Cf�-4�1b8������8��1�Bx�F_�-e�@���{{�y���C5��g���88L�����
B�)}n����^����yv39�W9r�]����_Nvų��@/�0��i�
htLԮ������`�Mp�}+����ð�!�h�`��
�්u��7��@�43�3�M�A�bzʠۙF]��!�9�����p�u)|9Z�֫�9q�ֆ�RE'�ܘl�I.I��j��8��3�c^�M��n�Qő/Wi@�wBCˑ7�a&�4T��hN֪�Ҡ2�Y�D�Y�����g#@J��A�7��DOC^�U�
�F`M���=�rP�����}��q��g]j]m�F^Ǫa���m�hl�#����C�X[b!<����Pu�g�6,ċlf4�8��m@����wn
{L����P69����3�y�
�WpBG�����=G�U�AJ��h����E�z%�I������Daׂ��ޱ\��&ld�����C� ��[�qA���7�Q��s���N�z����T@ɷvƚ���aO!1���*�'����
vm�>�>�o�WM��� *���g��1���s���V�_ub�PIb`W����&G�D��n�:�#Hl*
g�"J�)�[Ӣ��]jh祯��^�s���+���=�|��k�ʭ�s�
�W�;��	Dy�`�d��n�9�����DD#�BI&�$�����O��Bh:�{p<�WC�bg3�T��b�EM��WG!��F`讫�!�`_g���$���a�P����ĺ�p|0'��� ����Q��(Kb^K�Nu�^<h�T�X�C"�gK =Ǟf��B����㌦���� }-`9�qN��xi0a���<l�=��x��a�2P:%���f��6&�t��)`|���_U����WtYC��sQ3�����O��D�M53A�)_ˎ7����B��Y&X���k8����J�nڲ����d f�h�0�G��1�Lo�(xF�9T��&.˼f�i��D"/��0�)۟&�ʓ�n���5��e��ՙ�\t��D��X�������9K6<ћW�_Mu�N+ 50���U�j3s�_!}6\��>���֑��-"Ŋ�~�U�ů;\f��n��h�z�5���nIv���l 0k�Tg�0A��n~[:΍���� *��΀��<��!L�8'A����m� �)�|8��K�$?�dD�����/�?`��P׋��q��hG^�2{�>�B]|��;�J��T�P3��V�^� ��
�'?���^O=���U��6�Ѝ�,�o��\	���X=h�bj��m�K�[GY1.�"�f%R�,T�K.�&st`Ĝ��G��%o^D��^�f
/oX��/8:n���1׻X�E�5��Ah��Bm�H���'�!�҉�H�=�ߔ�r���FV3�N>��u΋� E�m�v��+��SY���厯=2s�������h�Y5ܫ��`����F����-�38e��X)h>�`7�2XQ�\ը�Pv�&�t"hR,�P�(�[80�Ds�㈩��{otp�0H��*Хk��t�@��|Ja��%I<].L�jIx�9�����~���m&)�a#DRm)�����j���#я��=|��z�XK��Zq��ˀ�ۍ�,�I� �["�Yt����Q��)?�a%�� 7	F\�;�:p.��g���_�id����e�J�Y��8-r�6��6���Ka�Y-�@�r!��?AS˙Ȋv�?�|u�`��`U��-w[=b��1 �����k<I��l.YbvWlb�:�w�n0L��O�3llf
����6�����fY�M��2񤝅�Td��+X�m{r��b��=J>I'�ޅ��y�+��	��[$k�y��rEi��I�*2�m�?�e�B~tY������Rڄ	��c��'F�
2G,(!_<�+�G�]��\�Z�+A��ңUgz��t{q�˫�.�٭���jMTl�q�k�c�\W���Hz���ׁ�//c�	uA��T�ȸ.�"��W)�AEz%OB߽���|�P�>�	�U��y7tck�s�	@�W��b#��c���+�&{��V,�#⬝0Tyk@�G7��e�Rd�ce��A����.+:��R���v��S�y 7�\KρLnp�> A1,�^��Цc��V0</��}��"Ju3�ΖM��(�J��Y�L�Vvzz�MN��\�w������6����1)0�����}��m���Bs��,�����i����g�I~���L{��Oo�����X)�s��n$�/Wa�<��x}i�ɶ
�i�&�O0�``f��nfG��w������-*��]vO�st�J��[1|�7I��?l
��<Y���y���O�?S{gSX���Ab�{,�1���2̓�|��-j�)�n�-���h�y�8A���J�1E;hS��:Zd^���,���[���?͘x9��\��W���fȭ�z��~���J��i涰0 lUV��kmQ� 7l܎x�{{�-��'�f�1�2�[4}��Y����li���.T%L�i��M��$T��P;u���Ša��`[l$9�Aڼ25�ǌ(��Jk�bvv_A��DG�����-�8�0� ����T�{4��Nv �-�\�8eTm����-MmG��HK<*�R8\��;����^F[��F��c^�c>S9�#&��\LY��ڭ�G|��W���mY>����s�d�-��p��a����s�}4�9����p��8`q�Tб�����/h��)�|�Țh�t�ZZ������:�V��WIqw���������.���M\�C���Ǝ�Fq�����jW\�����<��a�rWb�ľXe���e�p�I$���!.b�������)���D7ׯ# �)�V��<���
ΰA?V\	���	Y�`.S���(�2��˶@��<�Kz 78Js�ܾ��.���EIi�-:�56�˂��D�_n3�3�����
誠�܋[@~L���~�zS�s�~UVV�q}�z(�9<&<]�;�I	6�l�i���kZ�����Ǭ�Y|�|�	�CJ.�����z��4�L������BQ����FC�(�4���G̞7X6:��RL��荲���9%�^l��������T��X��@�3L'ad���$j�M�kф��0c�	7��P;�����n����^蹸��c�����ɵ �.B�m��q 
�<�:�2I�пpb�Z�Lg��ɖ`9Y_�tY�c7sr���h��v���T�1�Ȋ�>]�)��l��s�Cqc�5/Y���5�
��	���w�4?w����r�o�%��1M`G��
��g��Zҵ�/#���!��&ˬqo-W�AR{���1^��%����-G� �`V���_�� �"N�'�>�������p�(�Ш�4�c9����Sso0�q�p���믂��YA-}2�
���Ⱦ
�R��3�g�S��*H�k�
�+��{h���zd���)��-_
���:NS㠁'iBP�s�UK����ئ
P��Z}��"C�M�ٲ�0p	֖PuE�z|B��������r6�4��{��G g���ɪ*(�Ğ�˼��Xc�՜�#T$��~��X���L�Tm�p_B��D���O�i�/�8��)�jB^~`ʅ��d�7vS2c@Wj��X����(* h��^�`wO[�3����9��Z��ZJ����f[\񰘝�:���
�}����##�
p���o�!�

���[�x�VP�Y�!A�r�[a�����$Fyw!r�nJ��.��1�~n}~HT�Q+|2���)X�X;nM)?v
9����P�6���p1��H�V`fzC��g��V�rD+�lvq/S��ciٽ�������J}qK���¬~�������i�q�o��+~�E�q���v�&�;ՒeU9�ꆲ11��DA�� I��r�h���cv�qq��T 1����2�<��vO� N5��y��#��H@���CT5峵A�|�܌ÿ�͐l4[l����kw��C��>���h����W���T�D,�P�^�3�K��{��/���ê(��0W��RH�;4*DW��U�������mV҂Z��.�����>���O����̃�eP
�w��uZ�ġ�,�D�Yxǝ��0��D�	�����⥲y>e��מ�Iqe��"�mB�2<0k'���e�,�dp�<Kx�S�nΊ��t���>��HS�'ŉdk�o�b;/"�h�	��;|�i�3/1�|�Y�Ã��6ԇ��+o��-\<.���Rk���|آ�;?P�J� �$�[.nۚ���6�{p�=,�G��c���*ԕ8KXO��c���+�.��c E���u D�r��Z��gogO.��r��/J�޷���3�� �X��ɦ�ѭ�UI[׋זL�C��XB�EWYP��گ#�n.4�+���]@���H�$e+ ����jK��J5pp�kJ�)�g�r7R���u/�b�����˗����P�>-��\>��::ER'��&RR�R=�3t4�i�l�b!*��6���K��&�.h�*Uv���i�*3���n�!���gSS}����?W�ؾf��5��o��JϿ����Go���y�$�ۧHR4�J�/)���i����W.�&��%K���jx�0NC�ڟ�Jæ��4�o������Ӓ�dy����,�/�z�O��k���2ġ�����L���'\��nz\a��v��u��������e���q�^�D�����B_"����|�R̚vC{0�*&g��S���c�z�7$�۰��֝S$'��xj�T�3O�ЊW<>v�7$���y��_�# -�^Ϭ۶M�+-�zVy;9${s�̼+bKtŦk�]j��'��뢾�e�j+jO��ZO�E��)a�_0��/���6dI�
W^~*u)�a2ʑp�懋��>���替�g31�re=z������^3�RW�J�Ox���b���R"��%ƈG�J���w�����&FO�P��K݆C®``������=����Mg��vQ�
�� ��� 	�eIJ�g��@φI��6)K����D�d~�7�Rr���{O�%M)͔�rh& 
�ɟ!~�P~:�zQYF(O?�Y�%��)q�u#��~Q?�$(��"[e�nb��9�_JPdgsG�;%cL2�<� ��'!������H�=��m:$���L�!���t2+�d�nx�a�ɫ�j��	�����ǀ���H�����WE����>jԂB9=n��3���%����G��gn���䢒%��Ր�	�1�Q����S����Bt�_�d4pdZ�zЪ�rl��ܚ���R��*�Z�b)�T�X5���:����M:��`�wcRa������D���/s��e�XE}�a�\��Me8ԋ����Ax)�!�񱓻v���瀛ūL~�Y�����\Kf�S/����g�VQI�yVG�1�W�>��q�����,	hVO��N^�,�sC
�E�*՘q$|�v��e�ac�e3|"_[�P���6�KF�?���R��t���x�N!��̧�_?��j���]2�<��������G?~�q�ޫO������TJ[ҁ��C�tK=��p'�߄���d��K(s�����>�7
���'��H���t���eeh�S�W�@Ds6�M����.v1V�g���F�XD&M�xEϚ(/ZX�6���؟�w�B���n�����g�N�ݘ�W�5���X�@0CRB�~��]�鞫/���$�7�s	��Zk*�&Z�!w)rg���s�)���kŮ*��,6Q��.@��kK4@�F�Nv2b��q`�i���D�!+��y�M\�3�{�s\~�@��S�j Џ�@d��M����^vkk<�p>Zjѱ�l,��K��$��72܋g$�|\�K߫f�P��O��62QѠf�i8�9��H�{�
��6W>M��ZL9��v;�k�C��+l6=��B��U�a�cm�H��Y��v�7�-�T�E��=w��4���_���Ã_/����#�� ��5pq�W�!C�e�6���.gw�j�
��	���b�Cr�����=�C3V���R�y�������q_P�~�[��d�Ӊ��G#�Fj�a]_`�>�-��/1ܬ�{/2b�ݕ�O1��PVk�2@ Е��������!�Qù2��M���N>�Q�_lȡ@ܲ՞�4e��Y�/�uk_PӄÎ-5�1�P��қb��+��x���9�n����Z�e�ɍ@E��C8�/.������=eOF�j����CѢ�c�W�v�:`�3��A;�E�Q�"^���	X?��s��5���}�=-1UG5�8�!u�N
-���Pp�`�ix0ۘdF�d��B|������s����O�*f*�v�_(�sO~������G_������e�Q~�c��z_&w�Y�;�#�1b�	�	�w}�yn &�����*�`A�&Aj.;#do&5�Ů��7/��US��X��A*S^�|�����`Crn�h����(p}�)�$lui�	�OD�q�q,~��q>�����p��F�<���[����P78��Z�Z��Lw�:v���V邦��I]��#��f���LS�g��)��'����'S�&P�����@zM����uf�$����
�"�%�w����.��uh��2��$1�ay��2p�k��`:ػ�爭�a�K
N�J�]e��Č�4�=ʈ��R
h�ї�F��ѥK�R#�����o���Q�+����r��� P����0��"!�!��`��Z3�L�2ߚӧ�Ty:
���J�.��I�/�f�5~��{O��@ם��9J<Z��$'כ�˛,�F�@������b�Vm�����l� m�o���*s���,h�K�I^����[����3�?A����1F����wPf�C|���\�l��ʃ����]M�+��[\_!u�6�zힸ2��R�S��?�8X3�
7�!�C7�j�
}.�٫�k�s2���D���t��Z�s�3��ك��(���-�v��i�ca��xG7���K��
R�	dws\v��ʱ9!%��j���l�_�.hi?"/�r�Ŋ����
i�ٿT�Ej���m��4vg��2]�td�vc��QP������o@�y����[m6��{h�Z���׳o�,LE1�䧿�&� ��"~YMR2]���=\2g��.��(JV�|����d�2'eݮ�~��*`\�O�������+Fc^,��o�=?��l�9��x�����ȶ����|���@ۺ�ru~8��?_ɵe�?�"h�h՘��F����hb�����v�^��T
�Cλ��(h�@�Bb�����?,�t�,|6��W����1&���`y��qud���i��!�(	�יd�AI�V�r��� [��ɳ�|�Y�8M��;��_���G��C=���9�~;����1?�A �|�{��ȜsR�3.� K+9���08��k���������!c�>C=����T0�Q�^̊�Zr�#V��l�r"�k�$Q�q�l͂�G�*�Г$�S�-��O�0�u���8����f]�^���ǲ���yjg��3��U��u}v�7�0��?+��%��9�'oCQ��e�e�������Dl�(�|UP��
�2�j��T�:��N�f܉�R����A�_`4��S��:KQ��{[�U�)��=Y߹��RU�n��͍�l=��ڄ�8�G/Y;t+��O�D��N�����b���o���]�l�:�x.���\ڤ(x��*h���R�(�}�w�$�# ������D�\�]V�5n�{{s�E������,����6rQ�U���_�.�7YȵӅT��f������@>�w!g��W`;)y�"���E*J���[]��f�Vw�n4������e��s���Yu�9��������Am|�&��s�5��7J��D�p��*MGן��W _�zU��X��;j�}� qtSG��1��Mդ�~�D[4dൗV3<$7��3��� 0�I4���	�C�=T����Ů��A��~�N�N�W��ҼU^&�oӨG�>������ï$Z�S	��}��?1��<�X�����qBK�5��}��+�wlxJ���t�.�ƚ¤xj�oK��9 9�lvd�]�NA\/���dm�R���U��G`��r�Z��M!�9�
�
�m��=��؄���ӭ��1��#���$uoe�+���f!�xAǀ,���7q@�x�������J��i!�@��"Eն��wL�Ś�.����p�E�I5�{������ec�����vR�n�8m�p�*�ͤ�>%��Ղ:��J��ŐQ�X�m,��L�m6���ָb>0^҇��l$9�D�)�e�,ѭD,1��T�D1��ӖT`�+QH ������Q�H�F^�I��{Vo�*B��e�����8f��x�(o{����N�e�_x�^�k���)�;��Y�nA�A�w�q�o#���R�.O�%?�m�Pt���
����R)I?V�H�)���"򸡽\BR�Q���82�xǦ��@c��F^�Y��/O
;��f�}�潠4:;R���K�����)7�[���t>ue�,��������N<�3²Q��l�|����c	G@D-�F�~�@E�k�8�∊�����?�7��ѡ'��\�@��B�.��5a�X���ߒ�h4A
�I6�ַm=�S�L9F�:駹��l%%�����:W�`��A�=ٿ_�<�S�����{���ʹk���opS��:AN�laY�����eS��AF]w�;�
�G~xc�����J�[Ͻ�U}�$wFi�"z3,�?@�ǌ����
�@N*ޠ��ی�m<̛��<����{��"D3յ�vAzS�ٝ\��b��ߨ�bE��i6_�'!;�oо0e��#�d�)��r�Ns
��Å�����dѥzb�ͳ�$��������&��S��Ɗ ���u[K�:Iv0(�&7��
8s�U����^\��a��:�6�������'bڮAaDIz�ٶ��K��K�:04�UhI#�l�GRg��Q��9����3#���f�Zl���kS9��S/ͱ�{���2Ƃf�8���s(���Vm�Y��H����W��ZPs֏ �~��%8�pmG�q��C��EiT����$�ꙸ�5�x���A�p�d܆�ߒKy��}�;6�P�l�$�+�{��+����3�����AXEׄe�0NӥN�
�M������Utu�K����/��$�Z�M!]���8��6�+��	����o�q죨�|�y'�T�鿁�ƕ�~���k��ip���U������9t2�����$t8�f���ܞ��Md'��@�	^��a�g�N�Yւ1���ļ�p߁���i�a�"fpȱiw��À��Ǵ�<en��p�ÿ���Ѷ'�ฑB��-7o�%�� �4�e�T�oJ������b�a�I�^1Cz)+Z�M!�F��ZGX��Q��Ö���тA�g����N��2��@�4�q#���Y�_u�+#m��5v)����7��Qʍ9���%���r���D���:3�5��뜅_�H�>��3;<w��匾l�8��9�7h	������&~��sF��H��r��+>[T�4f�+(�%#H�p�h�gt0�o�͛������]���Ӄ�c�ޝ
c�F<����A����)�����0�)��XN���p�<Jl��C�qs�c�p (BΔ����w�Fq D���x-�A�d�ui��)��{���=����+_�\ �`�՘CxI]��,~��H&��$B�������o����(�j''8x�[j��;��7_IH��'����ϖZ�ي\�q����d�;��=6?�Bf.Y�û�KîS�6L$f;=%/@}��'���Px������l��7"�Ӕe���=���^X�ؙ�q�K��>g �𓭿b�Beo6����@�鋋��o�w**�K�&ʑ�A��ґz��V�g>ø�&l�P�C�6_��#�tzat���h����G�~�������S�*�w�(2b�=���53��l������ד�&��S&!�ɍs�! 8�Q8��_0��D��C��6�[Q=C���ЄQ�(2�$��eф4=�r��U�T%�l�(s�"�!���C��{t�w����mE�!�`A��W���EC'ꎆ�+�{���]&�jzZ�޼���F��ݳ,t��1v�;�"$`�
e�o�C�/V��/�Vj
d�"yiརQp�5"&���ws4��,��I�L�Ȍ�%6/zXD���-��M@�xŚcB�b��;f��:��g���Ǯ�� ��2	��'�~�J�4c��8I�^o�Wc@���ſ�u����?��Tv��m���2�^�AB5�+�u+4���c�ѱ���t�g�4�F�X��\SЧ��<���<����J3���~�_�y�yW�~��q���}C���[���V
wbC�%u�5��wm�/pq���R��4�R��/�

d��n���C�f7���#��R�^�%���)��d��{iF�;	[Za�\���3��������h+�K�f.���%�>�+��bq!�����=[��1��ZBV����BZB� '���4u�
hڧIt�a�0Q�z�7ǀO�X�]��ұ�����q=�_��A�ax$��Ix�j��,�7�!By3��n��M�׾�,�)�ZO|*�|~���w���<m���'ås��գ�����Ƈ?"RlK|�� ��
z�
3�Y+ۜ0�u�{�=��c4d3�G0۵���s\���4�&�=����p����<��c���b���²4B>�H��t�9G9��w���^���Ӿ�����ߞU�<�W��;�׉U9���m��
ަ2��j@���<�©��2�r����ݵ���2�x��}�
�>�Pױf}dȊ�V�����)r⦻���`��Db���и���O_�}q;A
��^ev,�$&� $M�� K�/�y��E�%N?S2!�b?����4�9�������}__�I
���n\[�Nb:��Otr�^��O+��؄�t
& B�K��eҸ</:��RS�����Q�l�-���f��֍�k�[._o+�i�-|���Jqk̳�8�	%r7O��	0�k���A�r��~D���O�K�<S�=���/ h܁��*������u���0�k��-=�4�,�S����Y�H��KN�#��i68�Zװ��]��t8(R�|�����x�g*c,'�y?�
����){X���`Ak1`����^X����P��A�}�������qh3Go�$8�z�C����@Gߝ����g��7՘�G�d�?bD�	3'}Mf��Hl�N
�U�����|b�#�d�O�Cgm'��@�L�ɖXd0�:���w��=���#�P��4M�wq?h/�+��K� �]�c�k`I�����Opk�G�ngM0�!V����Zz7N6�Z>m��\~f��ث9U��[K������8\�¯�ꌎ�s��JO������p�W*�/��٭݄�q8v{��X�z���c������؀1£�sg�I�l��0���o�oI�2ΒL�+�g���`Q��V� `f��/��l���)ͫ�l��W�̿��P�(�t��<Sd-@G����/AgC
�29~Eg���W�H���
d�]^P�r���)nG`�P�V����pX�2Ez�bUN����B��w��Q8D��lKy}/��/L;�Y�p�<+���!�#!�O�u�m@Ҝ���>��۴��]��GO��#��g;�zﰇh۳��vLW��S�<.)��=���U|DTiF?�Q"}��=�sh
q��Z�OW���Pn�	�
�Ӡ�R�����dL�^��|�;>��v�R<4ݞC�$4M��K-O�=���.R�hq=�W����N�c���Yr�	@����P���?�,/�N)�S���F��� �h�0\��-ҦG���M��aZ윛����
��]�J��>���¼|DOh�l��}(�/V�h����a�~�Um���5�)8kg|�����"�����{l�f��y`[^Oxmd�c*'��f#���"�lQ@jnX�C�c��y��i{���!�ij}���u�3��^�B�����:�4�2�ޅr�/�X�|����K`7sDm������\Ѯx��I$���T딇�@M�/�lX�ӎ�)s�i�*��B �T5x9ˎ�3\��LV
[���*�>�QW�5����l�Ő��8%�Դ�G�@����3�W�g��|֫{����A�5Ѿ�޼�M���q�(t��-�[��;�=D�'�ŖU*�����C�,�h�x|mk��j�:�iev�9x)�M>
�h�u��(3.&��u����tBG����e44�]�WZ�q���48Q1K�V�!ƪ�P(?���r��۟�r����������M�z~�O ͬ��Ku�9D��m�]�uІ ��cF<b�5
�~���
�[��1�']��eY��Ժ(7��K�AA����)~Œ�� m2��>�AJ?�~x����q22�W�W���A�k��"���~G�g,C��.�	(
 4��@
�kg���^F�tק�(��ӕ!�w.Ԥ Y<x��/rbϋ����&�:i�Ec� �R��9����oq>�.�.�P�2_H]��&�?�wU��>�@e�ƙ�|��|;C�51�[�,u�Aı�Q��z��F]piV�1�ϻ�=��b.��<
n0#8�:N�Mr~}��҅s!�ȷ�2}Yt�*�9���Ќ�l�r���T��K?�W��Z���5�C�M�~�S���l����I2��$Y�o�o�ֈez����������q��+>�J�䵍��c�G�r��G��v\@8���l:�+�j�����p�6�����nU�,̈́+{s����Q]�+��KJ�}[�E���b�� ��T2 �������g�>ΌL��$4�zv_�$����	��9��!�答�x�B�_��-[����4�X�3p��M�t,WS�;�zm��ۘe��s�Ak�$П��63��P�V���`�,��20څ=y�й�>�u^A�INò �Ƌs�����}!5K�����a�&�;�����e���6��~�6�Ȃ?D$}�x
#���@��`V�3?��c�T��Oʐ�Mj�K�#���F6ǔ��/:]a$Ԉ�Ҕ�O�~I��˰�vC����s�7�i�M)�F%}�h��)a��T��F�k��|�`Eǿ
F���9K������ N��ЈL�t	�o�&���]��E���F�'�k�6����4P\!c�s_�F&m��
s��8��[4�);M��}��s�>7�f���lCc��Θ
�0k��	?�5k�H�7�Y��0�duS0��37%Va�e�.4���&�A ����̉������.��B���5$�vfQ2[#z��y�+.W�yQ��m*U�<dj`�u{��S93�Q�M�$ӛ��㢺]>1�����{�A�)�K�ƙg�v�Mnl�
�X4�����\�D2�Vs�Jצ��]�$��}r��4>)���)u8|~K���}8��p*�Ѫh9̙��b�c�ahnMM��!'uTfT�����y���I3릵��C�Y�]2�ݰ�"BϹJ)r�֔�����+�ϵ'vf�"�����K��<L
��:IO8��2�M |�9������|�]c�o��A��&�+�~+*{��Xq���o�.���V�0�E�d�C�$>��u$��Y��lr����Q�`]��x?ڋ-��Cx��g��&܌����`��fE�Ϲ�bb?q<�^8F�J�lԱ�5�����UN��r:Z����ꔦԐS�'��}��T����J�+![��@p�0�;��G�Se0R�� �P$	l{�ԧ`�V�a��/c,&��E���y��S�O�w���ŔS��_l�?3ߖ�~:c�La�b�3dv�7Ʌ�Zb����Cvܿ�]��È��+�3d�x�,-��iGd`���,R���9.���Q	�̵��٬��[ES�b�o1����U?��
�8$cV	C�}�d6�(D��ٛ#a��8p�N���읇��{|G������l����aw�.l��< �s���	�ֈ��>D�͵�� �����އ��(F���:~t!��ϧvQ�����=�H�WH\4S_��-��E"�{byÂgU�!��u�2�t�N�ٕ���M;�1RRgz�д�2U�<�;�mfv)ПxCC�-���s蟒<�cH�+[0��'e�`h@� w+�;=��I+�ui��Hƈ{
��t�X��`G�'a��$�z4o����uZR!z48U�vs n���I��Wr2�Rܝ�u�{������A������󰠟���_���n��G��:G��=kA�hA( ����FY�*t��{	�s�7���z�����2�D�1G�Z�x���o0��}����ǽ*�F��mt�!m���<�t�fin�Пm{s�Abx�%
l�)������q�	꒒S )9?)+Ǻ	j?�e�&w�1�SfT����a�	�[�s��Q=�P�V�l40����XO}SF�=��t�\G�e��5��V��'�3/(8Rr}�Xl��좎Q�}��ɹ�(M��bDKZ�S�)��Q�|��D
����/�e���@֭K|@�B�X�?�ۍ� (�&�f
6z+�� ���BfK��H�r�K@�h孈���<���|��6��<��-�h�_GˀY�rGl�lA��h\��]n����e�<mߖ�3�����9׵�>P=d�S�St9�V���y+*"�ar�G��}�t�x�9ȯO��A�K~y��+��zV�Ml�Mʾ�C�!,7ܳޥ[�
�d͠��H,[����VL��5���8�|
��~�O%s8���Q	?��_�' g����3����c�c�Z��j�����s�dϑ=�$ 0�,`~��Z�0B��{RHWt	h�S�o���i	���%{�������v�,�K��/��ƼQH�\n��z{E6�_~���~��ݖ�癚�
���L
��R��� Y�V5=E��q�C,rt"��`e�aE|B�����3�Q��[��Ƨ�2�8�>��xD�9ӵY������������εtč�Zq���o/$"���D���׳�N�������(��
qS��0⏢O*�f;0��t���`�g�/�Y^�a5����Z��7I���<6~�2��6�Y���H�>��{�4{��!�q��>lʕ�����nH��^N9]3{�R�х���H�@�3@��DݰW�5�
T�'��cEU���~��/�چKs*)�6Skh�P�)�xB��� �J?���0�i��DjH$�:��>|��.Z㽽�l����rQ�Ѻs4����� �<�����eR[��ػ�B�A)�
jO��3ʻ�M\�Ζ=�E��2�QX@51�K�~�}��=j.�?�gb�f���;����=5�"؜�'��\��%��O��N�
�ӌ��Q���Q0 &�lq^�||�B��X11T�LgYZ��
�����멨M�Cޭ��&uo�N6<����R?�k�7y|�8�jJ|w�Xy�eU�-��	�Ԣ
�8� 4��Ǹ��>�L�"��48�E�szF�P`�j+��ҙ0�U5*X/\�+�5�
#�۞������x�����\��)���2��4����.	�5&�4��4���rȀ�'ߡ��܂�ڪTS�
�;��S�P3^���ф
c�1F�	�؉�w���m���nJBN�!���|���ϩ�2 '�\��K�F�Hs�O"I�����6�Y�N�;QX���^��C�<n5��^�]�VS=DΟ^	�QKs���]lk�NՊ�ʤ��Ӥ<HGR�r����h�xL��v��b�$s�����{K.D i$�x��
���Pl�m� �0@�@
QM{��PѦ;�
�̝��>�cZq"�emϕ:�֊5�sV�q�qb�Y��3��i��oUN
�)��:�/>{ܔ���Ů��:�e��"���/X���ۻ���?�p�Y*ǅ6(Z'}�u��t�v�Z������-{���G_
�*�[z��|4�X(+�)���\�!O����(�g���`�	>ˑ��ճU$�d'
�hZ�0{/����S���"�|E�u�
��\�2P��.��Ƕ��~�Y��3��A��]�~���@պ�~9��M����G]<ϻ�q`�@����X㛔T����TW�������T������m����߶,L@H�X%�]c��p�^��V��}��!M1����fQ���p[ 0�!ˀ�D�rs�Ί6�➾�lԐ`�V�i������&���%K�fg
��_Iҙ���
F&p���ȸS�D��ߗ+Y�r���F��:��S����f[��yT3Q �Ro�Y8�y��*�A���d�u�$��"E�*���u`\<��u�ַ����)�eP�G�n�[��i!�R���@�A�\ꈲb�Z�㩛T����8����{|��,M	�z�Nw�����.��6*��U�����rڜ^��z7Z�ޜ�`�W��8O�)�7�y��,���*:�U����L(�@�Hn��k)���uV�f?輻/R��&�<!%A �Yo��X� M�n����n�,X�� �O���+k� v|j`k�p<����[������o���:�c����f���Ш���X^%-3'��k�@��?�_Y��m�ƐD��:�P�w��{¦�W�6��6(þͭ*HP:�i%Q^�/49�`�%�_;
o���0b�LaL0η���zp�c�4�h�:-���|�d*?��e�s��~�|�*�������L<���u�d�_88�zFS���nyڮ�|�����F!�^
���y� �*x��w
̛��~d�e�����͂�B4m)O7Z�seCU!,ӴںP{*}E8������.ėu�A�?�x+4�Y�4)��a�#	�;	Ψ��(Qґ"'6w+Z$m;?�_1v��>y��0�V�}x
ī���'�\�N���}�8�hQc��� 2̅vF߇�RK#�M��.�gY�#-��.���F�|�����{j����mzq�i�ẈA��˒?���}d� ZW�ց�Q�bʶMn(W�5xfSW�d0g&^γ���
h��D�L����v�q��J�5�5〭U���za�+��u�G��)l�����A�(�����W'���{=�
�@�q��S������5��O[�+f���e��C�h�hTG��4��	�5��&v�̜4�
W��rC�0�7J���8�u6�?fK���\�ojZ6�jx.|@��S���O�0�
��:$�C�`���	�l����r�DM��.�;	ƌoI�ߑFoճ���~�6�}O�)ɫ�i?Ч�B�]�/lz'.���)*�{�9���+���������Ǻ-W�]�5��a��
� OX�p�FUl/�@J� ��I�f�V��{��䗈���g@�*����u��V%rOp�����d`���h�仂4a�H�d�Y00S�m��X����xW�h���h�qלp������b���w1�B-@ix�ɇ���	��}4}���*��L���`���E،��oŔ"�	z% ���Z<5�ϊc���&@�Fx�&�!-�`Š�py��D��s>t�m��CX���C��p&U1��%���;�r#}>�iC7̛�qRt�%|��~�Fn�c'6��b3�f�R=�FPU�_r4s ����dY,;s��M1i�u\���}�Qm�ku�0�rf`���d&��(�`�9c���)���x�3B7�������)ɕ�aZy6_��q��m��L�� ��jT�r����%�ǡ����W�ti�gȠ���t���
'����ū!{��"h�ڃ�=q�Dcɍ�;,/X���W#����_.r�y��xZG���i�#�jI椬D��Cw)�<�r��F逌�=��ﭶ0�rl����_;�]���g���x�tv�m8~���񧛿�S�
�JǜSE��7aC�NV�d���j�;]z��E��)TS)�l��c�Y���� uae�$R�%�I���Ca3���aD i���N3�8LV�7mVervb�Pf}����Z�;����dG�-�L%�HO����tRl��C���.������?d�����n&N��3�a$wX����&bv���j>�����IElP�
��]e�JI�
����j&MaC�q�K���eZ��Vuqb�m�2S2��{_�X,u��ħ%1`�D	fBʁ�m�]��
�)tVA��d)x��_K�2����U�v8x+
���g�`��;'������I
n.;t���:�\��8ix`맻�t�e�.Y��K7D�������������L�O�j������O�������L��������xQ��I#(a4r�/��G��8�l�|��/��p|{&r����c������(�j8�<`��e����y
F�*�V�>�I���������t�t��i��4�n�N�˫�3��.b�Wci`K�ng����)�_�U4�m2^�Jl+wR�~`G�U�:Sɩ?ky�x-�8Eڿ4Z�Q����~��dQ�a׹�l�3&�c|p�d�]({�0�
!Z����R��WvE<�d�\�יE�H�@���� &2�Mx �L�k!SV�#�FD�A���s��՟�l�2[m�e�U}��<3�ԣ�j�Y�**'�z�R�t�t|%KC�کo��e4�#�ٸ����$\���@.N�ܞ�c��|1\.j&�J�V6dU��g���D�k��z %M��:ܬ��T���4��?��� 7�\ B��ƀ��q���{#�#����
��1�A�y�GG�
-�2a�k�`��?�]��z�}�^Za|
�)J�����f~v�lj5���Yd�����-��PQ��塴f��+W��Rt�s��!z�.��_vL��ّ�ϐ<��RF7���4r�S��Z2���/6V�I��E�*���$!���`��N�l��6�$S�@f/Ӓk��Y������@��sh�Z����T�T�	ϡ�_�d�P�S��wƢ'���۾�K��DY��l��c�iu�)OK�m�E��UM��I|7U6���#&q]��	F�T�vH�fG�R���j�+�"G)6l/� ����Mi,�
:�P$v�TC8!'M���^���bw��>��=')��5=�T����3j�IJ���z11F'�3�������4x�>}���-�0��>�|�d�;����`���V%yP2��+�ւ��.-^y	���~>>h�ɬ���1Uf&(�y(��b���00�<�|K�D褔��. Vy߁+
<׎-$C5�M?��,�x�|`�}�Â�"����k �8���*�eP���;¶φ�N��B��;�׽18��C=?
'�&��>j�d�ߞڅ:��D�jh�K�J�0O�
���-W��<�<Y*�k�����
168'�c�5Q��, �*�P�a��ݟx0vE�K�m}>� !|�>�m\��|U�
+i���؅ت�c�_"/�`,�����q��`<ֽY���-���Ria�{��x����\ xE�_9�,�;�f&d^*��V�<���i	Z95F�����\�L;2;� ��jB�ϝp����C@e��	���YLf%��������͐(�4Wy"�dl+]�H��F@zR+ϽG�-��ׂ0�-C!�|�vZp㬾�(3�П?m�<؈zb4
I�]'���H�ܳҫ�0^��a5�v����U	�e��G"p��|�Lp����Fz��M�*�؞�)�Zl��y�^!Ȝ/�ꫝ}�z�
�#���74�-�K��`V�ɩ5?����n/��RY�D����h��2��m��=;�N� �ߙոB�ܒ��Ƴ[?94I^¹��1Ӓ@I�l��\=�2Go��]D�� ��&Ψ�	���=�`q̬V[��2&�gO���̫��s���~枿~kjwM�?�l͚<���!X>�{f?�{W>�cL�� W����G*hU�A��y�*��Q r�p��������� ��FOO��7T
Wq��>j�ؓ�O4yuh5����-�`9丈N)�������z�u�B���à�(������
W�>}���I(*����K�!��8 ����/�2�}�x�����1$C�J�t����w{ ID�|����tZJ$�xJ�	��]����KE�D32�J4&V����6�d��h(�_� e��ǥ��h�UJ��|@�����F*)�=��}�!~Ǖ���4`U�����h��?����I�9Y�;�i��um���˄�W�o$&Z>��"rx(�A�^��r:(Z��qĈJn��$���)^�BȀ�mq�y-q��Ӑ�jt+��Mb;l6�/��'��:DZ��F&`�Vy#6NcX��������,����*Q�����ETӗBxN�eD�C}��{+�Lf���A�ۙ[�<Yڢ��_���%3�@-�O�oCޘ2����E�'$�G>�l2�|P�|���r5ٙ���Ȑ��is8��u�P�$�9϶&0��)��G*�� ��gΤb�RP�׏�Z��Є�U%ЦN������}�f���)�*�<�ҚҚ��~�6D������zg�b�w���������e�L��]�4�	4��n�
�/A�2e��+*:�=[o�U��AHT�)����t◞C�ߚX���R��_���_:K��'����������IJ3��p%�̯ҕP�������t�ݹ�Bv�˒u�#pNꗓ�oQ�����>��?O|q�x����A-���yo���}4
3�͌\���hV���Oi�h���>Ω���B!��:��������H}�]���g��"�a�Q
�A�qӶ=��.	#��>��)�ƹ3+]�cE�I�jr���B\-i"i���?<��^:������{�i~��Zz|���'?���@kE2�q��	���0�0�������r�� |�<��KO����j� `���R��P��6�*g#F��t�;1�&����l:
�-�x/%���e��{��n��5H%{]�e�vup
&C�k�3`�$������>��ښ(���͂I�����W����Q�*I/Tr�
��.��O����I�ʔ�?H�'�*\YNx�4h��S�Ct&�*��+J!�?�kVk�᫪w�i��o�:�;���D*�*�q��X ����M��f�;�;�(*�a祒�b�(�������A��� ��'�: �Z�a��!��.�Ϝ�]������'�&ʐ	��L3�{����J�~˥,�;H� �e���"9I�<�%6��� �3u_F�l���F0�������v$
�r=f=ݷ�7�濏]�t�1I_֪��<ޯ��P~#V�؇l=âhӈ �N~���['a���*��'��c��HdLˆ�	E�9#{},F�0��_�Qڎ�L��I�y{�w���7��n�ո(�}ˢ+)h,Ix�m����A��?
wD�-,w�2C�h����M���Wj�-�?��2�
oN+�JQ���p����V'�sa4� �T�ą��s�Y*o���z�˞\�I�q6�_}*m��y#~�_L��F�_y�^�O0��@�<�j�k�_�3��K��k�9�¾��o8�����9����m�a��	�u�2���Lo=�1)2� r���p�V.Q�
�nq�2��z�'�ukz\�
k��6D�X�#��
+�=#Q(4�Y���Z�D
�;	�%[��Fй<�SϜ�'9�ܲE�F  �����T �m��a�L�׾F�V �Z��;Y϶�$־��juM?B�Z�ZS�t��K$�s��SL��e���=2��E����lh��ٛ����~��U�7��o٫r �7w�`���n���d/� ����Rܘ	㨱��B����~��W'L:�b�ә�'4m���2���K�:%^$�Z���֘pUW{-�_�]���2�E�Zv�/�ς<"�I�%T9�4�~�ܿ�V�4݊Đ���~�^걑f&��o���7׮���L�C���#��\�@�2��Du�)�*D��,�Tݒ@�
L+h�L*u�#��E5�����i�V��}�Fo�2����e�i&x��3T���tS��0� .K�b���7ypk��=$��iVM�>ѿC���h�XGX��75iRq	��L����(mհ��@u��B��v&����鴱�0�������
�C�0��ۿԚ��WY�B�s��{���x�6��rbְ�#�U@zo��'|��yQ=A�9u]4��|롖���;�����?�#1�?E�`5��n�=57��7%�����3\7�s�ҩ	o��&��Vj8�:M�*��y�������`����=��'h[�0mqQ�y,?=��o��!��v'%z��M��8��kUꑨsK��=�0��/��Ŷ� Q^ۢI.�i�ڳ�Zk�)��N��l�/Y��*�^�=䪉êK�t�`o��V��cr4��_�����������L���P��W�ZG9*�GO�6&��pi>)�m%�A��*Λ�G�&�TW�}��O��;9��x���H�B�W�ǹ��m�{���n�Aؔ�0F�Ţ��m[�oäj�� �6n��L���6zEi8�n����@4$��r
��@P��������(i�>���?��&� If!��'4�{j@���-��(#��TxԻʆ�����v-"�nA��iD{ˏ�G}M��/�� �^���>a� �Ym9i-V�𪫣��Pz-��%]����ZbV.-�\�Fȸ]�hG.��G4H�_��gGb#V��G���i����0��aM=q߼���6��1��v����+9��ߊfɏ��A�x.y�g3J���
(�_s�ay�7��D�jӴ���^`��!�"�iÍ���� �F^��(�X#�2�� -�~l=���P�y��H�����N}Q	��lJxkT��
�<��?�-0���~>� ���e�m<����ӓ�6����C�I��һA	��}�s��X�+��.��Q����$)Tv�D	�!���z�Tm�^�t�h�\y��)l
�����*�����E)H;��55o�\���L��q������~xʸsRV����dr���$
N�r�V���=��O��Qr�?[i�Q�NtV���k��H��x`� KI�͝�r8��R�b]�-��R���eD�{��,�h�6=#�̵�����鷧��F�9$����ɇ���Z��ʪì�&�\��QUj:�4�[��Ko�L�6l�p����F[dq	>���iCpkr�n��^Yhy�@ƣ�|i�y57t��l�^���3�/��<;?�Q1����
��~/�����|�' �Q�`o�|F����
e�M
���0�Vt�,	�\5+nw�@H1J�_�-��j3P7q�r��ic��t
n/���FaNj�k�3�є���k��\��6 %���Bg�(���&�т�֍���E�<?�r�pgp�T��O�X��=�ve�ɅXn3����I1o�S��[��1?���BU.D9�i��V������Y��9J]�����2�m�X��˔(�j/�"�i�e�4�ވ	Bd��X�
�=JA0o8�L��ѵ�*m
#��������(�=��Q��v����㚂�m���)�'`�5�7���Ȣ��4�agq�?��6����&l��-(�^x1���pV��c���w:��/��׻���Md���
�?ᛓ'~�Թ{)0�P�c��˶�b�Hmပ�]FΉ�Bϗ�>
��uPO�z�&��[h@�9XN�M�c�H�
e��8���"�B. b"i ��8�×�Y]�9y�wt��4��7Q���P��.5��r��O�����2(��d5ET�5�oQF����:3��!�YB� ���m�g*C��λ[��|��ݍǄJ��NEH�����^+P�� �>�^N�vg�|3���k0�$`5�j$�/�T������h����"Z[�}\Z����?��ϭ�(��i}Z�N�zDjs]Y�Ϥn�'¾9=˛6�'����ݽ8|4[�r��?��/}s���M��� �����r��l�d���m�Fl�u���a&R{�o�� E�9;���Z��i��(��!�7�q
OA��h��!J�15&Oݎ|ԑ�cv�ٛRXRr����������@.�&S�쳥3����W�A�o�?�9�
�uӭ~�����6
��S�.�5��(���������^��LN9]�����	�Yͬ]pB�4((�BI`W���мYA8]x�i;���F�����%�T Re��3o��k�=�5k�$vq��o�e�j�˿�g�S~���$��Q��a�kҋ����|ۇ�c�b����$Q���^���嘱o�Sh��?����K(S�vI:�	
Bz�gn��K�R�!Hd�*�pFi���F$�����Q�:���'TP��46��,rM�9B�e�٘B�w;cVX�:�q[��j�0���:3p�5�d��$Ťz�-`4�8��&9U+(j3�!ĔW�y}��c���!&�
���9{s����SE�m8Y�۵'�Fui��4����~��\Un����j��
�!�z+�K�
j5�����Ju�M�D�q@�ߛ�{FR��Ny�6N

6\�i��"��IˏN9�P�W��܀��1�R2��zΛf���x����nd�K���j�+�S���|@~�H��_T��д��,�瑡�ת�z�q��cC31�A���E,=X���G�ͥ�ܞ�^�,��L�x^�QRc|#=��!���p��Y�&"���n�j�y�ߊ��")YYV^�<[����_��Y�6͌��	"i c�T����;�
�h3��?ǄT���-���;Gs�k������ẽ�z���C�gI��k:���ﲳ���� ���⧙X���}ő�I� �j�T-�`"�zЈ@S�d�/
�0,/�� l�3)g����6�M.��fUk�[h��/�t�O��
���.o�X�u�<8��dS��uR��Ra��\�FgAN�£	[�x�
\�Sm���(�,s���&	@c�;T���ԭ�3��pڕ�$&��΃�D���j�/~���B�������w�b���c���d�
��
"6'/�8�6;%��A:��!�,&lJ~��Q(� �^~��2�bci�ɏD`9|}T����Q�>�����~� ���!�i5[�Ɇ��x�^_�J��N"x��,���G�w7�Yc˕T� *�#��v�W�W��4@msu
���N�����tQ��<E	ԟ��Q��;��ك��\{ݩhG�Zh�f�4��TzT�9"��<�Db%�ԓ����0���V_D^���m�=SWeB��\�{i}|�8\P��,��+��7o�5�iR��J/�6�b�o�U�=A� mjI$	I�*T�G�W�x�3o���R`�2��Y�۱�3��� ��^2�5-2$!u�D����ڎXB����{/lݦ�@L��t}a�(��e�l��hҾ� �M|*P�3w��쯽�lh��.�.��
�j��F/�'��$퀲�����Mq4js�ż��E��;���]@U�\�I���H
�6g�׹�Э%*�M��[�H��oa�`�h��N`)�bV}����~������sp���?~Ȇ�F�e��z8U_ᧈ��3�l=ۼ�7MB�8p�����l0�� �J���!%���}�3
2���~���Z�a@p쬷�qy���l]y�-j���u����F0�*g�~&�s��/�7���-�A�=N��{�`VF�U[u�7�Fw_�Kha�U��aB\(X�9DG��yU�sG��¤6E�d�Ϫ�
�����hd���M'2��m��HFt_��!����b�J@�L�U]�GV�E��/Cp�e!h����jW�=?��%hD7:S8z=��#m=�	k'):�Ob�7�KW�}�q�
%B�A�0B�xmtQE	*J��V��Q���q�:f ����9�.���<��AT%�� ��h�7B��=�f���"��z��a�:�9/c�)Q/]lg�S݄"�-I�G�C;�b!����?5�s��=>/��F�x/���if��Zږ��T��#�\�?������F�nv���3eW+�>��.��W��`&[/ǸI�Ʌ�f:2*T�;*�"0=ܾ8F�q���q rZ߳J�L����z�۸	~���"��6<�reE�ӣ0_���K�F�C���_��lx�tS@Z�?-�;��A���/��]E*�7�F12.Sj%�Y�;�Z)T�o��@f��6
Z fS�kW�M�@�*��^�>����<'/�ڟw\	�4a+�����c���B� �/u�7ͬ
�C�2�$	'|�M8
�h�8*bYrv��M�[�7���$c���(w
i����X˼�& w�5?/�4̵���iuL+�c�k��f&0Q?�B�B([c�pYYr�\K�m��>��� |�=����m��k"�+W3�ġzAD��k�3�<�6!0�y���>12[��rl7dv���G�Io>'�^�`�pX�\3"T����n4���ҕ�s6�����9+tߔq-~�3/�ȕ$�倚����l]T��ψ"@Ǣ�	)�H�$*�©(���h6��`�� =��0�q�'�u8���î��s�4#B)�k��{�J�����(��!�h<X����s�P��E�X 7�uмGF!��<��}2�R�Z5���M����K�X~��'@�_�BHB��lA���ؔ~����96݇z`��RT��#*@�4�h5�0Y��o��������c��X�������q�y�wp���IM��5�j���c�~}=�؄�_y��-�}Th_�'�:����m�XN��+MGVU`���*�}��?)�H>L�!G�v2ܱ�SVX�"�e�[�����$э�o�z��٬r�E�����^j{�A�"���y� +��O$
T��8��8Gߝ%胛�u�h���RS+��O�!� �y��{�@n(�k^�U�G2yu=v��-%/G��H%�	arF	w��P#�?�H����w%(6�؜2��q�)��^i�O�.mu�f�Di{����z^�s�UO��U`�n
<�mE��I�ww1u��G��6�Y��*��p�������V���GP�&>�0a��0�	p��S�[�_�x�>��0aږ�Q2�F �u�y
�1Nd�#���c�;m4�=Z����uO�r���q���S�C�ک�N�МN�{�4�G�$�y}�@3��h���퇡��+��ǹ1.@s5aRЅ�P���Ac� [~׷��'������|���CS/Opc�
����Ui5��;e��c�d�B��@�����PZm���a����)�F��>y͞P��z��P�h�����L���w��?��Ŝ�8���.��Wk�P�ˤ����07�l�w����;�Sx
�N;���T� �^-7H���}��+"����M5�Vl%���+��4�L� ��\%n(��z~Nky�x0�����P���F;\�5��p�h��CxDh �����Wc�R��ùc���
�Tm�3��C�$m������1N�Q5��n@�Gv�%j,
���x��z>%�A������VA�]��	�y[)�UpK%d�<)nUr�����r��8R��ZV�� ��.����z��Np!?k�>#���3L��.��Ĉ��z��k�j�/��:|.��/X���&��3C���g��2�i���)�P�O��ڧ878ʭK�-	>\�}�?[�v6D�nv�a�B;h�C���[��Y�=BBܜD_��0�J�I��ZH@ȖSyY\m���v��_�"�W]�}�Ǥ�8lg!;��fx�e���S�L��n������\/�vkj�����I):')��{��#��ե��L�k/`Q��3��4?%!쇠W��_9��
�?k�d'��/[6~��p;�~�W�2ˣ>�
�c�l���:��~�H��y��|�"�
��ʅ��iZ��^���o:��_�Q�E�3�sD��v2H���8M	�yG!+s���ÿ��SJd�v�e�����A�Nv݃t4O�]�s?��F�x�ՊS#-/
n}������4�Є\!5&��2����!Ѿ\7�uc��RO0wH��h�5Y�+�WO�s�A>�Ǳa<\G��ig&`���r���H߿��o�BI̝���$&͕3�� ���a��P	)7�,/��C`O��k@��3�?�"����s}޸rڍӭ�UgU��_��gj����P
�3���f��~�j>�!W�(��^|MF��3�>��lL�^6�eۙ��.�n��GM�_�[< ��@zh�N�MD$%�hC� �J}�%h�3Wh2֐S]5����χ#]Q�p���Ɓ���9�,���ʶ$�9Q����k�!_R�0��N%�:�eeٵ��H.�3s�>RNN&룻��ӮIkb\���T1�$��ll���`c�J���(duB��ݭ���J�]%����=��+�_\aK.�i�7���&�삳�L���[��60]�G	R��t� ��C�/�r�.E��e��N��m
bo_��
��Pz�����AgS�n��L��b���tn���'W��$�<wvD��1a��,���k�HvSs�NJϴ��4W�͐X�f[��Ƽu_pPE����+vK���ی}�j�������"J��V�Y~
{��RQ��G��X��X�H ��$q���*(�s���U��п3�*����K|�@|������\�^�`�S�m����o}����5�s�rk��|f0����E��4�9��2�"&dH �<�ڳ�/;H:c�F����Z�Z��A"��[C���d|���St3c��c�2r�t֒y�7NO���v�������z�����6CA������9_e�:�d!�q*
}��_����0�&��l8T�ޠ�r���Z���)!��2����|L����@ˌq��W5��C�إ�~�.�t���]�ĥu�
�<�7��{�ʹ�U���9�uN��Yr�vM'����s2��AR���*�������"2Zm�*\�ա|�X�Ӏ�G�srS����w�!9�f��N放J��ם��Sǣ8��m��p���t�@��yb`7��;~c#._�W�fjz����>@��;+����$�f�r�_0=��O��OZO}���������Ǎ��ȍ��o9�a�4�-�3h�1�65$�<�SɄк���D���>iQ�5�?�jq]�_�Ҹ|����e�B�����s'&b���"�����SR&I�
8�-ԗIll�U��z�QN7*#���,s9J.�7~p%�d9ES��-���X3a�G4CU&g?��s�u�q��������|��kț��J���3H/��nd?�@H+�!�&�ޑ �Vm��U�Ph�ɗ%�n�r���[�Uy�ن�@�uA���߫i]�f����=>�ZaB�UE��T�)-zG!�Z�� ӓ����V�e�%�2{	[pA�T#���dM�BSF?����$��p�9�LJ���_}i�
r��@+ϟ�����o-���ǆ�}|V1�
��/�X[�<yk�V��㴝�"��*��q|����^��\�-*̜R��#fB~s�D���*(�4:Gcdr�&�{y%�a/_
KG���D4oZȀ��N�=x��д��g�k��?n.�Ǣ��9�d��'���4A�%�|ݠ����=���w�V���.�l�񟈆}	(�-.
��$�h<��!�n5lFX���%a��B�����lT	��,f^�1����	ꕆt��ʬ:@9a#�vpz#yVg�2����l��M��mӈ�X�e��SS�1�nH��`)�bw�a/̥������k9�`4~��o�FF�߼��?'�g$�,N�Vv��������(��@{�H�G�O���!��,�Ab3]T�;�L�{��Z�Q�ge��� ����fCs?�]�T��q���Ҭi�o�qrn�����ƨ+X�Si;(��DGO�������_��6τ��ղ�����N��R��1HUG.[w!	�{٢�����%ي��}<�S�
��U�V��p����F2�ٮ�)��_ښNG�K�r���A��e��Li�r�7|�Ei�2�� N���)�, H��["�B�����`�qe���)�����{����)o������y�g'�ၨN�����+n�,�.vZ�ѨJ�����3�#�Sv��*�g�ȬBq��{�ýԵ��bݳ��g1�ze{���g׺�~j��~A��Ӧ��9��?'9-�MP��� �����q�3@-�[91�/�Q�bqβ�θ�o���0��`�wl�g�	��G-���&�}�f��++��(ɵA\$묌���)�{������j�u��J�`��M��G�ޙB�*�d��|�(����U}��<�vw�����Y�5���$�{��F�t{nPP��ځ��3^#�D�%��6�c�L���t4(ĳ������E���3H��0A���,�p_;㬑v$Ŏ�=<%�yE�b\P��aX��
����dQ����`���	i1(�+� ��{@ow-�FE��h��=��|����y*��/�Uq�VN�I��ǥdT��)��y��q�jR�C'�㲔>d�N]��@Fk
���a�}�CbF/����2��w���ϔ�欠�Jֺ��+�ґ�߯��u�,�>���ìm\�v���E0)/:�#����oq�U_���d���>M5`Yo���
�/I�}��:�b袤iw%|���Q��y���������2o�B���O֏��3A�6�t�\��b	㠑BZBJ��a{j����#��
װ�
�6��z%�CsU`�*��̎b�K�y�.�3"�o�ȟ�TXI���˜�\�8�1֭gks�j�����:��m1B�8Ȱx�o���A\1+D{�����ԉ4���:+%�~�������^�����`����T�
7J�&Q8�v��90�R�!^�fv��~��-޼��K ��a�`|)���:C��1����3����_!���==�Y;�ȩԗn�� 0�j�EX
1�������0�D�2��e���k95f�[2���u}���͉�8U�_#I�FH���$Ҧkgc�w�@Z���Q��ӯy��7]�ἱ ��7�K׮j�C���2v�G����*y�ա����}k�'�wΈpZ�F���>�Y����!���4�g�,|JĐu��?݄hN(��,
耷*�V��vlkdS$��X���*�jn|�1����N�"����X�2Ѵ��+��P�
z��pp�RESǲ~^[�f�¥d"Z%|�x���)G�/j�� q����S^����D��c�V�[�d����B��$Kb�Ùy?x�u��߶w�
����jЪK��D�[ ��z9�'S�=�,u�țR۵��|�B?��1�+&�����$}�����ˌ�6��nU��l75h�GD6*��h�F�<��=_9ǘ #�5��~�͔G&'�r����پ����Y��Ӌ�9��C�̇�Y�eq?M���^���(y~��m��]��9|s���灡�X �Dm�vb�Ҋ�.��d�(�+��>�+��������덤F{��aGm���K�%ʺ�� X�/&���^�?�H�W�܇9A��gjc��c��nz ������s�m|f+��q��5G��;���h���(��˜�!a�w-�Zo��w��E���?ӕ������m��A�(,	�.�l�:��O�H����Qn�
�1�)��Ajm��*�Ƚz��I��+Ȱ��쉷r�6ȞÁ�7���..��m���k����7*_�͂:i?'+X>8�KlYM[K���ӕH�A嬨�v3#[&ƷA1� ���D�?㠑�+�}��z�7e��߃X4ZV�n���Hr�b��Z<���㋃!y�G��ɶ��{|Z* p[�9=v���HԽ^	���P:Nl��-��q+���჈����3�-��i)�w��RN�%�a���T��
&�{e���f�L����C4���������_��𳳉�!a5�����:E."��|��'�/���tW���F֑^��_�1>&�ׄ#,���UU�~I���-��t0��&���R��	�@��_��E�Rg���g�	B�����������ټ)�\��N�h�����(�z�����E����14��-: HS>a}x�`����
[����`�o����
��� 1)>��ʥ �e�!�:.�����ɐ	%B��K���r��V�f��!���:G�I�2.$�}���������x����̘�>eք��g�pA�As� L��
Ki��;H���@	��ߐ)J�T�	{��i�I�v$�=)(-H x�x��iXk���/n�փ�������}ĉt�B^�5R��:G}ͥ���t���Y���͑
���Mr�.�?�C�'�]q�� U� �tR1D^C&���^���j����1ڝl���2s!@�'t暈v�~s\�!��˩*���Ubl���,�	{��e��#���a0�����{4�^�~k�TjVe�\�A2�\ܹ3ǽ��P�[0��u}�Z������̓4-E����W���2�T��ɶ)�(�2k`�!d��0ü�r�+���v�ٽl���g�
�q}���NG�J�9(���D�K���z��� _�����fۉI-
�J�7X-T2Tak
h	��[�N�&���uo���O� ,>�����u��P��Yx�RԌe��ֳ���z��
��Y�+�?z�&7�o���p
��!�u����X�=�����R�^��~jt�LAMS�Kj:e�z�Suk�S=fI������*�� S�`Cb=���#}�fǎV�T T�0(���YC�v�#��j�qi�QRh�)�
��0�NQ��x�1C�5�#yO��Ҙ��0���~��r�lc�H� �%u��h$ K��d�!��N8z�Ѿ�����6X��"f�!��W���v��m���Ϙ���v�U��`�z�o^��ϝN���oO�Y*H⋂p�=8\ѭ���dB�����Ȳ4i���6^g���E����^ԞF����J��g��ʕ���z�-�b	���$yL���eu� aB3�]��ǫ�_��u���7�s��+	��lndS5�W��`�̮��f��p�Ŝ����p��s��Ih����`.�Yb#�-���� |�m�<�<�(�=�Y"�b�	�н`���Um!-4����,p��/�qqll���p��H?���R�|*{�=�7L`[w���V"e�o�������i5Cwf~PZ��؏�b����V��}���ut�p8x����ohy��>69�0ZU>�X
��*l��{-E���6Fm:�`)��r?&#�C�y��.KE��
U.��[������ژ�_�N��#ɉ3GU����ԓ_�9DZ�)Q ���qH��%�sQ���'8%�`ڒ��q�/$��k�]�L�f+	��r0����V<"�� nT�8��m�.M��x������3!_��%��\F�7�Үe��M�^�6�t��U=g�暢P�Ѹ����H��ſ'~8���2�ˬ�m��y�p	�-B�ͤ����4��oZ����!O�1�#�O�:�9湮����o͵.W��B!p;�[8b��P}h�,�C�u������Av�4DSl��?k�g�����ٷ*�1j�E�[y�V�e_�X�*0�W�Ű(���>Tju���A5F|���֔�}C�g�ǹ}$gb����OzY
3��*�x�onM�[�����d��3��<�Ǚk�J��*�u�|Џd���ig���è>DQ��q�W�+s���3�����z{���j4&}��M��^���^.Ɛ@��v�L�ܘ�j��	��ir��WqWЛ���Ƒ��h��|��
&�P�&�j�<�ꕝ8�6~��Ԛ�@���ȭ%78x�1v��@8ӮK0��MP��8'Γ:��q���/<����=��s�pX3��~7_�z��5@?p0Xr�f�܋���"fd@�9pt�&����
J��G@�إ�-#�xd� ��O5�ީ=����Rf��F"n���^��ML�ޝ6+��fef �	NI���9[-�I��+&�3����K�YMa=��y
��m�1��d�B�ZW����ԇf%]��T� �!�^:Jv���H� V	^����q���eGC�3%nŽuENP_
4���ѱ>��q���{�

o.5���^��t��P�}å T��ўu����e�?^��Ĉ��&�fJ���=�@TpK���7
"�z�^��d������~#Q�u&a�ّ�����l��VqpʡHr�j��YR3D�(�°���Ox�k[u�<\0H��	��J��|f�.�i�X�g��%-������k�?a�Sі�R
^>�(-�=Y1�M������R	�hp�/[E��8��2+-٬���9l(�k3`����u���
&��Z��
q�?�[��qS� �ۗ@��ql�=p�I�@l����G��{��R&$�Q�
��䰿�Ĭ=1�e�݋�2;1�_c�Z��Ӆ�.�O��p����TK?��,ϫ�l)c��:rCgi�5���a����;��)�Z�x$Df^{PPJ$-r����Eq �v�����6.�I�x,�ٰ��	��8��3}l:u�R�Xd���2�1�.-� �F��*�-S�d�3G(XO�n0���+
i�*֣>H��G�}kD����#��1�����XY�{aNܭ�Č]z0�������֐�]^]�5P�ly4a�����2@*ܡ�d�>$K��P���pqF��U�\�ή�]�B){�i��;�4:��B�f[ t�I�u�c�C����/HicY��/�N{T������'} �ԑ�7���7�Û�H�}��EG���`5T9��*ɜN-�����Z�ńH	��$^������0�����;�-%�S�@pP�t]�>?t9��A�RB��~@
��d jS�?�M���_�+�-�S]�{���(J��4u��Z���F��
}v���ht��ir�EWg�:f/���5I}"ُ����W�AwMdO2�I<�{׺B�ܐ�{(�=�f'�5 �1����:͖N�v<Q��-�
x�H�^�C&њ����y�a���n��0���?=��*܈�D���[*x
�1����V�Z��M�$d�Y��4à�|VZU����[ꃷ~|���A�'$�����H�F��5�7�׋ �k���q�S��3��Ő�a�)��8˘*�9�q���ph�3yeF��	E���R�?s��������a����
4[ (����"??���|c��(y�1m�9��V��Ȇ��:#Οi�lNb}�)���jZ�T�\���҃�ƌ��������{jv�+~vBC��d3S�3��L�
�ڃ������R�<�!��9��pE�$i�z����,8Y���������2�T
!�UM7z�hr�<q��J�D���'�8��Kx��v۸� Dp��)0�sY�7h���!~t��$V�8�C�l���f#ӣ���Q�D�����We1˼_�C�[��!8x��o���^�6�T�0��W�cD�;�%��`P	i=��J��	ie�L�(�P��"��5=�Ѐ�+�n��nP@l�D��5�B�X��TG�O�����M���!JI��O��K4�����.�C����l\�������G�q�b}�]KJ�ҝ'�f����Ch�y�S1�^U�Rk��H�5������X�q�\,�|��g��b.�䍂r�K;�§�#o���\���@��-����7�I�W�St'AM���!�'����9HCY�����ha�'��pX4=��g<L�)�G+m�%n��+F+��F�4��fK���L���Ԝ
%��e�-��Ч�q,�+����Z����ވ���»��fƎ������6r\+:��;�!������{����l 8ł�r�W��ƹ�'w�AD5f��VIr=E'nm���ɇd:Ok�p%�4���>�.F!q]�����D�S���j4�����╮�]>yw�2ya��������� BG���In_�2�8\qi�����	T}���mN�ER)��
�����xwk��H.Z��w���t
�aM�a@�Z�
�����I�`s��Nρ^�O&���	WJ+w`��i?(*��IN�*���>pbľ����ςA�-֗��ki\,�ڒlC�'l�5:�*���e��Nt�����6(���xb`�*	5�
�h��b ���Ò�5�/���P����a^��ꪹS)���W��U��K&$/6�?_'�+Ήi�sX���1�Z&8�
JJ#��%���&Q��o��A����a����b�F%���"��U�n._�K���'�ͮ�8�'
~�1��_|��}��wU
y ��{��9A�6�5cS'�� AR�b��׃Y��LL�(H�3������w׎Et�)^ݐ��.0����;�K�.�ي�� !��Ih����1�e_K/N��� /��TA
�|?c;�x���U����?T�\�\��6���*9����	��( ��!Vr�#5PƂF��m��WY{C�b����n�OR��X�_���5߽\��ڹE8|07�����B͟�����7=&}��vt����|{��Gj��;][Ap񩟈a4T�]����LT[�+�)�p��D���&6�+���6�5�@,,�N���c
�]��;}�M�j)*���^͕	tO�y|�Nͷ�8�w��a���)k�����#`C�$��u��XG��
��i~��a+4r
���&�Y�)��������@�C��]4�.�0ſq�,>mQTb|����~�4�T���ʿ*�o:��
Kp��ثQf>��4QE�v����+{�ر�T����:MK#�E�����G���7A�m��ifd�t��=�ĐX���yQ7�����Me�$�V��W~.�M�fP�X�d}�`�3�E̬�F �cE�N������))U��'�|M�d���k��b>K��q=��p}�}�U��W?�����7��!n���KM!�O��~ϡU�ࠞ灴�uH�?�e��ظ�=�N"�8�F���^��[>�x�{��*X�o�G�2;�Չ�ZV�S\0ڍw �� �m�L?�v��J���VI[�O%�`��o	zI����0
z�� ����=`]9�]ߎ�p��VrL\;���1���D�3;3 `��[����1K��cư��Yw{\�EO�*�#_o�g\�Yf�b ���B��D�'Xb+���
!�"����;�f�~�z�X��z��2�s�
�	�!`$ ��湁L �?y��d�!b��[�t����w��?z.���[~�0u��RDɜaQ��Uj7���B�*t���x�g+ᱢ�N)[k[�djs(����8��+��a��T�mdna�5���"�ï��A����l���\Ă�tE���"$9㋸�ؓ%�ɱ�.t�bvE]��㉣b��������X"�Zxkz&n����ԟX�i�J7�h�9��|�Z[����g���6!��˭��5,�m�J�;V��n�hyU��򥋫����	B�*z:=���:5�8�-b��n�ÑԈ68�P�$�jP<	36�DE3c�&������sH�v����9�A	Q�����޳r�\	��1Tg�&cv@ˎ�#ٲ�F�n�����w�u��qY�!cZ��A��J��'z|<x�k�n��OU���6�}�� 6���s�w�g)��y�<�iy�
��D,�}M��,����Ewy=�����9�g�T�ig�v�w�Xj�쩈�^��p�K��"��o
��HDc�eɡ��N��*,���S���/-�"�W1�<J��U��)t�*�����voi�9ֻ��J�����,Q"D�q��
���Qw�[2�����2꾏�(	-)���-�{O�Ӆ���	g�>W��e�����/���a�9P�&J�Ӡ�j��
X;�d��U��hj���dk���=}.�*J�6�dA^��>���~��^���[J���> D.w��Y�\���/����{�^+�~c�D�.�����(� a6�<9}8���G�+����I�MdMFk�T�u��BR���?y���%ǵ��t��l���a��(�L�_��k�����r���18w��w)�Ai��b�W�v�d�-x�6,h��5 ]H��bOf�#QڊH��'�}�T�O�捈���W
.C�Y�T�,0�[&s�#X�X'��$vB����#�:0�7�݉�K��3/c����4���agef�H�{�}@��-dbdZQ$�������zP>���
�}!A���뙜V�--��l�����
A�?�`JLE?%�_�������x��_����7�vpG�,o]{6o�;~�u�B9��?�������
ϴ}���� ��d�g;_��q��Ggvџ>�68��F���>Y:��T�\%�$_���MC
`��HZe=`~��\�� ".7d�z�����А&n�I򀸑T`��*Z�aV"~Y8]!�Z?Fhk��3xL�cCoF��0`���H2�փM����20��H����H 	F,`W�n-i�@	��,�t*y�O�C�'B�����cM�������_��O!�,I��e
�c8��� �	������Z�B��q���e��X��=�ŐSnT�����2(�sK�L�'2w��|
*�n����rv:�V��?,�}.Ӡ_����/~�OcE���'���f����`G�F�V!ط^�x6;L��+���n��z�����kQ/����>��������KD:bd�$p������9>���4EJ���~�E��Q��M����1i��߷�#n�Z��ǳ��}�0���ڇ�ds���O�	gr1y�,�v�I���N��R3s��k!晃e9e���*'`Q�><�_D��XM����l��
���H�c�ҋY���;%��4�D-�E�Z�)%=\�}��4,�N�V��o�T7��49-���!]���o�8��8-ڸ
��[������º�g��^��a2^Ԕ�m�d���6���Y��l�
�&����� H��L�ߺ�:fP9.r�wE���m����\ʅ������G��:��.s��+IY��E��.
�.:1Tr1�A����U�¿�˴��$��`���1��Q���J%��p��/(c����ӹǯy�L�����ͺЋ�hF�5�~�T7�O�LF����o����I��r7ujW��ݎ�8*�uh[=�4:W��/Z��Վq���jc(G���y���p�穄/4��c|Z6�"��Il�v�dc*��с^&t;7�X�E�����'�vAu+p37����
1�J[3o��*���z¿�����VQ�����H%�L���?��7Ur�"�)_�c�uv�r����P{�L���ORb��zy(RR�)oX��N	~�u�EB��P�J+2�@�)�����>���R7��Ӝ�kf��|p�.ui�u�l
*����l4P�;�,�&P��q�92���@��S��T���Ad�_�y�ޛ#7��Y�p��*3��`Ǫ�f�?�V���8*5�q
�u��bIS��Uu���%��v?f�$�2�1��\�3I�V�ӗ���"�uXt�g�hP�@[�q}K�"��o�4�o�+	m)����v�m�+2j�#�}aX����7f(q��/���1*�:�e�;<f��~��t�w�,��� �_Z�໪=�Z+�).��  ���Z��I�
B#H�f��kb��_�kȬQs�<\c3b���L��,Q�Mq��sjU/�l:�|���]�C�����A��p� RX�0B>�����ێ���an|d,m�k�s�؊6�C��^���}~��qJ��d��J�J��_Q{�5�Ȧ��4��F��R�S�oo�]�Ů��H�U�YR�����f(����%:^$��!����}��m��E� q�+��������N�w��9�8��m����0;Â��M?�T	U��|5�	Fə��GӍAzD �����?��Fd�hd����8���D�h��?{���ș���Z� �����%f^��
Fc��7�P�D��#:ƭ$v�t>O�Zv
p�� l�F�eCz�k�kH�ܰ�$RA�[Z�HIL?`^m���O��kܽ~,w(M���sf<ʽU^*lZV�v��z��<�"=�u}t�0o��N�D�� zq5z���(�5��9*�3j�چ�(�U�^�E��v%�1.'Qʵժ�l-����S���wQ�z\�{�ഊw���͊��P�ۣ'�>� 疨�:��t�Y>�o�}�tl?��%��Fg�L9|�I���hW�_rKa��x��E����(�	r~��{f��Cd���K���K>F�OO���<�-O0 s4��<�����L6���uZ�%���rҳ�*P�z�����W�(=
��~T�zq�A#�;[����n�`긊�`�^��;n�k��
x�t��/iu�����& D��1?I�����P
6e�P��UK���tU�x��4�cpk��_�I�ls��`�M?���½r�fժ^��������*w���M�`o5GEy���5�\�J�E8��l���d�4��k5�' ��1D����4
�Hjtk�6'|��c��;�t�t ��R���)H58
[�r_P}�_�%��'��f����<ce&C�`|��xQ�^��q
��L����( �D@����Q��D�e�K,����f'�S�g��o��ș�d�y�u�M�����@o�-������@���Mz0�Um-E����a�5�=��0���aw*(v`���T��6��������S�Z0Q�G��ce�����/k#ʚ�DPHڭ�Td*&�FezN��)l��Y�5"�h��&A ��Y.�i�e�V*�\_	���N"� ݸ���&hHO6��j�ˤ
��kG�uoY�{�ґ��N̹G����M�}�>�z�+��I'�L4�����RV�k�]����<���.1��K��c6�K��d�U)N�c���fP��Q�<�G׶�M}!�����0���?6>�����l|��%�����:��l��~R&�M�+�Vh�	{C�t��M?[��6Ѵ�s�V0�HR�,S[,3f;�am�t��\���Qv��s�����rc�y��zmmN��Qo��)@n9p��x��R=l΀�������x�<�4�US:'/��cVb(o�}p�m*��������e��v ��!FY� *�ե}b�P��� ����M�Q����~bb�0h󨾈"�e� @q0tf	�Qn���S�
� R�)�W�Ϛ�L�"�GÂH��l`^(�z�][�  |챠�x�C|^�+=T�ov���װ{Z`���|\�ۗfT���� L�A����k��g��_@KXh������w��>�Kx왒�o)foFpT�S�3�C�a�]��/�~�&=�%E��$꨺�V�l*���r�>��`=AY�Mt�S[g8��IIO���kn��Z�$xp+�u��%8���.�3�\c#��m��Z�<ޚ�RŦ���3 �ǿ�����°��`tz��ؐ<��&..��"�z��<�~����t(v�i �,`9�8PF��,�rҠ��';�(����=W�}�w
<�T3`�����e�0Ǒa������R�8!$�<�y�
C���%\�����AB#��������:m�a�q�2�D��eǁ���^)�+���,{ !O��̀���y������mzI�����ne���y��<�	�@bᷚ�4�4�C�EA���6��h�g���E̜�&��>�Y���'��0��	�PwM��f�r��Q���=0A�}D����f~f!;EVc�ۃ�1a�}�KuM�*��W(_	�:5�d�D��C��'�4
M��y�m���������!�P"P ��T�nk�G��o}f>`���LN�E�b��{!լ�u1��++h����
���z�3���u[/2s�"^Ь��[�" so[����G���w��оe��>�3���Z*Ή���>y�
��M,��#���x��͉��I\2���fv�w|(T��/T/��_!���eW,��xK�u��- ��� ��ʃh�ƹPJjY�n��<:��==���7Oc���p��!��S[9��y-ړ���2ٖ)b(޾��8�{���M��*�&���k�9�0u����"%0-V	ֆ�d�7:�~XJ+����m=�e`�ｚ���`�9���fӺ3<�i~[���H�z&J�F	$�w�Y,��eѫ�l{е�x�y@:����H(�g��V�=eĠ|`��?26������R՚� ~��9�s��7� ��j�)P�����]�q���X%d�ڹ�#��G;S
I�w�Ә詆.�P�ں!�����%+fd
�@�?θr�^}uY��wd���5�x�o���4)Sl�"��
�đL���(���*�; �j
.��-"#
��N<����=a��W[���C��
��X8o����LL�BU#�G�d1����F�I��4i�������4�e�=Ĭ^z��6��YP�}?{P�M���C+
0�F?)m9 ]�#]�p�_G�B��ق�0+V�a�[R�tۺWB�<f)�(85�4�C�\����� ����y�cw�,q��M�󙪋ƿ�H��S˱&+,Ō�H�&��"�ͧb�)�9�:$Ӛ�ٽV8�%찚Z4��4wzG�e�qvѦ&�
n��y⹾�E�}	#9Q��T��1�i��m�]L 5�6�=�~І4�P�D7�� ߘ脄��)`x���`��Ov�C$���²;�-|Zu�Kz^�c��gр�o�`v�����_c
��A��g3�;�_���e��j���*�USmd�A�ܰX���=���'
EȮ��G@�g�Ҟ�P�����Eӎ%2�G8�
6k���$��p�i<ן�����JO�l�T��wGpţ�`ΠB=���*�r��t}N�/�Ӣ����G�
`jH�����}�E69�l�y+5-�ֆ�Q+4���53�����ganyV@�b4A(�<ͯ8�RX*B� zr�E�S�.���o�n$EH(���Æ�P�\mO�9l�_����B�`��W�*���>9��T�*�3w���]LgG��O�;�)��Ʌ6>��$z#n(�j}@��*���ȩ�m:v��`RݾA!��6�:�&�ɽ�x"�Hػ[h�F�0&��=�ӥiA�� ����Z����F!RJ'����.�"HL��i�'�8O?ꉃe{ǂ��������M^Sؗ�_�@4�a�-E�ך�a?��9�@�0.w� ���>.2�8oaI�n� �^I}�����|ذQ�O {y�O����H[���
G�ܩ�8��ws�HNRwc�����D�!������k��d��	_��P�v1�F��
��4��I�JyJ&$91>� k����i�4`(�Ӱуs��FK�}Ck,�����C�L)��˝�$�
��j����K�Zz���;��o�/�覺��ɴ�%h�i\3�ۗ��Hz�Ȃn�$����	��3�T��%�l#�	F:����.V��� d_��Y���y�{�xX���#���-�--�#/��	�.��|ʗ��5~I0;�je��j��Br����V_��5�e�	:�uKX�~L:��� ϱ�PEX�0[BؾA����^>�\����7��E6�Lg��ѻ �ue�BܢmY�`�|w3���k�S�6���� G�q	���HiB>�@ƲTG��b"v��y�T��{E�cJ�L���X�%yE��捓BN����fd�����)���(M�����_oqB����(p��
"{�ɤ_;�����#�`�?�r7Ձu�T/~�]yA-5�㣰�3��8gCuQKq��Z8 +X��`�ś���N�[b�:wˌ��oG�������/ʉ�[����5hj��a������=�kv:��g`�p��-���YdR��pj
'yHn;Z��'�:M�Wy�g#WD�`bTW�YO�D
#��`�X	��P��w=�d"ϥ��qV=��O�L�����F�Vç�ܗ��w\���3x���j4wE<&�`=����!}8��Y��Yn�ٙ�k�{����*�	R	a�'�Otë���~��i�����U�u��Y�����[-O;h�w��nW�<��5����Rn��\����Rz�dI|r�F�1�א����G|�Q��5?'�x��#�`i�.��tS�\�zK��k�����^m6�X��8��rE�_X�?�C�p�?��o��\�ɂA������[��}� v0��H]�D���1
+���MH�ݸ�TM�nWtK�M]�7.Kl����]'�?@���[�����f�g�AU�u�1�b�A���Si�[��❷�T��_�<J��=X\'|V=�U5d����gStY҅Sӌ�(m%�|����L��I?
���2��M��P2X-���X�n��q
|��]v��L�ãx~��}���t3=��*�����Z(��ڬ��4: b�a��d$4��=�
���!���R�5�B�l��d�=|������2~�frJ�cP�"����M�՗\��ˏ����3�4�m��-�,�*���m� ���0 Q�S��HP>�?��>%���M�]0[��袰XB����`C$��2Bi�x)D�&3B����Hz�͖���h
v�`�W�_�4FRs�����E�1��31�*�īD$ϧ}�o �$Ⱥ����0�u>��k��V�]�6�Nl�Dܹ�`$	6��y�f����>_:�j��(Uu���������S�P��̈́3��+]��i���^,=���kZ+?&�
Ө�XsHU5y{�qmP�S������"ſ�M�C;74cd�9���W��˔��:���[$2��8����@u��CEX.$�y��.�Pp��s�t#����	]�NM։s=Z�g���[=�)�Eʪݍ!�j�iZ�´�ˢ&�`�E���`�_x�q䡞F���'1��1Lv�䷯`wN�G���^Vs�P����'F�p@��ӈ��5������ �k��(/�c�<���Xv�Uh�,�)�GS�FJEɑϭ��ӹqQgo,��u}�S���
]A�G�75��RH/��n
��?�/M��̸�и�ك�����������$�#+]*�uwFݦ����ߐ`�-��re�X� K4��5D82������p5k��-�����FB�>ö�N0S�{F�.`;�fHs9%P%kf��q�[�;����PM�^��
ݴx�
��^����{K"K~�B6m�9�t�b�%"�X��E���n�^N���U8�ƚ��=��[N�K*н]��/n���9�kc��C�9�R��6n|�\a��C\�����H���CH�~v`~zYi�
��oܽIo,4_��;�_��B.}�V�z�>��D&O*=�j=H�Vs��m?��'���L���6J������Ex={)!l�!�W[�P1g3�e��[/؏��� #�{*�
�SZ���5�yRO�!��c.�(b�h:8PQ}t#������ԓ�j�� 7���G�Hۂ�џMh	i��
�X{ftȕ\�->?�Y
��ձPK��Mo�]$�~Y���Vd�\qmqJ�}�-�8
�a�	paqO�pt�.0>t��/�na����S-����9��jMcRY�4�����T�!�BBlȎ-���dG46P;ٖ-� 䲨ۡ�E����z��zw���񖡑w$�t]�u<�����r�9�:I'���؃?����H��E�=�t������e��,���]�2�5��\|�T�$���K���(zC�m���Iꓗ�
Ɨ���L^�e���)-#յ�m�j����ңL�h١�yD����8P�y�>�rMS_;�d��s�A�gr��Űl"�<R�KN�����x�Ň'8�8��@��o�l�gjP�ˤg-t�F{čr4���+|1{]
"Dxb��3nV����P����%�0
��$8�h�T���
s�`Su7���X�#^q�~�I뿂�����>X�si��k�Ҫ�ۧ��IG^�]o�;`��d#4QL��	�x���ݱm�%n$�W���.��6;���D"���s��� Ttܪ
=�ik��T��8'�HZ�۬9h��_�p��p�W3�pC��3�`���D��c<�5CA������A�y�vTQ�-�\Y�7�Ӳ*pkS���Q��4��.�:P�/��� ���;W��t��zC��7h��8hA�:]Eʊ�z�[$����ܿP� 1XWl0c���HqUz �vi�7{˚�/�!����@O�7P�_��7#U�����=���i��O^�0�˚��{����x��ZU�^��{YD&_��su��7M�>mj�g��
R���vT�%��537�
�WdR?4������e�/�v�!ٺ��w�zVȵBp�u�w�x?���	�	�n��
�u�*��8�'8��Q���k�<`�-��}'��Ҍ�@X�����S��tw���3�w��Hh���C���K�dv�Ȅ����a�Z����\&c��T#ގ�C�6 <���s �f��#���)�{�!
$�Yk��9�Q٠I�)�lp���<�'��ܝ��(��$##��ay��S��ȿ>��s>O��6d��
��!��<�$�'��Ig5��vf>�(��вT���FC�-����<Lzej��g���~s�K��}�����X�ԑT�ƙ�zd�V�D�T��
���m~���Ջ���0a�B/1Xĳ�a��Q�o�����TI���K����E�5��|�@���X䯪,Ir�8=�%� �s�㍓q��G��n}�8/�5��~~N�bT�0cP���0'��4B�[����4F4X�@��ynګO\)�A�%���l%A�U_Ƿ�Ƴ���3����z*D�ӥT�.���G���Q����	/�`"��Za ��:������ygl�� ;$-�4�F�NI]ۓ��+��J<�_�tq��=�f��
��Q�i��Uf�!&k�;y��Q`���q[�~�ڇF�Wk�/(	��뭉Je�R��]�/n)K�||@-�a�9̅���'���O�h���/+%����sbjM$1�b�C�Ҭ�2�]�\���+D�ľ~���G@P=�)�n�cۥ�K�X��9����i��Ⱥ�������\��};|g�y�:�?.{H�-ޥ�5S�M�
�"�+s
*��j�}={\����$��u t���u�ٴ��'/���ϓ<��K���c���3�����d�h�V_ͭ������9�[�����=�wb�.�D|���Re�. H�G��^�Y�������K#f��$�J� ]�1/~�^��TW��/���&i.�����̣�b9�?�$�}B��}5�M�Y����2�&
�z���0KCF]ȿ ���0;E�,H��:0Ӻnˣ��
k=���YE�_.�3|�Ħ<+F4����i�W]��N�E\�䇚[��HP/N�h�&z�v}_���r2]Bg�D[�i�F>mTyk�T�C}+�!�_0��J~��J�t�/a�"�fK���tT��Y+����-���d��V5Ƈ����v.��>3F6���E���'�<�T�+�%���O��P���̱�� j�(�dk��a�����n]�}�˱�5K���L��gȼ����c��M/$��=��ʮ�O��R�,��a Ru��H�C��>�H�N���=�
[E�ٙE�}��Z7h�g�а1��?"���=R�#k���9�,���@�ؼf�!#|�k53���3��o��P
erBh��W��]X,l8n�r�lp���l*����Evl����?�/S��o�ɣ��/�мL>�v��ݿ��M�ޤ�u�ߕ�^�!�~Uҗ�!'��6��qM;����i'�D��W���Wm�i.Z)�)��ִ���h
DU��g�~(>�k)]; %_i
T�b������������c|�Ac��j��T�`�sق��L�L����D2
���
�<��{@�@����~��0}l�\e�g�����adܑ[_w})�<䅆C&���BT�o�.�>O8 "�w�mr��s��p�7��"{�H�۠'��T{�0$�d ��50P�L�+�TzV:��
c��O;�w�pj��X&���k]��4��"�)I�\�B���4�k�.CBEO��d��9���
���(�aGj}�|�1��޿��|�{�>C{I���	�̊C`���� !_�+��Df�<��#2�-~��s�JJ@�3h({�oگ���N�23z�5�d�r�z����_լ��&taSU�Ԭ�2���"n�U	5�=p�����W�W4�R5±�� Fze<�m�G����o�-��Ũ� ��|�~'��Nƀ,l^����R.���@'��39����;�4�J�z���u|���{ �A��3:e�z�N���rB����8�hG1_HO�dA�&7{$�~�G��-+0�kR�K�I�����q��`eV����8c����-�ϫZn鷴
���X�8��o<����=��.�m*����ij�ȩ*���ӝ�B��͆�C�_j��
��cW=#P�ת2��]u������W�׼6SH�0��_
�/�f�!��W��j��`T��ɦ6��U���K�p�c� Z�v6άh<k tJ
�kqޡ̤�h䭴.F�-6���b]��LJ]�nƔP�H"�P��B6��?�r�o��5�t{&��L��pq��|�1>�_%[�ၵW+�P����ŧ�g�Ì�i�JeMɵzyS�B߱{K�#�NB��v�X;�ɥ�--�6w��^̫���ʶįuz�,m�1�,�&��<���]g��p�*����`��'�%�2ʛg�>�� �����jAJ9��>�&ER=B��?���*Qx#�4����7�r�j66<�ڏ��胀J&I���ߒ��+�1a�$fe%i6�%�r�s���UL{��a�ɳC�~�g�H�4��	��:ʄ$k��@e�9��2�֙^�.�+nKك$���<�z������[�Y#�UI�Mb'7�nx��1���C\YQI ɍ�C4Lǜ������+r �x׌lD&=@��I�m�hH!������8q�=*�6
��]i��~V��c�����J�K�5�0aUa��@k�X�V�+����n�Bή��ш�d�i_y.3������DK
�'��5M<���[��qVÂ0T>�k��3� T6ة��G�S�K�תs�(���y~��̝�SG�oH,�fHn.���<���Z�܅����^���
�,M	��W�b�qkq�5ƢG@+�DJ����E�O؉�R�d�Vݪ���z��Y7��_W����Q�!�G�BA*I�r%��5k����nø�?��ŷ��Z%�Q����ou̟�K4���0DR^�� �·�I� �G^5�[�G����������޿C��(	�yO�^�����.���"�_hz���)j/<ࡸ�ٱ�Nk��g����`�Ԫ�)����>5nw
C0u��>i�XHP�HSY9��I��
���6Q�����F�Op
pe�;NX��D}6���s����=h��H�g�xu��z�Z!�g�^�!5�l�E���Sd��L�n�X.6��c�.�����w�U�?Ŋ�!`A������D��R�y��	�y�<st�����,i:�fye�ͯ<�q���{t�&2^�j2_�`� NI%(��Qe���^��DC�Py$^��p1�t�Q��^F�gn�I�|H4eůԝ/2�|YI��[�S�����W�n�2/dF�:����4�)��؎��Q��lZXĭS�n�"���i���sA�6N�n�����̩�B_�2�M��r�*k�ƤҜ��[��s&  a�����]��l(������m��2a�4Ј����0ʲ�2�Ɖb���E���~Ct��tGsp\g?�¦� O�J���.�'�%��ӯEȆ|�d�c,�t.�k�lT*GWƐc*��k��?����iV~ݏ� .z�;W���K_��,�G��n�*�b�`�D,=`\�2Q����a��`U�	��;�!C�COh�/��PB�:�j�!��u�Ҝ���\� w1����,@y�����(� �����H��a�z���[�Ʒ%2���ջڀ��ׇk��0(󱤜��y	,���ru 9�ln?���[@5Y�m�̴A�����ک�-(��i֗Eu9��k̊:n��-�)�����/S��1�U��s{�Y˗��U�u-,h��A��x,�Ċj�a��<[�O�T֯���u7=Zw�4��0�{NH��љ�{�ز��י�M�m+gz�4�li85��f.�I����37rR*���4��u��8{w�*�+`$O���Ձ�č��Т*�]�H�\�O'�Q��C��@��CS��9;
�!t��IL��|D�֌�Sށ6��&�<lz}2��IÖ�
1�p�d��zm������?
���wpWT0��ҹ�a����.������w��s�X^�E����i����O�+�P�F�'�&o$e��ix;�ZP��;�K���3��i6;�_i2��Ǽ���{��2���ٌ�B���
 ���25s���a{��uh�5��`�)�O�DoO��m0ueDg�~�!k��O�!a]\Y��D�*ğ\4�;.�ϰ���
�ڊ"�ݪ�r(��Փ��|�3��d
�RՉs���);��ITI�6'1s�t��W��Nu`�ʢs���������+J��I�I�$��'��
߱�;""��)��胑���4�e���Z�PI�gm��1���+�.��Q��(�-�Y�����3v�Ή b��e`�
�p��tz��e���0�vA�.���]Zl�z���q�ͨ!�8���f�6q>������#��e@,�~0׳A�����ɿ,�^F�b�"��5��W���8�D�>Is�Ki
��R�U�_F޶\=�Ni��Fݹڸ�/Y;��&�oEC��U.,�<�1]��t�p�$���7"c�/����I�J�p��4�셬2r����]�P���UJδ2�װ=&�M�Rf	�^�.��s�Է��<�<�S���eU�1��l�mӂ����p���3X�������翗����b0�J���-�����*#X�hp6�1��@��}�
�Ԭ�ǵ����"�D?�d"��s�k}ĉ���E2|f�DY�s_���56�?#�2{vHB�;*
��m���w\��c��=����!�»&$�!� ��΅)K68aa���m�/�~� �(������H?8_?���Ty錝�|rЕv�МJ��0�U��B�
H�p��Dݾٛ�S��X:F�Yc�M*�T��+�\}J�(��)hoS��(����;E�� �$貵��k�05<B���ɝU��_�v3QJ!����5��D��BaG	���WFH
��Wک2Y͊��
�J8*X(*k�z&���>�B�k��D��h�8�Cz���]*��s��l��{��|;�Bdi�j2�`g,$q�"���傘�=s�x�N+N�8�v����ᇮ��,B%��EaFI�\bB�=�ă��V��-*/���SE#5I�dZ@f>�/Z��<�YG����>�Ѻ�o�wIj�F����6��_���ǎ�m�X7�]P�ш�^bn|SF��e�e>�
s�n����Ή�4�a��L~�X\��}�2)�Ȣք{�"� ���i4�?��%����2Y����O��h��!:)���)�4{���9>���/��4�;{2��szo�5���)V�)F�<�|��f�|�G9?
�d����e�T�4��k����Q�l��";��
E����[$���ΐZ��W5�V�C���
B�6�N;����^*���sµ���v_�Kv���Z<SN����lO7�>$pTo>�C$4�cH�!�و;��QC���H	���ϰ?*d��͟���Z]���"���H ����ʮ���Ǣ萅n��x�]�U�bzK.����9��v�#6�J��%��f�<�e��HQ�5�
Q6|[g���.���M8]p��M�Q@
�@�t�
�"���}]b��mrvH#G��R�������ge �m6�g����[!
�j9?/N:VV@������� 
lt?�����-�w������b��305!{�O,�y���Ua���>�z*�hR��D�:-{���}��ǋ�cT��W;$�O�Q�
�c#\�ʮ:y`�f3��U�����U�|)�g�&�Hm�#������
�v=���gax�OJ_���c�C�Y�Q �������3���%�ll�ި.��Y�z��T�8����y�T�Yj��:Bj�^�3/��4~L����̔�f��##�,;��0lb![���&�ǘՕ	$�!����M�� �s����/�
����_=v�T���y���!��N$�+����l5��
n�ٗ���|��-�)�% a��m�/T�HC�k�����P�O���My�t������!	,�k� L5)O3cwl(��*3 ����1<.&&�]�e���[����>�m@���.��J���ih�fD��o���G�%�i��*5���OIz@�!��^v��o���_�5��1U����D��J=��4�/߰B�r/�>�H%1�w�E�x�UJ���2��aY�母��L�xW������[��a�7Uȁ�LK.�~�����n��
��4�1 �_��fljJ���6*����`�E��w��[���
Jx'HC�qFF�%l��<��NH�z�����N�7��SX�/�Gg)�0T�Q�v��S��C�� �!<�9���iU��|[&̴̸3F1`�<h�w�1SX�����գ� �;��&��)�3[����긯�XA�mDP�+T�Ggք��&�h�
�|���U|��}Z�ܖ�oj�,�E�����/�փn�&ku�l;lt��'���(p�d�1����H��+R���(O2�T�=4-(��&�y�*kZ..ю�-��b�"L)�[g�� �\�K�5�3L�ݭha�S�.�Y:��L�19��uM�e!���c1�/��t��!\�^��@�������T��'�ݙ��[̏`]a�|?��z��8�
�R�GL#�VR�Y��/��V�S�����Sݒ�a����Y�&����R�XJ*�;���tj/A��"�?
hʖ�_'�!ʗ�V��H<��[�*���a%�*
��! Z#�zݫ����7�-�K�K<�� �� tp4��qn�4v0U�>21���A��	��O��iz���vfH�p�(0�1E�AT�{b�VJ(�F�����ش�HaEo�^PqQbς��c�v�i�f�h��|I�4�{�}�f�NW'FP Q� ��ߨd5��䌞�[�nx҉;�)U�FN�J$m�k5`���T\FC^��֛�i������5^HTF�)MΉz[�T�^�<>���9��ρObYo��	����sC$F�Y՗�R;��d��so�D����N�������hhd�)���n� ��k��J
pZ!�|��x�}�L�ۑµ^e���w�Ŋ���8;�mo��oU�(���*:�"f8���͙K7��b�3w��i�'vt-,4�I�E$�ąa�p5��ynlU �җ�ep3��8����$���)��c:��Q��w��p�$��T���uw��s�*���E=��{���Փv�������>l(5\�ע{dsl`�BH+f*���Y�
�������R6J������-�!�e��Z����q����+���E@�v^&,]p˧�\&�gF����n�[%+#�����8k�s\b;���P/�H���n�D���*����}�,���JM���Yw�UB^�����H�ߜ
���$T������2V@P6�W9v k��P�<&gZ��4�ݢ͓���t��\�,��-!".�0��5T`g`v8Е�z��[��'�Ɲ*�� �UIb} 
5�B�"��`���r�V�My"��3UO�cN�6���9)q�FS4zQ�QY�.���|lL�q��a�ܽ�ptmm�_C\���`)R	u��5�x���-;}
��
�+!Z\�>}�>�S����4hn�肳�Ɛ�`�h�	�*��"��/+�U	�B��&̅�$
����bV9Q~Gyp���Qq8�x��T˭�~�"�P��=�/H�GY�2�*��T��2l�WSGmV��你Ġ}���pY{��8'���	�|�UF�8�3�#]�i�^���� ZX�z�n�(��+�L�"��_�b�/<�5���8K��R@�h�D7q����So�H�Z���DI!2��x�y��N����@��m{�7��T���z�c���Y)�F���Tk���#���-����ʇuM��B�yn�wK�.��ﾩW�ۘj9�?N?�HGYWS�Z*[|҆G��8^�s�O�
Fp��ʠM��h�϶g��81�� W��eW9�t(<���W��×X�4�8�B����~�c���5�xN��O�2��r�o
@"0p�?�x�I�8�+�<̨�V7υ,�i��OQr)zg6Ѩ� ��d ���;Rd-�Ha�!C�~(Ѩ^��?}5��ޡG��7��@��_��/�����i��"�pF���
���9
VN@�U�d�g���D8u�&c�+�{�����Ӂ**�r��J�g�R�6ʷH゗#������uH��89����E�|��+N�,G�]��|г�CVv)�o��$�P�P��	�P9D����|N�υ�
�����ȓ���t��KP�zn�>���L�ްt>�^�=2���h��w1Z ��QHwbD-�g�f׋�ʞ+I�n#�z��)�g_b��9���T�����uV�҃NQ���M�'�|uJKx@�#W\�ׁ��U������L-V�e�`�t3�x.�k����I��̙/� (Ѿ)�
VL㖑5h��u����uHmL�<{�)N��ҏ�
uiu�3؃3E�
=�,m�[��Tc�=褒z�qF�6�����"z���1��k���]�%��Y=h���
D ؠa>�4�C�8���'m�m�(q�_Ep��°Z�yN7�FIh|�qƃQ%!���UGRD1]���Dli��Ԃ���pa�en��3t����+�O���j�"��S�j����̪i�������\*� ,m~o�G����mT� �ѩ'&i����
�X`_�o�E8O��/N���?_�Xs����i>����'��SHe�F�����Ql����b��I��.C��%��J��1�*�L^�f�훁�0/�2�����;k�ҧd�Dt����s��қt�$�0�pb��G"����o�) �-\�~����o
,�i�;Xjoj�Ҕu �y��(�{�ԉ<iP�&nIRa"���e�saDQ�ê��Sp��Z<Qp�t�����Ѓ+k��+L�啠	������Mw(@��C����ΗH�P.a��@@��o�25vu�P�P��zй�� ��~���aU��9�l�b�H�{�"$��aj����(:����̖k$��Y0�`K���bqE���%)�9j5��v��*d���","MDRRMO","2023-07-06 14:09:59","1","","4","");
INSERT INTO tbl_news VALUES("8","8","South Africa – Homes Destroyed, Lives Lost After Floods in KwaZulu-Natal Province","south-africa-homes-destroyed-lives-lost-after-floods-in-kwazulu-natal-province","Several people have lost their lives and dozens of homes have been destroyed after flash flooding in areas of KwaZulu-Natal Province in South Africa.

Severe weather including strong winds and heavy rain began on 27 June 2023. In a 24-hour period to 28 June, the community of Paddock in Ugu District recorded 176 mm of rain, while Sezela, also in Ugu District recorded 84 mm. During the same period Mount Edgecombe in eThekwini, the Greater Durban Metropolitan area, recorded 72 mm of rain.

Emergency services carried out dozens of interventions across eThekwini on 28 June 2023. Members of the Reaction Unit South Africa (RUSA) rescued people from flooded homes in Phoenix and Verulam. Flooded roads resulted in traffic delays and several motorists between Phoenix and Verulam were stranded after their vehicles became submerged in water.

One person was reported missing and is presumed to have drowned while attempting to cross a flooded river in Zwelisha. Search and Rescue teams from RUSA were deployed to the areas but searches have been unsuccessful.","2023-06-29 16:50:45","���� JFIF  ` `  �� ;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 82
�� C 				
!'"#%%%),($+!$%$�� C				$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$��   " ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? �)	��k�OZL�Q@&h��
(��
(���Z(��Q@Q@X(��.�E(��.E� �QE �QKH�(���( ��( ��ZW)h�\b��E QK�ހR�K@R�KIKSp
Z)hl�\R� �Q@R�
rҁ�ZW ����
(����Z@���@-�Z (��@QI��-��`����@����(���N�������ސ
)h����u`�JZ@:��K@KIK@
��M4�P
Z)h ���W �RӀ� &�zub�
Z(��(�Qp��KH��Z�Q@�})h���`���(��(ii- ���S �����1KJ��h�R ��Z@�:��QE-��R� �3@�PKH)�PhQ]�X(4QJ�%-Qp
(�����)�\,&(�- ���( ��Q@�Pb�Z(�	KE\��(�QE�(��@
Z(��IKE��3Bө61�}��QHaE� QE- �R�KE ��(�p
Z)hh��o� R�E -S�������-%:�
�3@Ө���-:�N@pTQEvQK@(�����( ��( ��� JZ(��Z((����Q@QI�
(�����
Z(��R�I�
)@�}�\���J)hl�b��R��(�� R�@���) ��)h ��� )h�� E�QE KE�Z(����Z )h���)Ԃ���}+��b��(R�0��ZWR�S�(b��
)qE �
Z )h�4\i�QH��Q@ �
Ju (��E R�KI�
}4ө6E� 
u ���8<Q�Z+��(�� (�� (�� �����)h���\Q� JZZ( ��- ���Pb�Rъ LQK�1@����@	E8R�)v�Ө��P1E &)iqF()h� QE.( ���R� ��� )h����PF)i@�  3N��.KIKH��(ih��v
(��� ����0���� 4�@1K@RҸR� ����
� R�JZ@��� )i)h �Z �:�
Z)hb��KJ��Q@��Si�7
Z(��)h�������`(�R
Z�(�-ܙE���a(���%-� �R�PR��@Q�W ���.QN��F�z.qF)�}��\QO����b��Z.1(������-Qp
\Q�(�(��.E-\AE-)h���QK�1@XJZZ1@��QKH������Q@E��BR�KE�`���J�-R�;:�������o�  f�R�J�QKH�RR�E� �QKH�RR�E- R�K@�}�Ԯ1 �:�(�
(���
u%- QN��X-��`�ZJ}
(��AKIKJ�--��(���Hb�R�J�%-��Q�1@X(��3@
)v�Ө�b��( ���R �R� ��� )@��P�-%:��-&)i\��J)h�E� QE- R�H��Z (���
Z)h��QKH�]���PKE- %:���cRъZM�������Q�-S� �b��ZR�( ������
ZAc����f�H�]��� n�z�:� h�o�:� @1KE QKEb���J)h�������(��F) �R��R�E QK@	F)h��Z()qE-;��R�R ��� (���
]���b���ޝE\�)i ��R�	KE- %-- R�E!�-� 
Z(�ZU���E� QE- ����;-���)h ����(��3J�%8P)qJ��R����R�
Z(�aN����q1K�Z]�� ��1KE!-R���\P
Z(�ah���)h���E�@QE-��R�L���.E-\QKH����b�� LQ�\Q@	KF)h(�-.(�	E-\��Qp
)h�)h�- ��1E�(�-�)@�%8P )h���(��PKE R�E �R�K@)i QE- �R�R�N��@
)iq@	N��W ��%- �b��`�3F�zu&�@1KE-!�S�\.%(���)@�BR�K�ZW ���o��i�Q@��QH,��b��-Qp
Z)h�-���R�
p�4��R�]�2
)h��%��] �R�Qq-PE���%�Qp
(���PQKE QK@XJ\QKJ㰘��PE- ���� (��Za�}��Q@��)إqXm�b�.;	K�\Q� LR▌R���(	F)آ�	E;Qp�����%-.�zP1@ ��� (�- R▌R�	KKK@R�c�
QN�p��\Rҭ
p�p
(�����.b��(�-S��RRҸ�Ө������칍�����AE-�LR�K@	E-�R�)�VQK�1J�a(����
1KE1F)qF)�E��,&)h���@	E.�z6��R���Q� @1KF)h(�;b���QKK� J\QKE�LRъZ.E.(��%--�(�-������@	E.�zu+��U�QE�(�� ����@	�Z)jn;�Qp�QE�(��p KE(� i�Q@X)i-`������R�KHvAKE.()h���R�*nҭ%>�
(�Rii)h�
)i��C�
Z(����PJ(�����NZ uP(�=-.�z �˙�(�-- 6��P+	�1K�1@�S�@��)�}���E�a�S��ѷދ���S��ҁE�m�Q�.@�}�إ��4R��H�����J\QEC�QE.(�(������-Qqb�Qq�����KE)qE- %-P0�R�� P1KE��(-��QE!�.(PN��)h���(�sK@��R�K@-�f��Ө���R�b��-� ��JZ.KE7 �����%:�)���P3E��{ө �(�{��J(BR�J(��Z@���������E- �1@����)\v8�(���+	KJh��J�a(��Z.@�}��Qp�
(���QE��
1KE	�1KE R�C�E�+QE�R�E�1E-\�Z(�	�Z(��&)h����\QH���.KE- QE �R��W 4�b�1KE��E�\�-P+-P
Z)i��R�q�(��\aK@������{� 4�(���QI��\QE�
u%-H)h���Z.KE�)h�4 �uQp
��)h� R�@�pR�Eii)hER����]��\vER�KIKBc�Ł��cޝEv\��Eb�4R�@�������b��Z()h�����P+	E:�W���b���Qq�F)h��&)iqE(����6��Z JZZ1�@	�1K�z1�@	�)q�K@	KE.=� �S��zZ h��b��QKE R�HKK@	�)ih�	�Z\QEƐ��R���-a1KJi@�+�!6�ө)�\bb��JZW(����b��ZA`��Z�KE- %-�\,&)h���H,(����E��`��Q@���ZW-%-+�R�R��KE�)h��i�QJ�
ZJZ(��K@e-Wa���R� 1E��QKK@
(�-�S��}�	E>�.)@�:�.!�}��QE�(����JZ)qE�J\Q�)	 �����F)ii\��Qp�R�1E
ih���)h���QN����E.+��XJZ1ER�KJ�%��������\��b���b�QN�a1KE.)����m.)h���� QK�zP1@�����QJ�a �-Qp�QE\aE�\�1KJ�%-���%����R�Z.;R�	KE(����
(�����ZZ.�Q�ZA`�Z �:�
(���1KE\��)�����p��w�Ŝ�e-<DƔ@��s!�:Z�A���� $� U.t�@f��c4സ����&�JA���M"�%Ȩh���
)hAJi)�Qq�Z)h�pH)i)i\v
u ���q�Q�Z빝����. ��(�-PEPE�\��(�R�p�R�E�(�� )�b�ө QE\�(��R�E�%-(\�
��p��S�(*A�R�
/J]���)qH�
���L�Sޢ��$�)C�T"LѸӱ7'�o�EE�|�k�<S(�C�7J)��E\�(�iE% �\Si��@-�)Dl{R�����'E/���s!�2:Z~�B��K��a(�b��R�b�����)�N�q�E���R�Z.
ZJZr���WW23��R�Q��b�v)h�Xm�����)i(��- ���(��)h ��( ��m8P�E QF(� �����a(�R�K�(�sN4�����(��sH,3m.�Ӏ�z9����i*r3P��Z�"\D�Q�Z.M��(��ah��.�QEE�\,&)h���E��R��P)ԛB`�� ��8�q��|�Z)2h��4QJ�asK�IE ��))h-%-`����QIK@X)i-`��(�XU�SV�U R�Xm8)4�p��R��rjA�I�^�7-E!� �)�����⊉�UK �zVt�(ҡvCv���ڥ��XWF�!�ź�V�o�%i�T"�O�'���h��YUx��?�R�%�6�jJ�<ieV(�`:�ڹ�����?�9�{��t����y��R���~i�J���"�We/�	5񵷘�����#�� ע�WGJ)k&-v�S��-�p<�
q���ʋī��%��`Yx��lq�	\.ut��/��
i(���ZZJZ.ES�����a`�4��������QE8(��
\R)ih� &(�.)h1KK���� I�H�F�*��I"��������)�H�
W६	|eb��p�!�������m��mOc#����u4]�)o��ʸy<a�?IR?���{�wy���,��i�]�
]�N*���2V�l0�C.�lcqǥD��<w�Xc�/��Hd�yc�I�T�qU�m#"���g ��0;
Z(��jQI@���	
(���QK�1@X-P
ZJ3E�Z(�����qF�j;Sw{S����.�IE >��KHQIG�������,-���
ZJ\�њJZ (�P@b�Q�Z LQ�Z)�LR�W1Z����;��ڑ�D(�%.2� ��j�Υgj�q��0s�~;TwZ���N��9�Q��3��t\��� 	'ڸ�o�U�V��������98#�~��gk��l-&*a \�<�G#�2:g=됲h���K��h�3��%��h^1�ڢr{ E��Mg]�5���c/�HDUc�� 8��x�Q�e���/�0����際�vV�|�mUw1�1�/)�N	�d�?���)��(�" �� zg���gw7īh��[�,�c�� �g�;�d_j#P�ˉ�yk����*�N���e����t>�5�� gm�Q��ݓ�ޘϠ��"l�U��u�j3�|֍؀���Oo��Yֵ�h�;7�Iw2��+�Z��F�-�(�x#��Rj�z�Ԋ"�Pba����=������E�����P�E��m�L�a��s����y����$6q���p���r �`1�Z.��'�c�j�zhtچ�y-�[y8ڮ623��8�>�e�M$wlRH��d�?���$��3ϭN�@�s��Q9~$�y՝#ؽB��h�X�A4�(PAe�ӿj��� Jf��l�X���\����X�H��鞵LI�گ��o
��"�m̡�9�57c���hV��M<3�2��A#*���K�'�������!Yă
�j��S�ـR �~���g�d�>px�V9�MC��}irA�A�Ҹ�ն��Ȧ3<qL���&�Y�0�E�9$ʜ�i�����y�`�x��4������������C��U�c8&����wu����^����k�5Rp	�1�Α��69V�,�F ���Ls^3�Gk%���5�N�A�������mm�[mJ�g<�qI�, ���Fq��\Yodo�{h�>Ѽg�X�4Z�������B��;�~�]�^�]csm"��d\񓃞q��[F�X�m�QAwotX[�A>޾T�����kK�(��ah��\b�E\�(� ���.EQp
}R ��)�QE�- ��QM��2B��uE�8�y��	��9�3U��.ٔ�G�� ���G�7�_�8����+7�z�k,����}s޳g��M�c��9$��?Z@䎒��{�\Ib0#�y���v���N��H�n� �;��ik�L˱/���	�n}*��N�Q�8�׽!�#��������T�0(ݔڎ��;�}�ٓs��n.�B�ʨ��������y1�����T���yK������1�[��}���	�~*���kKU�m*O)����:℁P�%sMe�ެ}�򋙚�>#���H&1Ȏ::.W�c���+1��y#֘�+n��4�� u?�V�������U{�Z��`�Gg*v�|�M��Z̻�{�)�4��NX���JZlҵ�-���4"F������.�^�B�D��ʐ����֤�K�������*�n㡬�/e��VxeVc����|#Q.̤Yy�%�\ד��:���}��,���YT�=jx��;���j�`G�?��P�XJ���bx�.v� ��5�
W�i��
�Yn��ǌ��ӯZ �O�����q��=qڰdV��o0�ʐK6z`�z��ne�nUQ�,0[�J���gh��'��u*���U��ݼ�v�r��n��Z��T ��\����jZM�H�1v�>U�>���el_ә 9�0A<ӈG"��Ʋ�'x���p��*ߘ�Ddvَ�_�t�De-Ye ���j�9�C�2�9R8��Yf�l
�rO�j�W�p�rD�$�Q���:��
1;����v����t��x�E݉-#�� NZ�Զ����ϸ7 ��v��yeY	I Q�F��H=F+/i&�c�F�ϋ'��*\�L*A��C�q"�}r��u^+8��H����`���r2s�T�ZJ3I2;̘9��l�y�^{w��Q4��y���B�=�� �X����e-���0Q��Ҥ���3�a	X�ߑq���~?�Mr�ʗ��HS6�-�J�t6~+Y�aB>u?ҭ��m<W�8��5�3��X�O1�N�َ$�^��x�s �T�nPH_�_�����Gc� 	M�8��*���o�yܣ�q�5�۪��Wow�����*�Gqp2%��TR�?_����I1�#�,X�R�@�Um��!f��� �����jǘ� cӥuFI��}�%�D��g���Ҿ��zq��ڕt�53%�02�;�� ���23�q���kI���g�ˍ�Ks����9�}�Ic���/?���B���b �ןLW�Ƭ�r;�o5��#P�|�rcF��-�!�� �c���gKn59��o�M�tyS�v�=i�.�<��<+�����3dm��S���8�m�co,�W�$Y7��<z�3ۊ�b��H�giֲZ��������1��sں�+�Z���Λ�Z����ۓ�c�?�`]N�ʎ�H��DN���vb���$��-հ�p��Y�%^f>c�>�0|÷�5��(�G�� �ag�p��\�F�W���=�#��l���ݧ�mq�D��>���VΩ3��p��"J�n��O�V����^Ȳ4��\�z}���:�cҺi┝�%��LR�<���H�0<pzS�����#?xt��E����������1�UM�p+�� �}(�h��֡W��#���Tg]��v�뻚.������FbsU�կ�Zyc���4��\���re����%����A�;�4
�RҢ��d��ls�PK��D2fRG`y�nA+��sP�R�	���s�{�d]�e#ک\�E�<�8��Xj��bb����
ƀ��� 
�E+�q��I���F'����TW(����o��fM1��	��ܜ��-/�Ğ�䚤K�5_���D+��O�4��I/����c;*s��9Y_��=ꬅsO�b�H�'�r�0N�Si�;�!)��'*?�1d��J���l��R��}�����1���4��|��-�P�nl��i�R�^���1 �U�Y�6�Y�u�x�����V��`>�I�8�n:���&���-<Ʉ�j��|q�����Siv��s�H�+�lf�%����P1���3�Z�o${��$��Y�FO�b�aXd�O��Tg�=qV�N9!�
��qX�x�d�㎙�6r��.�9� � ?ҳ�N�j����B���Z���|��@!�����5Dc�wpU���#�J3�!w�}�O#ڷ���":�#��F>[1a��8���n��o0FNs��W�<��⡕��J�p랻O�p;S�P�.���GF�ҧa�e��񳬀�<��޼��UI%
q���g����h�9
��O' sO��[{nElu�y�����m\��V
N?OZƽ�����Dh������u$ⶻ3����܆Eme�ܒH��:{�F��Y�\��q��Xv���*�b��lzըu8�Y ��6Wsd��c+�\l����>B	=	�L��2F�3�vx5��4��+.U76��U���̒,�q�ϯ�T�=��t��H�?mب��g$��+y�m�[M�aq���ku$��j̷"@c'���e�DF���
� (�yy�UnK��FG
q�*����t��r��9��O/�����~I�*���[݈���;��x���O�ξ
�`��OOj�$m����6��������i吝���f�S��� Ue�3�C�����K&��K���i;G�S���i��[F��L
��H��F*���0If�)��Q瓹s���q���5��m°e(�|����S�~5�$�_O�]�,�7W��=�h�PP�u77H�ă�u�"HKc#�NN{���j:hHט_��<���(�9����g����Cp���0y�z��Nx�+(^��^v�-��0�'$����y���zl�2���"i=�6� Q��qӽj�݉5+��3�eT��c )=�����Ok�fm�p�d2�;c#T�]��i���w;p09�_^:b���~a
ARF{���v�����gik�K�W2L.@O!T0'#��_	�Y��rwg��J�d�6��Z/64[|�T�N9�������M���Þ� Z��c��%Ǳ؝�G�#�3HFP�`��>���%��Q�HG�Q�c�@:�i������dY[ �L	$v���R2M]fL$�����t?^��ۑĒ"��<�� >�Cqj�ܬ
H�'�֘W�A4{TRe�|�$�N(�v��T�`�_8;�h+�������-����rڕ���B�8 �u���g�� N�.��&��#c��@��JNh,j�o4҈Q1��ߊ��9T�*�e��ڴwj�E�
>dF) �=�N�U��Bл]Z���1���6 <�����uR���wQ\I=Ī�lB&;��,�x��֩���J�n��������Y����!�@����}zc�Ω�� ܠ+��?�J���Άݑ$�'��5�S2�=�=�;���
���8f {���q�g29�FX�6��j��v��E��k�4���lۀA�Ny�ڥU��/���;�������)�[�Q��/۬n|�qF��(A��?(��A#���QMp�	�
��a�g���V������[�����|��U���YU_n6�$��G�kp4x�,� �W������:�8ڻ�����'�L�_D��hJ�-+ ݒ�?1V�Kr7C��F��S�?�`�n�ѮK\yN�Ѡ�߿<``���l�,ZF�?��?��FZ�; %�T60;zU7�^V�R~Uf��j�f�Ueep��F7�v�I>��k�u]�� ��m�����q�eo6O)A�F*C5�A��K�pł�����$U$K�6=�T�ݜ�	�'��5,����
 9�n3֕�Ɨa�p%��5��#󥷹� ����S�U/Y4�xZTev$��y�GaE���2�q�w��.�	v�:-���7,� $v�GRK����`�n�������}������pY��*k&��Dy��I��?�#?�M��X7��ځ�P*6���nߘw���X�F�1 �9����	�隯uӡ��6����=� Zjk�8>�c�m�=}qN[��G��`RE*�R6�����U!�`�߻	�#έK�v+,�s����ЁڞIX��=�55$��B-� ��yDN���o�Z���I��IJq��F���d۹�^��5�D�r@0	��%�̮v1�Q	ǮqK���moc��lda\��<������s��z� ��+�4/�W2� �����(żAR�%�:�`~u�� ^h��v�V�a��N>3���z�5���٣�$�p6�qȱ@���w9?˃M���]DQ��9�}�y��[I�m~d]���5�z���#���Z���ˤ;����;�d�$��X���ii�%�}�4Tb3����?�4��ᙔI6���9 �a��r�]�VopυyF-���Ҵ��!u���턟׏Ƣ��K	$�1w;��\�c=z�Y��1`�3x9����;=��!�"�e-��B���T�iP�,Z=�8�#� ����!ٝ�q<�ȱ��l��� >��w��N�����1ݷ���=�w"�lc��q�� ��t�,�!vG��[��EfZK�)%cF#s������v�۳'�T}�c��� KzV-Bh��|尸��W�m�Ď�p��$m<�L`�z�%����m�r��-�ߧ�bG��]��
��׿z��JV'�����[�X�媜���zc�Zeƞ�}�pGwR��L�˒����n��Z��-wۃ��O��bF�q1y�݃�P뙧�\)��,GQ���S��2��q'�|���^KT�A�;��-�=A�Pj�q��O��P1
�yn)�pl���c��P�ᛸ���z��������~_�Q���DK�x#���Q ���\�	 ��$F�z��]�A�}��֖�#*�8��Z��S���������*�Q�!
�֦M2�ɒhZ��k�{�8���h�5��O=w��pxcۭ>�UT�/BK?�ڝun�W�M�t*Kc�?�I�i�p��R��y'ǾMO<ov&��X�U̫���3��ؚ2�����_�\�Y����x�cc7Bs�
�^�i�2B#Fo�m��=�⫝-Q����{Kd�(E'��,W��s�&�v�
�.1wy \``�C��{b�?��}�d�1��������G$��� i�Ti��J�(8� ��'�U����Qҋ���HY�'�*��>A��d�sU[R��6C<�.x�]�悢"��,q��Ǡ�{�X�p�;�N��>��k}����=z�I`�I۸�"����6�qo��'�	�F�w� �#�i�L'�ے6��ӞO����%���HM, cgUNF;q�4�Jk)/�DWo���>�# ��b�EY�f�j�-�j���V �7͜�lu���VŶ�%������E�~`O�sҫ��O��f��I�U�|�ģv3�x r{�j�e�傢�K,��
d�0X���1�9�8��c���!�G2F�&���קON�4�A��D�С�N�n���q�Ҫj�i�,j|�ā�e9�w u����i{y`���eYT��`�8�H��o���eux�掟ֱ���0U���င�pA=3N���}R[����r$R@S�}B�j��;�1B�{�!ZI�S#��>R03���Y���NY�5$�  Fqר��®0�M�F�f���¬s ���#����H���gX��c��##ן�
)K�<y���l^{c�9=��	�Al�@ۋ\�y�CU�}JH�iq$ 2\�J��?�Nޕau3!v��RrA�r+0���]��cs��rz�J�x�#EfVj�<�q��Ҳqf����E˃�c2��J�x�i���E���l`�g[�
>���ANr}�ڮ�]���;��h�w.��,r!ʖv� \�4�)A��c�?ǐk>{c�o��#+�m'�o��S@d��f<Ǎ�Ж����{E-���iy$L%p�������Q�w��_r�K�s�L*��F�ʜ�g���ZV��̛'�q�����G���;�f|-"��T������ JlK��lu�t�S}�#a��v�d�'��qN�.,̍qmj�FȠ�� ����>��e��P���gp��rFH$�Gz��]Z[�%�ؒ]����ol��<t��X�81+J�P뷵t�:&�}�26�i�edC	
��d����<�Y�cw��2�'DtVMǇV�A�=�ޅy��(5e���?xv��8�"���]Q��;{{ƃذ������x��gb�us��K�G�]RE;��^GZ�mm�)�=�`�WTr{��A�rsV|I�� g��i�mMn��K�3�᱂1��K����Z��#������<�c��>�l����{SE���(�-�Y�����8j�C�+x�)�!N���*�> �!xg�;�)Y�2H����'�\
�mV�R�l����m�l�Gq��g�'6;+��3؃��K�R\ 1�q� ��-x�"u*��6�H��r3�[vǨ�,��M
��(&@?�I���4��k���I�%�K�ay�	��ݰ���S�b[�N���q��ZA&א>Tu�'?�F��o� ����� ����=��
өF[g�P�;9�1Dv��=�9�ӎG��_Ij\�i����άI��9�<�H�1�	$���'�V���� �@v��ȓ�ԆHL3'g#���*�G�X�i�{����$eA�#���g���zU��z[�o 3�`�NO�ӡS4�7",���Yܬ��o�ˍ��!A�����s�Y�s�S�`���i��	����bL@!�����W��~�c� ��,zb�av#s�`)�_z�n-nI�D�� ��s�Vm;�1�i��d�m��o��8��*->�3��iL�O�7�=Es�1���0<s�]\��mD1�1�TV���:�t�0��9�'��=�W�!92\J��;FO�Wbm3N
$���3�\Ϲ���km�:� �ȭ�O�=�s#U�\�f�z!'=*gM��vkwit.�[P�_j��玽��ڡ�P��Wco�N3�:�"���
F�<����S	�H��I��{V>�W�W7��ɟbD�r�`��G�*�q�Ϩ[L&,cCÞ��ϩ�VLWQI�ȸ�w.?���V��nb�;{���Wu��2<�M_"N㊹�n�tۙ��.XESo�Ʉ r[�Lc�U���a>���L�&����wǩ�U�n�M����}�B��@�P�;ε<-sou�I%�����?,�j�����*�(�J��К��y�����8ǡ���$�Y�U�ۗsw���|)w����������98�N�t�KJ�Ɏ�m������H�
?y2��1Б�q�zְ-�fmv�4�"�r�NI�N�z��uY����b�nd���T�F��s11��nG=h���*�N��$hN(�;˶� (	�dS���#�çZ��겻����3�Ö54��qF#EEUn�*��Oˍ>k�|ɢ�9�w�.;U�:�M�34�'��BI�5��M�dͩB��Ww������{+�����y�Ьf��I�@%�^���hѱ]ρ������"�X���N��pd����(��3Ӓlg��U����,S�����f�p3��U4��-��+ �)I��X���˧�J $.ی�@?�%��c^�L��.�����F) x�a�+c'+�@���h����E+�fV��� /���n.����Gp��qQ;�b8��%��8�+�W��L�\��[�����M�ն�ݡ�!�?;�s�񎝻V;M�t�֔�`��^94�Qݛ
UI��s��j) �rW����b��/����?N���q���i�a	���8�sךQ"�3��)��7c��HT�
	?��(̠ ������P�$��Z��`:���ӣI�) �q�H�l����C�ӕVu�y� >��J����V8�ՉKy�����/�%�F[Y��'!p��ϸ�;�//8��C[���P�����>a�O�S�[��ir��6����7/$��*w�.����nS.HV����s�Ex\�z�ŵ�'��o#az�2(��|���a�?_ZD��7���h�lb�+ �ו#9�廞i%�[e$�wp*�,g�ʜq����S���a�YZZ���L�+�m����F6� �1�ּ������Cn@�+	�U����s�=��韭P����x��h�NV0ّ m=}>�FMZ�9��{4��I���W�� C��&��l�WԤ��.bxB �p ��1�I<��j�O]I6����g�9�y�]����  ry��ޫ�gus�6�-�Wω2J�����s�V|�7�2jQ����y9�,O<��<�U��i,Cǹ��݌r�O8��
������=�L�IY�1���Z2ۉX!X�Ê���j�mx¬K�f �2�NP=��v2It<�io�i�2��d�V,� n��f|y�NH'9�����S]	:�sŤ/o���^8�ޥI9 �����kV��3l�9�q� �H��3���b��Y�4���
���ޡ�� �;�IwwL��Z�ރ$V�|��݉�?�4j̮FH�NOBzc���fVܥ��[xz܋�3���A� G���@��/��O�f�?%׃��//.-o�c�Ħߔ&B�_��1��.�w��mHI�nc��n쟠�oJJ�&Qe0�1fUhɫ��%|�bL����6��I=��yX�t )P�x�X� ���j�}T�����SE#>"޿+���枀��4l偱e!P	/����w<U��X���O@J��~5@irYnI�m��iJ�02q� �#[����ǻ�3�p:�#�綺4���Jt=A�#���9��4g�UQ��[q#���=\h:|p�k�V��R���� ������gw�ER�	��8#*?�d�;���y�NON������<w�c9Pa�|�I8��[؝ngjB�[��i|٤;�w'��(���|ϛh�ӹ��O]_;��C{s,kn^P�	c��lα�I���9L�G �n���b[y��e�	�����t��5=��V;vyp�i
t�F�ih��^���J�!/�9c?�*���˲X������~�V�[�R�٘4�K8O/oV'�J��n��1[��0�I�_ҥ%�W{
�%`)�:��Vt��zF=2||�n�&�l�1�ڵjAdd]�]ز-ݴ��Eޞle7����UQ�n9�gĚ��:\jWF�U�G��`z�Ud��^_4J�bP�?��I>����*��(�lA��ӥj9�<
b�bc�i��1������d�ǩ�H��A$�j�8}�o<��� `� �N���������A)�ʀ�A��0���֛���	�@��y�d�?��b���s��,	 TY�,y�֑�\ VU�y� zM�IdIY���+� [9+���:v�ZE0�^��]�!���;q��~OW_֔]IbQ�w�ܠ����q�r=�}�&��X�G;,� G�P3�^�W��ެ�h�[So-�:l��]��,����Su뤶��$ �]1��ی��ױ�t�ŝ�/4�db͵܁�8� �>�ڥ��]SV'�J��q��	9������[��Hn�J�\͞�%Tg'����i�S*Ĳ2F�v^FO��^���/���`E�c��0@*G�8�N=�ƤM�X�l�� ,0�цF9���=�2؛]Bc�.�gM� �`�@=�����F��!2eWiT��m�98 �0O��s���jY-��a�2m$�q�������n����$�*�{�^[���Q$�X�7QIi߼�[
ķ�3�ߍ������m�vxe�J��FFA�C`���ӊ�w��cI�RO(1A��A�psǵ`]����YBm����	FH��ǰ��y���V���u�-����E9P!��1�9����7bP�s�H���RG�g���\�3�>ŕ2�藜�$A<v�li�Q��D�hY��s������d�n	;��M]cX�wF�ø�@y��$c�ީjzM��m:]4�.F��Fs�{g�>8��f��ޱV��/0�m%pG�#���g=*{��dI�%n��YdQ� �x���B�T6����h"��D�$�Y �y�9�ޥ���Hŭ�����b7�a���=ڧKY∑�4��Lk&� ��g>��5�e�x� ݹ��ۏ��S�;�m4mas(K��ٕ�0�þO^���F�yF8�v�gpP s�?{խ7J��at��Ēy�vy� ]4���)>s�ά��e�x�N?�g	+���/Y.\;<���#o�f���Hc� � ��bK��UmX�Q��c�?E�p���h���br:�]�)5�Mw$q�TV�p7Hv�1��Y�͔��r/���r~����aJ�ab�K�1�� .�����3M[��.�%,�?�N8�j���W�h$*p��d`F���-��7�4v� �;m`��c�'�@4ƳH-�|�2�"�r:�{��8���*�%�1(��pb�x��'�5Z�Ժ�%wWW�n?6
�9� k��S�Rl����Y��s}y�ұ`����I.n^O���k =0
�<1�R$'U������K@ �Xd��r�0/�a���z��Lm�c���pž�[=Fs��-���<�D�̅��pB���J�l׆q7�Uf.0#�'�� Z�;
����K)�G��җlD,��cj�v�rc�����O�e+�%:��v�U��� �)�$���߅m[�xsH�3&��O=�l!̊���i�� K����� 9B 5�\Z��c�g�h�wg`�)FjHs��:� �xV��E��#�������rʹ�oOa۟N;@��9P�����i..��!��d�=���y۝����:wZ�)H���.K2��Ct�E$�E��3����ӁU��z~��0�¶�D�q��:`�M��٣�1ax[�F�* #�&�O ���洴m��ˏ����� �����I�E��d��<�VYI�c\��֡���Ȁ��ߑX�� �@#��r:������1�\a�<sۚ���Z<��&�H�+��rx�P������d�7��b�p�� r��Ym3c�i<�8��vg��o�{/��F*��ʪ5��N뫃���[�֫�� c���1�*7rsuv�q"��Jơf��.ŉ�͓Mbq�Tn�,��y�:6�)�����0z s!�-�B�H��)��<w��\��g�@
^y�ޤ@�t�ւ� ���t�@2�a�?x����K� ���x4�*�(���`�`�2
*zt����u[���o"Unc1�T�o�u?�J��f[�'��S,�v�O˿Б�G�^��U���ڋ������� �����7��];��N�G89��^�V���H�
:�_8
�� 8�� 
ص𭜻�ϲ��C8���a4H�����<�h2c���\�f�˰�'k���6��d���+��{�Ko5�Hظ}�I��n�9�ҶuM+R�e6Zt��&�x���9�Z�j�S5��SK""���6�8�\u��Ra4�ȧ���u�Ăp�8>��J59�D���Tٴ�R;�A"���?��$�,a��D韓�'<���b��7w2���Y�;�Y��&x�/B��J�h�����,o�3�b�(ճ�Lg���i��,7I$�L���8dw�+��ŕ%o�KFvo��$���H�*f��i���I`�BK
�*Ks�S���'��^l�.��!�ȣ?78?��X[�Z;�+o ��q�g:����[�X�-�
�q���֓PѴ�c+���S,�;� a�'�H��d΄_�p�bٔ�0��� u�ֲ�����k{Y�HP���d�	�L��W�M�X���l�9ٲG�����,��x&�Wn7�����}kXM��<;ٞ<��$����|H���T8��9�(��ګ��5���\���z��#�JV��?���0j�������2?�JN}��>��b�G�Z<�4���V:m�O�ڶ!�u-Ιkuj�cWke�	"�r�N������&l��=���M����G �[���U������Q%����~e_-��I�2mbxT�As�1��g�
���E9[H��H1�T��l��e��-%��^���%87v��;ZǑ�w�f���U��l ?Ҩn��f��Pnj�Ǹ�1'�����d� l���^�B��#8�$�uF�R��9\�r� Oΐ6{Wj�	�d�������m�I�=:�t�W��ȱ� ���	�-��g�w�U��ܟg.�q�A�
��ZV�����"����]��9� �f��	�$���V�G�}������BFy$`���j����L`�#�%N�=��������ۦ�G�h���x� k��_5ʏ��J}:�xV�1�)*������$}A����[�q���wI��^��t^��i
�uns�}��PH�l��ݲ�̇o>]�P���b���y�K-�9�i.�NC`u�>�:�6�D��ޙ�}���j�s� E�'�� ��	Y�ۀ��������:���n��n=Ç���}=zu�/4}b�O��R[v�@M�)�w���� =�q��id��?�'��ɬ�)�ֳ�8$Ck,�������CQ[�Hծ"�;�m��� U�3)|��`�ӊӎ��0�%u������_ʳ��sN��p�G>�-��,��� �s�s�֬O"�%���M�@yde��c=�x�ZJ���
2��Z+	�B�|лFK��y{�B���'=�O�ܼ`����v3@1Ӱ���z�{s$v墳�m�5�l����F}�8n�"0����8��FC)�1��5+Aa���*^�&1�"4�E�|ݸ�|���
��j�z� L^������#��r3�Bi�0)V�9�5<LP{���4˥���k$�b�gQ �(��w�֙uy=��z\�����	
��5o��`����k7LԴ�@�
�P�������KK<[��d$���<��~4�wKu3���R��[�В
�	�u#�4�l�́n-�DܸW]����j�ww�k�� �h����N��N܊�4��vo"7[r�(TO݌� � ���L9X��پˋ+%���&@XpN�# zu�z����ĥ'�&+d�4V��z���=)�]��C0\�Qm^���%̿h���n��X�:�"��Y�%��f��eR���� ���k �aM0��Z0zs������fHW������֜�3$�'G��r�
͹�ŕ�3
N�����pH������� 6�Ϩ�)k�G�Xp�9֟e�n� �rs�{w��r����@:~5\�y�ӑ֯\[G#1�k�Q���X|��ePs���^�\*�\|�:f�󒣁�*Sh ʱ;�<RO }��t
�}�e~@ qׂj0N�f�ކ�����HK) ���ҙ9'ֆ������+���*�i�xg��N.H$��BʌHh�<��b��f጑�s@�'#�8$d���R3�O�=Z b�S�Gq�)����<��̫��}�B~B�:���yn��x�Ӛ�-df?(��4ƈ�?7�#h��@
�P\�4��y98�J��BS=�[y �d��7�}�i�9R!�I܉c=��|��N9�1Ta��S�Dc�6a��`
���;W�\�l�η��6g�i��wv�c�In��l���z��M�����M��_1� ����Oc^"��c��6o[B��7���T��:���1ǯ֛<3 Qm=�ORŘ�l?��{k��ys41��� y"0IgS��-��v� ��I��!�������t#�O++�_sm'#Ov������g%��:Ӕ[H���fҪ�;}������VP��%fݓ��	�;Sŵ���Y;Xy���<������Q�:f��摠�U���~dWl껖(�]F3��S�3�5e�.<�1W"�B��'�5�Kk�D��47v��6w��S�:��{�Z���V���fx�s��1b��d���S��)�h��ڨU��U��������Ay�]FEt�I"��<�G+�>zq�޳R��7��?4 q�׮)��軍�h�YK"� �9 q���mr��no�6/o������C+p�問{���Z���[5��M��I����
I�?�=��6�Jb]B �i�0F	#���1��=h���At�΀�`��8r89�1���G�nHكYĎb@�~�?.s�i�U���sofE DwnF�\�Ñ�}��]Mrκm�L���g���9�����u���x�e�hG�W$�Ag##~-E��c�jo,�<1Eg�pp:����ML�����2\�����a�=;c�U羉lg<�᥍�b�l
�[x$��lg��@ʖ�2��j�F	�l� v����>���;nٴ��2���IT�� 9#$��� '>Ǌ�������p�� qn������N+������S���p�b��Cd(;t���=�wpj�\G��w�P�m���� ��*�I=�*�lh��,	#\m�Y�yfۇ;z(�c��9��SM�y⼄Hbf��#+�Y'�3צ
�\��ڤ����{(��"b�st�j!�
��w;��W1s�K�@��vrDZh'E��l� v����4(\Ni��'ѭ�U��Q��vƎIc�r1����Ӛ�y(�$�1�y��V��Bwd�c��?�1�YY���qs=��čȀ#�f�a��$��j8N�-�J-�����v��ì)�<� ������%�Ӯ ��|�p�[\�����G �
���������V�|�5�3	�N$Bx�A�q�2z��h�Ԭ�%���v���@� 7_��+2�W��^�I��r��k�R���lg9��q������|�l���.�!����. ����{�D?h͉.���x�Y&X�yA�8<q�ۿ�OczV �(�R�,� R9��s�ճ�ޱ�e��n���Z��)
�`���d�N��iw�}��0BC��'8�?+q����z5g`��W&k�X�A*
"�r�
 q���Ig:MѦ�'1#8��jl��E-��#1�}N*��3��͎�����i��#�r6�MI$��6m 
�m�\�/�O��rf��E�-h9#b�܊"e
7|��4�b�i�&���o�U�����Y}C��Ll��ˎ:��6�92:�ѩ%f��c� 0 �X7|�?��~����� ��P���*�-��(�4@�H� ���J��q���R��,T�O$�r#<v8��ns�zJ�w{kd�$��m������;;��(�}�=�w2�����#��� �}k	�5�e�Z{1v��}һNH ���sn�ǈ�H��]����	�(�Xg�9�n��}�a��il�-n�du
��cdn�\����r+���/��ϑ��<��ՕC.�㸑�A8����^ў�YdmFفe�K#��
Nڭ&��4�T����C, �C��`F2T|��E
mj
�zl���y���i
=�G==1�w+��1<֥���p ����ݭ�|d����8#5v$3���J��@(c�|�ӯ�M��%�{��c AR@l�^��y#�~�����&]쭸n&dv9�\i����D�T��XRIv����m��O�R�Dѻ̡r�l�#i�^��G��,�ek&���p�R6�;�Zz�����H9I��kVKs<��w"���Y�9a���+5��c��Y�c\{�#�@XǺ�O"�d��/���� ��8�a� ;���f��.CZ[�*aDo2BL��p	���@��"F���)�$wy�?B���}�xv�� �B
����C`����?�{ ���,��dNpsT�7�᳏�]0y�<�*����{`��U�������x�8�cc���n��6����u��ϰD�O�!����m���O׭4�)���֓4�z��59�.=��*��st�a�� ���X��HZT��+,=yⅆX��Ӯ1W����̱�EK���N
{U{1s�:�5}0Y$��2�e�,|����M��$�6���9���B5+������A6����El������5�ib���ZCs�r�����P$�!���g�rA-���`���܅��K��ە�*HB��g���̬g��8�٦�a� <s[��E��x'����u�K��d��c���b6xѠ�ye ��琣$�oQ��\73���#4�4]�p�bs�����o&�c�T.����1�86W$c�4r�.�����>��Mͭ�B�!�	�a#G��s� �6��p��a���b	檞I9 �䌌�t�7�Ưbѵ��+����p�p�!nN3�A'#���u槨@b��a,ʍ�8@p[��?�$s�����(�o�]��z�i�֭x�,��e��d���ɬ��^j�4>!����Ded�U��d,O�y+�����2��lݭ�;����DQ�!�<�>aY���p�إ�/�}��q�٫	2%|�� $a�^��2!��Ş���.mfӯ$!X��8_<��,�I ��eN1ؚ,n��;���n��ӰV{�[&c��ɴ�,A���U�k3�<�%�������$
���^U��I�#>��S~f��T"C�.�ml����X�N0+�9� z��sWm7�4�,�cn�=�P�Q��ִ�� M���A\�L��cq�K�����V���Sk{}>�i��y�/�m#H�Fz�\�R�d`��ZnKw���W��:,d��կn.$�/�,F$#�HHL��r=�I����_*j�<q!�2�>6��P�#��^�H��J��!���[X������f�H��Ifp[ ���z��<m�[ؤ3�wqs��y�#��r	�pp:UE$��3����og��yo�Ue
<��g�d���v�������e���K�n_\z���l�m����'�.a|�oPF�l�T�j�߉[��ˏ��r7�oАz�$�
�֓[K#G'�쬈� �����q�54�����nr�'���6������jF���W����B�#�8�g�*����8��C���n2����I$���)\��(���:�ő���?���5Zh���Ϋ�h�l�:2�҆$�PH�?����G��6��Ӄ�j4xb\���='���gu_�ʎ}�)�p'�s�08?�G;�>TM��-���}F)�O����j�n�;O�j_%���^���4���|�].��W��'�&���	�m�
}�Sw
1��N
-��燬W�K��vv��v@��~U�6�a}��;�'���u��k�e]o�!��]�I�� ����o.tѭ�w|���
�͡:g�M<�F�����5%��K���.�,HP���u���^�/�u:���
� �.\{�$���dj��܄����[ v�ִU���+FYV8�M��yY�;*V��"
�z�s���Wd��� ?�6��?>*E���	�K�|�T秥	���7~Rʩ�>��>�{�K�[�#�� ��Qǲ�?��x���BV�X\�a���N��qO:�ݖk{hI!
(>�N�e
Kgq�{T����Iy��ɵH���Ň?�J��HwF�豱a��]�0^�N)�L�w�sG3"9h4������F���ˍ�f�IX��� }Fy���P�9£k��l]{�J9��NO���O1���!Dx���R��/!`����s]��,>�x���
��S�FO�O���sx~�`���<�F9��)��_�9���8?�5ܥ�n�GP8�<�0X�}p���Ñ*�wh�QВX2���� s�O�J4}RBe������~��X���&"����}:�Y�=��?��Z|�^��}ښG�h�K���/%�UE���Np ;Vn����2�wp\Y�
��_F ����� �8w?�\�Ĳ�t �kw��>��_��XyfI]�#� c`ՎH��Eb\�ޥyc��D&K�W�#v�PX{� �r8��i�4�<f	��k�'!d�T.������r2#�V{�����Wg�
ݼ�8C��nX����H� Ӻ���o%���vSee��n�b�0�}	�qVm,^�ɥ�[�NUO�X7��g����`���Z�N�a�g��o��M���ΆY.#��9��`}��iݜ���|������ɧx�}f�6�Qܑ���0�l���7W��K����Q
�GG�$����# �� -UH�)��
|�9�L�q��]�L~m�y�ֲ��O��x�-]�J�6ҐO �O�;WB-���.���i�n��v9�c �n)��9���vi-Dw���R��g�z���b��zM�jM�F
��V9SЎ��R��7��Ȩä��h��C'�� ��C(i��V��-`�-ܻAc�
�6���^5lrG��F-$߿Ɍ�����[e���y�i���D-���?Z�9�+�����O�sQ|᳷�sL��a*�2m<���S"�ܲ)�T�7c�~�ªq�������#���?g�" ����~-�Đ�2"x�^&R3�4��F�$�<asQ���w|�G��vQ#�q�cn>��^R�I��9w9�S�B�m�$�90@N;�iQB�����u +���V����AiМ��3O�V�tQ�������d��p���&��D�V�%a����
+̫�:ʕ�q��c^�"�#Y=#�
2�� `էv��7|����5@>@�߻�sՍ4ϵ�u�s�����L/n<h4%�x��䉥pK��~p;x�s�]f�mm���K�����4��ܸ� �0p���#�䏨[3.d��s�f���1XS��?��v�v�H�Z���60:�\�:Ӓ�Dr������~
Þ��$�{�㻯-���9��-۝���<��8�\���H$���ȬBQ��A���~�j>�����@�hܨ��ߝ��FO�q�}k��Ul���z+�@���={դ��#E�$ܖ���##��N��s��6�hB�[O S�ɍ��8�#�����+��Rsq6�iynp� ��$�����۵rz��z��щ-�(F 8钤ڥ�u9n�:t�'��gy6�T� I#��>�Nz]��ظ�羷	P��̎�s~I�1��EX��W�NK�mR�x��X��x�H�ᴜdg9��q�#�2�g-���G<�
�����A%���6��?t���h5ms�Oa���� �c��	�׊�]�����m�f"E��$��s�߁�Σ��zE��<���G����Ull�.�m�փ����T#�����*g�t�*0ST�%��H��Hp3�*�UOs7M�)7�����9-B�����f��O�I�� �]N�j˃wC��W#v:u��[rx���c����ed
�� �����PV�hw�zk�W�}���RCNYc(�/��n##��ң�!�[�-.m���L�4͑�B�q�pO����Akh��U��	+�s�ڢ���R-&}>����	ڤ� F����Df����Ρ�I�Bn&�ZF�}��e~<�
�NH�y�+����K/.Fr����M������g��xt�V�jH&�,�*lW�]��<�U��Ud�p8�M)�56�3�lf�T�e�R����C#gI��֥���k���wi#1Ha/�I������U��ca��?��>��6KB���/�.@�!�Ȗ-5<�d��!�P)`�$�<�����jZt�e��Ŧ̻ZC�c rA�:�kZ�_"82�x<���`U���6�_^(-��͉�𽅰V7�H�|���2m#�y�q�sB�^��'�`�dn=�r��1�w{�6�m��f
{����.*�e�m:��$[-:86��)?Sޖ�� vPLЖ^	����>����|�y�$<*D����α�l�_o�}�Ѯ&\*^«�s�����~��%��i�\��Y�}V�H�� �\}Wޭ��Tm��1\����Lr}ݘ��5��7�wΚ��μ�,(���t����1����<��6�������l*��E;dL�;��>� �Pqպ�Τ�Ɇ#���*����^Z��y�G��������U����e�Es���^d?��)��y��|��C<�)��� Zk(����J�����Q�7�	���п�8�k��Gp�
����&HLE� �GPf�9�`PU��@��6� Z��0\*�$�
d��"��u��g�(��:�Uh��t�2�MWm�E��
�j����Y���Z�,$ űۭH�e������3�
a��;��H�
(��̫�{@����S��ʳ�Kl�q���dT�a!�n<����S��� �nzc��v4Aue$R�����CR��U)���g]���4w��$ t���}�3S�'�����,[�� ��?Z�~�v$1nJ���N?*c0C��6��2�n{��ln�4���9;�ۑ�c�'`�[���s��S��I8o�#�`ߙ��SC�$m;��ΐ*�Ww�XQ�v��g8�� Z�!
���L��)�#�c�sب9�A�t����Yt<�pjE>`ޭ#(� �G֝�j�0q��t�S�pUc�=�E�嚉H�y# �rr��J��S#6{���iŉ��C p�#�`iW��7=��ڕ�r�7Q��� �G���� >�U�x�)��ɾ��r�}��*NOJ�=��~Z1�=�'e�@f��)@��9�B��I���������vb��r?���4q��k��W��Ǩ>�pb��'�"F�)C��H
}�öH�D�IL�07q�ϦG��fwH3�n������_�
�Y����nm..d�N�M�`u�x�c�Z��5�[@�s�1��C#(�@px�>�k����)E�t;�~���j�� d}���"��w��hؑ� �c�V<�($�c!}*!t�bz�O�U.��34Q9f(H�0y�p.=���.���?/?�oƸ˯_j:�Ӵ_	n��Y�F2p��`t�=�b�^�-�d�P�����0ĠaI#y'vx��k���ޗ5������HCH¬@�#o˖��P��h�cBr�2;�sM��>�:�Z��ct�f+kK���FW 3(m�����	�4l�ʌ�� Ġ��ߞ��L�Ӵ�;KVV���UR˸��>U�H#9&�&Ӵ]E��V֟n��"K�$��(˒[b�9�#`䁁Q��c9Sd� �,|K��j7K�2��C��y�Xn?ztS�[�a���?���O"k��`�7R9,F$��&�~"_��j7�]\^j
v�<�7`��X�T��@�'�ӼCl�~�ag�j1��������eO<�p2Z����i��ؽ�����2�-�FX2#���:�A=	�F��N�4d���n�r�F��Ta���d� 7B��q�>������;)g�b�K2�"ʊŋ���9�G��˩ZZ�kQ.���J��N��
�8���	j�3��I�=VhV{�=|��R"`�\d��Nt���Srױ��Z�BMLi����ȞlF&(#�!�q#!�� .s�co�̖8�g���7�~֠Q['m'�$���|y������ͷ��gx#�P"�p��o��Ie�|�GO��-��7V��%� �ƌ���0T8���#�-�B�ն/ܳ��-Υx.�/eؖ�ƬD�l����~�Z䯧mM.�������BΠ���9���r���t�"�kZ�ƃ$��kX^�㏺duVV�v*9�V�� �4��K�6�PCx�m%�B�dU`Tn�NC �\㌍���TjV���x.�v��l��g�,�p��"\n�����ۅk�m�=��K�Et�m�24=�����p����V���i�m��6֖�Ѳ�#°E�y�v铓�v���Y�<Akgo��:q6�`�ħ�#�2� �q���s��Mv]SA��Z~��
�4��-m͝��umo.�/�?�6�2��FX'������.�=�. ��Ak$�ߕ(����oN+	N+r�ty�ڝޭ�=��٢�"9m��Fʁ��W�F<��9"��x�:� h��8��v�J�����^�6��)˵��������|�$�0GR{S��tǷ���T�Q ��%Y9���Ӡ'��!W޲!�5����&�t�O���\�����
���q��;��g,��eI����Ċ�Zi���ä�����)�\F��C^h��ߘ�iH�ѻ�L���8$�@��].�ٙ*OtCq�?��(m:��96�F3��'�V-�M;Q��l�~�9P��A=rY��:��޹����J��ϳ�$�r;O�T��X?�N9�j���䶎�u{%�B7��0���E8�Ǡ�ȥ̺1�GT����_��!�]c� �q���g�?J��Z�i�5ѱ�mЀ��m����
O<�H�k]c��y��h5;l�2D��LFFN����Wb����.�T(%�s#fCe*�Á�C�R�n�[���g)#6⸑J�o�u���x]:�$�NHq?��s�n4O+W8,���.lu�q��N�[�Vd�f8׹�8?�g��)Th�m|C�O<����f�#�����H:g��~��.�{KҲ�N#!�E3�$t��ZCp8R�?ݧ������V�3ẖ���䷵�%ۏݐN;�^�=�j�����7���x��\1?��1��wV�?p������H��ѣ�� g�� ?Px5��yX�7pR��|m
�q���Z�N�D���%F:�)Ó����5ђU��������H�;��pY@R3��)劰� p�O�P���ۼ�QȢ(�']�or:P2G��Ea�� ��Ȩs;��@���*�T> @	����ܱ�Vgf�� <��/b?.P1����B@��Y�F��Mn�*e��S^efT���h��\�D&VDS�e���X��"�G�pƬʲ��]�xIb,�C��(��ʖ��G��u �-��E�
%C�4x'����cp�Hq�˚�2`�S���ӊ|�.Ȏ�	E��4o�'�欤�(
yn���d�R�W����
�fw`s�iY��6��;H�
�d��9�?³um�Jl	��I�x4�F�7��&?��w�ipH���w/��K矐�s�z憻�(
����9�+E.x��8#&�H�-p�=�ELCl(�b8j^��X��0	2�<:`�FC�y�U�Mj���G�ӌ܀P���`�쐆�d !Ԏ郑� }J@�mn�7ZYbR# =��lffo����Q��zu�,X��Rx� ��P4�	��"����s�zm^E]��I��F<`sB1T#:���:�2l/���A���\9͓���s�b$YT �w  {Q.����t�� �a�bF����$����G'�����?�� (2�*"�q�ś�a�
|�-�J�w`)�sT���m=�ydm�C�\� g��OOZ�}�K�[�lt�]�y��t7FB�e*# �R �##�[�E��
]dfRr@#�1U��U�sn���+��t1'�s\ŧ�������8{k���w ��ޓT�]�iMo�=�����mf�
V���$�g�������γP����Z=��is8�ɒm�&f��1�a�b:��j�3�����垜c���1��G�	X�g��A�5��~8��]OɂH��$f��IY�h���������>����i�0���R�?�.�@�:��S����I��څ�$q}�]���YL�@����R09 ��{Tm�k7��i��y|ZGh�#���q�	�>�b��i�
���	L�q����:\L��]NP��.�c�>P1��j��:Π� jYe�pܲ�*p:`w�l��-���[8t�^���bu�`�����\g�Hǩ��K�u�^��N�զ4�q�-̇ � g�F �0MsR�\��U�ۗuIR��7*�2y=?���Y��s=��񺐡S�O���Ҳ
�0HZ[x���Q��6�PG���S�r���8�V
n;�m�W��a�{mGT@�Y-՜0�A��w����$�d��U�P�s#�|�0	����J�O�y���J:]A	#r�r��j�Wڛ�n�^Z�K%�	��I瞜ڗ�������]x��X��E|�l��t������{�A��i6��L�r[ڌ�i+�ܷ���d&N{m� �#�.�,��]ڳ�����(�lnF��,���qk��GkYuK����10���x`	�Nz�'���T�ՍT�3���x�ﭮR�A�-�;s��p>��{3SZ�~]�"�;�U#k����pT��<��^_�7Ě}��k�3����I����}m�2l/%˰�#�"��psF ��rs����
I�Lص����V�܆�s =0
�W�β4��iT��)V�{R���*B�	�@8���z~���m��%��\s$��(�7�v8��l��m�E-����>�����Hg�����
X��2y�)7�{�o���䲊��-J&��,��Q"�ʖ ��q����r,A6���6��<I('���x뒽8��#����
�ى9��>A3�X��bۆ�@2�]����r@l��<�)���:�[�vyaV5� 9�hB�	-������5Ø�,��9�B�p͹����	<���s��.
KSM��~>�q��N�:��E;/Llx�"��i��w Ⱦ���p����j�u� 5�:��2��$�����X$�fF�9y���՝���i֖�ɐK�=~���]�$��W��g�%�
��z��{C���M���Id�����j�G2����s� קd+��@�Y啻��HfIIY"Ǡ�?JS�p�T�BI��c&0O���AH
s���$ЗU9�֕'V���~\���y@�(�)��i�]�#+��HpI�����B�k����$�۬ۥ�
��v`��Σ!(<�l~��t-	�pA��� � S<X� i-�.K\������ &�([�SdV?*�ӯ��!E}�xl�ݚ�΅��7IٱҚ@$�S�g�G�'�D�a�I'�l�S<,F�!>�)�����ۚb�S�=8��)R���Pv�P_fȔc8%�� �y�Y�K��U��[x�y[�,*v�<H���[�(皎൬M;�n����<(�RxW}�"��W:eō�'�[�)�p;�^)��%�mz��]�N��B�nG���9?7:g���fև{h��-��n�8���\�Իt�9��j��u�B}^�(������}�h�́\*��W@�=	朞'�o/@�70[Et�w����z1�no��3�9�9���fֻ�ش��h���r1�F6Ǟ~gc��8 �G�sw^-�_�����[[I(V*� *����R{/oZ��-f�!Y��Ѥ�`���y*��勻%NFG}*]'L֭��Ķ���h���9��x=Ol��9�t�ٝǈ�-��?�^Mz�A?/���!��U�I�)����b�򮩩0�o��5�!���+'$$.r����ɥh�kZ��y$a���ktl��)d���9�Zn�;�{[k����ԝ�V¸z�a�0�x�ZZ��2�Q����rIz�U��wâ���3���F݀6��s�x9���⏇�����hڌ�5Ҫ�,��ԃ���H$�d*��Z����1<�6eH���#����$9��:_��.�"R�sy�	\�Vޜgo��iZJ�ͦ�ɾ!�}�B�%�7,jW�d$��mʀ!3��϶�ӣ��;S�c-�P�r
UCr������n�Y_�_i*�	�G]ΡJ���nq�w�Uo���"j�q�
�V��D^c\�!A	 �� �9�m�]�>��u4�Z�Ht+h�U��B�2,��-����(=G~���7���gu���E#��w�`�܀%v>w}*���׆5q{xO�m$�<�Jd"Tٸ|��x�{hZx�F�5���,w�"���Ls���'g��S;J� :f�Jړ}T�a�� ���m$3ZƬ��@#��A��X���P0EO�^���>��dy�Y#�,�F�6%���^O'�y���K�ir\���[�mAQb�+�@q�c�:zsY����F��r�=����o:�2|�иs���r�
Xw�q�+�"�B���o-��Q��#vR&�#������+����˷U6Z~���ެ�M*6�����c�+���X�J�Xn#��<�,F�ˍ�x�x�����������n�
��Y�a��+)�m ׌�?�~ k�K�u������>j�Hg;H#;N��A���m�sIk&�d����>l�{��0���U#�Q���>��O&[{���C�`ᐕR���8�s\����]���Q'��8_~�;3d�=>�8�V�5oo�=��#Wh�W�  ~��V�b�G�-�-��aѴ��Oל~}kh�{Kk�v��(!����t@?����U.�ݰ2��q�?J�-�hn�TD,
e����~�[ϸ��rt9�['cF���k��rE�}�M-��b^Y ���>��z�+������;�D�����b�IF�b?�O�
o��bH��.r܃�ں!ng)�6`�n���F>Y�F~�/�
��lR[�
���P�$K�/S�g�A�:�����:R�I0��g���銠f�#	 '>��Λ}��ars�0���� �s����J���O�&�*ƄR4�Vhz���i 9��&�N���\�����3�r>f���kb[�K~�6�wR��eI>o�FOc���T��v�
;��ҖI-�`�H�븃��Ha��Q�Tp��5am�Y7�@)��,��z�1Hє}��һ�6?�U-9� t�!��u�)�9�|���5�\st8�Z�M6@��Y���T��T��ǀ��k9M�2��*HȸyO�FH�;-�#�7/���ۀ�1��|��YYIy���:�x��0f���P!nf�0������Ib̈�ފA��`��q�8��@�}�R�
��UI=��1���A4�x\nb�c�������3L��V
 ���7�."<4 �|���z���&��G$q�b&yD�� :����wD�Պ��)�tn�;3z�
t%0DQ�<�#$~f�@2H�ʨs.ycb�
�c�t�%��u���6� ��ۓ����z"�dZ����y� f}��pp�8�q������=���G��d�F�C���.��{���͔�!�'�V���+�\��5�Y�  ���x�W���þ�|-�4k��Ӯ�(��7&92��)fe99RA����"#X�I{�[�y,����x�{��ҭO��v��-����P\+�;]�<9��ɬ�i2����h����u�[xN2���`G{9� �R]�\�f�a��h�F�ݓf3�u�  ��dL�|'��!l.��X�t��+y��z�g����o�ޛ���1��t�]�` ����q��Y��k�J��G�I}5��>��ZO-��}�-�FeE�p8 v�H5�Xk6��3���b��nn廑eKh�姖�pgo��`p �jǋ.�5�^�$y0��n'T�z�0P�ʹ
"�I\'�I��&���d�EŤ1�FR%�(����o�
�H$�1�j������y'�5[�%%���G��62���Nz`�cHҢ&������Y�a���%�(�d6B�jO�y6�a�t��5���-�G>��pI��`�n�T>T��~�]�|!"����ެ���^�П��?#� q�Q�ɬj�\[Mp�W4�0�8I�c+)e�S�Q�����x��Kqmo*A]0P�O%B�� 3�����ѣ[@�L�H�[&܈��[�
�ڌ7ۻ�vq��k*� �:�u9�#�qF� �V�h{aw��rd�%�s��q��s�<�\a��}5�Ų�8Ȇ�I��*��(%Op9��K�M:قC�]4�����A���7n�� �}���}��G	�:��� ����v�8ϩ {�K�]ǩH�=�[$D���ϯ�J})m�Z[��dVyP�S����	-ʞ���ËºF�~�-Hg$��Gm��@~c���ۓש�j�e{9l�F�8`�i�|�2��AP��2� �y�����vR;0�U�9��^�u��v��4��G G�IL� <�ɞn�����I�p���٩b$f%+��ڧ8�ᱜ���P�6���^h��nG�ʥ^��=����Ƙ?�]q5� ��9Vu=s��+wZС��d� ��V#�	�ê�A�׽d��7�q�m�ge� YC��8���h�̝�J���|]5�y�.[�a�֣:=����;F���0׎+d��d�K�2oeã�R	�@=;欯������+��v\E�ܜ�rr1�z.��V��,t�;�a����Y[b�<�FI��#�8���ǖ7������X��ڰ(Z�
Hgp�	=NG85��a8d�pD���ү>�uo�Jbi%l��*:u��X��5'w��<L�M=�^7�<+_ٚ����[0!7i4�O�W�Z��w���GS2�&�[�TX��A�6A�7=�$��*��M�.51o��al�4J���� �� :�L֭�+[D��2q_wj�9�#$���Q�G��^��6P�j�i��䰀9��>ܐ!Nv��/�I�����[�:a*���`���*�pC�#��-kP6櫧̻�m��g7nE�ba�#�����;\���WB�7�RG)�7�8���ſn��J�й�毎>
��Ö�j����h�ն0e��p1���Bj�6wҬ��E8�e��۷ ��)�ϻ�3�.�k<�o����=��Y��7����(��`��0 ��S��H�.u�CB��-��$���o$�$�n���z֒���%K_C�}Rɢڻ�[3^s��q�T���ݽš��#ehS�X��<��
U���OL~SُҰo<9�
�;}S�8����c�к����^!nO�(W�_4��є��A��O�H���qi��v��;2�#;H,3��i���ќ���N'��*��S8�?�gfZ̏��j�pIb���Q��*k��\���� Z���DQ���,�Q���y5I-��-�h�X���)��AY�M{�<��M���U��|�H��ҨDœq؃�
���1s>X�H��_~Mw�mh�d� �&^IHZg#� ��5	 n��+�S}�x�@Z��
�31r0=��g�LQN-mC<��v�w� rq�Ӓ*�<�I�Kkwy��)�v6��q�?Ҹ��N��[�:%�����e-��K\�:;f�W��_S~�H���W�粲���K�VpH;�~s"�6�^O5oI�L��6�h��@�H��&;�8��zUh5[3���P`^d��>0�q���OOn��X����\��iJN�Gt�,7a�ℜ� N@���-�nl�[Ƨ��u�66�ח*���<Ō��@�Kw�EeiWz���[������#�Ԗp�q����)�x�W����eΩtUQ${�hw��v6x�:qޱ��t�� Cgk+5�Ŕ@�$)' ��v�s��E5�
SkVuZͽ��3�v�0���XT�����|p}@��Z<VVzzڪ�+�(�h�H9�>���k5<E{}5���
�_Ɇ�
�9 ���v�.|w��iW��Oj�;<Nr��A��ӌw���;}Adѭ&RE�La��*B��3,��>����✓JM�#���4x->y�FI���v��@Ύ��#�>����]K��j���&鈷p��l��w�v���
2p�.	�U��~!�����iv�߹��d碨S���:�עYiz�����i�I��u�q8��)P�{.NG'8<r0��g��%��Tcw
:��S��԰�#��tf^�^隖��B�)��#�m�BXd >�p^Lg�M��%G�58mo/�b8Au@\� s���9�]�����]"�fX��d�	2���d퍩[߳��2�w򙼧�w�T�� s�Y]�k������Z�j��o$e�ˍ�z�~b9�@	��uڭ��a&��Eq���dUx���夘d���Y��C��[[�:����X|܎��8��V�6�q�S ��r9�?�g7ظëg=gዋ"�>l1\G��$�eP3��
B2H�Sϩ̹�m����Ϩ��T�䗏g��y`H���A����pė+!�J8`v�^�>�T�=��n%��tbcn�08�G^}8�
r���n�ͪ�r��K��FW�U�58Lt=lb�Ǉ�tmJB ��q�K(ghЀ��8�z�z�&���5��If�D�D8�������[��fu����I/�頁^U�N%W=��ӎ�Fm�Le�0�;ia6�
	rJ�'�Nٮ��:zk76d]Gn�!�=�4)T0�$q�_Z�5k�-X��&�g�ilݷ�'��D�eG�\YF^Xg��H�ʧ��r=:Vͯ����ܽ��-�|�}Ķ�;��Lcj��[��m����V���$pcް���w
Xc��u�6��4:֠gMsdj8���V̑���Q�[�:\V�����`��,�{wx��+�D<�
�ݳ$kw��{�x�%����!���0�ƥ����I���8$V�c'�(�w������M$���@T�@��2ǃ�I q�N55�^C�Mc�X�]���m�ev��Y(�P;uH�GAM>��ǩy6�D�,��prNH��3�sӌV֡�]Ou=ƛ�(/(�&*@P��dd/Qޡ�&j��՚���/��m�����2.,�����3��21�5��,���RmJ�;�f@�� hFpF��
@m���w�~n(Gs�gՒ�����&$����	@����jܞ�&KxDVq#�,P�ȥ��*������N�סWM񟃴�&X�K�S�pK	Mۈ�q���;8�e�G�/�o�N��!�4.���!l��3�%U� �1�cA�i���E���Ty�1�Q�
	�O|�׵j���n�lƓs[�&TBYI
	VXpA'���M�l�E�Ns_��V�G���$���}��'�. Q�r�8RH��KS�xeD��������]ܶr8#�>����7z��B��ocY$HVـ	�6�6���7zU���'N�j��K���<oR� ���q�8�mwGx-\�fg9�6����w>�k�ɨ�Э���ߐ���)@a�Nr6��T��u1�����. ��i�>b7��B�OOZ��}a�\]�t�x��	�m�� >[�FNqJI=�7c�R��ڬq�I4��F_ ���Q�p��Ԟ\��J���
� J��?��3.�]��@!
Ѹ�hH����=�BN�`?�-�Q��|�8��I,��c�o�p0�����R�����a t�X��H�Dn����2�́��i�z����f&�M�ˆ������p��j�Oq0�e�N�Ӻ�AN�M6!��n���w�SWP��	8S�/9��`�C�'�SC}mG<�f��t*)��bF�@��%��ܒ`B�}B�OF�@<ݣ��g�8猚_pr"�r�'�jH㐑�D���T3j0���8�O�� �� �\���K%�nC�PFG�*TRZ-���n��!�.3�Lf@~X�w�+EEȆ�̌��‏`�ѻ� �
��Tl�9���c��{��Tc!��u*���W���V���}���e ��r��u"�������mB��p0�Cۮh�ˎ#�Y��)�n�loIG����xK~�:w�4��q����X[o�,8�/Vo�x�U<pqV&�	��bǫ��@[1�}���F��NwDYў�����匐:w4��}���� �s�(�7��2H�d`�-
���# �0l�K����8 y�����@�F��	yp��rA��z��߹-e�\�q�7�F۶���ᑵC}�0pyݻ�FN�y��r�����nn!h��]�dV�b�q��׀x c�^�Uޓ�XY]\1�����"�.�a���O=�J�|?�~.5mKyl���ͷ�b�x���/
F/�v�)H��R�>_�J�{�ჳ�V�7��=N����޳Ŧ���80#S�ߔ A#�˭j6��{�i�1�3s
����}��>^��G�hWRۣ̺v�.ٝn!`a�YG+�)�GSXͤC&��q�v	
|�*���G
�I'�t�����C���^�E�X�~���ϷU���F:`��SV�/Ϋ��̈́fm��u-��1��BX62<
�X���l�ܰ���J�:
�`� (� ��9��>��x_�ڄ��'T��O�yJ4�mgp:�S�'8᳞pq�i��o�iz���}�� ���ʌ��c��F@ �8�%&�;�#�3Ϻ��X����![w����{���:3��ŴIkw,FE��a��x'#��׏]j��cgmm}�Go �
-wt����:�6�Z�m$��#�G1�n��|ۇ>�R�X{)�kQ�yq��em�����H$�MC�%Ť�ow!G�F�ÂF3�?0�Ҵ�m�םm��hMl�F?��{�;�N�j
^��q��{N�*��4�_9�^�7�d���6瞄�U��cj#K(��F��Ͱ�
x%TJ�y����cc q#M��%�7��m�	";���2;d��~��u3�MJ;K;�q#���lq���2888'�ag#��6�4���?���4v�)RF�h���\�;��[�<E>�^�l{
���!�?���Ԓ��3�7�����k"H�8�
4g�e�H
Aʞ
�Ȩ���]>��$�vv��I'�����zҼR)Ɉ��9�5���
`1�����c� ��Z?�o�T������}����,a:ᛞJ���[�l�>���ye|��'�H���<��R��Yv�ʣ��H�*��3���Ck%�"���~f�����%���\�P�o�-��ǅ�<���!��F��k����uq%�����Kv�� C#y�F$`t�<�c����ψn�o�-�$�f�
�~&i�L>�u���ʱ�]�� ܮ��y~� pH��ki���}?N��Ym��,�r��3���z秼:�W^E����o��v뵱'�a�x�޳�+nkNvG���ǚ��)�L��=���QyJܝ�l�pNz����Ӯ��F��������B���@�� >���s{�����Y�,���&#$n�c�g�k*�Sԣ���T��&֏~ ��*	 g��*}���/�SvE��*��J�֬-�)��kb,`i�B�F$r�Fs�WמV�u�+K
T���L9.�Q�Z#��4Qaz�K%��7`�<�#׿ �ⰵmn���b�4���L-�"*/�'8�ƾ�����W]��rZBK!`c�	���M��j�
�I��30E�6��+��u��xt��,�$w��i�s���1�'�l��Un�SX���P2�9
��U#����ϭz7�lݼ=ak	xQ�呜��P1����V���Ǚ����Z���V�X��� t�=N='�� |	dQ�AleX�Jŉ0Eq�+�7$`����n��eWvL0���� �?�Wqouo�鬗L�p�1\G&]L'���3�Zɶ��\iC�����Lz�*}���e1����w3!ܿqC'o��V;����xu��l��ϖ�i �&p���W�I*͐i�W�<Cs�C�.�o`�]�HO�/-Q�L`���#i<��q��Q���� K���%�d��0���`�bx~0:�$�� �*��
Y:������왞���mt{�#U���k��D�p�*@����9�������X]�ݖ�=���#ː�HS�;���G���U��C�8�t�N���I�������,��=N2rN3���{ޣwn�;Mu$V�lc�#��۾*�}���ʚ���m$��6���.�no1���\1 �T��jV�O�hv��D������\:c�W���x�J���5;mF�g6P�%�&6<�9Cϧ�����y�}OO�p��3\[��9n�s�'��ī�sM$qw֗Z��sp�|�J6�w}�O�9N{�X�qKo(��ƪxr�������E��N��YC2�V7D	�
ā�8�8�*����{��(/Ɍ��#�����Ў[׮�V�M*�幑G�.\�<�pA�;V]ݥ�
F�n�c�@dr����i:�v�Q�8��dC��~]�������5�s�j��sC�ο&���T��)���z���
{�W���N�!�620z��=A�}k�������k}R� Eq�j��n��O^k�[K���K�.�w3��r�� ����j�x�X+H�'t13l�x9?�=���B��i^���k�J�[�"5xa�h�d�C7.Ha�	���v�S��̞]����^�yK=���6��(�in�P�-�C��L&q����t���t�jxv��W�������v�<����
���c��'�O3ٔ��3�oXXk0�u�F��%	ym�0]ep~Q�'ӌ���ք�����m�	&e�N���|�
3��&��^�I5��Qh�}��d��hm�c��mA>��ҽ�Z�5%��-Lϙ�N�<.�T���1��9B�氕���G�cq�j6��ݒ���Ң�G�NhǛ�mX���Fe�?,I��5 ����8��C%ܨ8�:Թ Qf��������	ڬj�j2�3R���2#���K�|��{6T�)�[�8'$~��c� ,��Mk��?���E�fF ��lԑ�s�ߌ{ӡ�� �G�T� he$~"��llf�pV9'�sVh��&������m`�*��9@=*�[��!����&s��=�5 �\e�3K
����M��ܶ�#�j!-��X�����e�dx�̠���:�@ ,>�)�3!~s�m$��>��%���1�<��$���T���邨T�c�*�֦S���M0H��S�޴;��l�
��U��u�#��5;�r�-$Y�aR��&��d«;��%�{
�n���.rV������gJc�p$���۽Op:T��n3�N�\ܮ�(|�6iĲp|�8���u�w�Ǟ2:Qq���=8�dN~���z�%�ݰ>��E�bFL��6���!��Mߝ5����Fq�G�V�*�61�����I�����7%C�0�f��rH��k��6����^M�*����O�ͼnps��%Zi\GGg�H�:ե�6By���d%�A���;�ݽ֖�Eձ#�qgI� X�8R�����Z>�}{�_X�q��D����YH?3��;�ף��S��R���ho���$;mF+!��P@8���eR��Dҝ��p�V����ͺv�Uk�~b�n� �R�0zg� �ۯ�$?4S�%��&��q��NwdA�#[F��k�B�O/u�L�^Mk�:�,	S����0I$f�߆����qic��K)�MԂ9�$��`�tr2j���Z-L�I�y���}w�V�}��d��j �̬��@A%O=��5��b�I�Φ����=Į��؄e �a��� ��^��tO�n�I�x���r�.T۠��F'n9��7��z�K����m�Z�(��ǝl�I輝�s��`�s�IՂ����r��}˞7�V�{h�����Iv�I�
�d�nc��K������Fi�Z�q�Ϫ][H��Q)��}�%��K���N8��n<E����m�_yuP�G'<� ~B���>�*n0�xE���MI�k�e���h>uyb�,��*��q[z]Ն����o�l�iD�~{�G$���6��,">"6�`y%�IX�X�ϰ�~(����'�-o����o4�*ʣq� s�=1UU�����lV��/�tk�{�Yb��Sx.���c���� �9洯|DD3,�Gm]��2�1 � !	�#��:[��6�[準ճ���8���v��GY��v9�I�qª��n��:m3��)ysu~Y$s�T* ^?0I�j��խ��"KK[��k52��6�q��^{ �7O�=�۾K#~1������՜W�Xmcg@��,H�l\�r7���[	$އ����Z���=�����^�s��!zm �I�0
�E(���ƥ)a���\}����o���Sxz��T�����yV�IfE��� t��%i�|o��v:픳}��+=���dx��*'w�����R�+�T�$�d�����s��+G�y:`�'���ޡ��Mj�崺����H�yery��?��N�4
C��7�;n/a�G`���ʰI�C�g��z��}2��
��Zt�����wC��r3�U�����$��b�W���r
�9��^��?���_Z]I��l���`*0Ƞp?\���o�.�]נ�4�V͡���<Gw�tݸ�8鏤�{��N<G	���,���Rs��@���WZn:9e��u��7gn�˜/�s����E��2h��7�鮞d�8�*������g�Y%���%x���ER��g��#c,��!P�'��'�|W}��^E3�-����t*xa�Z�Um���0O�.ǠZ�j-��ڿ�g��o#!�+�~o��T���G#����g�11����d�)�`�%��v����a�r0v�_jD��&����;��Ym�����H�~#��t�E�k�#��2����4�4`�/(F��T󊘫��U҄�WCۼ-��tvz%䲼e��7*d�L`0?.�#�kC�:��5%�];R�ۃ�6���O��?)oN��&�L�ͪ����ꥯ4��׷RI2FIU��c��׷Ӽ=�Dn�9.on���̉/�wuؠ$va���↓[�-�=7]��m�Ί�b��>l���a��g ��A9��c�MԴU�4�mQ����KcpT�/y8���y�z�z��ᖓU����幉f�	 o%@ �'�U];���Դ�I�3�y]�#!Bc�޸��Y�]jh��s×�`�M��I"e���2�˓��W� �Q��:rk��~���F����5-6VܸM�����u��=��������Zl��d{�Gi�w/��s��QIu�zk�+�F�.�%��<����,�``����BZ����x��7�p�3�����.B �����G���,:��=oF�-����3Ȫ��&�¯�v�Frma
'~6O���-li1j����������1ec�x���^��
����Z�PJ�����~�� ��y�tz'���[���;}�'��lTuPH,�a�r��9���&�E�ީ�A*]��ȶ��I==
J�¨�x#ޱi����4�
.�������5�K�:���x�_%h�*���3��X>>��u��Zn�mڼ�h�
|�u��� #׵q:��ii�\j^&�--�"i~�gC�ack( �����;��[÷���
�)�j�Y�k��~\Fu��9�+;�"�e�+Y@��y���BT�=��^�=��)��R�o#��0l�q�y�Z���3���/51<z�SG2$�c�H��>:�JA�z�C�������u��8�۵�Mh�E�C�
�G���8 �=T�n-��~��˓h�j2�dg�#�l��ci�ہֹI<	�I5+�WP�g��v�,�[,����=9�'=t�l��˩kp]��n���W/.�ƹ+�='H__i
���"��G��̄�_ɑsב��u�Ri��L�o<'a�],�h�\D˙��%��,A�0Fs�����'c������JK�~P��~V��կ��KKH�ẵ��mͭ�/p��Ā��o��k���k�"���|���L�;�d�d��eKm��$����)J��Sv�)^k~�`S_b��`2f�#�g��G��7Zt�f�cmv���I$�X��1�vH��k���=��/䅵�I"Q�Qrv�߸�X�8 
Ԍ^\-7U���l�}qewp� �A����k
�/�b��O<\U�|S�</�O���WɀZ#�O���c
��,��z����)y����4�1�	i��6�CrK.I���\����X�ڽ��k+*41�L	ptd v��֫<^�m�FK�
X��#$�Lq
	�*�V�����%ǩ�F;����8�f޺����v񿅧���5;+�nCo9�C�0?F�V���./���aMY�"�-���Jr2@�I�O�A�Aϭhm֛t�6Zϛo�e\���==kGǫ������<��|������HA��*�㊒z�s��Yԡ��Z�t�<�[�n�dr��CƧc�����T<O�D�\Y<O��ODr��O'q ���� Jֿ�ռS�Z��
��i�-���>��A��x� �dG�H<b��n���sw����� Rss=ʦ�Cj���� .|�n���T��rV��Z�T�5����뷀�3�
D����F7�=kȭ�C&�:���"���y����{�f�ŭ�5�M!��Y�r�B@��=��Me*-jj���;}{@�KXu
���r~��;f��7J��ݎ�-�$�įB��)��?6��{��t� �Z�S��^+���h��f��5� ���g�z��|76�'[��6�:y7,:�YWq�$�9'�+5S��rO����-Ǉ㼏P�[Isٯ"�u�>\��q���#���� P�g}sP����x�Jiw�:�a(9Z��M7I�h�[;fVdj����OZ�J�,�r�Zm�^|�Z���F��8;s�k�b�cWH�#Ė]��l�{ND��a��\�
a�x��O�uz�ĒMFi���%���D�}�V�aFь�/S�w��H��kX��iZH.$F@9�
���ǧZ�S��w���j�� 2G�.=�s�|���S��DjƢ��ͳ�Z�V�)n�̃�e�k) ��x�֗�����U��%���:t�a�dF� +F����ڹKI�e�[�>q>���I�Н���J��k���>:|zƇ�U��%U�h�m�=���QWf�LW�ѣϭ>�~%sy��C%ݲ���LE�c!�nیc���ۿ�?������^/
��J{`�6�Q�_Ri�$���v�����b�O,>^s�������s�+���ikwrc�%u�с��]���֧�ڎ�ՊY%_�vb\�#��p: ՚�B0AP�Ҿ����?����/^�3lChO��� ����{W�_��!"V���d�OI�fZ[�#c�䁏�k�^m29俷�n �rA��pn�l��5�5�(��y
����נ��[(�����m��� #�� }eTo��+J�}���P���?����~C>��nF%�c���4�����'К��u8*����H�s����
ŝ[=	�,���R$28�sK�v-HB����
a� ����*	ٶ�����Kg�A�*��\,[1��ď� ��)��/i�A�����\	��H
�S�W+�֪��O?ݢrq���U�a̻T�<��T���z��A)'��
��p6�V��V �r��sQy�'/�՗�6�u�J�R����B����7�i�р�&�y�a�6YJ��O� {�E�j<���42�A��� *�g��nG�x�4M�U?Z�!�$�	�pri�B�?�J=�
�� *�74�ˮ\��h@��B��5%��I�����
��<�8�Yr
ƃ��1���Ud��l,q0#�iβ*�"�f��f��F]��P���#����L���z���#��4�Dp�m��y�h�*�W�s�?xg����$}�d�n��.�/�K���"IOV`?�Z��Z���c�U%֜J3�$
�c%y#�񇁵Թ�m�!����.#Ӭ�EY0�y��|��~�U?�AЯ�o��N�,�b��<����N�9"��8ӗ�~�|c>��ި��uw�_��1�	��a�'$�ږ��g�����$J�	�&�L���m�����i�S���j8Zib��}wJ���"ա�m�G2Hl�spv��;�l!϶A砯3�Ɩz~������W6���#Es�6e�(`r�p7��G��[�����h��x� n
3�k�Ѽj4�ӵ��Tӭ���r?y���ll~��k)E�i�i��{���|!4>�y��]�6i�͸ȫߑ�21������ 2:��## pw�:�
�8��%�*����&��h�E�x�->�G����AP�ّ�Ko��\���p�$�����˦�i.�-��E��I�
�;{g5���^$�t׵�����|�kiK�l'9����ܿ�5�����Ip�%�.˰�9ި�(���@I7��a�˯���>�q�mo��؍���Ԓ܏�����N��~��ⴻ��n|�J���t�gU��Sq��e���Z���x��<?�+�{�ۆ�ӣxf�M�6��S�#vXq�����[(����
��ϋ�	Ҵ�e��kw����u�_�W��ェ�Jƥ)�t��D�l��u(/���V�.�`�1*[�-&�ў1���#�W5��K$������u�e�h��O\��?{׌��-�w{t���+F���]nJ�~�@\��{v@\ y �ɏZ��}b.��:�o#a	�w5�{�1��W. <����FI�4��cr-�V��.�n�M
\]i��#'8m�9 ��1��u�Zo�K�6Sͣ��wQ|�)Kۣ4���Ss B���9���~�liq{�k��Բ���y<��M�h��g�8� ��P�tW�]&��due��E�ێ��?83�pk����ķͱ��S\��J��n�{�|���#�pA��/@�k7l{W���-��Z��7
��E��#�<�F0�g��<��� Ӕ[�*Ilc\�x�4����.�b:u̒[�� ��,�, 䁁]��.�j�5K����[�1'�����~0�Q}#Ö
7����ovͨi�[��
�ib�z�1����aaIOc�қ|�� j�k:�<����	�m���D.��r�*�8�Ѓ�qXo����W��:�k���*Ĭ20��x��|W�YxCm>�L�W�]��I�����Yq���@�;o��s
5��b��h�6���6�gq]Tj��J������_Fmf[#�Z9�h�٠9@��	�_�o#�֩\i6WQH.4��b�a#�Ys�^��t�O�xsZ�W�o`Y#ܭ��7F�� ��q׭M�Y�mkZT�L�)�ym*��@�,�u�L�Q�O"��w��8��<�T�&�z�-X�1����or��Gl�;�/�|2�ǟcyo3�?t���g���r�>�M%�֡�̊�2B�č�I<�3���|C�x�覛5��������<q�ڜ�d�(�ױ�	��G��j�7[�a��Bɳ���4֎M��3��"܅J�9��2��`sQ���#��"���*`Y �L��E3#6�� ��y��H��s������{�����@��5&V"NV��V��|mO�i�('IoaP9���;��(m��;TfBF���9'RK|��i
�,���I��N:��١�S��OӚ��P2�+w��PK20�1ޕ�a7s,��<�@9���=Q�桑�,��rj�%�'���C�S��9u8�eb_��A�>�Z��	���=+&H�����X��!�����&>K�h[�mR}�O�
�~��U!��LW�����(���
�6�!w$�����Wlɦކ�jڞ���F����X2�c*�^�e�݄��nA�����}6���LҼp�s!<����� T���%����}z�G
���P��zw�9 &:�FG8���Y�[����P�2�bI;6 y� �rKWr�O�:#��sl��j�:���0�C�{[������@���Tu
]��,�uՕ�H^V��bm�2pK���5�����T�n�ki&�|��)<���$q���y��a��'y��1o-�@$g�f���Rr�g��-�B����w���Ac���򭛩�a�_�:��W���AU1�\��e������ʕ�$���=۟�[ۙjR�֝��GҮ"���T�˟�1ȭ�r
>�27���r0N�\F��:�p�>ոfeC+�e#�t���Ӯ*ޡ��Pk�!�-�
�!/͌�Y��kQ���=e|�ȍ��Eb��q��FRIڦ6����
���o,dv��#is����?L���F�lưX]Z�r���B�$�6t#�t��VZ~�cu�xJ�e� �)۸�s�1�D�S��ȯ3��ՠ�}�L� ��itr�`0��}+���]J�-��R�K��B� }���݂@8�t�-���&�������egq}�	�]ŵɏ�F$F��R6�5���W�j�>�Mi{��!��Fv���y^�������h�D�$B\0�`B�1���߭Z�f���s��V���%��� *KG��\�� `�ץs8��6溱�2��k&Ѽ�J�#ۂO@��
��4�-��}rf��c��5�^[vb�8V�;v�#��ܚ�5]Z\Ǧ���H�i�LI,p|����/ q���1m�M^Y�M_�H��4��w�;5������er��S���
�\�O[}�M��D��U���Gڲ$b7l���C#�'�Eq��sR���yRT�]���|Ĩf � �g=��x���kW�\W��X���d�7R�d�
���+S�H�o�[���Gmo1�58�綖o:9�W��^�H��%7̋�>�8��{�(�y5�4��+�/V w)���N���I��������|�Ib���K{�!�_�A��
���O�k�}ؖg��\�ư��,q�vwȬ]n����kQ�Y%h��U�X� �6�I''qbw�j�3#O���֮$�qRHRb��Z.�px`6��J�,t6;'�>�uˋ�v<0�H�1B���|�|>��4���v�p��ʷZ�+$���X�9#�ִ���;mF
�( ����2���$��J�%�Ɠ�{�Eye,ڃ��oRMŕ�+ ���A#= �6��T���0�#x�����Tʶ�DFǊ5C��2H�/��s��t�+��
��0�d��Yܝ���Ϸ �a���(M:O�D�#��&rJ���gO����pj������4�+�k+J�|�3�:�T"c�޴�{ ���a��J�.�ޤ��O�� O����
�����m.ñ>���מ}�8��.'�6,D0�;�z`��EX��l��q=�!�%���*7��H�g�;ɮ�:]�H���/��]ZYU�d!@9����$�����ڀ��+[����~�#��\gp
�q���4u���&�j7�i� � �d����ץz'�~,��\A�G�{�F�ĊN�9a
�6�A%rA��V�|Z�}�|M��"P@ƣ�#��r��WT#;��N]o�I��G�U��t��I���Dg�T6Ó�1Ȭh�)7���7����(�:C��g�����|�
<�*�NӒ�r8�)&��BP���������V���*!��C��3W#� s� �Zޥ�x�=2}v�1�n�C��F$m!FB�A�rU�A 66�U���jPj�u����U�k6 8`��� I��e��em9��� ���[X��0e�r$*x�ףW�[�'�s�Af�it
��	����02�e}	�Y�C}��m5�m��9$6p�� ^�E�2���A��� ׍|3�_j���շ��Yњ�p�3�;�\�z�O�w�5��O����mKG���a��["K��݊m^s��R>�Ѭՙ�q��qd���M�C$,�pY�%�.9�s�)4�V���-��g7�fY�#���de� �8����_�TK9�a�b�0VP��
������������ɦ��C�i)�;u�4�j�aI�ܭmn4;�t{�Y��#�>Rh��\pT��޺
�#���o&���Tc�VA8M���L[nԞbH��E@%�d��sEć��/)��~\�F�^I-OP���J1��2
oǊ~�ј
B���h �W��B����(�����0�ր+�9��T�0N7�N&M�uϰ�yH��)(@��H$?.q�PIn�9�M�ы���F�|��l/�ݏSP2��L��H�5̧8����_�P��}�T�Hc���c��7P9�*U�y���1LE١U��Tq�33m����ь(���!�cm+���M�\�aT���kV[�Ɂ�Q�����z�}K!�H�u\�栕�*L�5ڰ��Ӄ����j�j���L�}O�֪�����Z�qr����͹�..�l��)��G'�[n{�(�8�?���U4�e6��5��`�j|w �d� qrj̖��d�� AQ�0H-T�{�Y#�Y.7l�\�~��� b��B�W� �]~�5޺D�Z[?�n�m��J�X� ��s�q�L
��M�U�u��i(u���{��"d�>��K]�knaj �գ��u��;����P�?��J��>��� Tc��\Q�!��N=8�>�����
 %[��=*o�&�<!��r�f�,����X����8=�@�
���{�տ�ht}'W�u�-J���zmĖrܯ�^fM�@��n޵�PI6�4pC�H�p��I'��]"��G�n�m�e��X&��� 1pw��[���cH�l�n�j�NĶ�V�7W��d��@`3��{T'��d��ߣFwlH�;��ǦO|v9�G�_;��]���`d���i��?�=���Qjz�ͼ�c�1� �l�6?Z�G�q�y~���cG��m不�|ג���m�N��OJϖ�Q�.d��
lh�DE�� p��W%�*�2�\c��O�RY��&�EȔ�p�{n{{��9�+\������pdS��� ]j��:D�4��T��G�!(ip�N���=��������X�fb<��	�|g����h��rB>�u,M媣��H�+:��0	 �8���R��*[�����ME~��w��S$S. q׿t�9�
m�y�$��& �I8�<���/N�m4���SXs�6�4C�|��OR�>��G�Nվ*�N��I���-e�M���K&r�F:t���|גk?�D�\w�em`��k�;	r U'8$���5.�nĸ��ښ�2��+�&��Iemf]���"I#�e��
�u���Գ��KN���$8fS�{�vm����+"�D��	��i���Y|�*[H��x�w?���w� ;���c�NZiڜ�����V)��2��^@�p1Ӿ=�uf�)D.u+���o�x�p3�#�r1��X���!�@ТD����`���9�,��\Bv���V�ni��ڠ�4)�3�[� �E_�� ���s��~��*9`Fr�H����Z�r���ͅ��/�[vK�i����ݰ���Nv��ڸ�F/%��ds)l�Ř��+��5k����stp�}:`{z�5�h�7�mu[m:�A��;dU19�n����+�^�6����|/�E�]-�eo<,`�.
n0NO<dg�}��Q׌�¢���p���b�)\���*zu����4/	�Y]�)��A���ذ�{�f���sx�R��A�Y��C*�cs�e	��w.���6�E����4[�ю�.[x� K��4�x.�^L2�����
Y�'��pr�,��_<,Ѕ����!�y՝T�g`B��}�N3^��,l���� �|A���"E7��r��vk�������l��cV��5��+D�1����z�y���>g{3��Ꮑ58m�_j�F�i�.�@\0>T�t �n ��7�,<O��G�i��b�~�tTKg#����ml��e�8�����V�>�Ig��Ij���Ir]�T�$����K���,��u��}ڕ���To-ѿ�w0 ��O�G�N~QG=�c�F����OƓC
Kr�C=�2��;�lL�#��������_��smr��>u����wh���kT�u+H!�F��i���41�a�����I�A^�'�u�?ŭj�9 �l��c}��D	3�IX㨏''�:oK ��<�E�}��m5]N��f���q4H9��ܼ�,I g�x}o��֊��M΍2��C;�܊��k�H ����}S�6Ӽ}�����/��w�i#6�z�0��rx8''�W�h��~"ү|>�r��e��i<��9�[i�o�=��U)4M�p��զ�M�����J��R�~�8���2'�k��G��a�����-�
��	� ,���|ڕ���X���j��SI�����0r3��7xC �zԞm�.Sha������|��*�(_&rMi�Y>�$������g_jL�v+}�Vjj�a
#���ۜ6T�r�R���e�C1gϦ*	.w cX��mn��}η#&��O{*r�(Y��S���/�D���i>��)aeo��n��M���d~��ޕn�!��T g�m�N��r346qI���˷�v�O�.���W�������R��;tv�0OQR�J
f��X��Q�\D��xb���N�s)���t9^(�u��� ax�*��>b��)Vp��O�+����|���)����`�~R2>��.E/���Y�x�����٢�}��ET�%�v���u#�X��sUl�d��I  �$j���� ��jq&Ӟ��F
+C
�m�ZB���Q��W[�X�\ �`nh�X�/�5�>go��m؅���-�o��uX�k�����>Z��^� J�M6}*]b�[�{{�d�C��C~ly��j���{���-!�_������g�Ym��4̋���Yڱ�m��5�Gq�h�v����M�{Xd�|� e���}�E�fx�?�,�<�傉;��6����f�m/HM?K�׮�݉5����:�-��̗��!��7w+���I�j�ݑN��P�=���㜻3< )�e��3�+W��>���4�.���21��v<W��wº��m~�� W�n
�|}��3���>�<����R��	���m'�p2�w=�޶m�U�g�����su?��PIfv���&��V�����>�nJH��xYdh��U^�dr
��b�ں���Aԭ�v���jGp��J61|���|��,5-3�7�Z������T���<n{�	9�4LZ�s��p���_1�O)���H#�u�A�jZ�43�)J�ٙ�w�?��O����V����N�-�>P{������픡]�UBe,6� s��Ornjk%�u\F~vU7���rG'����o4in-�+S��=���uv K�3��g;��i�b�NNŐ�3���#��WC��h��kV2A�Kn$,@FF�8NXsғZ]�њ:&�ڝ���i��m�<�b�R,�w$����{ׯ�5=×�����'�� �%�Σ+�89����[Եˉ-�K��,���"#�_������|�s�LB��<W�I�,���[ΕS��N+����g*h�Q�8�״�����={���5��X% ۱vھY�`P)?>~~+
�%�=d�ϋZ dd�U��I���C.��Ms��=6;W��J]�BO��I�ݹWi��}N�}��(�T�.m�8?6NOӭ\����T|���l�Vm�N�P`r[�G�UU+�L��ٳ��|7��/<
�R�r�N]N�Y���2�k{�2�y1]�P�n��`Q�koH�L��t���F�p�K���	n"�2����N�s� ���m4ru�l6
�k�]R;�a�H���W��y���>��?
9H�Y"ψ4
x�خ��}�U�e�[+��K�(p�b�i�r}<�}*�2�����n�[�
�1ڼ�*�@9��{��v��E���+�(�� �`����YZυ� �l�,E�&�'��p�YG  0�9�YZQ�Q���<���ndAʁ�APC�$z��~���j�F�"��2营�W1�xz���	_�������Ú��<r���j��&��V�cj`�*�1���Ή}�[���I-�c,J?���FF?:v-3�~�AO �]�r����񄌋�"���b� /���Y���]�����6k�Z�Z��,�3bX�$�@n3����
J}"�P��M��4k|p$R�xni䎕��4����s~��C�D����nP��3�ϩ$�ޛ�|A�N�)�
^��ڦ�*� }�H�� �2Z�i4��nΧWT�R]JMCS��[9��������Ȑo��z����*去g�.�� K��[]6��ڎ0�9�!H銧����Z�rD�3,И��,��r���Kgh� c�b���n�z%��ֆ9żX�I<IfQ��7l��Qqd�t���x�k�g�s���g��
D�B���
@�򻹠c�Xʒ�>¢i7���ǿ<�F�\��Ww(
�,
�i�]G����ٰ`�Ӟ4��	���W(�dm.H$�G
A�滂$�3ʑ�3��Ug�ӭ��3w�1�B�l}q�~8��DY�yo(?��=�j8��$������W��qI,t"��)���pc
�i�S��,�;����l��zJ ���9�{�c��!�>�}i���-�1�X�`G�]�r:� ��J���Zz�.�e�.t]B%x���I�3k�A���r�U�!��Hf��7_5یВ9�B�Ŭ��Gonu��h�BV&c��d�=O~+���1��B_�=CI���	��ik��H����@��]j���Ts������	编����A3}���Z�~��_Z[��K�й-܌�?�AG�X>4Ӵ��K+a��� ���'���N6��L�[WF��� �N��CZ�{�}#�������6�E*����Ģ���\W̒�rٖ"Ĳ��d?1@x���W���U�2y2X�
���{g�g� �kw��E�cO5���"0O����i&���e6#�da�G\��ҎD���u9�Xsm��<���q� ?�:�r�B`z�i�V�nn
d�1�9 �R�NM�k�h~"����A�j$�-� �x԰9BH�霌;ּך��sq��R�N&r���F��?.��<`W	{�������[�ʍm+�*0���u��+���Qc�M3Q�O������{7�nˑ
�ז����8j�&&�t�MK��Z��\�B�,YA1�RNь~c�V��[u�M�}�\F��1L I\�\玤y㐏����aVU�
>˗  �
6��,�C��ʑ�/&OlWyᏏ
������'��α��̹y����W�u�G����5` �͟U�G#Ҽ���_Aa��4�E�?i���f,ۃ`�@��
��-�Q�]��mx��"Wm��8�#8<��"���Q�͉���b�!{�� �ˍ�6q��+ŧsI=,|u��R�(<Դ�.�;<�2����	�k>�yl�7V;Ն��럈߳���Md�~�-��eb��ѓ!�ʏ��,��ּ1�ˡj֮�pɱI�<����)��1�j�#D΋�v�$��.-�K3zU	1�.@,���:W]��_�2[�Z������5�3"�v�1�X���T:g�m,�������q�2�?\��{��C�kLg��d�j�8��Б��Y���肺����O�]i�
��T�k�MZ��DY'qn��ь G�w»���v�o]�׫���"�R�(Cdϕ� h
����\���'Te����Ɵ4���8���EP� �GF3�����
�s�4+&�v��u ��H'��|1'�t=^mf7��{?�;G�#VD
���@F0=CI�Aw����~�n�s�$9 ��00{���ݮ��U��7��;˝6�+�
J��d���@Pq�v���4��>7�b�Q�T��m���Kqnb����g +����r=j�����ߋ���&�z��q�[�vN6�ebӸ�ӭ�nt˝{�zg�^�O���Ŗ2�?��I r��1����<������q��zd0�T��	�l�DԼOrl_H��"t�F�������J�~��ս�k+�V���$w6���t<����=	 ����qRi?5�b�>����,�c��O�#鸞8䎣�[1�b�\2���b[{�a$�e��p���8݃���i�-��JN��B�X�R,a�����:�_�O�T'p�sY��
@�?��K�m�o�4�:M�ʰT(d?w��2z�`�z��2ӴyQ��
�O*�3��;g�����k6KH�9"C�1�1�9���H�D�液���&wm#j�ݸ��]l�?���b���piב�+	�=��b��3�������Qvh�mS&��o�Jk;{ۍb�K�f�[+pD�DW?yxa�3�f�f<-�d�]"��{��dv��Y/B��*�f�81�=k#RӼo�ג�é08�`K1��0G&�X�β�n�{����O8#���??�&���)'�0�_
�M#�#^���P�)A#��({mbpG���x��J�Qt&���[���(�$�)�A�	��X�l��K�&X�f��6I��+
�����g�j3���3�m�!�2�H��=z�^ɣ�U����̅��[ �����k�����K�x���4����vi,�P#�9>Y��z��J
N� 0 �{~U�xWO�~$�K�ũ��GuD��m�+���6�ۆ	��G��;ִM6�t)��/��4�o檐Le�l�@ 1`�W�r����Q���'��|��5ķ�O�,ri pY0,6�8>���
�B��{]j��
�R�5�5��Z2i�"��+�a����
y���Jk�[[�����w2F�تK�+�FܐO��� p=�Ǿ7���n�+�J��M��
"G��G�3Z?|!�x�G���K�����(O�������'' s^Ip�灤����KgeK�{��) �
�.U�99��,��k��SvV��*�����5Uf�?��D��#�� t�P��M����Q3l�A�hI�Ŷ�To�\(�$Ce�Rh��N�;H�Ǿh��Y�,����*4�U9*�}���甉��9T� >��on�>f��L�f'�_�j
 ��E� ՄA�~l���[�eb�t'�M۩����U���mx��w�[��9>�7`J�o�@��H"xX���0���c�|�,�Zj&���� �H����<�8�g����Ӭt��f�u̲Mt�M��dU��LVv ���r[�+Ӽ�sJҕ5Ju[��ج�0@�?+�w$�������fу���o
�,�4�,��A�s8܉�0� `m):u<����<;���Ҡ�F>�"�ǾAf%�P1Yڇ�]+K/e%�\ �y� �CXκo��4��:�u��T^�00��� t�^]���A�'�����\jMƝ$J�ˍ��G*H�@a�	�
	=�]�w��6z�w�k:F�n֚�͸���1���g5�i�� ��UO�ɍ�n{{��Ą�6	�:�^ykf��Ŋ�sS����BY�H۞�c_A�_��>��n �|Jך���6�T���+�(��Nrx"�RKVZM�_�w����s���Y����H ����  A\t�L
�>I*�FT�x ��m�k��R�&�eu�I%����s��x;?7#�ds���%��C����ö7����jd�q#)��;A\v"�A�G)&x��Rռ@���`a����4R;H��pbH� @8�ަ�n��{2^�+�I�gu�h+O���̤�Q[]Ū�Ը���~�|+��A��1�}G�8���W����EXoc�+N�8'�g�n�#�q���fH��_��Lկೂv��]��%pFC����*φ���=��6t�7e"Kb@eu�  ��`F|���Lo���w�@h��r:s�1]� �<c-���+�kP�Q�p�� �8ڠ)�8�E]���&�����$��ڎLn�}Wn��j��w^$7���t(��:���d��v2:�s^��\�}�j�J���!c��,a�M�<)�G���W9RJ�����Ɓj�Om5�Ͱ���VU��T������ٽ�A�Ga�
�/59��&��,]�pv)���Ӹ|��G�>���Z��Q��/�K��,Z�,o����f��u ch�J��7ĚM���L�����t\1� ��U��3���u�m�_i��&�imo�Ob�X�꣞�p:�pk��ۧ�ε�x�4��]3N�#�KvU�B��d�W�����汴��g��N�t�>�2�Ʊ��G"����U�*x���g� צ��A�.dh�C$0�x�_-����Z�%.Tb���f���.�����S1�n�H�Y��g'%eX��7w�y���j:~�qw�iڄ7{̲�HK�l`�O4�jzF�t�Օ��Z��5��<��y��� 8���<say�k�3Yi����2
�:x��u�(��QM��nX{?�ƺ�d�ԍne�i��|��U���SŬr���Gl�Rx ����N�ՔyJ��Nm�V$m9+�pF?Z�G�Q}E�u���|�\�l�xZ��`�b��4�z��Nz'�j��'Vic3�N�.a,Q�%X�9��pk�Ҽxh�F2����d����~��w�'���#E-���f�A�/
�9r�B� �W?[W��=c��ּEq��e�Y�Y�'e��4��)����q]~��=���Z��O� r��}k����F������s�m��C =1���&��]DʲBa�ݑ�=����$�5j�Ks���aWTLn���y�ֹ���/����#i����~R�O^9PA�Z߶o*�����^�FG�"�u�oE�G�[��N�Gs1�  ;�{�MHitrӖ�3<}� ��� ����W:����Og>>�
��T��9��׌���Q�c�b���˽}'�_�V�L�k*���b�ir�1���!�Aps��ט|_Ь�[�����g��h�7>j���&Y]� eB��uǨ5
�o��}��tp�7s�G,��c��@O�1�T/.��	Ş�:��@��Ђ*�/�D�	��H��v�y9<qU���.	�\B�w�lr;zsۚ�I3;3K��$�<5?ڴ�����w��$_c���תxs���~���ս�� ��]<�XznN3��Zw��mFF�᳛���-�ryI��1����+]|��j�[�A3�
���<�#9$:l��\�r⤵>�����ċ&���MF5�dwFK`�woL�w �f���Z�^�U�g��Ff�m&�D�)�a�8$|����^�4Kx�"�� Sql��7b�ן±���^��L��v��c�1��S���851�CrgMe�Y�ȵ-=�-J���,1�7U�9��]�����q��E���"�[�%�ySL������8�r�_�Z��Hf�t����YZP䬄 
es��Q���2z�sV1�R;�`��!�� d����l�T��d��k}oU�n�]M���żKon�Jw`�#��9]���q�=��t]B�J�45p���]`����rWv��<�%���Q��Յ�Mq��XKwm ɳ;�0B�^X( �o��3U|C����mwJ[��"�%YZh��1S�9/C�Wvr\�����q����&w�̮�)&x]�  8�*���&�{�sM#�4W%섒1�C�� p}�[j-luaV����\0�>��Tk��0=jX.�NJ��sQr�]2��9��ͻ  ɥyQ�� �T$  
�{�� �*9�0J��i"V9ݏõHYp���-B�`�F1G�Ԏ�if�p$(>ՙu{�)�#�4��9XғR����*��1���Z�{�ٲ���8�
����F�:�Vy8�{㚥$�S�Z1#r#� �Q��O�T�OJ�+6A�ȃ�*=)�ķ<��)W
 dg�_�y�v�� �$��[YJ���S��8lc#��'�t�sZ:��n���#��0
M;}����o�����l�Mnx��Vz\Rh����Ț��>��'߷oik��R|�C&�៎��i�	b�VP�h�o6i�r���<q��V���}1溺�t뒑��>�n.cEU�1�}}j/xOZ�S�X����M��7������Gֽ:�K������&��r�W<��w�+NUm�3���ox��T�Y��My�óZB`�4Q�Z��ܩ���J�u�/Lo ������=��ݘ��FpJ�s�)�2���&��],~��÷�ޏq|�5ȷ�w:��w�"n��AV�<V��ɤ�ז�Z&���قE��a��A��b���݌�����X�I?v��}wK��^KqŨ���J�1�����pr=@�<��-�&iZ�5�����܃� S�v��p�G v�J����_�r"<V�
�q!]��n��sҺ)��)ܓI���r�2����8�c<�����O����n���Z\�Io6r�+���pA�ѽǑM%�����j�(�l�(�FđB��� ����^����?����{�IBn� 1I� � �W8���e���ncl<���&���y��Kl���(�R��#*c�bs�-����Z����R�9o/` ���t��K��Yy�1���6^)�5MR�/�%���Yղې����mzN��=w�wO�hz���2�2=���6v�#S� =~�9�8:t�b�sJ[oຆk�2��ip�w����Mx�׉�v�v�YA!��8��g���+ߵ�k���ӵo�K$V�m���*��"��n�~l6q�y���=Z�K�4��ጭm4�$Cs��T�v�tFI��e-6��Wkqw$�I�8R�zc�	 {j��oM�jp��._$0��z�ڵ��7��ֱ�5��d6��O��ހ`�5J�Э��t��.�ME'i��ft��|��9�@�t�IhBm����{w���cC�F���"��	��3�d�`�k��?��u{(���iv�t� �#�F��(b��>Q�>8�9�����k�����Mң,�=����p��~�/ ����ݺ�,l,��o㳴�?�%��$�8�ҹ?1�Q�_C��$�MǠ�<�����Nx��餻8K3d6O�1�=�
�|��l��|�ķ"��!�^y�q���T�՗O��
����d��Ry���?^�z����H��(�F�{�FRM�%1�y�L�c��Ȃ7��I8��MU{�ق�p8��躇����˩yk���bD$�*���2�}�g�4� �UխR�v��!|mYeϨb>պ�mt�]��<�n���ŝİ��\F$�q����}Ps��ֵ	5[�Vk�?d����'$�nbq�L�����Ӵ�.�d��8���t��7#�E'=N1�����n���-mF�k:M�Qא�$s����%%sh������Z�B��䶺��=�:�s�v�6y�l� c���j�D��Lm���N$F�
pr>PF<Wicu�K1����fF��-�d�c�����'�8�n�-.��E=Ŕ�0Em�]�:��[=
ᏹ>��;^�Z�'�x��K�+=Rݭ䳏c�\3�7����)5�L\[�
=��Ұ�I�L��d�G����@�Yԑ�6��R8+�*���D�I]��[/j:����F+��&�"�%�0�}�_�*Gz�um
������v����z��\��h"�վ�y�dh���	Q�ӿ#�=59�51� m+P��Q�))���Ì���4n��c,��jk��j�n���X� �۲s��}rX�����dx��p.8�Ǩ��C(��;'�"��n��Q���;c�\�g>��w>	f�����d}�{���;��=N�$Z���q��A�=[f	'��Zͪ��Մz�s��,�̓Ÿ��2)�@�3����*<���(����R	`�c��s�k��9ew�=.�S�E�bYD$L��$m��m�[>��b�Ѥeѝ��MOP�>�=�z���s(Q��5
�Ld�8��]O���5�
�
�/i���4������c�[�埗,U�A9ʖ+��4�mX��U���c���*K�9 �r6��������d��&��S1�A`}	S�s�<\�kHu4u�)�R��]�>ys�C�8���3���C�n��s\&�qku��z5��a��.9�
�I
�$q���j��?xw�w�N��9���障��f�WzqB��u�U���P�m�����	8d��MB(JY_(���>M�F�e�0�]����<� FA�ͭn��Z��OXs�#.� 
B09
H�
��R:��?����������f����qmu� �
�0�܍�=�5��[^/�z�Oy��y6�ȳ�������c$��_���X:���xNĵ��"I�bx�q��~�1����(5�6>'�7Ҽ-��=B{�W�yo'َ�C�	� ����&���o�z�P�k:T�LA�Pْ��F1��ZZ���iE�/�6�,����#,����+��OЀ+���
\<bfe<�l �Ӡ��F��յ: ]�J��,��Ҟ�g�AUq�)D�2q��i�#w��)�H�H���H4�;��^N=�v�ޔ�
r}�>N����Bl�s�Hr@�������.����.v��ܞ+����a,ⶃ1�"ka��>�t���"g����d�1����.�q�V��fQ�G���۴����%� {�J��$����sނ2�!��7���jt�D�)v�?�U�Q��rh��I���-�G��O�Ē"C�GrR5$����������<e���|y��з� �������(nTi����������f'P�'�s[�����TY��~�2Kq��Cr2x�T����%3>�$�^kG�4:m�`�927�v1�  �]���I|c�ܥ��{�F�"]_ʢ;x;��c,x=��)J�c)���'1Ꮒz��u��B�O��QQ��X�� �~+ѵ�C�Z��V��m�u+��%y��0el�@Q������?F�F��ˣn�+5�X.����v�8�^g�|:�� �%��j�Zj#�GTs�wO�}:��5ys�H������S��7�!�ٸ�`�/'�%���ܠ?���J����V���>x5�Y�K�3P��Z���37ʼ�ސ�8�OS^ck��_�+�%�����͹dڟ�܌�?E�Y��׌�b�:���Z¦���:F����`��lc�5ӤV�J����{�7[K�{]��!���F�L��o&��K��r��=qX���i�^������dKy&1ר-�ܟƼ��V��נ����h��f2���I<��ֽ��6���&���u�y`�eG���Ta�-���<֔i'+�S:��Q8=bm_��%�:�cI�uHH@c�N�r���.��58u���f�M����p�n$�s��+���g׮l�g�Q��u�a��s����ޱ|W��i��i�Ѥ6��G -��q��9�OZ�R���=¾><�b��y��!��	�R�)�8#���Ez� ��xs��y֚|k1� ��1�O�鳏¸� jZO�`G�K�\F�,m�� (6�<P�F[��.~&������[����F�pR8��2;�jHYj[�>��L��*�`�z��R�4xC�]�Zn��'��{���5���b����B�w%�Ē�� $$ci�Ed�_��W���j~"�7�%��:�>4�X��!'��x�'�i��K@�\����s�O���a���.u�EC��x����V#8�\�Ӹ��7M��ǌ��#�Ӯ�r�^�?�g�mb@@��*3���+��l����
����y�g�ֵ;յ�6��K1�Ϲb�N��6̑����+_���Ƨ��h�(��om�i�%�um�����J��&��u+ג�F�g�{kK%��(Pv� ys�հ&�4�K�OJ{]kK�Qi���h� y���>��Jq�Z�r�B�4�#�v�SƐ �e�����l��0Aٺ�ٲk�.���������db��r�*zc'5���L�Zͥ^̰ݤ>Qk�	�Ƿ���8!���H5������h����Hp|�[R07��YP�oV"JV�
?��G}ӂ�d~5�E���i6&�L�C��=��qd-`/ghR}�����<63WR\�R)��COQԯ�F���Ώd��*���Пq�	��5���Ž;P�㻰���(%{KDb��@A�v�!��k滋�;͖r�4N�<����s�A?�Z���ג�~"1��;��e�$�Պ�Ls��îFz湧MMY�t&��c_�U�w�nϲp�~U�bȽ2j��8$���-:;x��h���G��X�<��>�w�bi��_[�kao
�� I����ءT�����Ҷt�r�-;R����[{�
��y���V �����8�5�-��s/Q���o
k�7>M�&ITU���zc=�GZ�-ͼ?４���ݜ�� ?�S�վ����^�2ʑiZ[�Z=��~���e�Տ�a�:��#�� PIIVe%�}�[��vǽ�o,�I���N�MY�{;9��s!��
p\�x�Å�t�|Ur�;��0D��|`��A�޻_�Ti�ue~�����ciۀ�q��ɬ&����k�a�/]4����CA���<���O�\�57Ȓ���V��-�FIE$rJ�=�Ju%�t�c9@��Z�v���eV�rdߓ��O�i^ȴ��@�i�ޤX�&W;f[�#!��*��4_�&�N�lM��EP�5c�܎��`�y�żw�r��LT[��49�;��h�u���71�T?vD
��I^	�N2���QN�.�s��G�j��0�|"\Nn�`d�s�����ƽE�����6ۓr g���>�1���x�I�i-��3-��"�A9#���w��O5ݾ�5ާ��ٹܤ�K��cP��n��T��
hw��z&�=׋-����뽮�n@"=����3�z���vZ�:��׉e�n��U�I�Nry |à������W��7i)g��[`�~ɲ�T�.U~bx���Y���{v���@�6���'�9�9K��7g7�HgƏ4���倈�X����I
x��'�#�\�xm�[BbY�А��Um��8�G\�����s�4��1�ڬ˸��9�{RF��-��h�Aǝ����p3�>���S�h����G��}7[F��	-&�YDL���*W ��g�מ��2?��F��ݴ�72O'�[�M��̣�$�$�t��M��{��F���S�^v��;�Ҵ���56��Yi��>����Vx�k��c�<]�-7X��� @�x�Y��>��P�ǯ�8�ؾ��R��D��yR9 Ԑr0k��/�%��=�� g�\�r�8��T^*�o,�sy�9�h����\0�� �z�Ӛ�I�Ȭ=f�x��ȁ�ڊ@,b9 $��8���K)4�t[aj�������0�'9�	㯷s�x�E�+�5���A�.Sw���F6�zg>���^ZH`7j�rR8� 6�p!O^�3�j�䝚;y"�G+-��̍4�s�ؓ�d�����j-GD�H��]�N�b�z��v�p�@'Dx���ݢ�����p���$�I\�9�뀍dL"�ݞeu��W�N�i��6L���扫l�.��Yp�@{���VǊu�%Ԛn��,�$���@x* �
ͪ�yq����#o��M�8@]��,y8?�3^�E�]>�B�N��*<p�,�[ ��$R�0p����qG?F�r�����m�y4�v��@��Ks0)��!����Hn3�[�k�\�����/�.R�<�;�P�-��&�NG�xkO{r�u��,3_6x� �vH_�� �g�W_��Sh�Х�Q�v���=��F}�wma�:���݂�eei��ӤP=����;V�Q4��)$�O���(=9���yi-���m3�HeVYs�F�3d�ʫ]?�4�
�d���|���z�4�fA���F�j�~��m�%�v�d��NF���H����P�)%���m:���zd�a�v�G���+�`�#9��Ҽ=>��M�Y[�u �G��:��	b��0	�-S_��N�e���]1���$�ڌ<|1)�:��2��TtZ�[M'H}[J�X��
�Y�s�,4ǆ���_Ү��/Q
3�'�򧹻2����ݷn3���<?w�mO@���k�a��E�Ԑ��y����eR�����&�z�6����֩)�/�m-��@y�r�~
�^����E��>�K�Y���~f �m�.g����e�XX������1q��q*G�B�Fzq��U;�
y?��)����@U�� n,� -�cYР��fiZ��WG\�
����M�<�`��y�N׳�=�UH�dV� ��៏-f�� �w���̒� x�$��6�=8<W���}R/��oRw����.�/n� �H��2]��q^���P���T��X�P�k��
��6�!\i����s^�m���Z������tǰ�^o��^x]��tg���X�m��8�C�'���]7�.���;����|����7ee�����~p���1�8k��X���X���U����O�
iG��9��ۤ|b�u,�&����dk��fW��Dm'>���]�7��I'����SF���fDlm
ێ��X_�Ǜ�:���c*�	���<��_X�����dܣo��9�Gn1�J��&��[-��y�D}��YU�{�EC���?{�9x�MS\��B���ͻ#t�q��r��x�l�,�M�nd�D �x��@:���mm�F=j��Z�j�nB���>����53Ş/��2�<ұ;�ġ�H���\����(�U\%�=J�N��mqx�f/�e��0����u�:�n����Fiu���ؖ�y$J�@%�6����c�j���mOUS`�m�c-�1�Y���r��e`%y"v�9�֭Ǚ��vG��W�мO�k���MV6�$��9T����t$<�w�氯� ՚Hn����WvJ��=}��-��pJ��U羸E��'���M#����I���5�W(�6�̑��&�##�F6�S�Ms��]�?&�O��oy �a�
N�m"�D��
�8 o�p�c�:�&��7��+
y`��Գ��ؤw2\#�@���@Xdc��ֺ}J��i-���;y��^;t��lu#�j]2��G�IR�.���]�H獏��r�U+�
��y��2�u�nf'���=��å[`Ks��������a���� �![|:�c�o��X�
����|���{�1��qV���o ���T�&ג06ڂ3�w<�n���
�Do&V�V�`FX�(��z��������Z�*_F�G��on2\���H�|��4���	���g�(%�h-�����>��c�s�\���[�B�j�"�BAtJH�ZA�DF0�Fe��?�u>$���ZLv:櫫G�;fqj[��;X�n��5�⯉z>�h֒��B�4D%�$��I�⵴�cS󍵬�
�y�b���8���\'�l���.%�H��P%QČ�!Ǩ�:�._tϛ�Sz��R�Z�zt��ʸ�$��i��~�t`��sys@�X�0W�~��ڥ�|Il�y���[�C��%��:�����$���)�$l���Rb�\��w�kI�#]0e�Kki�
�㻒M6�.9"�6��,����1�d���E�t�;�n�Y���9�၃ק$t�����t��a$s���P st `g��J��|&���{0\�����ws��ԛ�f?�yS=��8��i�z�����K�ȥ	�������:ס��%�m�i�Y5
��R�pWvw1�  �=85J�d������cq����β<s��2o�b���#�f���U�uX�xN�$����I�Y��#o\�Ѯ��1ԭ�m'{�7C(�v�D�H$�Gn+��=�xF��xu{-5l~�s<�\��FRF02@�9�L}��b��{�şù|3�G�5ͼz��?i0�HH����7$��s��Tƭ�x����n
@ЗC�/�I����7g�uό~�Y�������y������|$��$�J�]:}J�x/�k�
���d�t�2	~�m,q]�ywIo"�B0Nv��NI���N�Ե]^[���+T�?�T�Q�c�� n#=O��� ��.�q%���mFx�Z�.�ܹY� |���}kI��>�2|:��_�J��$� �	)��z0+���ֆ���ڍ��,2*2��Q���#�gk�'�ǭAe&�<����א�B��U�vO��n=}���-݇�t}?Q��d�~t̂T�U���2��'�[C��F��xc���Jp� �\d~�d� gX�1mp��A�5sT��/#o�,0��������3�)����f�2BN<����x��}��k�k�Ks�е���m��\�8޹�S�U�wk$�V���̽T��ob��I�x7[�|�SEx���4�2��$ے��o��+n�K}b�-�	�2�#�ɊF ���� �Fq�KIK�
{��W5���z��C�ٮ��X��c�W��aӎ����|Xl��59ⷒ�,.�6��
:�3y�˳�1������F<eJ-j�
��<5��G�_��]X�Yɪi�"�fI$��>x���d���jr���{��'bp?���+�P��e��<Ti�A�����
YG�&	���z�Þ��^U����D����'<����W=7�=pۼlb�$aV��W��2j�.Y����>��K��7����l\j��d�B@$  �
u�����<qվ�6����(�[�F_1c<<��~������w^Va�"8��#���?�ڻ��5I�m�n�e�Ţ���O��k.��*�ԎM�^8�SbU�H��5IXͻ��,�d�uŹ8�5;�"��'?ڮ�i��R/�e5�6�H_�t;O�:zw�ŊH�?w�����R�Ie�g�^U~��V��͏�Z��g���c�G��8#�K��Q}O0����р�z��Ц��&���Ȅ�ݓ���柨Xi� ��,�q�+[^��$K�,�7ʛׅ_\9�=�Y�\�ƕ�;� ;/ �y�����	���F�:1�I� g�<��T�cBc�@�c�@S�y���ޞt�b&Kqjg
�@ُ�ﳜ`���+3Ѓ��ą��1$��
�w�	��ǵeA�K>��=���	���' 1���s<:���B��M/>�7��x��n�NzqZ�iҲ�X�Ӳ����anX�� �������C.��Q��f�k�U�bl���C� ��ӊY4{�d
"Df@JG `�v��}j�f�;���Y�b̬�;�\�ps��v��zVM� ������ck-��v0�<�O
�0Gq�9t"}Ǉ���$�d�����܁��:��+3����������q�wN��� �
��x���<g��ͭ�ce\�e�
��"UW밠�������5d�щ_n3� �eǵD[�3~8�.q�
��L��Qr[?J������@�4�J��֦�JtM��AL
��X2��%�)�䇎ة|��,�@�I✱�d�?��Gآ(��8� N)=k��Ŀ��q<g�2gl��Z�QAn�-'*�����R9�
}��Ǩ5���*O��7F��L�f�9�9$v�歘"C%�0:��
��\w��������|�Q�`�A��׏ƾv]S���D�����J5MkT�1Lg���Q�=��;�s�Eq����"ڣ���7Q�-��f��
����Or�g��u^�|�/^�e�6��}���_��?xd �I�_�dq�����v.A
}9
�@�[��-�,/�T�ER���0Uy�br:�\�����_���,nc���+!u$uh�w�����9Sٙ�Yْ�J��og��-�;p�c\W!�r8#�j�} �Mq{g�y�G�l����e��}�T:�����x�Gk{�c.O����3�א�:qTu�=�����:8�s�p<rH <2���=ir������~&��%vK�Iie���::��Ӣ}G�[�G�$��Y�2c��#[�r�גϸ܌�~$2�CoxZ���"1nD�@qpǦz�V�ޥ{�jdӴ;]Q���
U�8;H��q�!ű°X�MN�砎'Rq��~��h����-�;jB{�����w@1��x9�ktdA&��9�#\�[>��-�s�4N	�g]�$8 �؂V��ϕ�5�_
�[K%�Y�-�K�1���' ���\��_.r+�_�Pٽ�M(G]�ۙ��*ߐ�r�H�8G��ERd�X����}�0�^k��3j��~�i�G�j����{��^8�)	��q�=ԉ�^f�N�y����-�T��:�m�mf?�ݙ�L�6��҅�dɏr6� �����ag�m�f�������,U_9� .G�+������ˍf�e��F��bU�wy�� nb��
���N��[��O�T�̅�x����=�zW
����)]^ǁ���0��ok��\�o1��b��t'�#���V��N�qC�>�g9�ـ�����Z�P�D�!%�/!���
�K��@<:q�S�l�����o���/,(Wp'�0A��׋V2�֬�w��j�z��
�a�f�<}�iI���/y�,v�y�/�[#�뜊�{�\����x]��p�23����ZT�^���JV���l�o�-���m���s{ᝏؼxZ�m��@�̏��)9�,@=����%	;md
��A<3X��l.#K����m���p�{�k��t���i�cs��*�1d�~�aA#���O
F������PU"�������ù��F�N֬/�དྷ�>،��r�`��򃞇?�a��,ٶ�h��tF$n� ���=j��{kF���P��"1�q�t��:��1�6�u(u�=b�nb��)�D{H���(Ϗ�g��z���?���:/m��������\�0�����k���k�X�#yRB�⍄r2g-�8�d}+��~!�k�"M"�YҦ��0�����u~5�$���r�Ȭ�
y�d��� 9ؼ��w��r�B?7G�H���}����@��3����yn|�zI�'��R�zm��Ķ�wwsL#�c��q¨�NpI��Z�Kɳ�/|7�F��e1�,������^�U������.յ-z��_-p�,�s�<$k�< =p+����φV0��ƿ��X���;�?���LӵFY{�.��b��v$k��Q��2rN3ֹ$�"W�+�.-S��K�>���k�B�]��	.��b8�}���+��;�O^ �e���M5��X��'�gp�@,{��������WI�m4ۨ��g�԰�=+&�@k�Pԯ�lc�4�B�������WZ�J�m��t�m2@�Η�-�����q��`j�Ƨ�h�Z��� ��y���y� �sU���$դ�<'�,�]��:��$e���.c8$�:ص�m��u;ٌ�?�p��q�0{���5�Z��4��:�U�$�՝5��t�Icv��-b$�C�{�,}��k���+j��֗�5��Rf7Y���!O�p��k6-Z�T�S\��D�0��!ȅ�ry$�'5�.��
=���O��ݧ3�a#��U�b	'�px5J�a�:�R�{�e���-��=/Z�R[�p�Q���*��~��W/�I�m^�[}c�|�6;m2@�u�7�#��$qֺ-K��X�i��Z�y��$�q�< �G9����C���:�Kuitn�O5�H|�/��~g#$ A�X�畬�4���~�m��^j�kw�&��弹x 32������5��k�e��mi�BTH%0�y�z�� ��
����鴞pk�վ,]|Z��-/5+}@F]#̙P��,IPO8�$�W�ĉ��}�r�$�Ҡc�އ q�գ����EE:ή�-o��KoHY�~�+d�n{ �o	���
��[<�3E��7��&����iWZl>,������nl"�ǜ0v�W8+�?:�E��:`�Rdh���?Ŏ���8��^�񦡥\�*����A�3����
2B�Os��e�jz֋��^�ٟ�Z$��<�T��à�Ey��� ���l�n�[W�Z�p�b��l,��`x#��f�h�%x�̸�X�G�3c<z��u�8<U�Oeu�m�0��`��/�#8 ����k9sY����W�=OM���>���i#"(2 ��9�{zUo���x������U��5�L7�����x }y���ѵ�Kp#/��,�}�s�pH� yZ���
G�t�e�)���u� �gr���[[Ie`����.���熓�����4�JYL�]wy�3�76��;��_�xJ���-�C�5���d6W���F3���N��q>��oŭ�G$��	�N;}j��AJ6f��J�qw�\�<�#�Q$R2O^Ǌ�ѧд�<ͥ5�`��k�A�RYc!�R@;g8��.k�������l�<6��/�N#8�z�k����wv�Z�]��ab��yy���g�$�{sI��i\�58�5m�o(Q���6Ìs�S��<���(��m����VV3�G����6O'���{׃�Y�z-���Mr�D�tIp�#k�����՛O�6�>�lodqyq�kؿzK��aH(n}q�T���D�>cr*�y,,z��;G⤟ҬB�:Z>D�>@dp˓�::]��<o��b=�+���_1.���E+��0s���TW-5��-�yǡ��tZטϖ����� H�-�I
]�v�ņߩ�����݇�<&�g��FU8FG'%��O^��=Z��I��Ƶ4��U<�21wۏA�5c�^!���+��]Cϖ���)f�6�#��$ˡ��O��k�h�N��&�i`ڍ���ZͰ�$~[����#$d��5o�>�5=fM
��K��L7
|Z�n��/�i��"kH� �.������ċ���n+��^�i�^�<]��]H���T6���Yx��@�X�9n����g!�iQhZ��ڧ�!L�8|ʣ����8��p$��Co�ą���,�rI#�@=s^��.���u}4�<�m��hߞ)��N� ��=�cAb�!o!(��R�c6��H
���rx�ȯ9�.�K/���Xr
�PjT�ޫmrb:���v"����m[:ψ�n�k��� �#Rܜq�Ұ�Ƨ3�9%B+X��� �������$��Һ���dfA,1� �,\��u��:�-���5'����1���f-�3����b��������y�yѶG �q�ǵq�9*����0b���u��u�j�V�3�v�p��7>FXs���z�>2���G�-���DWc�$��`��k��u+���4h����3���5}sS񾬺���--�@�c��Ċn��$��+�Bu&�%���4�N0N+vsq������F�D�_||篹�����ttk]6(役�oZ�#
^7ݝ�cw̹��yƧ��6��YaA��q��g�*���(��B��{נ�����Iz����[�DB�r�`z�wq *>XW�X�S��$6}O�Rv.��Q��}=Mld2���a'*/8�ĉc��i��v���ܤ,R,é������A3;<��^���#^��>\
�2Nv�r}+a#1��Os:����=k��;����n���G�݇#�zʎ9/$U���|��R�/c����l�勤͎QK6z��y�N�V�� �4�̃��݃��3�j���-.U��5wųWb�ۈ�y�۴玤v�ߴӼ%��M�Α>fxw��8�Cc� �R�LǺ񏉯��5ಎ�!`��H�y�Ϧ:�̇J�f���"���N��u��@��IY��y$M��\�x����d�
��A����hH���z1�֦�VO��SXj��2�L�E]��1����@����
X�a����ϧ9��E.�oZXM"�,pGvI7%e��n��v�9#9�#��}�-*2DQ�$�m���� �r�CU�s
ɆެGAѸ'��~'�oLZ���偆�0|���' 7��թ6G'r�������u7���9VG��B���6��=NI����OƟ����Re��c
���z���;[ybW�&�WČ��'����W�Yh6
�Ƌ*���C��q�0z�i���QU#f=
��Ҽ;X�i,��wn��@���F�pB�����}뛞�m>y����H	ܤz������2�����S���N�M:�|�ݴ��NG�6�ڥ�8���Һ-GM�Ɨmc�\j!0��Ӣ��[�3��F���^�=a|9�MWp;;ا|q������5v2�1�s3o�ƦFC�#�9�{"S�xg�<M�?izn�c���vX�f�b�xۜ`��$�O�^G�x�V�5X�	.�G����E��G �� �a_h
�����=�+�\�h�x�{�
��A�:r:�ҙ�أ_�k*�L��A��䓃�⪀^_1 � ��w�CץD�Or�33ɹ�d=I��2l�.�S�M���8,
2�\v��V�Ε(���������>U��@$�G?�j�4�j�~���6�\�X�:��{U���w	��-:�hK4y��pG^	>ޕ�����d�54�"}N���X�2D���_> ��)��#�Ұ���k�wF���[�8ޡRu]܌��c�<{�:/��]EDFv��� 8'�Q��F�Q�E5�����Ym�c���z��M�b�M0�h�7�1�"HB���O��Ͻnb���to��.�%
�u�Z~��i7�͡�
��n�����M��j7pj��[I4@C$������q�ZE'�2v���a���[칍���=Bd�����������E�㭜�X�{w'͑��rrs�k��O�㼝�M��R�)r�;���ָ�o�:N��l���C���\�K��m7�}k�X�-�f�l�L��O#�i � T�@b�*z�:ƽ�
z��<u����ş؟K��]\O�/59�Hx>��j��i���g�tA%FI�{��*Ή2Y������A*��$�˽Y�=~�K�����wM:�@Tb��@��k�:L�������(M�QRY�a�q���f�� ��4Ȭ��$�Fv
�O�_��Jؔ�ov��
R�t��2�m�6��8D�[XƢ�Fӓ����y�p3�1����u]~���HP�)�)>��j��� D��ީ�����H�8����
j*(NNZ�kHO�pr	�1[����X�!W]����9�f�ە߳31 ��՚���'މHv8��� V?:l�������w2� �2E5��]՟<�	@�n�O8_��Xg�o_jd-A�������� ?Π\�EJ�1�I*���˚��k17#g�����$
>G\�c�3��5�]In�����n� l�b�%����� ɦi�cK��eagѬ��;��#e$
葺���U�D~Sٗ����;ˇ��w-�!{p�up��\|�q��`����/���h��x�T3B��Q�L��(o����B�C�j�=;��Z���n�15� ��ڴe��� �[�:)Y���Lr#��Q��B]
���}?QAoke�^ŬG�JYnV"J�7̀��������ƕg���G̠[��q�:�B�!�~A6�Ӗ���4�m��o�k6w�m̍�Ip�me � @+���U����_�l�t�{��f3�ȑ2�s'9\���u�������^m���9�j���Ow��pX����C���9ⵯu=CS�{��6��
w��FI���B��.q�7+"��QCs$V�w��`8�}I��h���s���(#�f�rC��8'�|�%�71�8�@�0
�����?�o��v�X��U���������QN�EIF����+�����^�$��\y�`�����<y0~��q��q��/�}�򽶦�
�m�N�0s��5��!���v�т\\n0cye �rG;B�}ֻy/&���4rX��[Es(�b�W�V:�F^H����!�R�2U�r1������Փgo��м;�� ���H�n�J���l�W=�=k���7z:��ooƵgkh7ƙo1ܺ�9l�!2	��6���]�
�7
�� g ���
xKW�..Qf���x)t v��.<��nON���;˙-��ω�c���#�-q�M4������i�A�d��8�8�ȟ�zޝ�ۭR�kt���da����q�zW�>�� ��+k6�m��Hn.�w<�h�I$�
9�-5�
�Z�7B!���;F���s�Ep3�7UxD�Z�:�ԗ�:�s�����u��ڞ�?�$��7[]2	,1�Pzg$��+ξ!��O�u�e�h�5��̍
(F����A\�Fx�e����*N��k�z�@����$���߽t>��_��k	����ɒ�� 9�kj�B�� ��#��N�ǋW��"�	' �2;WA��xcO֞_\Z�-�T�Y&O0�#�q�z� =�UJp��J3KC��}�k}0�Ȉfr�I&�<c��) ��3\��ꠉ<��U%���
q�����E���,&e$K#��|�(�q��W�k^������׭�K�	߇r29���*�ՂvZ
��u	�5�ZXc��-�$�>`1�� �3ܚ�+{�]��ޓ�˽R�;H#��s�#�UA9s��`�qVu/	j�+���K���<cܞ�R�M�.�ԥIJ�8% �]�Xn�{��s�c�I�������~Dr;��@���ݺcҎi7�M����~�ukr�4�e2\T�A�Z�a��[����@2d�=�=��}�xz��Ƶ�%�퍳$.�j�jKm\�0��� �+�m)�l`�%F�Ο��l�`���U��Gv�����[1#�F�$e|�v���cw��֜7�D^u��F<�C�� �[���YZ�����(�Ȑ�/�f��J��Ǳ�]�w�M��G�?�DK+ry���)�/a7%�薞.���.&�n`���ހ�(w�H<�>��u#ǐkzѣ�����#N�
�m�|c��<��^$����/A�.3ֵ|KZl��Vg���n�$��jT�0��Ǻ�2�]��������n-��r<�A�Ic��x�s{���t�+[+h�/.�i<�2�P$�  �`W�O�MJ�R�4�'h'�;Gx^|�3. (䜏������GU��*l�|.�x����6X(��0Ѿ6�##�7
���q�Ӹ�D��"d9'�#��[z��c&���G"�%эB��ҡۧS�=+H��A;�w!�b,*B��͌~Y� u��@�`2I_�{�zսW6	>r�ࢸ �T����Tok���mn�~p��2y�Ec��[b9W�F:T�K
�c�	���$�V���!��;PJ1��!N@#����$��*�I��A#�1��D'�@}�@:yg qڕ�8���;�������@Ҁ4�}���������wv��<Z�,�X�<t�Gq��QL���)�.����J�X���pj�����ki�- ��#�W��
���{��cx�=|��o�\�`��#�p�	�j?�����P�s.F{�_���9���<w��#�~�k���[[^��g	$j8�����?�y�ۃ䆲�����d/��V�U�x{C� �DT�H��=ԁ��F*r?�9�
��J�A�����K������X"eR��=��W��x�S��}6�f��L2f�2��gُ�>��(.]NX��hs��Lچ���E�h��oj_�d�g�p@��Z��|;����*���0Q��g	�l+.$t���ȣ8&_Lz⺭K�-��!]���X�����{�3zhZ���ϞXԺ䒎;�?�Uz�3��Y�Д��w�T�dw�3�[�4�z��e�9޵�i���2�%C�m��gf?)��UH'�=����̹�9��]42�s�W
�r��G�*ϗT���;*:�n���q��
��Q�Ҭ>�u"�U����7*����3ּgu��H�c@��;����x�Vi��eβ����^G������*폜�;��@*ܟ��oc�o�X�e��̒M�Z0� �q��
�cٸ�m/�����H�}��$83FA������P�Q�9JOSצӚM<L�D�M�����O��iX��S}��Y*�ɑ$F0 ��+�5����m��Ӧ:��Y��H�<�d
�ダ���\���CV�#�Wa`�Əq
�A����?~��cS0A~a&��"PUA�@#� �����~��@����x�H�/�#�iWh�?i�I�d��rA��ǹ�W0A(cyx�V@�Z�v-�?J��`��P�i��?vv�<78���t��jb!���Ġ܄��� �㹩���);�Gmy1�%��q*GIf�r�p�`c*>����-r=��Wh�8������G'� �I|1�O;���(���)ϿZ��w�G�hO�ueu�p3ۭ
<�� ���DS����\��6H�y�'�\�m�E'9-ۏ��k�ҵK�M��r���������F�'8#�kG[��ͤ0�ܒ����*dP	v��u��
��吥I�sD��b����]Y�c��z戅�'12�|.{~5P�/,.���3��ʧ���Hs���L�d�MmE�GN��q�����ڷM[S�d����ufa�❷*��'q��<�Q�.VI���e�0Hҝ8�^�5B�#�yhA,��� ��D���ar'�(�W�s=��ú�C�=̚��-d�{k���x$�e� ���ݳ�=�����S
<?ɫH�Y��3���W]#LH����I=��F� gڤ���G�I@ִ��5-�d�?vǶ�S����FKY];���n�1��f���{���޻� ]�f;�=0kH��7;'g4����;�$�s�5fX�@1M�p�*z�ֻ��c@՞(�Ҧ�9�7$;����q^$b)d�l�q���d����C�E)&k��Z܉��Ws�����px�{V�ߋ.�Q�fE�`�L����Ƹm�����u�1͹�$��=�5.)�_3������T�A�\(Y1�=��{UK�Z;T��e�ۈ\m���b�-ncm�N��.�gi�׵B��4�B��sӟ� ]$����1�N� 皌ƍ�?��ʭ�i֖Kfg$�ϑ�#�~��g��]\��G!OV���-JzV�Y�����tgC�ӂy=i5��^�eYD��� ��~U�p�LJ�Tu�r*��浌��b⛹������1�S������9Q�4ا`�2�y�@�?���$>9Z(�g_�V$��z�yC�o�ڟ��rX >a�r:sHc�m�a�Y%��~�+��!�G-�1u4EL��wΧh �<��ϸ��Ċ�_FLR0�^{_j���`A{R��l��S�ڕ��	y�eo������OR�MheQ�4�UK �#<��c��e�JD<�޻���Jҵ%��l��:���+�T���$e�\�.��VE<�=\�����,N���R+�+����-�/�����31��84I\I��,��V��Asb�nY�?��##ӂz�%�ˉ���vY��Q�Үj�%Œ4r�v?�u�O�5�n�	M��Ǡ�KKhR���ܮ�HM6k֊/�N@���b�Il^7o5��3��O�]�,�j��	\m��Z���H"�O�z���}+�������"灴����/��&S;p�*�����
}��#�E�u:[[i�
0�� ��#?�miZ�m{�3��3�8T�X�{{W�Z��֟�i4Λ��ݱs��x��ҡ��>�����U��Wrikb,��[�� xupc���2����:��?�>���n��`I�J�D��^	T1!�\���|?�����}7��D�;��m�A�_�؃������u�ѵ���y�C�H&�VӤ{Y����c�A�<�If$pk�um3�0Wгu>��F��u#4�3N�#'$�s�`u�8�2��>���O�.d�]`D�ѳ��F� ��O'2�=oľ+��_��������k�������v$���Ο�� ����B��&��+ܻ(+�p遛��ՓU��p�ȶ���ǗhB >nN3ל���U�E�i��nD_)b= ��q^v�-�V����B�c�Z����h>�o�5�/W$��88�UJ����׋��g����y!�G7�6�\`{U
�f����Zz*�F[2L�?v����5���2�Z��XHÆ'	�,�� I����o���Z��|Y�L��U� �+���ݷ<�SV��-����C�k�|�:0	(+fE/q)�G~�������=KĚ�kZ�ٛQ�d���DeP��� �Ni�>�uo_AqsosqF@7o��I���'�=�),m<C�^�5�!māJ��.�O� ^4i�.f�{�I�ۢ4���R�!,1�0Kryc�,��=ksJ�M*Yo�}�dN�˻ �:aFG�ďE��Y���:�m�.�� ��\皛Q�cH�M�6>Q*aO���֛�6�&��r�M���V����N���*��6̲�s����>�J��)uyk6�� �av���P���d�ӡ5����yD7/3Y�{
9Tn� u5��X-ԥ;pR4� H�ۀ>�N<��K�cfv��H���,Ĭq�
�>����=+Bx�����M�I���N�h仉��������1��֥Yvɕ\;�� �?�α���f�{>�m��Uet/ �8h��fբb^�cʕF��O;��z[�40�l�#rWb�����[��`���4��oL�I9��U�{{��9H�p3���1���TW�Ѡ�A2���'�l�¡��
�7{8a��
^�銨�kF��9}[����ߥ�w*�l��$����� ?L�]<9ssa��\�� }�9$]�܇8<�~5�m���7�z����C���-"�pGBCc<�f��4Ő�Aw�D����3 e;�6[��p>�Nv%B��6�d�nv	r�!��<NkKK���W�-��/��|�Da~bx�==3^��=��rb�b�4a&0����@�O�kO���5i�ޯ"�Z�96+ 
O��"��YM�KS4M���+Fr
�@���Wm���k �D����v����ٞ1� �� t夰����;�h	��6N8���ܚ�N1J�9��+*܈�c�(�B��S��R�����u��+ek�\G.���s/op	�֦�f�6�v��VI�4�:)9�������35���"&,c�d�����-cF���k�U�������^p~[^��[j
L��$ϯ���x|�[�߷���|8ث������S{	#��4���$A]���Χ�;�
����r�[}��c�T�,����Utٮ��&���[��Εw�C����/��2�I�U�H�]��6�����AJ<��~�'N��5��
� 0�<�ܚ�8�uKkx�?�O�+n���� ��9�IǥX����-V���2��f
��L�d��Z�
Z�-sn�E i'eP�� �9��k�>knR���j:��>#ѭ�%�3F;�I�1=�d����$���C��^��"E
[�9�G��s��g����Z���a�F��T�3��������K�8.|��0� �9�G�j\U�zŻjh���#?�@X\�<���Җ[w[�<�$1�vǒw�� �Q��?R�[�H�e�đ����H �x>��x����Sԧ�ۺ����P�̔�Br��H���R����g���K5����ypU�9�1��V����f�i�3}� .��3�p���M^+c'�m�$f�ݺ"\�2NN9ɪW3���.�1I�>I~	�s�A8л���E��@�"��*ɴ����>�ۻV����+ӵ��㴶�`�d������W/7���Q��E�*���k��9eM�i��$�i���Fy�}��>T��1�#�s�]{�Ln�)`h�,���y��p~z��<�R�-�f���Ǎ�p;cȮ�C��KK��a4Q�Vo�������Eѥ)5�:��� 1V=�2D<a�� �X�p,L"���h��ݵ��Tu'<�z{SL�m���-����|�p�N�nq�:�ޤ��V�m�RV�����i9'�	���+4�dj��*۽����{'�j*���Db�F9��&98�'�~�ien��Z�[+N��(;�~x ��j;�F��F�+��YP�'�,�0������nF����C���һH�"�o$���{x�j�~�&����2���߇�3�6�ڲ�&��G�0��� A߶0� Bs�#{Ş;ռ�Z��[ǥ���xl�]X��.�퓎�\VG����kZ<O%��->SEՖm���#>��渍{T�� ��3����P���� ��!&�"QJWd��2�}���������$�����=G5�x'T��	�{�dcex�[���"~6�p�����տ��o&��2���B���;��c=�x�^���o�׷�Cq}�ĢF���xU�'8������8����u�i�Ox���i����H^1�c�rN���4�I�	%Sw�X~UHd�#� pFkwºǅu�A��NX<��c�v9ۖW��р���_
����-�������W����c<zu��}^� ���ܸ�IŬw6�쨭+[�w����<���
����Ea�7E9��HX"Cq,2��?,Q�K�pGLu�kە��%�!��ghx˲�`	 X����jV�v�7��VI#�)" q�d�u9��{Ҋ����ŗ����G��L"f�e�ٳp̪A�3�7���d�t���qrѬ�.bs�I��C����=k��-4�2f��{}�걂�#�Sp' ��צ+N��|E5�.��B����N��c�995QvWH�+��%��=��kp\��]�9�dDQ�Y��\����uqa��s��c��+3	��Af@8��8��Dԭ��o	��y+4g
Z��t�"�;�/n�א_��U*��q�O?�Ui�n�u`(���Lf!T�����㎴� ���i�O�-��1Ü36��#��X�sq�G`�
�{g�Hm�b���s�&�$WV�t0��(ɐ�3#��G�?
��Y��x[�"���ZD �|9�F �^]l�c�]Fq��t�fx��Nʭ���w"�[ys�>��}��dGT�Xn�Go��q���o����%eA� -��֯Kn�-�yK�,N[ue�_�@T�8�D_Q��^$��������Ǖ�#ݺ����XHd��ޝgM8@�Dj�ۏ`	��I>�5���)�`ƨʀ��7&��bE��B�v��d�{9�]y3ʠ`ȡ��`��N��C4���U�H���RGy\��f=I94�A����$[�P0��B� �����d�b����)��>�I#L� ''� #�O�I#�#���T�B,��!q��f�\����j9��������)��	�BfeO�`^�Y$˷p��4�m3#4�ň.��&�6�$) ��L~�^�?�n�}7�Zj�8h�\# a���}����7Ky�Ђ�J�O�(!�`q��<VU ��\$��k��M�J�ְ]Gu@�9|őz��R+��X�x��"���1���Pzd�qU�⬬L�١���ZK���^6PU�럭z��O�:?�t��/��m�WEndH���i�@��׊'̸�`O�T�-ʍIEX���z����*8�ԂF�L�b�x��"*��v0%W<�sǘ=ĭ
@��4bʤ��8��~U5��Ŵr͍ۤ̐�yRGC�^�����m�8�ׯ$��UEYXRww#�[O(�s����A��S�����U��6�2	� �UC�P��3�"�>�f��i"F�9D ��08��Q#����s�H晰������9���(L��V�lq�m9��ӯ�jM��K��?N�r����Me��� l�o����?u $��'�>������ח�B���2����Rj�]ǆ5i-�@�+�l%I��n��G�{�28�[�h���hR���#�i�n�Ӽd.��^NJ�A�&ҥ�$�HH����s2Ń�rJ��C�kx3N�lt������.&F�|�T�^2Ŋ���u�YYm�d��TR�U����;c9�x���gt�4Q�L�?�����VV~��]�~o���~���4R�07�q��J>k�m�D��������=P�M8�U�;��~ә����?�V���/�^����h%,�,�w���^܂sN7ٓ&��tmb�O��n�$J��(�8$�����k���4T����H%��RDrE�+3v����\W��x�Q�a�W<��>�o&e<��P��8<�SxST{�V���[<Ћ�vW3E�U��Jd_��zU��D�G�i������X6<r�6�Հ;F9{���r�I��m[�^*7�on� ��q�$�m=9����L�`�$�\��ZGYQ�r�|�dq��U/�.���ht�^�$�h��2�� ��@��
ʉ2K0ߖ�~z{N���2Ǡ���*Dc$�ǜ�?�u%��b)$����o`�ۭX���	��%�8�:昇8bH<�a����cH�kUg���'�\�ǮhCe�b�n�H���r��B�2FG���q*2����&7a�����Yw�閐C*�B�]�!#��r��ܝ��
�MOU�v��Kyt�1�]aY${TB���?��w��ڒM�����V��41����`.�5X`�؎����f
@9�g��Mu\�1#�R=�qN��AP��$t�:P�k��K ������{H��\|�w��N���-�c����(�����Q���Q w�8�LIp��<�!N���8�j�rv$��0n�P7�D����ܒ{T�����g{I�9�SW���_��y#[��L��H��~S���<z�E�6���tB6b���rό�>�9�q�d�-�>\윱��O8��}k7Xh�Gn�0G<��2
G�Fs�����[�J�۵���}�W#����f�aa�4��l�;�lF1(S�9�J/MBW�I����-��q
���ċ;�c�q���s�s�61Z�moc��o�DWQ�e`�ȣ!�q�Hld�_JM�@]��I��+7-*�I �Y2���Idf��`��=;��&��\7~M�+e���Ct�0�=�o�4�#����$��b܀��ps�X���w��x$Bx߂	!�#�ֈŽ��-�Z6��˨hR�\�!� 	�o#��lqӜ�(oc�l�{k�$s�O�#W���P�ɬ�SQ�P�/)d�d��l������i�@�/��$��O �Vꖦ.�>�u����r�%8��:d�l�kK��!w+2���� �ꌮʾZ� �'�,��d8f99_ʶJ�7�,�2�+"�%���v�'�j�k���.7�N}=jy-��G-��Q���+��8�d��N���ʾX_�#�Q�V�͈�1d�/8'�}?�iX*
 ���4�8a/�q��Y�i..��m�u4���u�3��E28�k�'�{T�p"ɾ',���x���A!��B�S�,̽9�R,�0�G� ֖���CE����,d���3$@Àpx�zpy�z��1����b��>Ԃ�}��N<�݈�^H�<���իx�7��i�Q܊[�5���)h)��nGCI�I8q����lX����ۑ�� �7F�?|w�"���8�s��]��ux���x����$���!��t��*	e�]��n#�?���a��X�݁ƀ+���m�$�l��4��DĤg��A�F��=��$3����z�i]l;�}h�A� b\}jYbIB�HO�ӸX��$Ӗ&gUU.�@P$�Sv��d�{��D� 
Dg���ߚָ�}'Q�<6�.b%.���.7�}G�0H��f�H���Օ��_����^ԓ�
�Fyby?A��
��[c�Bd\o&B@������m�Nichn��u�[$�q�����d��H��?��C8<���/t+Y��ᦀ������8L� ���jG[��k�*F��"WVe;@¯ �r9:���iztW3	|׏k!��f;G׎}�hh����c$f�6���ɒ��c�N<JoErV���kKp���G_�x�C�xn$s�Ume��ٍ����G=
q�DwCoAt���</�a�D�M�$k��(��*؁/n����v�B��ѷ)#���z�Tu'��v�8綺�+�:,��.�d�s���YoR�x&&P!�)�,m�>�rq�m7��̍:��[�V�ƒ�1��`(n
�g�V�G�I���\�l��L��r>C�_s���I���֠�]��y@	y 
�,���T(�%��8���Q-�����B�Q��;�繇��F}@�$�g�K�Y2 +��ѹc�c�T�h|ߙ�r6��A�H�1�*�t���a���0F�'�� �Cwܸ��Z$��(I�0NF>�z{��kz��&$X��� �5ܫ� �|��La�?�r�&�
����99��O��kF��βv���u�y,dү�8hd��� ��Ҷ��n�[��$���dّ�g� �px&��B�`ȃ ��_�u�]�z�)rm�����YC�����H����v�$�Y$�[xaR�.IvP�u �Y�$�X��K�$6�`}�"����a��>�� ],��X]�R)6���C��Fܑ�8�ߍ��n��Az�2��1yc��b �@\��H5���c�+�7�ҵmV���4�>Y�!9 ���u������Q��Ვ���-�,�N��9���./"��7�u9���͕�&>e>�s�Zf������VZ}��n�+ƒH�q�N[�����*���Z��V����S�XB�+���"�J����^3�\a��]2Oo�U�ӿױ��������6qX;!�����͖��}�x��^�bL����Z�Mnc))j�w���V	���q�H� ��		�<�W'�qL)sRȱ*�Oa��U�.5b�2 큏�[#2���"<K��AoQ��6WM(��|�{�jظ�YU���r���;�I�	�=�֝�/����l?�G:�".�w��9�d���`� G�1��՛xB�0���$��ɠ��H&R�a�#��e!��I=q����G�t��98���K鳐���7]��U���"�Ee�d���lL~Uq���唠$�p�p�du�j�w��b�NFy���z~4�20"�E�s�ք��ۘD2yPƒ��{��� *ͺ��$�����䊽}�^HЅVʰ=���sOv��; 3�����?jF ��2x��ת|?�1� 	=�k�����^X*#���A<*���y\廊��˾@	m�����_~�c�V������V�$Q��֑�Z��w�'���)�{ڭ���TD
9$�e'�f��W�����؛��$o]>�
J��	��=��M��/�k��M5��d��%H*T� ���A#�5sM��\��(�P�Zk���#\`��9�=���+v*XE�j�M++�)�;?գ �@NG�^�i�^�O�v��G�j�6븾�0����Tzc�N�l�N���6��j7,H�Yv�l�*��S�a\ǎ~$@L����!�e�����WˈEs�Ic�k?i+tFт��9�2�h�6��3��B	ϯ�Ҩkڌ��W&��MAT���@�y�ѭ�RC�w*��%xg'���t�}C�׶����)
H
���޺Z�y�A�~9����ѱ�L��K��\H8R ���β#Ӓ{yd��/�K[� �H�P�o�_cQE2[�[3��O#��b�DҒ���]�D�����o�[�����^M&
�2p1XZ��k"#��W��� t��t� �B�7r=1U<=�A�F;�+�
�� � *�&� ���)�۴���g=���(�j�gZ�/��C0���+YB��1�O }ޜ��5�x�6�}ޡr��"�(�U�9�R~���Gy��D�6yf&7Le�NW���+[D�u=*���7���!ay
�d�`zt����i���!���_/)�������UT�y�֤o'�.e
��6l"�R�f�yn�s:燮�}qt˅U��,v���q���H��eG=��2����՚5M��n	���w�?P��{���$R��b(V�?@�^q3Cim21U��;
��>:g��V<���R��'�%���A4M�8�u*T�c�� w���K@��dV(>������h2��)x�� �!���B�'��;{ן^j~!���}Q�d��
Y2Nv�v�c=�q�\�����5��+Y�2<af�Z/���'��Y��������#8�U�s���Y+�K�Ry_Z������n�$h1�PFI�Nա|.5[�5|�&I��F��2����s��=i4���+鑼�<��c�����gۚ��Ai#\J�� �Ҹ!s�>���?���VG���\.���\z�֢���qM!���1�8A��G^Ƴݚh��I�[]@o��2��T�uLg�<�c�G�i��FS�O)S$����;������y#����Ty�A�%G�q��GҬ��;A
b�g�`1�ϊ�yq��f����2O�ҋ���[)e�/�dʂw�����:Z����2�4�d��1���AR�Q��л�-���gc�����9#�>KE{6ݵ��d::H�����,�*M:ho��c�f)$l�ۏc�-G�y޿�=�ܑ�X��ݱl�����o;i����q\�����z֡a�C(H	S��w��5��%�D���~j��Fpq��]�ꩫ3�ppwGA��^#�:ŀ�**��)Ϙ�Kq�G9��N�Y���#h�H�ʖ<� ,����I�(���%�	y�*� )���g�m�5[�Ǜ�a@�����,�z�>��X��4�+���#�x�S�Pw���0lp�����=�\��sy�_&�o+���#QX|�~<��G�ĻУ�L�
�d�&n\6�~�����g�~�2у�z��:t��'��к�\��w��� 
�K���E��{
�����ҙ���l��ҭ5�9���8�i���F�3�l�9݊g��1[�ko�xV7� bk�L�8؃<��{�{p���x,e����c��2��Pq�ۃn=��ⱔ�'s�4���i�"g��;T�.  H0W�z��y�i����S�Iv���U?/�l��4��7���-�f �c7:�x
[�v~�a��v�z|gW��p�� ���c(�#q$�흽�<�+�X�(ӻ��Wr�B[�p[$��� ���T�@��� m�һ�_O��cY�B�uK�ޒĤ���H���q�H�7��RR��	�7�����9��D��� {h>�q��щ��sz%���i��aD��.-\�βE�+��h̜��iZ~�qy
� �
��O2�j��Lƶ�� Q�{+� g�ܦ9����.t�ig˷,��S=�~u���>^�q���I�D������3�I=O&�tM�X"�L��.���?���>�VS���i;\���q��^�H�U{��h�`<Q����� \�z��
,3��Z���ֶ+hOy��aq*ʪrG��rpy9�� :�˳L��:���n)�����R�T�Y��5b�}�����9�x$�u��ZX��'��,�,�	9�~���׷|�tvW���9����~}9<��_[�q�B���-��V��U�A��21�ӊ��%{�]�ߔ��G�k9�c�ݕ���SD�>B2�_��<�T�L�Hʗ�8�e�3���zcޤ�;�y$�rT�m� t�`��p9?�e{����4خ�<ۅ2M��l��8�?��k�h�ӒTfy,�!�\q��	 �ԏƻ�~��cp_d�Df5'	=+���7�ZI��+��If>�k���L'ihv�a���O[)�3�r��Q6�eFFC�����%c��Z�Օ��v�������T�x^�#���@�Դ=5���H^�t�ׅ�
�ʑ�*s�s�(�Q8�X�-s]���]�-��+h��p�� ���n�j����ZĿ틟�,W̠]����&<�
�O͌��S��\�[�\J5M[Q���"��+�pr.}���%��Ω8e�Q�h���Gׯ�^���I���3�w�m�?d�!�<�1-����ϖ�n��ňM-��a�� \�����j��0�;��%��Z�?�	4jȎ��#���`�׭,4�JSg8��a��;�Gr+cW�����]�n�˦�"�a�d��q�G�O��3q��kv[���'��0��r��wpEuF{_s=���|�J���Sɤ�]%e+�;Ns���xP2:v�l�w�λP������,"�0�^O+*��'N)uC��,[	PH
MK������x����@�[�Ĥ��6x�֚WBn�q𩴫�R}#S�����Um��C*Iۃ�O�_���>�a�ܵ���%�s4b� �A~����]LF�o��Ii�i�����Vv,X1�����{��<t��S��7�Fe�hٌ� ��r���\j(+\�M��ǘ�t:m���^�F��6H�uo������5��x��fe�z���t�J�V�p\��)s���&�a��Fm҅u8ʱ�s�f���頯L�4LɆ,x���/o�d2�fT�}3V�c��W�\��3�
�����G%�`f������5BhȻD�ݞ0ĩ�猎�7��Cw��n��k�� ܎=#W���h�Q�͌�q�"1L��{�{~p�+3�9�@��sn�w��[��<m�vW_�J�n�c]��*��t�m�?m*M"� ���)���(��q^1�+��}�V�횒+iu�<�M�� Gll�q]��.[[�r�5�����K�?�:l����$�I͟4�Y��#����2���0�pq�#�[?���w�������넶��cjˉ<}���#��t�K����yb@# ��1��\겻fΓIu�ե���<�d��A�$>��o�=Q��Vx��6�=O�V� t�y�Ϟyn�Z�˛��u
1�8Q������ ���7���6��؀pYΫ��c��8FRz���g�~ɨ�> ���:g�x�w�66�p���G�[�?�K�<�:}�N}��r��V<�𤟻��/>�,�]��R+KK��0��J�~V9����sJ��{�1�{��gi,Cr ��;���/-c� Un7!�۞=x�a��md��)��5#?1#�}2G�O�!��i��
����E��{�. 0[���؝�H7.Ҿ�,����lkb��E��O�0y�,#j�h UQ���$w-�P^izd�v�s$&�d���U;^�O,�>���@�W���;�Q�]�pd���L5�2#Rp6��q�������>���:̈́��a�� <��G��'�>������4�h�\��e�)���Y����o���Y�[Z�%Q���$)# S�qw6�6�.���HIt�ҵ���gQ�b�Ժ|ֲʚR[��׎�	� e�O���ҝǓW��M��G&�S׹� �UۨŐ*��I�5i؆��be�h\8�j�%Y��U���O�ۙ�{�Tu\u����nF���$�Gz�B����y�C*�+rE8�Wp�E5� ��1��ق6����{�&�StlǸ#�U�c�|u����Q�G�JLLs�G��48|�7y#��Te��wg=��?*���m	ƥ�m<���H*$�v �L����Jx�`���2+{Q�����Z�bpH��1�?����%J��+:)CK����}�^�^n�K����݀�~��w�^��yS]��� ��
�6������;p�	x%%X����g^1{4&���ѥ��xRR���E�~4ם䍭�u��L��ۉ<��v�D�#��#<r�N�ƥ͝�$�G#���L���8���0 6�ׂ3<BY`_� �ۥ[�)�G����~�2G��#9���n4�I����}p*�0���[	$ ����������${��������=�Oq'����R:c؃�]�TG��u��8�?����{R�LC$	� >X#�?@O��~����<��M<NGP�>���R�i�#|���FN;�ZZ�6� `M;"p�c�p��:�< @�5���$��)�G.��W����qQ\�í-�
4����	#T��X��.$g�m�FNӎ�?��U�;��=��B%��
�q%�0��)]��ֱu1,�ݼ�+f�ʶNAϷLw���ɒ��&��W��7702�p��e��99��R�:�}��)&��`�Bw�+��9�Y�Vv��O�G�����~��~��O�Y���D�b��.7k��-iI�N�E�=֫��\��0ڛ�'� d��	�1S�y�h��]\���	�KDެ�ق=�:�'a=��i���#�)�!�I.s� � ��ʂ�X�$��K���21*�t< ��U��{X�ݮU��]:�-@�%쪦2s�ې08��ǽo��]B��o�`n���n� �p�kQk�jB����d��	��3k���'������$-��ܻH`J��?J�F*>fMɳB���nu&���BD�*�en}�ۑX�Ζ�o���P�Q%�C�����b^�A%���#3Ms$ɒ��o`O$��� ���--a�F�@�/���� �\�*���B����u]2{�G��N�ٙwd&��!'�w5��<D��XU	�I��k�5V��N(�3+�H��*G��W�|=��W�lr��^Np �?���>{�e%N�=ϰ�8��Ir��obҀ8�Kc��W�� ���)W�(s�����Г���� g]ᤤG$�s�� �R����CWϺ��Z܉, +��M�����r9�?�eQ�2ii��V�$����A ���zn������-mn���}q����(" �:�p5�z������a1�:��I��=��U��U�m�F��I�/�I���9=�5�R�O���[��2��1��z�;a\rFI�v��]]2Z��4pd�pSi��c�z�{��,S�$��D�""rhV��x#��ꕾ�eucwݽ�WĎ����z�F�jN�c2� Q��owGe$E��� q�H=pEmA$&h���k��L�LN^G�+���j흜1�ə|��a�9*�� �rry��/�s�_�ir\49�bV,�=�+ʝ��sZE��D�N�|;���ib�-~ŀ����bh�0ܩݞs�U<mam�-�ŲF-bt�h�+�tˀ �#ֹ�+�����s$:|�ysJ�_c�'�
T�_�l�_ͭK-���s�(�TKF8��+�rK}J�[��ĪY��pN���:z���[��QVes���
I�ێ�J�8�vLTF��g(�.Gz���4��c
�]�(����9�Ǧ}jV�4{X�6Kq�h�W%WFn+�x$sޮ��Oy$��Ǻ6Uw c�Nr�������Ƴ���Y���^��3��$E�/!V�v9f �:s�3��&y�6�m�6ˁ�+)Ԋt�R��,r�'/��� ���Җb$Wmţ,�O p � ݪ���,e��DC���������E�Yve����&@y�8�t�p�y����V�9�1��?�g]�`��n�ȑZ]�rv�(��=*�۹���Q1I&
3�`8۞���?
�Ef��5ǟ!��YA m�Ցl��#���H`N3�N>���T�s%�[ʾM�5��퍜*����w����ζ����e����ıP��Q׮}9,�2�[�,V��+K��=CQL����+4N07���#�x�\d�Z�}��������UYeR�w���'�E}m������3�"m��-� 7F<{{�q����{mB;���kn%����*P�.;z�N-&܎z����\�Gy��Oa^��ܮ��xk�(X�Ň��)�L���'Е��\xoS���f�y�y�%@Z5=G�ڶ�
�s�MgHb]=�Q���l��� �����s:I��2í����	vB��G��;}�$~]x{�qD�\��D8\�s����M1d��{�Dr��[�rARB��֌Z�
K-LL�t�]�@��2�1�Lw7_z#-X�R9�ķ�4����P��$�CC,���T;#��3Ӹ��p�Wz�h,��=��I_���A��=:��� ^Yi�h��yQ����/��GrJ�'ڶ��S>^�7#��;&��PdS��?�U��kZ���Wd�߯��f�<�j��PN3����-�3>����Z�`��%m�f\�� �x��Y�������j[|E��Y
��=� ����S�&�F�Ι��۴�FF�-�,Q�=
��o��zkC(-�v��]�8�| x��{����c�T�?���q� ����@�3��Wg#h��#8������lM�p����,O�\���t�Ve��De� 	P����ϡ�������"�
�,w� p�N�;�ӵ6�����t�0Taʰ#q�G�j=đ܄o�? ݂0�A�<�T�r͈�.b��ճDb�䈣�Űw8�C����b��Z�� Ե
ꗦ3�F׊��e�>c��2��Ҥ���êX��q�if?��W����tܲ p�A#y5�}��ͨi-�ID��d�����́��x<z$ԛMXIY���mFj72�J�~q�bK4,�"S�3�`7s���w�W�,�%�YMmkqa�L<�B������N$�1�WW�ͩ�Z���Z�_�M=���!�B���P��р}3R��#�t�	�S�z�����,w(�a0	��-�q\�G�$
dR{��߭&�LΊ721���ߎ*PIVNA��#���)��$n]��rTb�G�j;����6'10��V��dJ�\����#���]�l ��A��>�J;�G�2�F9l���O{�ʓڥ�5f�p�)��Z�N�Ij�$�"�9(���[����n&�Fİ��6�l�:n$�u�Rt`�	�R;��=�f�a�� Ʈ�����v����2�!S�wF$�b�V�[�K��iV% �k�6G�n��W,&����M,�V�b���\gt g�����������ȹ�����2	�?�3K��愗�E�I
�NG�\�
�JH�r��5
�M�D����G��{ۋ]R3��Y�Ю�dF(��=�O�+Bн��\,�G��`ӎ����ox�m|A}����i�֚3�������r� �5�꺜?g{=z�Xu�Cqk��l�����Ӝ��Vm6i�m��v7Z\:�K�	'�^��_�$6�\4����@�.��H���/"�V�f�xrY�r� �p?�iq����A ��Z�c[�W����fKheF���e3Ӝt����7
Jŵcl��;J����Me�P[��
ۇ=��ȫ����q�,
���6�w4��EX�y;�L���+�*�n��lʪ�9���v
�8�Z�����6xz��m6u"]! ɜ���IRX�?.rz����#2ʚ�f�PAܙ8`O�5����"D.�ԙJ�A�9� �8�/u�(s+�� k��j�6�e
�ޯ�aG u����M��gmyo���$\r�q���}+�[��)���zc�>�$�4�HH�9\8+���𯚵[�4���Q6��H`�x��g�(��kJ<ђ!ɦ��OL���;1��x"s��c���&��<5��Mqs5�#@Ȃ6�H nb1�ns���x�Gk�8u+x7Ũ���	I�E �����?Z�jZr]�-�ag+%;������ݴ7QM�A�_��zSMmg�m+b��k��m\���=+�ѵ]r���iԤ��KuiA<2�.��P3���^��s�i�+awR,��&S� ��8'zW�?��%��.l�kFm�-���}�}EM9��7�S�N��Q��}@���-���"�k����+�$�}|Րc��u����Ւ)m�^FPH�Ӝ��F@�j
Þ��~�v�\�Oi��,�A���Wl� �<`c;�r}��7tj��QӴ�	��<�H�c�[Gr2���6P�L҃���@��<s׏�}?T�-�n^G�&�嵸B�9����x3Z�[�f�Ne��4�B�2��.~����;��Z����[�[����W�q��q�5���2j�<=sh�@��q��@퐟����+���h�MĎI���?�Y�|#7�WIӮ�0����.TpJ�A�j샴��Y+����<��%���«7E���]�N�[Y`!$`���
��>_���Ͽ<{���]���%W\y�����m�������K��<�d�[F�N� �j�Yꈅօ����ah���D����s&~�p��=q��� ���O&������r_�6�niwK� <��p>�ZK�Z�h�����=O�Oci/$�K��L����X5����K����nݮ���ǮCsc,�c�����==A��Q���� �D�$kV��M5�:��L}�� ����F�Y-�!瓒H���W��g��si$S�	o.X��������j�8r���p9��ƺr.���ˈ�V�ؿG_�g�\|����WQ|��%gbP�j�Ķ9��}�%�&�U�����Oʹ���8�YWB{t�+�J�mg*]������yU�k+YFz��Ӯ�j͵
���F�M���+(#��L }��.��<[������8�I*����ÞF═4��e��~�Ѽ=r������:��
��� p0�
�_Z�7=������|�9#��m�ׂ}+���W�д�cU�u�<�f,�<���~򓑞~�4��\�Z�x��
�}�ѪA>��{�Og-��d������ş��Vwj���V(O�
i��9�Ve*[	�.�c�Z��� ^=�D�S���9�c�9�A�f�>:]SPKi?w#8�
��f����G�T�%�A-�b��n���ŵ�մ���K�TH��с���'��ps\�~���akcu3� �lG)���N��^�b��&����V�$r]bM6Ve��~�g�V�#��-��z���ɀWhS֏��}�p=pA*��U��$�<E�.�'��X�d��*A��*) �3�T)�����]5����j�C}s��AI¡
�)g�3������-5c��[k��fr��<n$u��\V�i+�(��><y$��[٫r�L7Ybh�^
�Q�����&�^�R��k������P_/o<WC�xjM-m,e��p�'ă,�����TI�sT�k|e�,\:��]?����h�I�v�
��'w�_¹�ZYC�rİK�!d�۽�~�ٖa�j��<�Q�H�#����Q�ՍK���","MDRRMO","2023-07-06 13:01:04","1","","57","");
INSERT INTO tbl_news VALUES("9","8","Man shot dead in Bayawan City, Negros Oriental","","Police investigators identified the victim as Junard Barrios.

The killing of Barrios happened on the second day of the public hearings on the proposed postponement of the Barangay and Sangguniang Kabataan Elections (BSKE) in Negros Oriental.

According to Patrolman Glenn Ramagos, desk officer of the Bayawan City Police Office, policemen are conducting a hot pursuit operation to arrest the perpetrators.

Investigators have yet to gather more information on the circumstances of Barrios’ death.","2023-06-30 16:50:45","���� JFIF      ��ICC_PROFILE   lcms  mntrRGB XYZ �    ) 9acspAPPL                          ��     �-lcms                                               
desc   �   ^cprt  \   wtpt  h   bkpt  |   rXYZ  �   gXYZ  �   bXYZ  �   rTRC  �   @gTRC  �   @bTRC  �   @desc       c2                                                                                  text    FB  XYZ       ��     �-XYZ         3  �XYZ       o�  8�  �XYZ       b�  ��  �XYZ       $�  �  ��curv          ��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0���� C 
		

		

%�L��CR
Έ
�]E%B�6�*�2�, J�X KH� �Z2�"���h���'αD�@�S:���@R �K���K4�]��@I��QbZb��d� F���
�*(E����aB[X(	d(-�� J�@��Y KaPR�D�
�T��T��P�J��ԩ�泊�:��DiYj�-�Vˆ��"Ze�fn.Z�lY��m�
I�!@�JcEAR�d��(% ��Ki��4X�Y&��B�Q%���KQI,��A-KdXKdKPPSBd$�Vi�U�a���m,�,�-�hE���Y,X
e���Ii(,�D)JR�T!R�Ie!�Ԇ���i4�e��� @��T)d�Q%J�e@���Q*�j%T��	�����b�aD��J�Hm��-
f�A*�`d���� �ɤ)�����.�d��AsR��G�����њ�~s?G��E����nX��~�����y_���_��C��s�Q���b�s��!���J������7�Z~t���D�O���/ч��a���3�_�����Pݤ�jQR�(�Br��IR�Ȩ�
Ȭ�jZ�P��Q`_��0����40�Y5IK �,�P��0�i4H���[�p�Ih�� ��IJ!*S6�(v�_��w�ϾYfZ��K%,��������ps��|��;������o��8r���ý�N����N���,-\�L�%���ܱ�{1��;������:ҿ;û�]�b�(-�[.u�TY�E�$�E� [�o2��p����7�-j�X��E��J	`��l�%]b���m�i,�mP�����.nF�����BQ*�st�]l:�H�%3�|������˅��c�\�J<� ��a�?/��U��\} �X��I��.�U�;+��|��˟Y�v}.��y�J��=��ŦF��d�̩	-����DQ����Q���2��5�����y����swAy8���~���%�nm��P �!PY�*he��B��`r�=ؚɩ�Y�f�,��X,����?9��֫�� B䗓�x�g����.=rch0�|?C.g*q��W���Bt�cX�з4�����J�rע����f���=����g��y� Z�<���._W��N�K�a������Y�,�UF��������ʋ}g��9p�s�&7�o�����v�*tf��Kd�-VR�$VF�.a���P�Ye"E�.��Qe�T��`j)�����]l۫�
Ȱ�T]L�W܁`�L�%,%%f] ����y�~���\�I.���}���F�����>Uy۩�Ӟ����<ܦ~h |_�yl{�7���a��[����Σ?;ύ~�����������V]������n��O<��KdQ%�R�%@ ��R�Id����>͞_#;�cXK�P����-~��6��%��j(Ff�V*�-�F�f�A	r�BZP"�PY,��k(*�O=�|�7O_3zyFU*3������f�"s�S�t_,���?S>���q��N=^���ok��~x |�O����r�����ͳ�y�M�/O=I���;��wt�&��S���J����\b�AA`T,�J�D�E������'����;|\N9��kX�'���� ����[���U��E�)fh��R�*jAcFZ����R$jJ%�n�%�����{_7�<�7WYl����]��_7�?W��Ҳ�Y�]�˗��������}N�O��M�X0 |��u�k�]�U���g�:^몛��5�׵�Z�l������� H����urT@�E�)YVe�PT	F{ދ�i��=�D�{�/�.^.^;u�ǣ|}G:=���R��ŋi�e����� �%��J X�aFX�,��E����"�@���>��r���^�Z�L��<��>�I�Z�9l�꼥�}I��]/4��
�cr3l�$9����.��s>C.E���������?�:�_���g�u�\�r��o&5������~�� �˓C.  ����Xz���ͿI���9WW"FjE�VQ&�F�f�5rTUHVQ@X98Ǭ��\�'��;����y����Ӥ��r�:ݨrXі�	�%�-KI��	-�R�%TB��a��j�,��*�[Y�a*/����uu�zyVD�,��QP��|]���)�� ���=ߍ��/�<�?��ŗ��>�a���|�O���65�]���]�X^p GO�{����~�������Iz�"�(��%�Ԕ�*��- V��Q��=��������>W�us���u�N��5�������a��~����;{^��53���B�uxɹ(Q3����j`�Ii���B�-(����Q-���/9����:y4�Z("ܬ��vOiz>�?$=7]���{C��7��~�O�V_o��6���]����s����\�������p�;��e��������,M��_οE�����fՖ�XY ��(��!�)R�DY-�z�q�Oωy�_��.�U�|�e���|[Ƿ���+�e���|�g��=�iy��Ǔ�c��pg� G9z��z���J ,��XY-**fآE-EDRٚF�gE�$�� �V{O7�<�7_Z^�X�437	h�Ԭ��oS����;��~|�9O�O�6k�s��[��� [���wy?.kR}?9;ގ.yM��Q-��_�� D����Y�̰i�[(�V�!P��i�V�&�T�Tw����p�?7f˟��������z3��w^o���C�Jï�>97�^?����y�����z������[b�D�e��5s,�@�� KH�̵�Y-3hM�-B[IK%���s�y�n��<�Ke��f�Va����/����������G���� q����t���?���<=\�W6�P�f�̬��ߜ��������E�H�%�:��*  !t�M3
��IH=��v{<~?���W�cY��o�E/���{������5���st�go�c���Bز�%�`�5*�Ij	E��'#:��D�ز��%ia(=���~s���GO)Fi	DFfˋQ%���ПG��~�������~��������p�O��ͪM蒀)R�>�{�������ߊ�E�jK, 	�*�������!��G}�/o����/��.�g�v��'y�˪V;��K�������ϫ����y�{
��~?]�g�na�K"�*%Q(�QF�����ћH�i	-H[��o9���7O[e��J" X*,�H�q}/���Ӈ��G�?O��n�Ζ�h��^^壺��gfSe*KnI����F����N�5$\�-�Rũ����Y.�jX�V)��=7O��;8z�a��>x�W��8-嗛��l��,����Oɗ/���t�O���=��>S�g�rN^+�����a���Κ@�7P�"�R�Yd�"�(̺�ک�Il	�ʖjRų�y�E�9���ur�DP�T��2i�)�@T�Aa,�P$��k��I����<�Q��m�K*�mQIi
J�y�Iu�6Vb�|d}�OA�OI��wyë��^Y�����:�^N.�������ü�>?�?7�����c�nX�T�E]`�J T��ib�U��AP]`�͊D-@	������=|��[e�T�H�,Q"-2�1uCL�K���ے[(JJ	D�BKH����~��t�eD��(�DZK`X
���(�`R����y��.o���z)�jc����*q�35�z��x���U2�ϟ�c���~ˡ���}��<�c��8�w]�������>��M�Y�Ǣc�),!P��Q ���%�:.ZFZ�k!(�T�������=dӧ�-�3h�+#L
�x�m����,��J��w��;<�g�s�X�O���n?c�3z--�a�fF� ��_U�u9���c�K7)B�� "�����ϻ�^����lt������/ys�ϣg����N�����>���>k�����fΚJ�E�R�(ʖJ���4�[�$�T�(BU��j�P�7�>}{y~?����'?G0RY��B
��O�����ϓ�g��̸��s�/8b�>�������ǣ���ۇ_��9��4Ǐ���~oA�/����w�3#h��H�( ��Z�Y��o��^^wO�}8���رeAP,�XI�(��>�1��<oA�����ߛ듦��s~�����7��j�~Ն]����<m��M�f�Ѥ�TՒ�Q�`��DQ,��f52�I`�U� �K%�E3h���c��<������ė������G�������w��!���!���!�¿G~qOџ��ߜ������?F~r?F~r?E~uџ��Ѹ� =���Ee�Q��R�`��DD;?'y���p��k����c���AHԲ[ �]d��0���a������|����x=^y8��,�k��u�$ϓ��_m�<� ��˟�q}��Qf�F�E\�Al�d,B
�`�*e--E""�d�i�D�bԚ���� ��@(L�*�AP,���-�9�'�����L����I@�(
$�M%�qs7��>�|��«��}.\��qǟ*]Wn��]�]�ԥ���4�XP���
�I�T�D��JUi3R��K��:?z�-��?N���7󭵛bE( 	b�B��k�����''g�/W�:��3ׯ����������T	^���g�c=t��O{y�<�O*�QT-*=C��뉶�[���DB����Ib�����>/��g>/�����n=w��+�r�|�q�<����z�9�<��\z� Z��"�"�[��lXA����eT��QP�������S�n��m[�_�o����oK����������^��-�'�Yc������{<��oC�W��߽��)���'�oE�=?���ڿ1��>�缞n����_�~��8=��W��3�ݷ��7h�s�~/����������8l�<_�_�g��^{��<�=?�񾫻��~�v��=�g���(�,Z���
ȷ4��.Ǫ��&,�l���Zf�HjJPXjK�y뮎���3�$����ɾ]r���|��	š�R'C輞="]~�mE$�  )*R[j�E��m�d(EKB����z�w�����x^�_�� ǻ�-���G�'��?1>��w������|6{�̿H���� �?��{���'��� N���}7�	����c�?�^���sv��� =����}�we�7s� D;���;� �-�g'e�o�g��Ow�����'�?�R����,��xi�g知~g�
U�!
��-��[��*�}ޛ����zޏ|Xv�n���˓�x�Ϧ���.��G��E�l���Ó)�N.S�����u��9�u{mB�`@�ed@,QPEKI`D
E�hf� ED�T��o�]����]|u5�iAPTF�)e@R��� $��i�REYj@!-f�A @	�[8).��P �K�����\{߇���� ���s��ٙd�Y�I�����%q�u�X�k������w�o6�Ct�8k_�( -J��&�*Q�R��@*�P �f�U���E,PAPEP�Ab)-TQ**, �J�P
P �VF��"��(�A ��E).���]��5t�DǦ�('i��1�{co���5��u~{��5�{�:N�g�t}�Ke���lͰJ��4��!j#L����]EH�)
��#:	l�� �d4�*PZ�%�J�����@% ��(�(X�  \ҥ�	b�˞[8%��D��m'wѳp��R��;^���C���.ut�.n!�w�o���j���ˍ����jY� ��D�� �U��AB["�5�"�Tʪ42�QZ���#L�(� KL�XJ
��"�5��B��H�X�rM@�Y^oK��Gm�c�e�x�؋,Q��Y-�;���k._i�>���>^/�7�M^�ET��RE�Y
�PP�h�hKaEdJX,a�E�S�N��|����A�%�������� W�u�6i�� FT�E��dDiY�Ŕ 
E�P� *�i	@�UT
ETX
J%B�DY	�Yi� Vh��jA���iIV�@T�EX@`4g���.=���U���T�
X*T,�XK�U�� ��  ܍@�e��B T����-\�!r5 U"�X4�)�R� ���R(�,UB�E���հ@P@�R(4'&sqHEK
 �PJ%j(��R�QB�P���)�fѕD�R�!d-��,K��V)d$��i�(X��Kf�BX4EQI"JPPX 
@��e�TPD���d��%T� ��  �P�����
"�I��b��,	U)�� 4       !014@P"&23`#B%5Ap���  ���������-����̽_�_��ƿ����Wܿ�k�[ǿ<�H�/W��_�j��N9_�^�W�p��~U��r$%߿�z�^�W��� �^�W�q޿�j�\w�W��t�q�;�w�h�����\*�o>���`�����-�o�؞�ET_��H�N<m`���}�_o�����}�_oЎK��k��Z�|��k���~�߯�����~�߯��������~�߯�����+��߯�����~�߯�����~�߯�
�`��9S�(?���-B��<9�*�W��D9n�*>HzAo�K�?�NڔTrN+�F�f�|�,;���wXӄ�$\E��>	Cs���2��/��UL&���!��Y�"d芢�Hm�����#�ydT�6� Q��5�e͒�!����Q	��Ȩ�D��9�7��p����Z����K�� ����I�
�s����M�揌Zp�����Lƚ�/�
M�c$q�oqW����z�.�~f��[�����dJ�I{�D�W�ޣ���#vrX�iˏ���en�/���l�(��-[�����`]�����4����m�5K�O)��*+�e�6�&$���[A&*��}�C@P����E����i�����w3����4��&d�E3Q�(�A���Tt��w�j��+R4ض�s������<|&����C��U�zߙ[ư.�gw�n��E�H5���i�ȔI�4��R�	�C%U%ގ��@�-EAR��{�׆�?���EUKZ�R���#-!��>�_w�N�^�n���.��9�J}�e�w�_ˎ(-"Y(�}Ue��#��w�wr��B%�x]x�G$�-K���֍/��\-TD��biX�p�Q�u�I�.��2|49V�8w3��Fjɚ�m7ew\��qRȈ���|!��0�+mփ@I[7�4�2�ӊ�6踟�=?�xV��{թ:f�������{�TK&J��)d���e�Ӡ/��h��59O���^��6}ݡ�w4?��-'[���t�^��Xw3�ߌ�"[
%�r�J�h��B\�46��Ԅ��qF�R� 횠e��6A�_�&\V�nH-n�������wBҒ
G8�D>;��Q���4KnJ=G��� ��B���WJ�ߊ��mE�����w~wלgv.Ѵ۵��-K�EIYeL�PQ��'�,��^���┽/��6��p.�gw��K��ݣU����D��y�i=�<������б�g��L�8;?}�ws;�/���j�в�H�)�"^�kf4�d)n-������֕��D���+���׫��k�����z��Xw3���]'�V��yÔf��'�S]Ѝ��[�ѭN6�� �ю���z�����E�[RQ~.7��j>�L4�ᕼ�����@�9M�-YAgQe���ʦ�W)�
%��eB����Z�U�"Ե��78sD��=�M��T�"W��!�'�����φw��<������ݭ���b%AL�mn���������K5���q�R=�vӖ?耴N�RP��UEj��Q���fFjd$�J�_Uß�ws;�ta�[���8b�M��2(
�6��O㔃�{����������E.9ŏ�4K&x��Q�ɴ�T���aʶ�

�4r�iǉ����S1]4���&S��� ��V�	T���Gtr��J%%�h}���A�ws;�p�m�q*3;g sfC�B�*q�lUn�6z奕T��U*���A���ZV�Zض4�T%r16�E��P���I

L%�}�4"Tn�R���|�ʋ�0.�gw�aR6s�'f�UW&�&�d6�R���y�*ɏ���<M�=4O���ũwP�jN�q�v�kdU�l��J��R"Y�og��.�gw�t��˭������ex���w�Q.�nG@�ED��p�Z�YB����v��R���G�[z�B�pi����T�4��&����+yx� �"����!Y)��� ��RNC/�j�m|�3iB@�k�J]�W�ws;��_��A�,�ˊ�i��V⪣�+e�+n����
iT���b�_&�^����n?�����8�����?�2�j��z�ǳ�Hh����B�J�Ёr�ο��ws;�)8Ң����Ώ��~��[n��4�YV��Jy�s=b���R��yLO��Pl�*4~���wy��ӂ����n�u.�N~?�a�x��~[
�j�%�pr
���^�
�%\|�NR*���H���Qﲊ����m�h6����8��r��rD�6Lx�5���g������e���uqR���yM���)��߁֘��}#�������Z�Q��HiGJ0�U]��'�l�_�B{��cli¾l6�����������¶aZ+UBoh�,��g�"�N���ґ��aPA�e�u��~3_[Βh�T�L�� %]hJP)l)O��0�F�9�)��V��U�+]k�� �%�ϭFkJk�JRW�2'������T�_	QV,t`1�E�~��ų�i�)��u��g�4t6J�WjLW_Rۆѷ"&*܌S4M��&���b9p�?=��U�4qƢ�fB�
C1�l�Y��#���r�o��D��9�UKձ��b�:�������
���`��+�
���`��+�
���`��+�
���`��+�
���`��+�
���`����������������`��+�
���`��ʞŦ=�TvtR�����#XԶ�+�)���m� 
d�;R��m�)��
�h/�0D�����ړ���JM̌�ʐR�jN�2�Y�h'�R����8d������v��(��L��vZ~2Z8(�ɴU��O�~�� ҙkh_K RƔ���l5�0hd*+���;h���q�I}\���
�o@iTD�*�V���8aP1,=ba�|7�bl�_�
9H��s��O*g����)q~��($3��n`"*�� ����Ͷ�z��K�������&�Z�m��3�n|���c=�5ٔ�KN�N(�),|�W�N`��0b�c󰡌��b,1�.5�2��ң�9�8S���(��a�5?��u��̌J[���ې��>O�M@�V@,��n�hͶo8h/`M*:ٲ�|���+��ޘ�v��0��jC��G����k�F��.�<�� ��q�m<�lܤ�U�P4�R�d���Smuz�ܺ"��5t��J[��k��b?
t�mKu�/�'<�z��2P?O�?�s�mR�S&�f7����e4�ڊ��D�w?غ*ڬ�=��� τ�:2ŋF#�h�ؖ'����X4���`�������0^��u���t$����n�EF1	p�h�P�|4��5#��F�$�H��j[�  ����[��q6X����؉� ��}����q��� �ģH���H�͐�|hS�ʕ��������v�jK�4+�P�w��Q�0tۦ�q�[W��J���V����(H�}0c�$'k��[ğnD��E� *L�X&�m�
�Q��H��oh�/�E�V�R��A*>�k$���
�(!���N\�W�3f��8s1�ᢼ��3�G��˰�ә�����i���� �%�[�r^3�>%ɿq̹/�!���� q̵Q� yg�֪?�,� :俸��\���˒���ro�C�.J���\�� q̹/�!��%��?2俸��\���˒���r_�C�.M��~e�g�v�I����q����\�x�Si���a��y�0U�[C��&�2�Niӳ�
�
�AҰRJ#���"��#n=��Tv��)�VI�-��Q���4Sokw���׹���Vfk\N[v:hT��<�fl)�qU5W��� 	4	�62�ю�EM�%m
cn��E������h�����wV�� ���+Cäw�3^:,y?�nT��<�L��tn���ݦ6�^.¹&��z!I+cqM�4��!4D�<*�a:�8�M���A� �e��W��/��E�� F?w�T�ӝi��ʊ��LN&�@�ǱSf���y�7�p�0Y�
�hhiW5�qhºc���*(�{;GuH��̒1+hJcZƀ4��
������i�wT��;)$����e��{%�r�����lxl$ors�A$��2��³AN��v�E�{��A/��y�Ls�k�T}Z��}y�T��s�Ls��
n�PR�ñSc]/�{�)"7���}�a���<}�����OӢ��ϻ�Ybq'!���^[���	�Ydݥ}Z��}y��vS�D�
�}�@ʇ`E>G��ÿ�rǉViK�.�&��Wت���9�Ɗ��b��/�{���iT�ո�G�6�Z$@���lq���C�^��Vv݉�Ή�$B�Z����c{�J�[q$B�.�k�>�tӜ�Ҏ�"�SŬ�� `������t"�S�)��q��(Zɡ
{���P7�����+� �t9�x�
G\mF'�|I�o>���AYݞ�����{<}Z��}v�7X�7N6��M�Y;�U����*"��w#N�h����K�a�kT^�`55�Y���oó?�E4Z&iu �4�Sm G���n�Ni�0���>�j�>�{G�������MtU\I9�Ns�߽O+�7@(��G�4��ރd�KHq�*hbn����M^x�rC,;+��^��]��rTݠZ��af�I�g�i�<��
�(��k�M_�Mvn!�$�O{�k�j8���T�AJ�
��@U���)��=�|<�s��i�[N-����@�Rv��� W�p�Ζ� ���V�\���f���Ur�oV�p@k��hF��ۦ�>Jf���
G��]杖un�U�b}���]6{3�
�@�h�1%Z'��h���M7nU�at��]a�
)-Li�\���
4h��y���2���q��0�$�ѫ�e��,M��c���kK�/~���N�O4�"�Mh`��D�:9�Z��@��M��ٚ�0ծ �Yi��Ar�O���Z}g�\���<�喟Y�,��� �e��y�-��.Yi��Ar�O���Z=g�\���<�喟Y�,��� �e��y�m>��.[i��Ar�O���Z}g�\���<�|�y��O~��kIFi'7)U
)Z����*��W��� �B��%��.�x趌Xw�J�H�ؘo1���5s�A$����Twr�~ʺK�
�� ���j���:�������%��tR5��i���� ����4����ZW&��h���#�Z֚"\�K��ĵ�୎���_t4��W@4VW9�מOd�;9|��df�=���,�4�z!jc����dq��Mdn�+��'�8\#1�ML�@��jH쐼��0jdP�e����
H��,"��!Q�è2TbT��aմ���'��d�q�Z�o^��_�Y���p�R�d���8����_w"�6k�/'&�<t:��XFmRGe��9�=�z�E[�oF���S>E��J'2H�0���$��؋x�� �� ��lb�X��O>�a�g�پ�Ȓq$�ֹދIN4�@��x��
����;�� ��5����]k�ܩ��X皆�ա���0Q��\ qY~~�x����'�C̑���AqVk��+�L�b~g������֢�:\�����9�K	�ǆ�PP�q�>pLmֆ���X�&J{��$S �Χ�>��z8}���@&��A�À���@�9� �^;8�
     !1 0@4AQSr����2Pc�"R`aq$Bd#�Ebp���� ?��;��Rꏐ�� ���b�X���7�٥���]��v<'�g��n������z���V��&�g�K�Z�Зʵ����c�y��Y��V��%�g�K�Z�Лʵ��K�Z�Зʵ��7�k?Bo*�~��U��	|�Y��V��&�c�y��X��TsG&
(9���3��Z*��6)�4-�W"2wJ�G;I���������UWlck?����߶�Tp�B3\?�*".��������R��v��]�UJ)h����&�9��^��n�n���WE�+��_�2�w�u/pl���-*�*�U��W78����!����g:��63;NM��UB���T�������['>5��^��_P�����u�Q�h���o�p�Υ�
��v�s�7�ۀ�
����^9��^����x4U(gs�k\@��c�X(?L2"���fNqe��|�
&�fA�8��{�p
��ȶ��r���cxp��%MQ���j^qe��p@�B���=/o:��6�t�q1��
}�F��
	�3y̽����,�?n �2��ssT�Wxf�{�|�*�4������߄w W�	� qNχg9��7�!Pl{n�*QKE�����Wh�\(��R�&H%c\k!ssE�c��������nW���Q���$��뷀D�q���w����5PX�@�*�M�CX�F�h�Jd���?���Ӵ�j������Y���1�\j�b�w3Nؙ�s�
'�Z��3�ɨ-%��%���c^(悵K?g�V�g��J�,���Z����+T��~�j�~�ԭR�����A����Y�?R�K?��+T��OR�K?��+T��~�j�~�ԭR�����Y�?R�K?g�V�g��J�,���Z����)�k0k@�҈�����M��"�\�Ӟ
 Cq��R�*�~m�&��^��1���&�����Rc�#C��M���рj+�{�t�h�~Q2F��&����FJ��Nȑ�qhuH��c��GG����o�.rj��w	o�/�i}����+9�)��K��w8��m(�G��O�T�nV��(���N��FJ7ڥh��8�>Y����tCs*9%�a��ȣ4�����:zL�z´� �i�3����GG@QY�H�X�(�Jjz���Jɬ���7K�T�=�rM�0�P��7$燃�Q�i��5���PK1t�9ߊ�����1�P�������q^��&M,s5��<�� P� �˹;�*�7.˄���贜�O��G��Ьо9��(q�\��s���oBlzq˥��j���n���g٧��Y�EG
    !1 "APQaqs�02@����4���`r�#3BRbp����$�Sc���  ?� x7�,n�������� xP�)j� ���6k	�
9��I�v��"�b+���i�[D��s&���"��*�/7��n���꣭8�$���~�$��N�E�I����i��,���U�Y;���폎�/�Q�N�x�ӏ�aa\Gs꛹j��s��	D�p��
���4�
�|���g�*s
,0ز�CVul]��#�,+��}HP�-�A��
��P#�i(VТZ�+��hA�*�

�3�t�#�,+��}SwT��g�kSxW�\E��g���:�ċ�ዻ��h6J3�e
��t�'�
⿟R�묶����H��� ���j���KLQ8�Ne��o����h?Ib8�Ӕ�#�,+��}H�"���Շ�ζR�ظ'��A�Ρ]�1��f���aa\W��@
⿟R	Ԣo5iI�R�����Q�1�+  +iĘ�<���`�M%
�v
���QZ�J:n��y��q_ϨhLy)�6C�z�Q�<�ev�A�Dc��y�4ʓc8�Y��S�b��F���aa\W��-�6+�(@��*A�P:���v�ے��ۘ)�.Ӕ�#�,+��}@m�Pn8s�0D��1�/Q&���
x�Qͧ�8G�XW���Ųod���Y݉�e�"(�U�y�4��b��g��8G�XW����
�ь�ĘR�C��j�<��GfqSNi�)MZ�D�EX9՗;�NRp�0��+���]��+*A@F�UN�spD��V��X��頃�&z�(B�"��Z�Qq�:j��y��q_ϯq�|�U9�0h�R<f95D&��D� ��ʐǺ��O?���"�Oef��:H�1I�<�¸���Lㆌ�7=Oi��$+ �*�+���S0��M\������	Π �eZe���'�
⿟u������n��k'oS3S�V	��ЏQ�[��IV�z�J�rYS�T�UT�;� �S��OH�p�0��+���͌_HۮĥG$�*���x��U��Mm��qS���7���|�%��u$� �F>�)��%x!x�玑��aa\W����I�� �{CF�¶��' ���F��]��5<\������Hū*��PED^*
cF�p�0��+��P��/�v\;U�H#du����hk.Gr���i��Pal��
f�K��`�M �&s�J�C�:�5�ܨ�cE��8CRP�VUƬ�z��b4e'�
⿟u��+m��~ɡ�l�G w�y�4	D'�H"u�lPR����ʠ��B�x!�W_�)8G�XW��v	���1�H�BU���Y� {(�d���-}FZ2��y��q_�G`�M�r˒ا~a�-\����;B�g��4e'�
⿞��<���C��ݴ�\�(4_~1a̲A�����B�ʩ�h�N��>�1ܰO?�~j7ˬ�P���"�*0�]�x2Oy�%S�V3�k1]�`�lݢ�8G�XW���B�A�����w��u�Z8��,�,�Kj��1��P����*��y��q_Ͻ�E� )�L3������A
�ή���w� b�N8�G�R���ʌ.Mj�bMn(�Z~��Q:ԂF���aa\W���@c��)�v$ʌ�	���D(��@����Y�`�L�
EG;RnL
�����7�8**G�;-��ڜ�G����Q�i]k��pzH�n�&Q4�6?���M+�q]\H��)ii`" R�����i���z�s��
���`xE�X[��C�Y0�@�?�y��0�tQ��|א#��� gw�T4� 8�
J30�i3�
O.���$ .b�c�赍Z��p����GH�j'2u%ɀF�����3(��W���P��t?�͊�e�+YN�m�RP��%�ͨ�S���Va-J��'&1��s�&Q("a !�gF����J5�qF�u+�����
�EHM}�*��?�����u f�rCmq)�[�Zt&�9�k� �"aԘ��⢅QVu��<ȗa��}�z��&=CH�U�H+�W����[S��m�|i)3�Ԃ�
� s�����5~;��a��ݕ�1�7����z}���6�h���D���\
�
,,�f?q������e��D�Fx���=�� �+K���MF#�Ԯ���`����XԲ���T�7���P��E�Ǘz9�Cʈ�/�|����TH�	�,��g�*V��q���=+5�����Yq�X�1x3���c
(��|�jx|�Q�=���/5+��B�x�>��1*Vo��QE�YqǡeD4(�O/[ҳqE�AE�E_��z/�xx1���=
(qI=�BP�ZXyz�(E��OX���TXG��$���	����jQJ�+�ы�Z/.=]�aE��8������<�B�8gKnSkCb1�����
.��S��R�ބb8�U�hz��˕���z���r��\q��+)|eaf��,.T\axQD#�+�}�~0���8�z��i��J�訵ޕ��xX�w����ʕ��Ǩ���x��xf1�����(���+��\��b�Zx�ZT�R�Ҵ�8�:\~#G<_*=oE���V_E�㠢�JÌq���ybD�	E��>������~qS�^4(E�xQx�z_�X�sR�гs�z/K�=
[,t,j#Ƀr����v	 �?��[�S�YBWL�[���oin��ZQ����Ef�'>2�M��=OXB(��������忨"��{��H�T�|���*� ��&91}�Si����� Iw�e�G�^��b��S��,��&��Xw�0��y���w�P`<�����eixq�}DypK���񃝠��G��#��{������Ҳ�b)QG�(�X�r�,ܼ�.\G#m??��A�6c�_2�^��3����e԰��<��=���	O�"�#�hh� B���s<��,=�hB#���F �ګkw�ݜ;�`�_
9q�CO�(����to�n7T
{/ X���0A��.X}�/Sˎ1�1z�]5		V��p���#��d0�0J!�;��^���g��x��^2�y��0�c��b�-7/7Z~����Ox=�@���� G���rz �DkB(a��A�:�	�#�V�@͆�*��lA���8�qǕ�Qkb1�#ˋ�͜~>�4nh� "�|%(	��7�E.^>4�Ƨ��:o��Q��\Y��R�,@�-k �#xd��B�0S�+���l��"!��0V�Ԋ��$� 2��|,� �C6��E �B����!%���֌b�#�F{��̭)r��q˗���%`�?�2v7�s��8��[G����r���*Tq���=W���s�z|[/*�S6�?�A���F���
�R�b�1�#1��q����� �y�X�!�m��xQ!Y��\����8�b>g������\��Tv�P����fyp 5Å��������@HŠHrx�rZB*p@"
@�'��~�	a�L�򅊇����k�;��ϣ,<
WEb��q}7j?�|Fc�8�p���W��<�e�J���0bQA;���O���P��:
]��`�[[0�Up�9�Qh��0���jx
�p# �6X�����n���A�ۿq li���D_�b�:V��EDb��QK�Z7�aeE��̼�O������@��!v�0?E/�l��M�H�C���j+!���m�^�g�pX��9QtoR�U�c�5x.Gx�s��������%��
`�~G���B1����K�Y�//*(�+�����J�d�w���:�
0FA� �����D$ҋ �cF�OF"�E�@߉dQ� ���  @h��]O4?�.�c��ʋ@!߻��*�c����I$v��w��{O�M����3<�Zo˗�R�ʕzQ5*(��0���GA�W� n�������OBͽ��W�8���xủ���9a�td� �+>�+�!���J�8�Z��?�J�+�qX����&��+w0
e��F[����~���0A1h%�����<�Y�IǗ8�(�aA���ч�.!� l�F6�xb<A���_TQJ�1*1r�(��/.8Ʒ�{Ш?k�����h0���W(LQf	 vac�Ҝ+����6=@�
;��� �ߥdf3/��㗇�C����?����/r\���C~��E���q�b�>��Q�VGW��
ڰ�j�-��{.v��ߑtv9�d��/p�ñА�{O�:�Q��#�JҢ��׈���֫�����/;O���\2���������
��9��9}�Ԩ�0���`!	�?�/�zo����(���W���&�5���D �|��s�� UzdP@�p���V�Q� ^�x���0�2`����`�ˈMV������b�q�5,V���֫�\�h�E�@��E7�e
3b˿� .Q#}��VjT�-^�3,=W/���*�W=.<�Q��I��N�F�c=�
�R�A�b��z��޽@HT�?�4}���Iǡ���\xz~��I�z���Ɓ�- ;T&r�z���!��yB��PT	�]_�^��p8@��y�5��YT 
Cc�-p� �E�\�
ăa y� vq� �� }�n�\$6P

9{
��q�D��QK(� �p8��4�� �a�e
M?QhQjr��E����	xq�W��Ϧ�#�����7�P"�Era����r�p�+�QjzE�,+?������ Q<O�X���fWm�0�˨I�Əa�� o�x��A	s(�x!လ�A��1��yԌz*(��x�YyQEը�Ư�s����-A�
���ca��5;Ɇ^A��d�3m�����6
���J���&�Q�3��yZ�?���-� Q�F^�}J��/@�˗�lw @4< �*m�}�O|	�_�U��OQ��=L*%�9��,���֬�I ψ����eN��x�#�'�!�?0��h|{�RE�t([b1;/�� �v1@RzT=�#ˎ3>�c�
(�1}Br����0�pO��J�����`�0������d��ǁ���{���R����B�5�ĸRC���[A�b��:�J�[�� C�B��3��Ժ��0�7r`��߁ب�3�B'ry��	�!�"U�Ll�:1ec�q�N�PY����#���������syXQkQ��Cc�c?G#ƵMP�ˌ�  6����}ߙ���l�� -7�_ ������mYc����8�M ����~ �I%��G�?�QdP�`B[=�PA �~���n66�A�P�{��=v�A���>�3�*\6��a�g�����ngh4˩ \�{i�Ж'�
#���Ei}65�@|��C���C��:ְBR[
��4(����dH��B>Ta(��w�jl0�@S��?k�`p�w�-&�������a�8���� j��Xo���Z�n_s��vq�TRR<�Л���!�E�L��R� <)2�C�S@��� ���f��}�c�=u�E��HL��8���  ��TDDTM���\�DTUUDEDGO'�qI����$�{ʕ����Ï��"H
,1жb�@( A�5g� ��J�t�[)���~$��Jh�a��=7�p[��D[Ŏ�T�G�&�a_��y#+N�o/��
-7���YZ���/�OE�%k^p�m�0  �v����yQ}]������=��	�O�3����� 1�eu��Y<(����J��1ǥ��.8���y5�N�HPAEo8�K���� ���"�i��� � όb�ÌT�� ��=���V
m��*��󢴞��hQ���\�Z��\yp��P 2LؤD+�c��������R*yC,J�1��� 2v#I}��I�0����;���I$���w�,� '� @7�k@H1C)��8���q���t\Xj9��|Ť�[�/�
� �A@HY��d���,(�+C��E��@��|��'�Gȟ��?Y�cDQ �� ./��CD�Ȇ�@ 7$���!&+�$��
]��\h2��jl $j�N�h�F����~�(�����;��G� 7�Cuİ�l��;C��C��
�}�����gR��E�}�8���rn���v� 
��l�#؉Y#��c.�b��� P8e�0�w"C�E�7��p����63�\��AJ#b`�2�NK҂����@M�������Qy�	�0�`�.e�@�j+X䰠G��|-�8x������!�� ,��_�(��z��d�Gw?o�2C�㹗���n1�<
���)�>��W�_�(��y�O���#5Lp�3?U�~ה�3��B�o�,���>�G�l/B
����;�H<����`�C�.��(���= %^�p� � :�;x��Y���[�Q�.y0��ōK��F,ټ�L���cA����@0�v ��[M��h~y�����E�E��
�YWWt��P�
�;�a��[Q
'��@C�����hb8�����>�����`j�&PXУ�`9��i!;B�z���Y��� ����0r#���ن�hn2ʈ� \"0S�.������J(�Կ�/�A�w�+�v���\ 
���OM��]'��};�����#��왂ˎ��;q}�!7	�6{-�-� �]0�����O�Z ;W��Y���/EJ-q溕Ѩ�8�J.��C�*�����Cf��!Bi��Bp�( ���!P�z6���Z��8��<<�/�]w���aiQ� @M�eZ���07�ǎ������Qt���8�^+���p��
�'\e�ІZ��j�<��Qtz��ԣ_B�ʈ}2��;CP9�M�W�<��z����G�O/(�R��3Z��Z+�U� � ����e"����C� ���?�z�*,�>�Ï� �?b_x����J���?�zَ3�]��+B�� �������ÌG�o� �� �k���� ��=?��      [ޤ��*�(^w��M����Nfy!��֪�PB��}�-�h�^����ۡp\��xޮ���u숄���I{j��Yn����[������N.W�FX��)՚!vB�P�_��"���^���-�z<T\0)����6>p{����^3�i5�螺i��D4��pɳ^����B(�C	.i��~�ªzlu�=؝���aJ'۾�.&�n�qϙ�R�]�|jZ9d�nN��j�)%^��Ԇ�V�Gt�����8W�LtPAx��9drZhFK�}}�)(���r�GHRe�Z-�q1����L��z�s�5�*�~d��߹$�8!��*�J��"��K�@�hi�u�Q� �E�Z�X!��Z��f�����֕F<�g�LW/��\B���ˡ��Ft��1�;^m(����DUȞ������$Zq�L-G1���7H ]<�y���|���}J"���o��U��	J��a��"G[�5�իH�	(2�L{f$y�H�_9�߼�A��y�e4#��mRĽ���H��r숰�;Ur
�%�Ju�5������4���  V��B��2��)��6 	F|��B�����U7�z)�mv��P�g�R��V�Jb��G� (P��j5��eJT�j�"�0{ϊR��-%�n��"B��e�C�때m=g���H j��,髦4�3���<��#�T[���E Ϳ���R)�����L��� �^�PO.�^�ؽh�u �Q�	��}L���8� e�=���O������=ܑ�^R"[�
@Ješ�b��Q��[��:׿��\-�Xn����V$@���	5��x�O(@��8` ��/�
�w;��l$�H)x"��*oG����o{d�2�RgtJY���������dO��7t�i�h-~4�CC*)[3�lf?�Д���u�9F�l�j�>f\�j��&�s�'�e�\f�U���o��		��n��Zd ��t0��-��z�M�&L�%:�X0m����neW����Ip>@=�j)�����9����}����ͯƣ�>�ä�;�Z��O��/z`Zߞm~<�7���-Zz	��س������+�6O�u�"�]wB����Ķ�0o�a�#�/U;˵���O�rh��O��4�@[��Qs-Л�K;�M��/��.%>��nـ�AT4�f�2겼M����8  L ��|,���	�&��z�Nn��yX��RT�r�卡̂�?['�����1Kd <���4�����r�j��������]i��Ű�nM������#�J�^f�=���;�c0&ڬ��L��%c>����:�^��JN�e6~0�Q)�?
\`	���Л��o#��;��y�x��`�N;�ڡ�%����RF�!�%���E~P�,�=�F��&ǖ�p��X��CՆ�z�ڣ|�HdR�� 
�x���x� V�>�e��,�FP�?_,���}E`�����q�;bTcP��e'�Ue�A�%x� +����0��s!ҽ����d S��ͼ��������K���0��3�^�"��a�`��(�i�ˈ����@�S��(��	� �3��2y�0�Yk���s7M������᫺�_J�%�4�
e�xD�/f_�.D&�[�Ţ]i_�2�'
N�]C�蝉�'k�c�D�~���o윗�嗲���Α1�ix-�L��ѓ<it�R��g�z)�`�'ؼ�|�"�������W�W�=��'c!�i7l,/ଯ�5�a,Л)����dg��3��D`�씝��z�\�#'g����gg�=h�
�ƞ�Vd�y/gܴI	/)��ȴ�|�c<����"m�"� �_#�>
�诔��7�{D1�/e�����̞����_%*=��B==�24FF$}�g�r\��z^�V��)���r�ȂO�֗�֍m���T^��&Y���xb�^��d���ط�2K�?s<� 䝒i�CM)]���a=���8�O�� ���min�����D�e������ G�� ����?k�+�� �~� �����O�� '�� �� �Q���Z!d�u=�b7�d��*)�;&��q�6��=Ү4���c�C��U3�z=k�g����$�G�Sc<���+���$Gج�][�X/<%���c"� Y��ȇ���}�l~���O
^V����3Ƙ1�ӑ	��Bt%ص�W_zT����B��`�(K=�ۍ��d�����L�H�g�
i#7-_&
-�[9�![�b��$�{�'dҞ��>D!�頣��L��߬�ckq`����HNqL��җ��ߢk{0��2*�����6E�O��`��v%������{�B�Ć�6�zq9p�x�7��*�̉��[sk�]k{�R�U��{�������ɒ+�5�O��b�Q�?:c�(�4�ܚz���fLp9<�KЮ�$�y!�9�ʻJ�ލ.D2�e\��2z!g���{61�d�Ɖ��!�x�y�D*�'1剔��Kcz_��
�B�܏�ft.<�E�\��(�k�)�%�r�'���^#�[y���7��*�l̚s�+�c���#��mķb�����G7wh�!;"�4�W���pz)J���_�W�/�(Ri��F�����B���vz^/��K�\zz'D�',����$}������VS[\d)J!D;����H���"�!�����:>�HI��ݟ2Tyey�/=��Vv�&����J�+�e��#3��>���<�{a�O�L7im�.� #8�׏�pg���K֓�<�G�>�R�]3���tD��L=�Z^˭�BB"�_,����kn^�q%��#�Hiu�tmi?s�Ŕg��t�����Q)m&����3��K�'Fx���>Q�t""45�Z�7q�`ы_��P���q7�W�;dvo��#����}O��S��?}	�������`l�Ҿ�G�	�z<ƫ���8�<
%х�X�8fz+>H����Je�$��>"[	�$>��6��
�z;��G���z%���=݇�D��R�׾
q�����,+�:>H�\��JV0g:�J��Lw1oY�e̶��n�7o��x��Ȑ�mo;%k��65T�c�2�6��?�~����Z��sޕ�3�֮u�I�+bK��deֵ�R��	�.Ch�k�[LQwO�D"DK	h��r	2QV���� IH��SPZ�G�ycʌX���C=3/�'h���Ω���E�I�k�YdG]�ƽ:lO�kQ:��G�uc���*���|N
�l"[�x'Lp��-��1� "	��N�Z[��YC�˙SȺ����u	_�&U&�9GF�
2�� :%��7���������^�)I��*��ᶸO-��\-����F��޳�(M�72���sCז��-Q�[����o��'���4��u� ����%����/�&L����`�B�,�L-2Ve����1�b酥e-2S�$�����~��~��~��~��~��~��~� �~��~��~��~��~��~��O�G��G��G��G��Cz���M�g���xI/�r];x\�Cv�#:gK�T���n^�ȳG��Y[�y��$O��-�$*�2�жN��m)^�	�u_c�[
���EQ$��}�.R���Ѻ��yWb��O���� f������Y�ܡ �Z�c�ut�TJ��Wq�����&�f�[�^F��~�y�\��`H�up��Ԍ�m�������yD�cY�HƜ�ρR1ۿrvN�ѷ�菣:�!
�~$���H0�����
[]��Eታ/
���%	gt���F�91��'d�i^���!�Kтu�L_VOZB3$'Y�gJ`��LL�V|���yiU��`KW*��{/䆶K�%	���fU{|���5��B3l�]cޗ���a;l�!CƴL��x2g�DZW��L��Li�:�Lh�P̈������M$�ȱ���˿q-Q4���CF��ɯ�O�������7�b$l�j4!V���\i�G�$z^�T-'D>��.�K
R�R22�V�Ƀ4�iMF
#��'�h�<��eF��H���CG���=�K�/d[��T����G�#�}?���~�� &�Kq�� 
�N�������� �O_�+�� %~����� �]?����� D?w�#�� $����������� ���?W����W)]���އ�O��{4O8���+��z��o��aOd�{ϲ�}�#E�٢u���*�k�<�vǼS�Eظ�T)�=��� ���m� �k���&����Mr5��==���% ���a&��w�'2�'�@�}��bF���'�g��.�]�Q�4��+�K�	8x����w4k�|x/�������=��W���b;��[��iW��nJ���^ǡy�Eڌ����
�"�YK���ɾ���)V8�Ji7�Q����>3��_�*�$}�y��!�_b���d�]���ື�����c�BQV�X��/��FpS��g�1b/����菱4{)�x����7�1�5w?&�mr��LscGj�zm���m�*���4!�Q�u��d>�V6{5�Ѯ�B���OF�B;*x�H�_r��!�ԯ��Edo�3WfT�A������
7���`�M�w�$�_��M�a����T��Le7�Y��J{��Mr#H��S�QЉ�k�Wb�G��'�F���R��]��^���+��C6�1���h�q⪖Z��?�m�A����$o�6�_b���=��x�r�H�w4��Zێ���]�,{/��JR�k�w)�ƏD"��1xM��g\Cm�^��f�����a	k��I~Y+q�q(�����D�m>Əx���j�n��f�b�_�J�R�	��e+�[�CXذ����N�Ci�\G�,�}��oބm���'��s�#G��W�DO�YVW��]� '�]�쬾FR�h���w�ICCR�X�QQ{�ؿp}���/�"}?�FO8�<�����DL�Q,V��/�#u�Ƕؔ'�m�z&>�|�z��P�o��{|I�لd$7��P�lF����ݽq��"�����_%�_%]�+��Ļlk�b�)�CКU�����x��zagؓ\�pO���M�&���7��_�	�㊬�q��.%�6S�'tF�g8~
�~�5ٗ���	�X�.=e6C@j�\{/sC$��&{ź�a����p�<��	�F�o/\��zr�
TCYѣ�v�A�5�h��	ED�=�֛+��2��c�>���˧�~X�Ѯ��3촄"�}�2�A"22Zd^9��wl�u�-c�$����m���ې�=�~I�l�O���K��\��FB�cI��:=zCi��*���LB�E�$g�_>�쌄"�LG������dQQ�-�%Y*^TCbJ��Ί������,��_��s͛6l_E_
'��TO'�������G��(օi�I��ȑ1��͗����ȠM3kc�i��w�Lp9�F�a*�b����E��l�ؕkBg]�	�!)S=�Ɗ^����6�ů�v.��6���j�"�g�L{�E+�z�b��J_�#s��E�8,`o{�
�*J�+O"bi�ӫ�9'ba���D$�
�:���5��~�I%�U�3�xޗ�����#�.7񦻓��j&)����ck�� ��W�>��q)�k�
�D�znbT�ě8�!#I�$O%p��k:9 �4�/c�[Ƌ�ɍd*��TT_�����M	W ��蘌����B	��
dژ�HTLs�E�/�xH��&f7��}�4�� HŐ�6��w�'�̿'���}��+'��١ӻus_X�]j�t�#|�"}��P��:��m�OG�d)|b�T�|�%�i�� ���J$"b��f��K�7����?�����u�+��?
�+cR�#w�:�����R�K��'XߨDM�נ�	]�e�C�؜%�:��Y�O&���>4���kb�=ij8"oC$�&�f�r)��syѣ�čc�ȠO��D�����Sf�M�� 
R��3M%M��>�m&i�<�|�I��Q	2���yki�M���#8)M�7�ټ{�/�Ɗ�f��Jk��)Q��5�l����^.#�r:tǑ�
	cE�/��4���Sf�{ƻ�5�cF�f�w�g����S��ۗ�6!2�F���l�k�ϬU��y�K��옘�!1QJR�#��o�~h�����J�����.vmD������k�Oxٲf3y��&..af����n!�O�R�a����rg��8�o�R��&}c�iOE�l�Ws}�3�\O+��૶i��BI��^����y���7���6o��&.+)1����o4R�l�
���.�c���� ��hY��).k��..8.Q1~/� JB|_� �!�?�� (       !1AQaq�� �������0��  ?�M�y$��1��+|	L����K���/r�{�vA	.	C�I�`���;""!��Bl:�F�2{=	
�/b>Y|���Jܕ!2S؋�y'��:�|���t&�"3�x��r��!"1ſн=jEtG��'$Sr6�-�hN�v� �/L���%]��);1�c}Ȼ*\�'�_f#N����˗��;�7䋲�� fV���о���len�¾!/p/���%�U�zTc��.ȅ�~Jl����7CN�6��܇"FE��1���i?�D#:J6����"��.�}�y���"tG�Sj�3ʆ4�ZDA(�����Sҡ�v${-,֭���x��*)F��d�����<�\hR�+�_F�O�v��%Ȯ�7nF�OR���q�6��D��D�0$ğ$]���菗�gɁ,(o�&$G��]ٍ�co�����e�O��
_ȿ�G_e?�Cl��$}i�K�
A�E-��G?���#��/r'T��\��5��E�6)[�Vg�^4TWG��G�`�c�Ms�F���Y���D����$$�e!!�W���{%݉"T��<�G������F�R��C�2G�Z؉tT��&����m�e�'�O�~�qq�l��jF���P�pC���/�#�~�邧g�;>��}��Dr��62Cn2$n�ke�x���a�
քp?G��}}���?HK!�W�D�ّ3آ:#�"���n�����䝘.�a7�d��jo�D�U����
�������H�MT�D�Dsn�� E̜�<p~����*�Xfn*�F9:�Ez2��E��� ��+��*��'�0`�J��r�z{���"t=���=���ci>����9� �~١�07�}��ypC:`���T�Bmo�/'?Sg~ҾJ�~i[?�`��^	����i���y��P�?�������
�)`��W��q�"茄DZ`ƙ,C]!޴�竀�=hh�f�c�m?��Ѿ�H+�4d�������?�4��[#$��[��*剫��!o��]�kr���Ga3���g��{���-��z2W�bI���vK�)̮
�D广�w�_�����u�K�$��O'^���v_�	�;�f4�^���H�C����3=��;�����%6���&� Y\E6��8�ĸ"t"|�}����;*���K��den��=���<�峢��o��v'���|<
�K�(��˾��#�=�h�/���Hș	䋗�P��;���D�I��Ce�?�=�-!�\#�0A��L�	2m3Kv���a�-�;4�W��h����E��(&m�Yd}D|� "�b>��"Mne�ԋ��$�g��EvE���{(d�ď�?Dku�G�,���/�J����E/�6����HN�}��������{%�vCn�����!��1��b}26E�R%K��Cb�v��ܿ��о#�!E��^�|�
�7\�;�{���)�\�EE�r.�D<�4	�k�m��Y6,5��.�"*NN)_c�I��VH~��&��K�J��ە��/h�=���y�|���?�dD!l��}��DFgJ�Oa��DX5��I$�Qp����j�l//�®Y�|�߁Z��%�hc��a�d��F�bt��h�#��dCIn����%܈G��R�ɕ�-��|�s��
6#(�n����c���}
�J`�6$ПH�_g�蝾��!��0����E���!���H���dV���!�ln�����G��b�7J��ڕc8�{j�a)4�m�s�`o3?�^?� �ݺ����x�h��i)A��'�1�(����"^����yCK�c��N��s�����G�xY~��	�؈q����G�0�'���6F��}�d��)��|-ƭ��
YL�G���#!�/bH�e�-K�S䔡a�s����}
�߄_�*~��)pF6-���/���4}�Sb�dP��v$[-��ّw�ah�Q���_��o�4U�H�D�g��>�e�t��ah�*�Jj�%�Fo^�:xE��{�}s�y���#�hq�*2�.~t��IKD�^F�oi�Q�c��Ri���?)�#B3v$��DHm
+#����km%'f^X�]M���ne��>M�m��!�$�o��LپG��J6�>�ɩ1:���D�D(UɖO�S_��,��⑾iҩorP��Ε��Q�l!d�A��D1�b\?�t��
��پ�vT<4>�t�$"Q���Ȏdq��<MQep�T��¬�"6�O.����5�ki2����v��m5�tQ��%�3�S�g��K��K�ud#��-�6�R�4Y��1�
p8ݱ=��&���6HL�*hd���Dl?C����$��XĈȹd\2a[�_��G��f5Zd��R��pzT�ZU$���)���|Ѷ��W��4d�Qv�
n�Rs�����>�KL��<&p��z�;��>~�{�+"ȭ��T�x2m�����4�b^�1�kt^��,3�J��0B��=���#}��Ï���ӔT��0�0da
~y:��X� ���ف)�,�}�Ԫ��dS!�������.�D䌲�����	��z&��a�z �"M�ڔ����'�nH��1�Q�)K�Ҵ�2	D�Y���"{V
;r�P�r#��J4�47q�u����Ҫי���C� Wl�j���}���3iy����1�)� ^�ItB��Bю�#!&�2S�
O��͔�5zw��Vm���2*%DM
�0!�Ȑ�k��F���W��_"#�ډ*��9�����6ݺ���o�p����U��$�L,���K�4�%#C��Fep&�Fz+\�$����D\=FFF;�mdx��ֵ��	
+U�n�E
U	W��dm��$��Cmʅ���3�g�H�&��#dhk�Oi+�@���f�l��4BبI8O,A��	��l���q��2>F��C�R����)<!/�'$px,-h��>dd0�x
.���bI8!���c-b1�l�{#�f�:Ƙ�0|��HEp����g�FK���cQ1J� %f�]��Omƚ��o/�Gڃ�D�Z"�6�I�}!�
-�wT� HC�$���D��5yC���W��&6$�x�h��rU��_C/vF{}��w�"
���}n�F��O��h�M�Ja�]/�vc�(8�cmَ����I2։>F���yE	������k��/E �>X�92B6Ci�+Cc��6>�%�ay5I��A�I-�E�qx^j�ٺ�U
��n�о��z�LR��ؾ��"�yϯ763��\N˰N�j������Q��m���	>�1-f�ۤ�7�y��yD]Ɠ�]h��!�g�>���B�s-���������c�l5�
�m�a�!���O����b7��'�W�k~�[�)�[���؍��C$�����	�жIl���E EzL~)���_���p̈�%pF���۶+��,� �D�|
	Nni��pE4F��o��'l��3���	Cp�7i`�R�Qu.K.� �E��.KHO�R��6Lvc�y��QD�NOz
���	�u|6g%��"r�I��mr� ���V��k=̕tTGވ���1�Dep�����
�2$z7�m�#�� ��J�%��6�t�����x�vgt>��y��%�I��%��#FS<�X�~��j�t���`k�g�*�~����D$�^J�]i�1�/�3�'��'΄�֌7E8�epZ#�u�D�����:��bS2r"(�0$����M�Б��Q|}�
�Ee�g��2�%Lb.�P�-��~n�oV��'_)u^��[�ɹK˥+迤~�8ȓ�9���[��"�e~� λN�eL)�4.)+��vZn4O��F
�+q��J�+�#�ّ�D���̋DkV�&4��+=
.D�2\~�ʖ�V�a�WeA�c�C=ҙ[��&Xa�� �'-�J
4���4É���f�RM�9�⌘hh�7ȍ2��2&շ��W��j604Ӎ�Qm���h�9ʽ.Dv��5���P�b��/�^
�k��?H��I"^贰����c2{!��Wc���/c���x�6�	�22�' ��܎N�Φ�D�wX�<�$��Z��Wh|[Q�p�|�0��'M<�����8%+��R��$��?@��4�%���L�A��Z��[%�zw1�e�fJ=-M`n�x6
�u�oM�L-��lB--�#��G�a��x2C$�k/J�QQ�ȏ�a4�k
F�]0JWd��'���d��b���=�D�'�/KvHٰ�ș;D<VF�D�EtY��d�Z?��A1Lq���z|
U6�O�&�����<k�'��X�,Ό2�Sn��OII\��Hy:�rN�V&ؚ�DEq;�I^�-�2�
N�7^Ж$��� y/�֚����)�ڛ#o�~�I�
�*�M�:�
-�t��m7��#����h�2	2�Q�D*Zz,�A'&2�s!��&����{�~�S�&砷~M�R:�K�
�E�=
�CՍ�$]��Z�QJQ���2VV<=0c�
>��q��T�M����*����UX'�c�����K���yۑmyO}��4��ꨊ�{��
)��	� �
���f�6Mn��	(�n��32�N�g�葍��l�{��'��pM��c����,/��D� ��ML�BF%����K]6�-�r%����$4����F���#J����ӆtP�nn���ѓ=��F\����4G��Ecb�G��St_��_�Ȉ��"�gƏ"��"�h�!�#��ڌ�6W�p���ez+f_!��s����E��nr������?&��uW��%:=�����a<٬�&�I�R\]S|`I:�g��Na�aJQ�f�Z�L	�06���ӶM��M��)�Q!��sӀ���L�]��|!�����#dB��F��&��ۑ �n��	~�U��{/Bg�{e]�vc�d�E޲��1Kl	���`�Fd�Z|����+�O�&_>?(�~�23$(�ft�g�H��"-.�D`�]m3ѳ��v�� �
���=
��(�E02�j�����:�/�i��f�M����#B$="�S#T�2*���	�/m��u|	���߭b\�6���_ȅC^vK��ߎ��M%�ND�ι0��_4�RBI�Cg[u�H�n-�k}`h� �XO��R�w0iCFXu�KT����ox#M�����OH�}�ȏHhX�M��92��<�0,��&80�2��2�i4�T'mV�Ԛ#��X�C����a�:�!.����Qz�a���\�r��h�(9���s;�+#�&FEΙ+F^�m�|I�
$Q!Qt��$u5��K��E$�$�i-�i�Tĸu3}���[Eq�L�Idk��;��!,�J�_�=��${�R��#��Y�O�um���&o�,�[�b>1�ȹ�0��"���|��.Y
�&��G�5���iƽ�=���?BIqSc���N+to�Z;�����QM���;�B�=}�7Fǀ��F�d4ވM��^F�L�(N�ʴ��F�#=".�A!N^��/e��v��toȢ��cD�+o��:+4QV�C-`l(����ﶈA6Q����_=�A}�������cD���XM�.+p �ӏ[�Q�FFG�F`����W�
�)�ZV�#�o-�ޚ�n������{2�����ȶ�K��Z]6؃�IH4�(8p<n�BR7V<ʛ7!Q �
�L�i
1��$ڥ�+� ���޻�es�e�3�ζ��/�_���z��s��[K�Z��^P�Q�$d|�}���D�e��U���YO�=�����C�7<���»=�d��S,(6�m�۬M����A�#B���%lTu�\1i� S��=��t��1���]� 9Q����*�������qr�E,H�cӌ*�v��+�X�9�^�m=�+�44�3B6,ߑ]���R
�LY!�7�D�vt��'J�Y������t�C(M�q�Ɲ��~D!]`Jv6�/�ۤP�A˙�%Qm�Y?�m�������mp/WE]��D�6|\���m���ν+�f
��aL���N۬V�x�Y���>v?Qsi�sFP�QRp|�K�Fٓ/�v#�FA�߂�İ���=�QD�P��,����i4Mj7D�7��R"ȺT֔D�3c�V�Hf��p�ߡf�	QXmc�Ŋ�4��%
�ډ/&1ھ�n"��m��XP��G��%*�p��t��F�J�C-��Lxm�^�hU*�x�I�Oo�$��ˈde}�������>�&�0a�m�6-��3¥ep,���Z�>D
�ͤ���_/ޯ|����_����U�F폈mE]�`��&�ȹ�G����d�{l����׾lD�������a
���_9�8}��
�K�.v��T<m��w�Fk-�C;�vͿ��D��"���=X�(��>�y����=�ZB�K,64�� DfH��=We
d��G����1�(�6ޓJ�]��WEH�=��M�ͧ�V�E��(��ث��eױcƵ���NC)[#[
�u��B��D\������
�h�GW���[�7 [�6&�ө��m0׆��+�f�(Hj�أ��S=�f�B�^���Ό�蓁��*$#�rN�7B�JAw�t�D���NK�2���tdH�E]��� �H�%���JD^�C=3�xdbE**E=KO�6������Qe���
 �
�QG��1�� 	�x��QGI72��6>�Tm�$��C���BכC�߮��Lɰ���+���G�cc%��M֚�m!�y���LBX��?� �/-	.6�;�<�H-�Q4L�!�dX(������D�T��EO��4f%���bk�:N�� ��dOFҐ*���a$�[�L�-��ml�<�����L���b��kE[��^���H�4$����O$!=�q�"�Q����������DT�7�[��`�~��HDa��EK��@�+7a��[lQ�	�L��x�����l�K/�{�@y{��Ò&OI2;aUKY���	�ir�_��
-qo���ą�$l��K��E�:%Zx8�nfߚ:��"g��&���n��7�o}�~��@���4��������!?sf?�K�}x���?�+@j�+8�a���H IH̟#��-&�-��8�Wђ��p�����Mv5qU�s���\�%:C��n6�#��Xwq���U��?���QD�����t�#4J�~#�k%_��DbL����CEK���ϒ/�C=��W�g̐�5Q%i���)��R[��� ad�n���%D�C$�"3���X����4��tPi����T��YM5�N�=r
��i�̚�ȩ�z2V�͊T�C؈��5�K䊡q��|n4f�n�,���J�Q��$[�8)�G��Qc[���9�Gcv�{c�I��fi��1y�L����K/�ii�Te���32bNr��%v2p6l~L�O���V�*�-��m��u��o����6���?�	�97i��x�&W��r���{�%lS�<�L�%�h���3�6G���(�&4E��"3#��$�Ai�A�\�͌<�|�n�ʹ��W�`}�6�W��/(H�
��dG
X6�^O����� E��I�
���2q��T��Q�o��jK��=-�V��q�"ґ�{#��R�ӹ�ϑ4��SU5�%���~2U�Z�,j�gY;kG�Oi����o-<�)���|�[��H�Ll,?]��ѽ�%�	���BbB�B�!JXV&Oq�B�9��J0F�[�߅(�F&�x������*�5��h\褭<)����u����&907u�-`^�찬����J�i7���������ɴ�����!�y�mIC��x��$���6{��^���[r����9i7~���dYl�]%'VEZ�/	cʢ�Rứ�l�� �4��	�&������*[T�ܬ���g5䋼�<��e:�ҵ���=�ʿO�0�¡�g�8["� �P��h�%3$-��U�f��	�Bm��W)���[��n{BR�S���?Wu�[m��z���O��۶�j6�c��J[,����s�'�;�U�㖗F.�q��ϱ�Tc۪;��� !���`�b���y�5���R�=��� ��M���t�K�ŉ�0�\��2vM#���e�QQ�1�Qj��/�Rh��ʭaE����K����[��뉷�0da�g��0����Rr����)կЮ�¢���-Zg�|
��~�a��aS:a����]��b��1t? �>�� �L=)��R2	x#6++'�hغF�&X;Eke�q��%8x%*�O��l{62s��<�&��LhGsLH�Q���#�)KtZBpD�
_e0nMK�5i���DL��ֆ�FG�<lJF�!�#DkE��>/_��bi�{��Y�W��	�!����=Vi�a"�M�A����\��3�ّW8"̬��Hk�5a�������wb�Q��m�ũ`�=G{fEV//�ٜޙ��m��H#n��;:u��&#֙�[�	'o����ָ.��-1�<�-�1�QQJ7
�(��x
ѶR6M	i`����&ǲ�ҙ/���j�<��#'�WF�+dc~~��?�Ҕ�!.��c.D�������$�|k����cH��iXVR��V�@���{7DU�D-��a]���h���y=k��	[$�6�~~�ɾ�p�o��n��H�\�&=���̩�2*Ɂ��9��[��DY��sY%�ɶ�sǁRR�t:�z�Uq��EM�u�T�����鎌��:�َD�H�!��)KJ"m�rЙ��w�vdȌ�fk$" X+7 �����oF��q���,TVTDMc�keƯTB+J���B�)��!D���h�	Y�	4�4'0%ZIe���e��Wa�[m�WfV�6Hl��l� (&�M:�SBd�)��2�����5v�	�R[�Owc��O��f-�6R|� ���?�F�XHU�bf{�b��.F�`�IHHd�z&=!�MĒ0"=���JB!��p/R�6c�ȴ�z��(ō��JR���H�B"������f��[�Fm��Fƴ��smh��ɷ��'�>�XTU�#ZN��J�]�w4x�
�J�SxR�(�~�������)�DƠ�#����Os���d6�N
iu�ț
$ѓ4��^���X&<�B�Ŗ�yX���GBv��cw�*5��!� $I�����{�3��6�с)�RBK��ȅ9���ysj@�)\��d ��E���p�q�a!#�X��ɔY��q�5��2FC�����Ɖ��謽���4Q4�P�c
�5��U_&��2�|"�l|�#LfcJ����؋֖Lయ�2Fgf�v!��C����t4Y�z��R�ISح�
i�	��G�i*��9H�dB�i�Cٖ�-��"�镱\�lz�cH&6_)t�+|�h֖�Ly�6#Bt���y60Moct�K�$<5����m�$yxG�!��eZ}���D�m����amS��+lɷI�y� 44ɤ�k[�8�L}
�iZ �tz6-zMZ`�*D='���cDB3b���R{7EKs����J�J#���/Hh���2�!���o������WUp��
Z����v�U`��4pznN��F��'Fdw�C=s4���*K�S�D!Dh�t��:!��g�|���!�s,-&�hlܦYo�E�4f�\�QLi
�H`؉��P��\��鹶�Y�%bhm)X�6/���t�pQ�F�]1�e/�4ZQ+
�{�R�n�9�6� ����b�'Q,m�u������dC&tɁ���Q�7!]r�/c�d�"2��˒��
���'� �D�*��5����,)W%E*Z*3���H4�JF��ӣ$dFL�(M2�.��m2QX�$"�.�V��4����R��J&� 
Q ��������&�\�9�6ݤw	이�?i4��� �!�L�:�kH`���9.K���tY+�Z��K�ZV�,��a�I�+7&�L��}&�����1��#\�Qa�+B�0ɤ!����HD�֊�ү��)&��Zɤ#>
T�B�S�7�4Y=!4�.�G��RiG�O!��璲��ƚ��e+蔃�?t�T�!��XR����Mm��.�B~M��%EѲ�����z,�d,)th�H$�5Z4�f
�p���d0A��iJW/�
11`����J�ͅK� �Ǝ��e-�\{GG��F1pp�>����q�r��{1�(�4|�:�����3��o�q�.-�N���?�����>Y��#�����������9��q��vtq�Ÿ���O�B��|~���!ӕ�!���o���>����� N�������c� ���|���vp>=����z.N�NY������?����ޏq� ��?�E���?s��s8GGzp�t|�������ź��������vw���","MDRRMO","2023-07-06 07:12:01","1","","16","");
INSERT INTO tbl_news VALUES("10","8","PHP What is OOP?","php-what-is-oop-","OOP stands for Object-Oriented Programming.

Procedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.

Object-oriented programming has several advantages over procedural programming:

OOP is faster and easier to execute
OOP provides a clear structure for the programs
OOP helps to keep the PHP code DRY ","2023-06-29 16:50:45","","MDRRMO","2023-07-06 13:42:52","1","","13","");
INSERT INTO tbl_news VALUES("13","8","What Is PHP?","","PHP is a server-side scripting language that is popular in web development. PHP is executed on the server, which then gets translated into the client-side using HTML code. Your web browser will then create an output","2023-06-29 16:50:45","","MDRRMO","2023-07-06 13:41:37","1","","4","");
INSERT INTO tbl_news VALUES("15","8","Comments in PHP","","A comment in PHP code is a line that is not executed as a part of the program. Its only purpose is to be read by someone who is looking at the code.

Comments can be used to:

Let others understand your code
Remind yourself of what you did - Most programmers have experienced coming back to their own work a year or two later and having to re-figure out what they did. Comments can remind you of what you were thinking when you wrote the code
PHP supports several ways of commenting:","2023-06-29 16:50:45","","MDRRMO","2023-07-06 13:43:10","1","","10","");
INSERT INTO tbl_news VALUES("18","8","OOP - Constructor","","A constructor allows you to initialize an object's properties upon creation of the object.

If you create a __construct() function, PHP will automatically call this function when you create an object from a class.

Notice that the construct function starts with two underscores (__)!

We see in the example below, that using a constructor saves us from calling the set_name() method which reduces the amount of code:","2023-06-27 16:50:45","���� JFIF      �� C 





�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ��(��-% �
JZ z�zӱ��S�� �S��4�ԴW\�j� *x9�2�� 4Z@s׭.r2 7�E/�9� �Rrrz��8��ހN�IE ;��JP2(�P=� ��"��� ��<"�G�=V��<R�Tc�T�1�H��U��B*�H�R��(�NRm���C�i�=�Q"�#��D@�5aWz�4C)�e(��Jm��"�T����\��48��N�SJg�����do@jf��s@Ƈ�i�<��#�Rc<��y�NVS��f3ڐ.��`�`3������/̠��;Ұ��g��NpEF���8�1�ԏ¤H��i�ޢ�D>���8�ߥ*���Nc�R2E T*����(9�Z�b9�J�`d��@:sH!��qV���J�`��a
��$E\7aZ2A�����C��-�g'=MJ��ƙ=j���'�d�*�
hM�ΙU��DQG@*ل��S��,�����
�q��!��i<���8"�IHq�f��'�d�X��\��R]�� a�$T��IX�Uw#�'5n��g����!&�(���O(�z�a��V>� � I��9�*����pq],�0( ʝ=k���!��t��!E9�)�+�� 2��Q@����zՉ��K�G`j�-t���sN�(f�y��U�@T&����OUJ�#�=Xv���c����x�UM����d�F�H�-��+05���#;�N#^O5~�Bp�z��+@�ɽ�諒�l;�)۩7���%�$*��ϴ�&�R���&�k�+`}�J�Mv\��*.��
*X�6�JZ�AEPE� R�Q@<�(1��GJ�SĄ.��p�����qҚ
����K���(���S��S�#�\�*6O���G"�:�T� q@	J(�<
 @=��>x��iy�B�=B�q@>�j8q�)A-�i��NL�$��N>���(\qH	 �((9뚕W��*��V#$.Th��w�^D�2P�@�
�qǱ���B�j�4�����E9��ɩ1���=hT���
z�;P"���㚛a�i�3�"(d��La��YD��5!����^i�>:U֋ڣ	�M������⮼D�^I� U*;Tlj�`��#��,E.��� Ճ��"�H�6�/�=E Ƣ�sڦX�zS�g�Hϧ�j�P��*[xCWRԂ:�I���V��=E<��p)�jBY��$��� �W��h�I��"�7�B8��*t�'8�b����[n`6�ƌ���͵t�M�H���S�jS�mX�]�R�����6�`�Y�'��l��wp;��0�kFG�M����������n�$qqA�FRMSt+<����0�N�z�\��[nߊi�S(�!n��=a����}��q�L�N܌g=)��:;l��#����q���QB�3��l�NNq�)]�*6��'6G�}�k�Ҵ���c�#�s:<��^zg��4����_'����(�Ra��h�"i�����@'���q�ihidT�G�IT��9�\~�h-�XF9�i���U��rƸ�bL�H�)��|TI�Z[�fk��6Zt� �g�k>��47QO��@��G#�Q�ܟܣo!A�:�&�c�M��h��/!H�?Q�Sk�t9$�l���t�r+a$�����qI`u
�{Z��2#���Y�g��끟�U����׵
ȭKEb
(�����K� J)qK@
ַ�-�3P�.HY���d
��TU�d��$Sŗ`;�]1�M���[i]��sg�)�H��=�3c7�!۷m;���#�ul�}:�;�?�j�cyܡ�=MM+;F���X`��.1U'����SZ5��ݚE����i#]�r�����3�i+M�7`:V�����r���\�ƭ-�Ħٚ8��U��wЏu��i�2]�GDa�F
�B61��u��>��;��Y���#��<���rG�hZ�	���+V�F�����c��&�PҴRL��wO�U�BĒ?:݆���k
	6�=��]��3BWd6nͬeJ���TU���^��'�T���3V��s6.�62���G�uL���W?qxq�j��s�J���� 1YTV�ׅ��2�A�8d
L�L	�9�ḟڟʙ�O$�ހb�jE뚌T��L�O��j�}��\t��[���0��4"Ɲoϝ 㰧]�4����ԗSyI��0H��x��H��sOȟ2�[mb�#=�1����U��.�<
���?�+�"I'�0:�j-�<�p��d����q�@۟!�MG ��5+�b��d$.iT�ƙ3ah�	�4!,��NjQ�?�j�|�lS�Z��&rI��j ce��&9�1�֐6;S��&�e<��SK
3i�4�H����"ƕ�M�N-�)��X��֚i�G�4�((�%%hҒ�u��Ҥ���)GZB�t��4����Q`q��S�(��J4�K��� �޴��4�O��(��))OJ1�h ��t����ҌP8�� ��-.M ����֘��P"��p���S���<��U������� J
/@J�i�+:�jU�O�� 0F�g��A��
V�}*\�X�␙]x�MJ���53و�]�$g�J,eEcb;Ȫ�$K�1Vct�EQ�]�Ta�9��H��1#'��z���\B�MK
���[dt�InM[�ԜqL
��T�m�"���Z�ǀ��JH�{n�
T�,J�m8��)�hC�oZc
�g��L�T0��֮���}��T��A5�G��+��L��� �~�=3K��s1(W�;\��g�h�]�h�,��WP���
��]~�|�[���l�g>��y��h����.k���q��mlwQx��A ��E�ֵZ����be�Xc��YdPÅ۞��>��va�8��O��1��.�EHHN*��B�$U+�@<�\ٻ�J��bzUEԐ5c�_�
i�,��#q�ϖ�$y$s���YFr@�c��9Q������ �Y_��c�.Ϊ q�:sR�8�rF�=3Q� kY!�X�V�'���|܀x��4�M�ɐ@�5���@aQ��J�6��F� �u�,��Z�s���9�j6��5K���"řg&��sq��ʡ����+���k��� w�k6�y$9���Սg�ya`�i"l�\�/�F*����Vvb:Zz]2�OOjY�
��Q�V_� v𕬸� Ss�G�/� Z��?ަ�|U7�9Y��3�ҝ��u5S��+�?�z��4%����U
WC�4ۃ������RȻ�f�(B�&]�Ҙdi�,���;R(��%�&�a��L}i�B�#�i�?�@��6�O4���!$�$�I���L�p{Rg�!8�@qI׊C�;RclSh$搂{R) 4��=i��P�E)�% @M&�(�җi�1��C�yR9��4�&(ǭ� ��� �(�<�삊 ��JZ@QE 8R�{�@ť�M�@��&� JZ(4 
ploz^� � �/�;nzP �)qA ��sF�ԋ@��L��G���or8�B)*r>�b9ʰb7��)�2� �<�1=�o��%�"Uy���Z�P�+kL�(�RB�=�֔�OS���|w�5Ų�n��q����m"����+�:I�β��Qa�	��k��o�;�<�9e���F���%��ܞ�
�Ȑ)��\�a�Ҩ��hQUFɭ;�=lIu���nV�SM��R��)nJ!�I��dg	O�sV�L�9�v��mż;�9�6��I㞕�%c�2��pù2_�Բ���Z����k��8=;Vf�&46%�U�c�|��
cq��&� �-1��2u'�}�I�M���U.Iɧ���W$ط��FMk[]�2
�Z��]~�d�V凨�U��m�����Gm��Y���cQ��'��2����iZ�8��_Q\��D��T�IY�g_i7����q�!ܿ�b�rk�`�c�JH9#޹�h��
8�4��$V
�f��r���(�=��\�F�����--�U�Ou�F�[c-�|��OqR}��BiZ&��a��)���t�b�f�r� 3tz�%Լ9���ŭ��=�~a��-a�5
��������p��RT��iGI&���6���N�����&�v�*�**����0}*�[��j�F(E��AEP1(��)4 �$xOZEP:ҏ�@Ǔ뚍�v�C@�QN�jR�G'�a��1�8!'J��T[y�OLJۤ�P��94�� ?!G%�{�q�Q��;T��8���V�(��=�P�Fq�fZ;*�����坰�$[ɑ�EW�}��I�m^�����O�JEX@K74������rE�||U���Z� ă5t���Ca�S;����ߩ�J�@�����uہ��H�D0:��&���@����HpҘ
iϦi�c�a��c�R�sڙ��2����!�6�c.3M2f�95#����QI�!�P1��t��t�f�4��I��
x�G�i��ps�HD�`�s���sbd�2z��+�~UUs�Ո�a�"�&����=��k[��2N�s�a�y �FezըDR7�f��pMm��ގ�h�I[�ҥK��̌{��Q4�6�j�wc�M̕��/!K9��3p	8���ֶ�7�A�'�y���f�3Px����rl�Qw=%a� �.�v��n�_!~b1C�h��}k;�]!tXSLѨ��\��dX��Mk�����JwͶ�I�"�5%c��s�r����5��A.V:S�
k������k;��.ca����;������p�P��z�v%Ⱥo$Unn��j���85V[�94
�Y�j���y����U&���А����'�,�g��Ǯi��y)��Z����@ɼ�ԛ��z�
�ؤ�sVV|w��~sR����r�A���\�U�O�zT>g�O֒Eד֡3㡨d�y�<��lXy>n�To&GZ����Q4�4҉����I��楄�1��W-�H�[��w5�4��IT+
�Li��iUN:R�9<�	\c8�>EDz�ۥ1�տt�ҡ�刢%zSd���)
�.-[%�s��w)?��a���
PGZ��`������� ��o��+.U�g��LKdѠ΂-A����<�� ���c�ȮunH�S-��"���cs�M��@�{�"RAn�k,\^����'�@7sE�1���A��i��֔���X�ny��r\:�/8��I}
�
	8���	'*�5)h'������zM���w�[���~��U�iOp��8��i�jz��E*�V��F�׏�kz*��9�R�-�㼦�oΦ��#�k���4
�{���ғ�c=(|��Z��G%��Ӿ���	P�z��)*�c-�*�����ڢ�+08�U݆��u<R�����JdBG$��8�y�w z�J�q�
�����'��KsA4��>1��z��L����y�i��r{�~��;8���6��Q�*�a�;m!��B}�(�(��+HY@=����3IFM���f�J ^��Q@RPJi){P1(��@LUOlSL^��K�J ��Ԙ������ ��|�>Ԇ؃@�JT��� (��)sIK@�	ɤ��-%- R�sK�`8t��4��g�p��(��:�iA��D����Q��"�hE�q�T��׹��zsO �EU��T�Uj�Z� ���q�ި!����b4b��f�YN�sTcc��?y
 Y4��i��#>�r�S��uc��3Qj:����M��b���)�H��H
��g'�+�9��o"������~���ƚ�|�yB�+�e��$qP�t��s�RS;G��-H�'c"��b�]�����̹n��}���#�w�٨�e�Pʙ+�<�R�ˌ�Y���H���*��g��/�/(θp:ʨ4��<�&�|Z�|���|�A���"�?Q����h��8�!`o�㈤�<A!RB̡�2y�� >���ȩ���y�j��8����`��'�c�i�ҡ�'X#�wiyI{�B��<SŲ�ɘ�Nv@�w0��<���� �"0`qޞ�7�4� �4m�x���jّ�+��!�A�!h����Q��q��˾>��ƙ���i� lp:��@�jb��3�Q�2��*@��i.S�Teb�I5-�	o*�_��<���r ئ <�� ��N��Srzt� Q��}��!�a씪ew
��<�fTs��i�̱L���9��r��b��>��K$�� @c�S7�΂X���S����f�jB��? � ϽY�T2���Oj���4s��ɺ1�ds����
�嗾)��x?�G��3L��iRv����9���I@ߟJps�5i�@�	���oȨd��@
O4��2y�ɠV�4M9�I� Zi��)	��3Fi3�I� ^i3��8 19��I�)(�aIK��) ���J%RRQE �Q@Q@�) b�3E MKIKځ�EP��
3@ɠ����� � ~���6�R�4hyU��`�i<�'��h��H4�A�BR�w����R�s�Zh�P�(�
vi ��)3FhD��RD�[v*jݙ�C���<�!U�'<j�C�J�[���=��
����e�`���!�������9��N1N��xiE�nG֬��?
�[���D�*J+D�~�˒��IV�Ct�
��rO͊���>�F��^X
�[�*~c��q3��-<J�SB�:�?J����y�����1�Y�� ������N�s��+p�5�8 £����1�K�P�3�����U�d]��Կlb>���X�[Y{�>�Q^�M˿9�t�b��✐�~~�
�;m"�u�	J�ۦ��-�<��+4�)�G�{�����
G��x�O� ���,��Ůq�p	�G�\� ��Z�|=t�2�E�� J�٦\ѱ��0�Q��Ѐ~u���2]#[��Q��p:�������]��\�^��sp�zaqAܣ�~@����?�%U�r���L� >�ܚ��rW�QQ��@\�ʝ� 酦��1����'���?3MG@)��� ���,����os�F�G4 �'��4f�
(���.i��4vh�74��.isIN'� 0iFh �S�=s@i(=x���Iޘњi<Rd��c�N$ *1֜O4 R�G���\c� V94������ '��s�+`9�� �4Q�C�(�z�(��@-!�� RR�P0�'zZJ@QE %Q@RP�Ғ�)(��N)iR�@ţ����ъ( ��( <�KIҀ4��K@N����[��L(~�#�Nh��;g�L�t� �K�#�ր*���#=��ji���
F�-�8�jD�K�L,hD�'-U�-��H���*;��<�iu��^�)��W��3�y�i�g^�Ar��b8?�4N�ԑ��d��ArOA@��yrw+c�|�g߽4�&ҡ����nlc&�$��1� Q�)��P�'� �M� [�#��i ���C�m9�sUsI@
��eH��׵yN}
(��h�l4R��Fi��]��	4ulb�$
)i3@���� ���R�����)A�0!��ޘaq�?J�4���
� �){լ�� �iq7�>�
�p{Ӂ�6Ǫ8>Ƙ�H�T�h�+/C�Vb��
��4�4
������M� 殟�"��D�h�S�pjզ�wfA����8�ʭ5��K�/J$�������F�W�$���� |�moγƱ5Τ��ʷo�C�q�i�]���f�@�����a>kX�Y3(�=y�L�M�H�5�p$�m��t�wc�@����zT5�I���N
ˎ5�+ay�k��y��x#�R�.Y�Z7��0(;���e8�����ޑ����R�j 3�I�Rd�2I��i(�zPCȠLA�$��E.(��qK��'<�47f�T�L?J7����zP��4܏ZUi� ��_0��)s@�n?��n����I�CFi�	���f�
(��
(����������P}x��R��G8�8 ��%)�RPE&h� QE %QHaIE RR�P����� QJ=��?S@�
MH �4 �:Q�((�� ����@�N8� "6ZR	l�=���.�@R
h�J��H1� �4h���(� Ӂ�L�Z]�Z�N
anM���	[��RL�h��o�����`���<f��H�4���CA�`i֌�P i(4�
*}��E/��
.+��m>�cu7=��c�ymR��P~Y��X���R�,z��Zu% Wғ���PE% JZ((�� Q�(���9�h �j/�R9��4sA��7sҝ.э�├�� �撊 vsIڎ� �0�s�L�rW� �AK�S:�w���
�<f�8�	ij<��.�@qKL;ӷ
 u.}i���?Z\�y�/� >�L���*�S�sQ�8���4��2�Q�)٠ �r	ZAT���S@
�� M�Gv;��O��~���GFo�s��lE�x�a��:��H.=�b:I�w��GBU�<���Ր:���·��ӥ�nb�4V�F9�#� }���JT%�#h�*.���2�tY�K��$���f_�"�{��ՒMz������תU1J-z�oQ^u�iwZMᶺLʸ�\z��W}���s��J��搚3[�i3A<њ 3Hz�M!�����J3I@�����
e% ?�sޓsz�`�ԡ�Rh3�IO��Ӆ���(**aj���8Z�� W����s���Ɍv&�+R��U�.1�4����ʀJP�{����Ac�@�R�4���O�zJ ���܁G��\T���y���R�1��N�� '���?�(T�
Z( R���JLQ�@��֓4���N�Pri8� ����w��4�JZA@	K�1�% )�����))ON)( ��PQE� QE�(��R���֛�I�z��M&��f��L�@�\�#� g��<b��<����JVl�8��4 �R� ���F3@
6@��1E .h#�n=ha�4 ����<�I�g����҂s��̜R��hV8hF��`�U���ޖ�#�P͏z@;q�&
�5(=q@�iA�5���#�֒�&�(��ps@��������i�;�.p(sJ	��J
�3�E'J ^3֌�RRg�qҀ��7q��$�����@�i�0q��RP4��>�mc�'�,�S�2�4��{��,F=�E��e�/ٽ\P �!!�����L-W����`��4�c���Z����0fm�e��Щ�'���`I�X��[
9�b�ԃ)VF+�ٳҏ�6�=MA"�W'P��@G8���c$ZѴ`H�>Q=Y����D�"W����v�X�$��Q� ֯5�܁�׭��|�Jݱԏoz�?.�h?pᮽ�=�R���j��K�Z��6)�X��(�����[��Q�}(XB��
]������J01Ґ��ҍ��5=!4�K�J��C@��:�y~�&M&I�</��V�"���z(�E �9���ϭQ�J 	��9�b�^� �QG w斐��F�����H\R�0�Sw�t��}(�"��H@8=z�w?$RS2hɠ�I��)���4~Fq�2* z���R�h��F�o֓<� v�FX������gތ�s� ���Rg� 3Gj)
^�^������恊NGJm� �}���>�P8P!G'�+SA�(4_��<��p)4 t�H�(��Pz��'�Jw昁NQ��S@� N'v�F)�E�w;�p�8�*Jdr��p�!��&��^z�9(���3zP���T��)�jU|�L	�{҉1֙�JBxɤ�ǭ;#֫�ɥ
�&ʌ�?�b���9=+��#���6�g���q���Q?���m�wD�;e��gE<���6����IkVv���
��I��Ҹ������޴m#�D���X�KY#�s��<)k��m<�4�D��c�;��77�D�� 5�w���W��;�澕��V>��ZŭC_{��+r@�Q���6~g9��k��;&��{�{��JԮ5q/��f]�w�j�Ds�ٝ敨̲,S�����&Ã������ۤ�a-#�$��]��W���N:\5���ŗE���ֹ�?Q�[u���n���t����<"x��m��kmRK�A��f(�|�����Vs^�iE��yW�-ů�u���<� Z�5���ǉdw<���=���s�\c�Z�����m6��4��\ڟ�p:(���E��>���SV��7ދ��o&O�_�9��O�G� �ٛ�@���6h�,E�tɧy���M?�'J7ˌ ?�.tA�R��q� ����dP�E% Q�L��@��<���
�Ph���@��i̧8�&)������'Jp � '�(���җ%B��o˚TB��ҀK�:U*��fh{{��Q�а��䒘G$�VA����qWmuam`��;uaURUX�d��V�.w6i3�ji�'p �M�
P�Nh��F�Ss��tn{�1��ҳ��ri��zRgR]�<�n+ޘO͚	��8�I�5Y[*ns�H	�SZ�=��s�~h�ET�($Q`=M��kH� .6�jصb�\:��W�hZ��L�U�Q]����z���#�'VvS��f�V{rc߰Ʊg�ؿ����Ǻ���w��'�����6[=�Ԩ�Jk�9ܧ�=hZ�J�Nʿ1�̥��� �{�_�q
�B�G�S4�Ш4��F�7_0��d�Sɭ-7H�E
�N繮�[D�T�Ż���r�� �\����ܷil��^���W"}�3\���'�j�i�y��CL�K|�δ6
����Y��,n�]��o�:�pH�9�kk����1Њ���/t[�
G���|�>�I�<�U����݆Rڌf�J�gad�ow�xm���+��Ҵ�-vY���>�M�~�汕h��cFOsǠ�/�R�g9M���� ��E�� j7Ӭ�����rZA�����+Ѥ�lq#��$Ԝ.�ۏ��b뷱����b��-��t�}�K�Sܚ� �ؘ�='֪I�ȋ�����_�w995��Su��
�ֽgN�rs�1\O�,b�ķd�!�H�va��3�bc�8���Fxʶ��׍��GE�q���I�-���Y�����PZ�O����a3u��j��^[���p�L)�t�
���J��E"�� ޓ�Ծy��I���>� ���ݘӅ�@c�-ޢk�m  ���4�
��1nBO_JXf�'�@mQ�
�z8V�*�F*�����O4f���Gn���p���F(���o�(Ņ��P M(cI�F3ڀq�ɢ� 2h�P~4����j` �R�@Ƞ⬛��b�ƿ)�lsP}E&(�@�1�qNLe�AH#�My�qR$=#c�4z}̹�ĝ8�h�ar���J�]&��Ť��*E���!�؁�j�9��<��ezkm|'��TQ����2����kU��}�;��(�+�OO�w }X���H
�jͶ��G�F
1WZ�����q"Q���נ6��~���26d���9��t�-�Œ��kʮL �?������@.y��R��՚s�f�G-is��{R�*��
�u$�MQ�|5{�ʊ̗1ɝ�C�=�"�ല������ u5T��+�0�ׁ]�x:�}����U�
~��yC#��]J�� �t~1���4�zီup3�i8�I��N��P�4ژH�*<Tn��JT�E JG���
�C�Ġ�G���F'X�H�r���iگ�t{����0����88�*ҌN��Mj�0v-�9��
��}�cVЧ�$�g�+�����M���m��qo�����YE�ٝ�榮�>Ϻ=�*=�zVׇ4K�~y��x!�c����
�)e�� v{T�]
	����V>�
N[�������l�Ŀj���!��5֩����$�%�c�v��*9��k:����'��(�\��*��g$T$�$��$��q��E�n��Q�X���TK�6H�
�OQE���S#|��������D��jU��qN�P��s֡9�֯�l�q�Rdd8"�L�"�<��I댊���*����Y̸�Zܘ�W��w�Wi{��*6�]�� �5_U��1����|�/aYv���5�n>�9��R�Qh�L�G�#;��L�-��
=�A琪 �N��N<*��x��b�Y�z��n�OZ�㊔��;Ӱ�L��Uw��<�8��"�O2�#,;�1�nGz�)?z9�5��↉��PO�Q`�lɎ9?�F̼��p#�3�7?�H�7D�j�NOd'8��dJ��zi9��2�w��s[_���i��[=��Wk��T��[ŢT��g3�)9�J��G��2�Jq��\�^�}[�.'i.Õ��=:���>d`�ӂ�Wm� 
�WX�ƅ���påUӼ=��F�<kp���lZ���2�"v92�uRb�/��o>��V��r�q%O�:/	��k�:m�q��"�:��a�݊���<���S��
O�W������[/�S��d�v�?*�`eՙ�B�yB�Lǈ�?E5*鷯�m�?��qkj�#�R� �'x�Z�.�%�DyjhZ��-�	�mU���>���l��4c��zl_z�1� ��Io!{i���'��Q��in�}mf��Bu W^�(��ҟ�5��x���$������~;TT���[����ue$�T��+�H�<0��� ��WKm-��d.jK?���.K	P�T�?�k��j�m���}�j�|:�ij>Z�i��_X/�,ߍL��׬9��$~8��M����M�
�f�uM俞*	u���eo����[D>�'�=<�j���TO�XFpn#�����B�1�jا'���j`�D��]����$�?,�$�~�?�t�� ��~��D��$�#z�I�,iY}z�d_ՠu����VF�����é4�GS��}� �8�W��{��=�Ճ����!���9?�J�f�G�UTc�;W/UǑ3�
�m亹�aR%ڠ�4S��J�D���iSs�4������ڹY`�#��U,�#:�Щk
�G<�i����~�����Q�����|�;+����4�H��2��r���[��ش@?y*�Њ���[�Q�v��̐3r���W4���lk)�w4e����n$  ͎դ��</qް.$0�0/cY�I=Dne$�}��R�ݕYE��ǜV�w����X�E�Z��t�Y�c�(xD��[����,I��qn��$H~y�wg�n�J���DJ��3�o {b�خ�mŉ��}+z�S�b��ªu��XTvF�Iu���;_��Hb'i��[N]W<�ϡ5kU�9.�'n0yU+m�Eb8i�O�8�L%����Lׄo�X��1�2��޼��ufVR�=A�^��v1ZG�pNO���F�H��*m���Ɂ�o��?�kB{���q@`�9c������Jp)�q]g8��rA��})Nݽ
(���J��]�ڐ�#�f�(���@���%4�NNjփ����$G��:�~����裇�_�i��jׅ%���Ag�+�^��������c�<����j�o�}��ڕ��TH��7@�LWi���w:U��VBa4A���d�^�'&��±��H����?\�H|�x�~��)�Ǉ���ã*��9O�Gl�׆]�w�.p�TOCG�]���C<Ep��?��}���M�׫�7]:���o��� ����Ԛ��gӥ��LLc H��ku�W����;X�VӮIݰ�
y��VcĜwzt�2�[&����Oso�k��,a[��+%J7h�ͥr��G�n�NjA�Ap����U_"�����I�S�I���݌|���=*�T��NZ��߲�пo��/u5��P'��T����k��f�������O�KLz�����������?�mnuuy����:W]X�"׳q���K�N?���H��~I���\<L#�.�H=�w�~�uM
�N�;��G���gH�#{f,�ָ��^	�g� �\�ѣ^U��?ĝW,V\�q����[����F�c%����d�6኿�L�Ѓwf�k��w%�];�7.s�����ķ��5�uiJ�.�bEa�cf�Ŗ�Uf�f��7_ź����/�j���R��y �qYCӽ7>��Z�v�B+��"�6
/Q��[]�"契������[VlF�� �t?Z�f��hJҖ�M���U��҄|t�1��P�6y�C�t���_�Ϯi�k��s��UU����T��׊o��ր�l
s��Ni�,g�Ĥ�`BcG���Qڏ-0:�9-�q����d� �gݐ8�p�V����S|��v��:���X~�O4�wlR@�y�>�3A���ZW)FL�>1�����D�s��]d���v�g��GºZ�zLq̧͜��q� |���֥��}W�Zw�=
K�3�f��hL�$VS��FC� ��S=Msw�[��k��Z�:�h�/�{���g5�̈K�9����kw2
+46H���{��+J>�� R,��h�5�Fw�ӊ��*P�� ����N�a�A�)JOOʦ� 
W���۰��2a��j܊jNm"f;B��A݄v��L�HTzV�c�(��!\�*ܑ�	��(��VۊLJ�baI�Jw�*����i�V��X��J���T��(�)�`���~!k��Cʓ(p�8�O���WuO�7���s����%��䡺@?
⶟Z0G�i�ek\G}��Ŗ�2A"�3�p$�sx�� �Tsn&Q��TWϥX��.����I�?�������+I6w�$�n�����O$v�ˈ�1���<u�A�2���4��k��6'�W�[x�S�P�J.e��柪x�MZ���2��2���ڵU��c儠�n� ��o{s�O�kM{T���y<���� ��Ws�$��K*L%&��ٞ�ՍS^���ݮ��̢շF�3����16k:���ɅFs���@1�H�*-���V����"R}G�[7*Ο�k��5�=/�S���'�_yE��;q�AJ�\�ĜU�#p;&F�n*7�p9��T�*�f3���T���W+11�>&/��3��՗��N@�0
��u��g#�8�41XFX<`�i��N*W��.�4\E�p���ڂh��pq�v^P��
)�T��q�r2��wv�P�*��
�$��v}ީ2����L� �Rz�^����(�-"�>R����uM����l�g2���]�>�լe�3�9oxn��ng��'Ԝa\�!�)�}� *��q��\��<7&�RS�tc�~����wI���[�7�xF�
�-Gлi'����w��5�n��������*�DW&��-�@���ri���c��4�1Zq��jD##� ��J�T�ig����"�'�=c=�1���8��u5
���M�ɻ�]؜Hd\��6<��"�� �4�BHX�r{(ɢ�b2��b�FT武�{6<�Y�q�lg��=Ur6�󜐣�<�p)م�,���қ�h85����+���SV�5a����:��q�Whi7���Y��]���.r����p"ʳrH�8z���S�(q� ������4�����F}Z��G��pU�_��S�
vq��Y:� c�}���>����r����E}�z\�ݪ"!���l�fs��ڢ���ե�_�A��G57��\�M&�@xB~��h�1�J+y���cIҮ�����Ui_'��t��8��r�, 95W�ڝ���m���� �
�y<W�[�8k��}��+��a(�GxrO���\�6�������?�F(x�]м	��Zr�m<�8 > ���x�ò�]G��v�
onm��J�����D$H�0.�Pc"�y���E�x␓�s\3R����OJK��,��ۃ̬kc��E���F�����d���8�k�z��i��@k�{��� �8�aQrF�4X���PHޕ�%�UI�z��;c ~�g`N{��D7m�23�k�ׯb�t�Eo4|�I㞜WO/��}zW�	���&x��^}�+�
|�Vh�H���E��z֛�zC�E�4�j��d�eu�w?Q�x����Ĺ�U
�"�Yf�<f���!6֭�N��E��7d\��챮�k��c?���㹬�ڝk�~{
��D�I0p8��^-�ί`�Bw^�.Q�m��?���VK�O� =H4]i�"6��f�p����Ei������@�<,�G�����#��I���wS�W������v�2��m��g&��F_:���O�5�����t\<��s��Q�NŃ)��j�LF0?�IX��֮[��{'��$���B�J���9���MN��w���Qқ�}
ӄ�N�i��\���j��qҝ�/�ț2��'�]�ǥ4�����`���]��S��q��+�i�V (ԛ
I�F �Ji���>�l�4�/�
ۨ��֝�t4��0'�j�_ր*���|�:U�
1@����{y
. 㹧��?Z�Oj�F-�v�w�-ޞ���x��Yz�j��e�RJ����*]�}E>(L���8�5���5|��1�?xQ�=9�0��i60�O�\��>�Ҡ� ����?֫�
�|�?�Hmӱ"���iw�pi�
�&ݳ������2���9
�=+i���n#h�U	|�F|�(X�3R�wqnu<�� ��T� TN�����Ԓ}[P�]��I(�>c�*��>���!��4�;Kr�Rpw��d_��[�*ݤv�e�,(8 n5�T�V��Q�:*�=Oz�N+Tm<uiG�N���F0������m"�0��t�Hs�4���<U�G��z��� �Zxh�%�#����{��.��.����xm�V���+c�� ��ė����V?Wr|��U�Vh�g��������5OR�.�(�T��)a�?`��ۮ�P�٩�nUO�45�J?w1s��ڬ�.��i���&�#����Y?�#�i���.��'�*�
Ǩ�VmV{��e�Ff�����=s�i֞�na2Ow���ʻ�L�ѬV+t�
(	2�S?��j���Sߟ�W��P������@�3�3P�B��eS,�`s�u=MO����Mo$e���01��F����JL�n����B�3r�X��{��ɔp�/�O�:Ţf.=����j���K�%�o>C�סMw�3 x�J���W�j�\���NK[M��s���� =�}*Õ�/�M�\��<F�tُ|c��q��\�?�z޽�k��1&Uq\r�YP��G��n��6�f�$H,3������q�j!�=i��|;}*��� #�[����l��b���W�Ҟ�=k����[(۪;/���8Ǩ�Y�I��`r
�D�I��.R����4�LR0:R(M�+ҋ�����)ێ�v{�絆�[Ć F�\��P@"��b"F)��5#��Wc�0�j��s� ��#��PE.qN�T��#�
���,��H�P��ч�E�Zd��`������ӝ�ؑ��28&�w���B�fЭ��'�T���X��O���#�Z�s��?���>�}������M1��F�,�'�'��N��Z��m�����TZ� ��mF/�J�Ź�A�yzT�x�ė���/��V徃�;؝<�8�����
e���K��D(�[m;�S�5�
:|�7S����.hv:x�/�Gr��*7dc��r�,Ӭt�I��G\��W���d犏R6r,f��l|��8MM6��(�����L�ǭ?`?�HA�<�Y�lۯؚN�������V��9�qJ��n��Թڐ*5�0��"&YV4���Q���'����c!�C���
�(��e�����`&������RV�)Nݹ�U)x��fg�O5JW��kc#�R�h2�TS��e�]��1��lTHҩ\���q\>
;T>Fӕ��,�lB9��i:�kS�a�M��.pA�EUߴ䩩�3�T e���`�dv`i���*�s�G�3b���'���^�c@�zVW�<HŬ�#�˰a���Cz�8zǾ���餑���\T�S�gT�K�����@�!i)ě�}�՛D�.-n�����k6NF��O�k��g:�܃
�pV��a��>VtF�yѳ��j~$�K���!N\��*�� U����1\/�f�=j)����.s�{�a���l�8u�>Q����FJ0w&�(�H�q��RL��_�֬{�_i���3��һx���MYgq�CW?�
w/z�x���(�J!:�q��;J"xh�t�1�ݤl`�u8���X��WA�ZEqqm�#�s�"�e�2�vҩϩ�R�SJ��
t�<�3�2GcY�t5��g�AϽ>9� ���E��rL����)�~tnSNb�	�N���jm�y�4H��W�Jch�`;ס�U��Ò*֛d��Ae�[�g��@�o�G��2�
��R�
��R�@���|K�X�μFa�1����;�ws���W��]ȹ�}G�k���	�#����մ()G��y����k���-�ԧ�
"��_J��%����`0���T�h��F?�`H���9b}��[��������Y%�
�tگ��i>E�;�]�`Y�Vv�d(���{:� �V��\K*�%W�z����^����J�9�:6>V�G�S��F��+�̺��6�Y�L���txi�G���]�eLw8�/��Z|�$?���k4iW�gрpE U��޶�0=*����A�/�8(���q���֕u�_�{h��
X�������wb�����)�һ��W������1��
�|q��׶�o8z�x�.�ꌎ	`���>��<���� ��Yiw3ɭ[+D	
;���M����RM���At ~�Y����N�8��69Pm�c���x��Ke
s3��q��f��#{�aQ�g ���$0\�Ry�d��(��9���`�Y��j9�{�������%�d�,�@�'�IF�
�#nr>ꎔ9�춰]�G��O�=
����R6�����X��V�#��\��j��f�/f�L\�;b ���,>S��=�i���7P�MV�Tg,�O�CM�@�e��c5^|<�P�3�֩���  ��N��}*�h^�<��JVVe�6cgjA|��,����[���s�#~5i��US��9�`�)Y����NӔ'%��z��_����;۟�S����8�A��Y��Yg+�J"��1����V6�m[σ��F3X~v�g#���#;�Iɦ�3��QVF2��ԑv����PB���8��Z�r�ǐ
�ne*Aj��,<���O1c��$�}s�Ws�� ڵ�_��幎6�#ޫ��5��al�F�,��v�t�+5(�r��d�ٛg�ۛ���J,d�0�20�$�Gw�s�*��t�1�YLp�+����9^��{V�Y�w:�įt]Q���s� �����Z���O�h�*��(��ŗ&C�#�{ׯN�*z�y����ݥ���C`b��?�m�6�FJ��°4K絎uB�+g�� ��`�l�!�mn-�`�l�b9�8f,3�X�pV�z�����&%�1��Mi=��ѵ�L7̩�n�����X���Vȳ.���FC��q��>����+~�y���h�[�ƒG&>>b{��:`�761ݥϕ�)m���R��z�y�Z������&����ot�ہq�Q�~���qȮ��l�:����O���{g�S�һK��(�3��y�Vbspg�F�(�J�b�.2M2.��k3S��4�^�̒��
u�}*Rm��P�g�o�A��&�M� �O����j�*�5�<�O�t�3��Mfj���/n�dWl G�5Ҩ3�7;��I�������@F��� 7}+��<a�j���#<l�b�xj�,�t3s��(�S��״��uYa<�xoQ������6^Ѽ9u��:Λ�7"��<5���iW���s����c�j���f�[=��S�Z8�Q�l���� ��
z��-�X��4�4���� FNI�4�v��9���d����Zr�Ԫ�Ӽ��V�wjq��z���2������&O^j���ܧ-�Y� T)�
�U��q�+JvpAȫ~R�D�8?����P�y�����ʵ|�e��@���P9q���p�Rx��w��>^>��y�:����c�,�S�-�u_�K�Z������S~���){�bm"���ﳹ2��&~�}�vJW�Y��<�S�YP�؁�f��g�(@�OqE�A9���2���t��K�h�;sI�CG�=M.d�S�yk��&�94Ҍ9�:+$��2*���
�i��0�\WF8$��F� �0��oƤ��f*�1�
����4	�`j���f��k���.� f�����i�ݥ.H�q]L�)�Ͼj�_f��/bE�W�����<�C���=z|;��j�QS�������}���6�k3����i��O�5���9�F� �Vv���>��.-I�0�9�8���o$�q@C�|ի�t6�h�Ն���{{T�RF$��@鑹Oq]q�j�;�N�>#lӅ���O�W�� ��!�S�b�oǢ�'֥��G՗Yi�9�Hd?�Q�.��#���Z���#@ =y��� �s+�� zVԪN{�T�aԀ���ՒPGCL8�j�0 "�;�֟e�����Vq�:�^p����^�a}��ik�8T~��wh�ބo+�/rv���j�̯Ӛr�Y�j�OF�F0j��*q�tQ�Bx�^�KTҏ��×�EJw�g[XX_۰�!)�LK?���|�����/��"§�� ��Ϩ��1bt>��
�S�uc�c���bU��Q�W t5�k�iqi��[�^FޟxVt��wfR@yV@I��ⶆK6c:�w�:�Z���<��FH�s����
e�����)Q�y�v���WWI�����D���j���ΥNb�ZE�Gp<��;�0+wG��UKG�7���@;f�e����RIg��ǭ	��3yp�G��[E��0�m볉�ʪ��Z�<-�ĕ���|�6��=��F�.�Al·ab���aum�%@݀aYכ���CK�&�cYYC�E$��09���G��<dN{�)��n�MW��ZmlY�v����U�2�&�&qާ�*�D��sN�j<��'C�)r#X⤷&�q�4�� Ȩ���N,p�>��b�Ra;�ߝ<\�R�����J�`�:F��[�h\���p����5Ok��G�:�P�1�y��ў�)�D=$�$#��Z�H�4�� �4���4�;z��j=�:#�����Q�=EPL?�ԋv{���rF�JZ2��$`�A'ں��v�7۵�rL�'p�W9����*�1�Z�YE��y��j��pt�+���α�-:qZ��6� ����|�3)����j���[��!*[��z��,�z8y��%������jp��i�D8��_��ҽB2�9Mr=�W�eI,���C�Ue����t!���z��Z�N�)s0*���ן|N�l�/��-�<ȁ2�+��a:J*�T�<�h�籹 ?�&���8��Y-����ײxZ[mj�ʴ��m� ��sO�tH!��� J���1�U�x�������lx�8iP0��&���E����j�f��vр�\�����*�����{f�
�)?CS,$���&�M�����%�VrR=i5�3��X�@$
�o<qew�J��  �Veτ|I<c1����@����ÍH�L���aj<�q�s�dx���urJ��3޴�þ!�%����e�Ğ��R|� �%���uC�|�jm*��.����C���~c���.��o&G�¹��V؅������(�:��=(�Mw&3i���Q����ͤ{�n�������R�B��8�oo.$D�
(9;wSc���2�,{��X����x�v����ҡi!1�T�i#����8��n�+vRF� S��_�R[��t�@*:���$�pFD��;�+Z8i��-L�׋j���?h.c�~U�^i�f��2)+�iȮ���f�
_��d��tyH�N~��U|l���좃[8�A��n:��T��z�M�f�Ku���Բ��L�T+
�ʧ�5��.��:���(���qڹ�9��|>�+iwtT~�)���Yԗ,[4�i$w���A�8��^�������?&?�]���\�� �ɏ��5�E�����:����k�R;�~����
>�*FN;�Q\���,-]7�?�"���B��A>�V&���>�"1�jJ��VڲF� o�n���U�B�C��7��7-�� ���L���YՓV�y.����a��_M�Cw5x�9�H��'���嬜���=P��OյV��d�,ƻa�O�ޤ�I�k�L�(hFH�{�-��*��_jP�	�Kx���;�����	��5�q{��ΰ6��f�Ӱ9� ��s�<���^ye���%F0L�*ñ��i�g�%���v��E�%_��$cӸ��)XM;�Y�� �~�s�E�;v�K��������mt褸���7G,3�gӥyΧ���Q�E�f�0S��GN}rI�k��e���o�r[�!K^p:�+�̫�'U�������C���z��hڼC3 �� u#������{;� u�V#�x6�$3i7
[�����:D���nG#=q�?�o/NNH�=+��Y�r�*[�v��D��'�5d��h�+�+��b����G{��tC� ��a���I-�����pJ��(ƃv�](z��v=�yǎ�������E��ȯH�o#X��X����G�}����5d��m�Q��n9#��?¦�T*��r�r~J�<бG� X��GQ�S~�/��vhs�z'�J�6����������t\
F���~U_a4�1�`I���I���h�9�����]�Ƹ����5��,:�d�qZ:O+2z�!��I8ɠd��s�5*�qޥ��`�օ��p������Б`dEw�g�6��8(�\��N
�W:)S����6?j��l&�F*�~�\� Ǜ��C�Rz6)��6�߮7^��*�%���:�bE��L>�#�<+���$eB��=j����� !C��֎|K%�;�
�ЮOi�Wv�s��,���
-'�8��u�Sү+�)!�r����pGҩD&�!8��c�0�e-R4N��m'�1�����`�M��\�0[<��e���B-�l�V*�;ze���p�#��Nm��}bll���]����:x/Yxe�쯶C��[�ml�%~���� �L���������.�u� ���������Aw%�Q*��������"d�R���ڠ��WQ�j&��V�ŀ~��m��t,�K<�$\��5f�:qu��c4�&s����<$�[*�M.�F��"�*�(8�1Yֲ�GC�х�0{w�����V���J�#�O�"�ˎ�35o
���%�_�A�e��ח��OԐM��1VR9W�+9�U<E��n�a��K��~_�D���W�����C��-n�"	p@[��_/��n���\zT�ߝ[�ӵ�B�UNQR�qONY�Rx�*��:�� )�<s�qp��3ֆ��1�}
k��÷� R� RKp�]���ZzDwof��2����lvGT�{O����C�Z�}
��D�m�Y��A�4o��<�~u��/���2����>o¦MFVl�'%t��k��Q��X�ފ޷�;�X�����Y���U*�8:)qF+���\Q� kԣ��m�4���������@� �)�``S�i;�<]H;�X��N.�yPiE�d�V'��.�~d�S��zI��S��ȵRkf\�d�ɓ��-ا,�9�E.Th�SB�涸I�NP�cA��1i�[-�
s��Z�qn�^�j�_\0Wi�01��9�hcZN�NG�i��gʼ+3��C� 뫖�'��uf�^ X-�FX� u5�V�&�V�m��� �H�̇�U��<?:����ݰk��.����Qg��^i��ww�x�D�$bz*�#��N�5O^\Â�&��p8��@h�TF�7��B�D2˂
�KmBH��F`у� 8ȩ���u	bx��S�;�/ү��es��4�o����k�ئI�G�V�ōFd�bC��aO�5��tĽ�ғT��|F�A {�_X���rj�^3��ep;qR���ѵ
+�����6~M6��7�fH��m|F���PX�b�\��ŰǕ����K�N%���e���i^³�#]�닧?�{�@����c�O�j�H��=���5���=̱��_��V-!�&8� 
��k���N�7�,q�b|�3�޸� �x�.�1G'v;�OލC�:��.e�����"i]��4��v4t� �g���R�sh��S���Vc���s2�2��)��I.Gf1�5jmӑS�ɯ2�WnX�y�A��ғS�$�[1n,�nw;F��Uc�0'l�}E_[���E<<m�fS���j��e��l��g���st��]�gVw1�1�9�5��`�
O�_��<��K���c�����;�O"���)�O���X��G��fi�^��Ĉ��gq�=�R��x���n|��8����;Y�F8j�^�s�y6.;$���wr)@���O| ���PI���(J�T�ٜs���A��t��+�|1hl�=i���o�s��^]ocp�������q^ʱ�0�׀���a���II�!�}Ms4\�[?��~c� �]8=�S�l-�K_�\�۝��`��jr�l�h4�4f�MH��(#i%s�D���lj>��f�M�+���_�
�h���}��[=��Zf��ò��	��&0� �k5^�Tt�ex��brU�s���-#@�o��a����鞵��x4��zt�HP�xd��{�5=���*��p0�:�{����7�s�p���et���B+�<
�4F���Fy����Y.Q�~Y� �^Iu�U4�R�L�Ok)B:��k��JWL⨹&���|w���K�׉8lz���k���{K��S��9��=n��:L�O�+��Tc�0鏯��P�|$ؖ� tI�!6>��ʮ�E8�ͫ�E����궉��F�
3��ڪi��YRie[vS������Wl#��1ca��H<����G�\H����p+��Jܫa�nt{]NHg��̒%�\�� =��6�YE�(�5�c4�[�K�<�YVH�+�z��x���P�eh�ъ���@�iB��c��5�;\����r!\��B��r?�NN���y %��A�Zh�og%ɉ�i�`8�O�WR�|lW-�k
c�u�Z��3OY��0�2� �8n�����l�	<c�Nuϥ FTc�����
V8��ހ:-[��E`�V�㗱n{X��H"��R���I<�
y�SI�n#y8�qE�^����"�F�3���j-Bh�D�B�d�&�M��QI�ƪr�{��[��f�mnn!d�n2�<��W����|�o�?�Z��ۧ�qO�;���{�+�C��0����t_
���j�Hw���Vԯd�V�.~�
��:f�
Gn�,����ya�>j�>e?xVn���i_ͺ`"��={����yEۻB��*y�c�UbڲW<GU5�'�E�Ζ�BU�xʩ ���#;s]��~4x�ˣ�Yb ���f�����'�]ȩP�L���8#�je�R��_�R�r��}��{�����eGe�PH&���^�waikx������h�O�62;�U<�|��F3�)Kc�Hn�nX_>������Bºm
+��+��:���7�$���c</p��h!�ɒq��^��F�K�gc�4d�[�4��r1��w7���y�1
�rEO�����y�1�.��O
>��5�JQ��9�-���?
��	#����)�Ȥ_�zBIw��XHw){��=�{�?�+��Vnn<�b���n��p�	��Z��Sɺ��z���W��� �����Q3��H��\���>b�u��Q:�Ś�ݍ�>��aI4�� ��8�����{ME%�۠��L�l�c$m
 r=
�/!�A��+CQ���K����R��^sw�*�ZiL��T�đ����-�-��n�J:}s�ڵ��&���l�+kW���k2��"b��vq�߯�\�ٍ�I�:{ס��+i��_�}O&���|���o�X�0��Č����_����t��ԡ�>���m�D�� ��
?�#��u��k�b�y��N<W�xv�5���Cʡ���c�}+���ojf�Vݛ�l�{~�ζ�Ú7�̽�{K�"q�V9�� Z�K�6Z�
pQ�5��]?ʻ[�YF[��� J��U7�)��++ e9R2���o���ۡ�Hz��?��8|א՝�Q,�R�2������)�~RP�e��^3�?��;����)����ލ�?@Ez-���g���-�7�s�b�p��#��ƺ);&��u�]}��,xQ#w�3V���W�&��ޅ����YӒ�_���L�dm��,9�*/Z�6���^����-�pw��E��V�)E�G����I�tV�R�T���]D̍��z���cӼ=-Ր?hm���y����#��T���+3�է-[[�T���������4��
�٦C��_���c���z�~��j6z���w�˰�+�������s�q�M{��BJN2}ly�|9ґPϭ\��sBxE�qo{}*L��R6��q����z���&eڤ�7J�>.O2j�t�&߅5:;���������L���m�1I�"Lw�V\6֒.V4<��V�R�!g������(��b&�+X�L�����}-�8��zF��yQ��Uc�zF��S~ʿ�r~��=������'�8*�SU�����b���g`�j�=9�]M���a��U�T�2��<�v?�UӡZ��c�3��h�a.���3)��6�F�d�G��ڰ���	���Jz��?T��XW����_�L���rH��iaiӂ�՟:�V��;j� n�[����G�5�6����z��l��F\}*��)w��3ֺ�D�G3m�但(Y�!������^7l�n
�g�의� ����W&M��]��].��28_0�G��a� ��\Y}��zѴ��5�r�c�=��ŧ��*��wG��x�J[��e�eQ*��^�r?:�a�X��Oh�j���ɬ�I4+w��$����-�q\�,����5�chN-ғ���	���,.j�:o�+|Z~G�MR�N�4��Wc|އ��5Mr�+9�MFBg$�gi&U��»���qn:�u�Ǉ8�Rr�����3�O�KH���`1�zP�?�s�\�0l�Yr0{W�~�u��t�Z1�,����Wc���|w-q&K�*�qU��`����� �=M2ia|�s�G��d���F�V���ḉ�~�#�
��'�#���_4�2���"U;��$������2�
J�n0 sZ9h�"��o��:��Λ��YH�Y9���X�� 	�����N��۲�7��<���}�:���4���^�k�j�<)�P��-�?��Ԅ��0Y�B�,�
��	�{���6�,%�ț�`y�r��z��S�@��H�ֱ�?�i�H�iڨZ���c��k"��H��(��IE_SFݴ4m�K1��3ՆkUe��
Ҍ:�J������Y�#�Ϲ��V����͘�w���˃��D���qw{�5}(�G?��>K{?2�N�*H�3�w����W��)�Мp�<��y����	Qz��}kl<��a���+j�*^Y�F�H鴞:�3�K��Wo�|:��Co������^V�a좺[��ӰגO����?!]n�V��Q��J�O#e��s[�w��O�a��ɂ�H��5����驷Nӭ�@�	��:������b�1[Ƅ��g��H:��#�[����V��R��]�� ��*�׎���EfM6����NkZl�P��܂�M�~]?M����\ ���Ϭ]H��c���f[����5FK��,B��m�[�X�1��ߋ�(~e|�+&41JѰ ��5Z�0�ȇq�ǚњ��k�
�����@��)r��4�KpG�=jd�<f�f�����ѩ��VV��(t����G�s��¢��a�Y�3?==����K;��OZ�C�ޖ�&"�'����n��.�g� d(´��ů�4k��1����crB�_�����C"[����;�m}qs�i[�ݕ�O�O��ֽ8rǦ��>ij���i�Mѷ�����~�q[��n������zt����� q:���l��B�哦�
�s��v�.G)U�{P&�# ��R��ɥi�	ڤ��iF�O�׵2R�8ny�}��v�w+�����4S�H�k)�M��Tp:�1�b�v�!��@���xQODr�[0|B�-�\jnǰp
�.\��Nk~o��O�?:���Mї@r=E�ťt�����lr�� �b�*)%��y�Y��b{�y4o�tY�h!ZB��o;�"�G��zj�
��ml�s�%彇�e^^��1����5֏&��F�L��H(ϥe������{�.�4�ą�r�+��]���K¿�?�k��i��Md���\i�0�+����kj2�&H����^�ዄ�|1%���S�#�9����$�Y�]C캯�ݰ�������vb#x_�Ž���$��c��z[IL7	"��H�v���o��-�k��7��� C\��1ZҒ�OQ��ĺφ>У-�J?���W���r���<9�++=��v�1
�p=G���KP{w�w�$�ǌ���c��d���|u�Y��ɍ���x?Һ����E������*��ҽ
Q�\x�ڣ5�#|��})��)���0������+�^$#ָ�b��e�v�D�~�� ]��(5����Xި�扽� �#Z�ݢ'��^k�B��<�*����t�(f<W=����{nG=�~���u��D�My��(UMuK��C�iS:��k(���m-&�6�Ȼ�=1XcW�(��fG8¤�\Cx����r,ETԯ����c:� ×�����OwI���[UX�bkJ���G��mBK(���aU}09����e�+�@?���o�8���lNk��E�Q0�#r��	 �T�2[��ݟ��Z�ޯ��H��i��7������ӼU���k�C�, %=��ב�[Omr�J��D�\Њ壘UuZmJ.�W�����Ljdf�9�.��YET�i�I�Z�c���M��v���� *�gD*�V�Y���/X�R9b�t�@
�)��Wc�xF�_7T��K�b����jƫ�	�/�ţ[���������O�X~�Ӹϗ� �>��*�{�����̫��-���a���p��?�Q��1�+�$�Sa��?�3�6��D�ω���o\w��k�k�4�.��%������A��%NV�yci�����yl����3��Z���7�k��T*���?ҳ��\��zҮ�����#�8)a�Pq ��l�3��Eb�D��.�\�	%�Z��F��Z��T��8$���6��'�Oj�U�b$�$���V�-��ڧ���VmXW�J�ԓ{I�I켩���ʑ}P�?��u��o�_�l�X�o�)�j��ɳ�ܣ|��잵k�6�}�\4��i?�C�� �Z�U?mF�c�.��NH�H=h�&k�6�3�7p�hHf1�֒G�q⛃J�8�P�Q���B&����v��.��5���yQ�b�FH-��z�[mGN7� j��7�2:���^k
ҋ��mE>tw�h��v���5��@�����j��%Gi\t\��}k����ҹ��� �v��Y�o3HeFw@���i��P�05��j����)�by��?�3����NCJ���5���A�tj��c�n � x����%q�+Х$�:�R�h��H��Mk��1�Q���|�!����Ix��,�}�Z΅������o�;��M��<�m�xZ5s����ԭ"�9��x�2u`H�z�OƗ1�+7w$��WK���M���ӊ�.��C#�$�5�sI6�eE4��Y��,�t\15N��2�H���A�)���22��E�D?��R~����0�����\c+��.F]�`hQgx\��A��V��2�+��8�Z껗ʓ�S���p�n$�tQ��C��Yw o�cֱv%���06�dp*�\3����ؚ&��P�*���D[Bi6��H�c��pf���O�ʟÑO��/qU4�~åj�8������"�n5L��TSqM��/����5�/V��Z5�5�%ܲ��V�Hm�̺�b�MRFeˍE�8���I+�Km^�V4�%�F�m9����P֯/��˄����ѓ�C	V�v��nu�6��K�1���e\x��h�T)�ɮh�NI�֝���ҷ���yW���5��B�xb�<�o}��o/�MÃH��O5a�����r?��.��}�z|�pfP$-�ǌ�z���kV���m��	s��w�mFE���9{�ac�:�s��w�D�$.�
MV��&�剃��8>Տ�j��Br�a\J�4���TQ��7ׯ�ߴ�p����4�&F�⡳���QjM������W��J��rwd#7}���^¦�r�e�JGM��9o�T�2��&�۹�K;�N��A��kH&��Y��Y�A gߚ��fi��-a��� ā�YT�k�[����v�*�����N�c!���a }���_�~ujN�J1����u���k��c���Dʬ;Ĝ���q���I�[�"Յ���|�-�
g#w� Z���=B�o���(��a2����B���7ȴ)�Z�Ο�[�K���ƴ� �$��9�1O�K�(/<�q�~S!�=;Vv����gD>�EsTQS�g])7O�&�x�2�~f��Ns��tQ��^�GQq�4&d�0H�6A��¿YK�3o�1�Q�w<�^R1++�5���:+d"o���z���KR4qv1㲺� Ȅ�5��ݬ!péM�*���`EL0�/��uh�g��'\(��9�b���d6�mr�l���]%��p:Uٚ{��3��"P
��#�
�� ��G�=)�hD�w����Hn$�?�����8bXȞ-�}ꖡh!�d�zКz�J�zԪ�z�� gc��a��DQ�`������Â2�bW��l�nm�;ӈh�3�~����ft\qҙ$�q@,���ߴ��R���ހ�
�b�n�IB��zl�㧥:܅}�Ҙ	:�S���H��O4�?�30�4�H4����
q8�f&�`JrX6i�9��j�8u��z�\�ED�2���;��4�����8�F�-�ҵ��44kk[�V���SN�w
���B�[���F�a����\q�V-�Q�R,l����jʣ{l���*�T�R׿��; q�A8lb�BY��+��cdr) �qRB�����3ր,��x�dR�	ɋy��V폏<CcA�!�1�R��ep��84�m� �J�e�)NK��k�3��Cf���
�F����z��|�R�v���%[ޜ`��+����3�{�rw�
�f��rr�5t^����%�;�N+�+�gw�+�?Zx��1�*eՓ��I�zK�'��6zՌ�I_�?
�E&4�������rV��J>Ydt��ױ�� ���0����*U�3K��9��'����t),LU���@�$���� �`i�Y����I�k��Z����d���Z�=�f�U��i�ֵ>Ϧ\�=�@�k~��_�&�
�� nU���mI�x/������.���/��t&�h�UbݮqV�|F��)�"�`�3z�v/�U�� gQ�3��F;]np�͎�8�I�K�)Ym��� {<�4��n�M:���7qso�K��Ez�m�x��8���I8*��<E��
{P�1ݝ��ɭN�O� [ v5�y�H�=���U��?kO"�Cǥ?�G�:I3���T�]ʱ@�����sV�<8�9̌��F�G�����ā�G@k����� ��L����g,,�̗RK�ܷ� Σ	� F��E��)C����Z�]��%�\}��A���v�r6ݛ=P��5��\Z����p�����I=L�V���5+�,�A���8���m��]�-����ilmK͆9���K�#O&�*�$�;��o� t
,a��Ƥ"��B���:��۬&��u Cڬ�dc=)���%�5u��Ԍs�zT�r�.��[H�ҷ|a�]U�U�K�ǯ��� '�Sjp0z��"k~�B����=���;Eےz�3]��/�Ɵ=��8�{�����-�?��l�`��� ֮Zu=�qeny�E$�������-��\��U'?�J��M��u���77��Z֊1az�,\��|�+��]Z_��ʔ�@$d��
�$�4��|�W$����J�m����H��Ks�և&�fY$����-v?D��&"�����Z�!�f�F.md��H��1ZA�W"[#��sg��U�m#d��R1��r�5�?X�W�5�Dd�~GF_q\y����� �o�~��1�G�O���9O�b��i7�	F郓��̈́r�c�t5��8Pi�!A�2>�י����{מ�50ʬ����WK+���>��kC���D�� f_��ު_ٽ�ς��=��%�-4��"u��H��p8���,��s���%y6.~a�AZVbL�T0'+��Z:Ϗ�t�����A}��q�����*���D�l�.����)�	c�t#?�z�|&��?�,?/ bLk�G���o�>3�|H��{兌��+?_Xp�3&1������3:N0��K�ѭt+�{u�,�HL�����-G]��+�U����ԓ����rI?�����
��ùu�ǘ��>���&����0��w�i�ҽ��p�.ͼta�ֱ�.���Nv���_���VJ��	בRi�?f�R�p���5�	ZZ�K1�-��w���1	��K�؉m��/�a�d#����Esmּ,MF��N��� Bp�T�0c��4��¹�vp88�ڸ�9J����=��_k6:|Z}�َe�FU����v���uK=J������� �y'���̋n��^��KG���N�|� ���\��c�Sz-�&+��2>|�o>�ޟ6\��sT.%�=8�;��e;��fv�s�������H9��?����'��3-�آlG�?x�~̱�8��TՔ��V�������84ݠ9^������Ɓ��4w�Y[��Y��Tz�}�mN�=3ι�Y3%���К̶��ęm�xg2*��$z��������T�;+Eceoip��ɜ�{ֽ��j��l�����ڼ�O�:����F'�?;
[Ȗ�a�a�jh�&����W�fbx24����@�7n�s��%� X�@9>��RI�{��"���~��W�8��2L���X��<ꐶ�%!'�����@�J0����n��o.�X�<Ԛղ�.�'�tCc��dA^�g��*ok7:̍���xY)�@��ڵQ�y�o��+�Y][�ʖh�s��ֺ-����X۽y�j.?{#Ȥ�rkGM�$��7f��W�+��>g̎�9,���V�r�c=�QR�w�H>����k��d���Q/RG?w�]ƌu{�X���j����B1����:WF��c ����n{�UK�tsRqj�}��#�'�6��Z�,4�H�<�`̇�!<��t�$pҷ��QҞc�k�&I�G
y�qڈ�j�%g�%�����2�|d�gV�wvR<FrO�˖؅-�њ�c��I*Ͻ"C�M��R�V2�M*�	B�]4ҟ�
�?�,����?��tz��,M)F�;�ֳ�"���6��;I��&ћ�F��`3����rE�р�Xx�t>^��D��/��3[�5�P��nq�T��.-j`�>��{g��F�A�cJ ����4��{����JsQC�ik���i��2���m5P��.�?�l��q�Ȝ�N��ǭr�[������҄��U���M��<ը��qp�����:���'�f=z�כ�Vb�}��&����d�U綞9d�)�a�d\���$�'��)^�f��A���� �>�;d*KWhe��z`����#���e��y��r�L�=A��d�$�uNx� +mI��㠨�q�a�̷u�[��&�78��������
����U­(q��sN�l�:ի[In�0��=*ݖ�dt��AݫZ�٦uU]�:A[S�}Y�)�V.��G�k�?���^�^�>�/u����m��mQ̱��q^���-N�١@YH$��oz���tM,��:���܋`��S�-�ެxsL������9���5	7��1����,��]��9kBr����hu�]������~#��M�R'�r�>��5�#o����V���-�_TS4��N7qY:2�眹��y\���7^/��0�N8��z���yy��:�����k�.�:W?,�#�Q�ǥF�����
�^� �\����R������5���z�H�<��sJ�c	Et:��5:.*($��VH�*j�q�bcc&s^.��ޕ��D{ǃ���7��?P��O%;��G��צ3ƫ�
�y�ޚ����\���6<�8�u�xc{q!�`�\��p7W��WI�5�� R��WC������P]c;�%�oýy�֣=���L�f,[޻}jG��hY�| �A�+� �;�~k���E7��6݅21}�䚙��e򣊘�����gX���C���2�4�:���+���}V�K�2�������<�"�ұ�3�Rx�T��z�qQN��m�kV��IlM4
e<����c������A'4�
�}�Faq�	`T�G4�f��ĳw��|�L��1Q�ebF(�X�N����[u-,�@�&��}R�Ö��|(]� �d�k˼��"_2�8I�w<~�5���2�
�ԥ}?�f��=�h:��~-]"�#�PtV��/�H�TU�1Ư,Ĉ�܏A�q[��֧[;TU8��B��_�~��{f�i2gꖗ��9V&� W*�LU�SԚ�竨eNʽ~B�H�`@۶�]y�18o��� 1!� v�q u��hӑ��=���{�w�kI�y'�9�������wkJ�"��^!��=�֚���dd�z���}�?/�T����F��l5�$�E��g������x����<��_3�z=���_�/x֨e-�'��ּ)�jZ\�m
%�JYJ�	��+�{wȈO��RC5��؅�s0��d��Ni7s�c(���X^�3̉�r���׷�I6mq�NOJ絻sk�]@H!d8�Ny�iҏ���

����,W �QK��8����4�R5N��S6����#���Ԭ-���(߷k��Q�/$�@���{q�hc��K��@I��y-��-�ܒ�QY�U���]'Ȯ���ۆ�]M�9&X .Oڱ�}�	!i%Y�.��#�M��H��֭��b/`3��&s�����H�>�y�.?��w5i$^������~gmJ2mx;1�k2
�u9U�vZ����k��[ßٲɩ<��"�qBx.YWv�T�����ρ�U*�kq�A�9����Y���>�T)���>�����Sw����
��&��
�d!A�ZWTA��#��Z���y�W�K��a��\6�pa��UN���iP`՛F�m�V�)���W������NXwH�zv�@:�4������.u���Ip��0������+�ѵ˻������NX��r>3Ow�٨[���	  z�ON+���j�������.6�z޹��N�
Q�y�w�eq�T��*{Ҵq������(٣fI3�#��
����+��Ƕ��2�O�y��;�y���X6	��_Ӯ$����!)�p��x�\X��������14%Bn/�o	)+�4[]�Ic�U�7F�Sנ�bBK0Nw$����M��G
A5�>�b���Utkϻ��A��?ʸ�O�5�y�dn�Vv�Z��b�"�
�;��S���MQ���yW�����B���z��e�:��*�grpOAڻ�^5��q,M�@��$� �녹��^Ynf���n6NG.&Wj$1�[Q#�8 TU;�qI(h��� �SE,{�ֻbO-&�y��}�י$�yȘ��jiE�r���c��_ ����ÍCM�IkBH�|£��#(�v)T�]�+�f����:{V�F#��]�=+���v���]�n��v@9n?�x��N��΃}Ga%��ז��uF��
���֩�܅Z��>���C!�$B�ZxgQX���F���<�����>����S�k���c�'���	<��I�k�zl0�#��G��U$�
]I�Fވb���Gɷ�*(�E'��z~x�W^b ��Y,���g�X��A��/b��rԋ��;(�J<��D�G5zܙA��T%y^V��2��|���WIY�
�Pi��OX�u�$��O֖�����w=�V��?ٮ�<Ƞ��� ˚�<Q4zֹi#�H��y��z��ma �'kc�(Y#���*��f����o5�Ş7�@q��9����2�ɔr
���_�Xonm���.m�B���#������'٭��Q�kyIL��s����CWV;H�g��M��a�GO�ӏ�����~�n�샣��?��Yگ�uM ��x�lc+��Tm��-��v�̋$��:�W�+ٙ�p��h� �'a�+M%�Y�ՌR�=ps��95�clll���+_��܏oZ��:ťޜֶwlv6 ��u�}*�ht�F���Se��q�Tԧ�kB��.y}�?��S���Ϡ�ͭD�r�3�v�ڞ��k�w�*�9Ǩ����"{�}K�]�[s�f����!tta���c��QV4�������F})�-;�Ւqi�%�b2��a��}n᧚-.3���J}�A[n�o	v�Qrs\昭ws=����¶8�rb@��
1�W�S݄����/Vf=$N}�-䁹�r=�0,D���5�����]���=ꖦ0����F[�Q�!�Z�n��	�j,����8�+v��F]0�yl�xW�*���Cg��"�{�C��~Rm��~�R��r[��W��4�F�1<l]OP3Y�/�+-.:(�ZQ:|���U���à�w��z|�?�ʗ:�ԋ�i��T��W�"pLHw���]�����im�o���ޢ�.-���_��T��TmZ�?-��'�ף��o�Y[�`�y������5nm�W����q��3c95��~Lp��z�8_c�5�:؄P����[�q�΀nn�i�&	�y��\�8؊7����(�;x�{g0�Zv����:�w�S�9-Nj��e<��J��� ��U��ѡi	
\���6��"�{��B�C���ˆ��s[40�� �i�a���gwg]�l�=�����-�KU�_X��<1)�'�#�2!�F6s�zƳ�.o���d�n��׬�eo�h?g���I��2@��3�K@�d��᱐A�}�*5��I���R:]+Q�mR9cTx�V⛨��li�m<��5X���&��9bz�K��r�R����/�:�^][�{}Vt���b��A��F�䁊ٻ9?h�c#��?�bcc��Tv8��;J��bM�}Eh�h�����刷t��P鋴��C1<ڶ�U��A�l)�֢R芌n�4�Zѭ��>�S�� ^��b�;�D_���.F+�����[Y'���A }���_FIusr^#�$gM>m	q��� ���K��S�mj0��٤���!�d�pz��ܙ+�2 �`�m,�y6�㩢�K�D�͕H�ޜ�MY�
ȧwNZTH�PW���#�E�6?�q����Ԥ���@�[K,O(�Ղ#`����\׉ll�+��H���F{��M�[7T�L���� �V�����z�ʻ�d`g �����q�ʛ��PJ2��3�}�T6eIr�|�ʀ��8�(ڠa@�+��>�����%��O@��_�]��k����������U���+��X���ċ���,��|[uv��"��N>�� �\���Ğk۠�c''�l���κ[x���FNO?�K�hZ��k��<e�+�~O�����V�mI%��U�y�39��]͌|�uZo�f��:�����G��c��n��V�-��ۆ�Ԙ�9�mJ�>�NW����=ݽ����@Q�m�&z�^����I]�R���j���]=��2J4"kw��)�n�3Sh���݄�lW�A�Z��1��:{�ks$R�RT;����X��x��eb�FA��K�����zm&��3Z�q4�Q�¡�Q����g3��e�Ryua�~���jB�� �F=�:�&:�G�z�u��Ҭ��»z.s�M.m,>]nu��Ŷ�
YkO�E`��̿쿪����g��/m_n��X�9r� �uT1�G� ��]�/��!Vt+�]���Ҿ�(�f�$vdL�g�V�~{����䲎�:
�k4��|�yY���y�~�g�M"�c��{K��'h�N��k��9�[�Ql��+����+�kU'!F��Q<N�6������})4��ox��I��Nvbxyw*��͑�6�o^��Gh�8ϧZ�����/حc�j}�S��|Lw�y��Z����`�F\\�O�s?�Pc�f����=���y�9!c��\r==�U�r��s�e�,/�n-�Z��^e;�)䏻�Aҳ�RSs1'=�O>���z-�F��UPn�=AETtuR����99n�[[܈��ӂ�Բז��l_.�7,�q"�
[���|A�X�wQ��Rj>�<Q�Ze�X�ʅL�2�������������#+g��U�Č�����fK�K5��dW�m$c�8�=h��E�i��_��f�7�6����j���Ƶ�����0$H �_�X���j��7.pd�$`tU�N�liq~����	�:l��p�[��2��OqY Y��{�D��M�KY f�GB>����VX

� :�oܬam
�<�_����{r�L�p��+)��ҜQ�}
��ۺ��3��DqަL�U�W);LO~
\�8���#;oCyC~U�X(V�#�G� �1k��
���l�[q+}�2.8 ��%�mq���^4�����0�I�A�OG�^zW���ޢ�JT�/�95�Jo�����{��:��W��p�Ҿ�t����px-��]�����"|��E\ kTӕ�B��K�3��whR+��M�Q��{I���g�����=$_P{ף�,q�Pg �=j�Ž��b��p���~�}A�\x|O����D�}Q�/h`b#���a�cz��׵v^5�'���+������ކ�.gXt�$BPy2c�׳.d�Yɵ��{87 b8�=��M�2?�������9�oXG���ۖua���ֶm%s(��s���8
��������NX�(�>)evv0�o�#'>�w�:/�/&Y|���際kq�Z�,qGg���>b� {�=�����t��DV�^���3[z�����h?ɵ���u}3Y��;4e����ZI��6�P[I�A�ۢ�&��Y_�_ē#C�g���g�u|Cy���gw�z}*��h{���?݀����EsՌA�F�|�e���$(�&�]W=�O�@&"z� q�G��V���T���	�L�
3���~5k�����,�nf?����
-�O�0Z&�֬d��=�Fn�{V}���9�һVÎ�7\犈�A���S
�&vL�O�C�n���&�n�� <�֭��Q�n&��aק֡�Z/�wd�4�� �-�Ǡ��ܱ���ӧ�7���kg?���W��m��	ͻ���+��^�R�]ȸ{Ps��1��sb��8yJ]T��%�XR��!@ Q� �R���r��ϧJʙ�c��X�N��6V"��:�����^F
>��\N��j��ۋ� ���	��sۚ��%��-����)���nݲ�p�$�J����V�K
eDctn���c��5+k��{�$���(8l�
~n=�P��1��ޡɲ��7��G��uem�:�Yn�U��O_��֜B����FX�v���>���L�Q�L�)�B�pᗭ5�d�K���)�9��u�ҩ�/�=�n�d��Z�4�º<e��iy�a��à�Z��2��啥��$b8aR�q��y��v3�+����u@�T�?�(����SjW�������8໓�������Lf�n9�<��TH��oVe8�A�,�zS��3�A,���.�9��CA�@��8�+��t��4M6Xe#�Q"��J��]+��0��^��#��-�[if�"�1����`��x�ߎ
�39���_�\�*�u?ؼ<����ᬮ�f���}����Sϰ�27�j�MO+M�w#'��f�drr*��� 2���U��*�wn�D$_)���6���dB�1"�i�����<��49l`~�8#���"}�����᪝Ļ�dC���`��u��۽(�K�8���zS��o�4k*�����+��t˫�Ԟie�G��>�1�Z�`�#�M,��(���5[Ö���}M!�a,�2���\�c'#ӭ(-	4�	�����l��[
�&�b G���TP� Fr���^+�X�z�N+�#p�</�օ����Zm+�@@�X� *�	,K�	�yI��L��W���y��"}戞�"�H���J��ǽ 9�H�����`�`� � �띴��6"é
O?
~���ٜ3~�h������`����2g�[𖴚m��N�#�7����*���KᆒV��� ����W<�21+`��T�V/ڴ�h�j�z����rpH�;.j��f$��V azt�P��N+�++�ۻ��kf�A< ���}�MOi}-���$wۖ"Sp^@�z��Ҵ�o�c&O-U Fj��g��:2��s��Һ��jpX
� J+kBHt��P�B��eu?.Tμ�U��ђ���V
9<�^���%�o�2�~u���lQ�v���z��6i���K�`{DH�H�@.0A�If�p�3��ҹ�y�� ʼ�:�+cG�F�	�#�=��r�&�e���p�7������ǈmW.{��gjZ���d���ґ��� Z-������j�q�m�W��X!�l%��A$2�����������?���6$��U�x����8�� I��/E��w��D�E��{t�GR��os����#�/�Ky���X�>9&���Vk1c;B�gjmf��]-_n.�m��ְ����"̀��z���^�5��qb<�x�V�qǽ6��쪌 �� f�����y�2�����ES��k���a��\�Y�&��zN�o~�ۜ�)ߞ�]'�<?kck��y����#���qWsML��R�c5�Z�5����A�q�TI4���o.�"��'����#�ڋ^�  F��I���]�'�����P��Ta�k����$��et����A��G��bI���z�B�͞���w[��ׁ��Tv1`x����F7���Wb�*܇�������7�Z�����G�S�Zp�Ԅ5�
�1F:w�B�deOQL^�iY8u��ҝq0�k!��!?��U#s��=)��GU��#��9��-��6�j���<`n ���FP��1�e�n��4E�69Z�%~�����y��f2A4\��4���=�P+��s����Y���ddR�ɢ$�"�{Cڲ�9�s�R��P3���4��E�:�BP�	��"z�={�}(��R��Ů��n��Y��,=�y��SwE�殷�Ev#���-!$��#��}= �+!�r����R3ZM�) �9����?&=�"wH�����0��Nj8�gf�4�� �խ�ϲb�� ��� �Ƀ�>�0r%�h��V�	Mm�E+��9��~Y�j����UqP]O-��w91�U��NO�Of����ܝؤ�Y�:f�x��
���H]�)s��5�{p����1Zч,K��m��[�t��X7�U��K{�ڱRsz"�5�$>Laz�0e���1�0��� ��ӌw�N�E����aջ�}�l�sܱ�̀>�_V�6Ҵv�5�	_�?͵�#<�\��<�<VR���U<,�Г�Zt�Ō1ۨgG�wc�fi��)ͤ�m�\D	&;��Ҷ�Ր�ظ'ڹ=AZ�Q3\_�RvE�j�7#yP�+[rγh�l�m�g(DV�J��X	T��ka[P�(/di-��Y�n�˽�q�I����FObk{����=�Nq�i�7FD2�������}�N��p�����0خ�O�ޝy�Io0��1�s�Oj�����jR���!�X�I�Յ�����ǆ�ts�3	 -����όV�L�\]����k6�q#�h��I�+�RȤ|�J��uz��Ǧ��O��3��w�\�܇�2�����}�	�4"��5�9)N�FN�]�+mpA�z`*�@>�v�c���s�Ҵ�,���6��c�n�vEE]�~�� �) ;%��݊����@c��-O�2Z����cnX ��'��4[�84֑��Y��s.q^km�ǧ��K0X<�fW�\f��aC0FF�9��d����=�uT��;\� ��D�r��+� V����&�5���Z9�(�j���[�O~�s��l��X��@�v�78���mϟj�hj��!�����(�������W���&��s��WCre��[�>oAlm��y�Ɗ��ʭ��T�h�D��9�7Q�ot)�t�Q�f����Dkh�����8?J�<M,�zj^8vd�k1�J ڕ�gMr\�ѡ��c�����z�K'7,}�hi��V�BOx��I���/j��f'�{�H�7� ^I�N�e��h�1���R+���]�΄��N.���$I�*e��Rz��~W�f��j��Q4g�T�C  TX��H�E@�Ct+��"�a�����1�W|��ޕ�L��'�n2)y-�.�����\a✡�$g�6�h�R�\){Rf����!� ���Mq�y89�394 ��h����Vr������Jx��J�!�ax��d��}�*2<�X�"�T��8Ǧ)���젰5�FrC�?��+�|7��V����ȓ���ˣ[�YV�(歱���s�j��z7=k��/X�s7��7,ș�׽f��D8�^��l+@���Fy����2�x�C�̄{U]?�e�*ʑ�UkO��q���jG�IG���SZ�7�*73CO��{RC�,˗e���W5��+Z gͱ� �\� �u��
�sКӽ	ej@̓�a��I."I�8ѕ"]���`w�k[�c��_M���RF��0�Ͻc�kJ
�Jȶ�oSZ�� �����r"]���0�/� U{% ��CJ���
�*���o��؍�'�R�z���N�i @���w#�V�nFH~ 8x�����0rG�V�	T����ɝd����{���o �!,g��Z�)+1E���_{I��ԡ��jI�#+�4��$�5��Y��s"��9Ǩ��\۴R1����=��J�k唥wб3��:��Y�z\#���1�+p�Q��t��;8�H�y
�pδۘ �c�n���X��;���$��4���\� ��X����c�1�s�G�h�8E�4��|���B�Oz�%�Ue%b��^5�ޡ�ܜFs�­$Qϐ�m���j��x�cxa!��S��[�W�	\m��u�ʢ�22C��*+�1�˟,�%GY`Z�o%��G�B�S��X��zdv�/�)>���ւQ�w3�s����(�W`
K�V]֫l��ʇ���X՞�;p��|�ػ�rI7c��j��VX���:���V�]��� ��=�u�8Nd1o�u�k��y�֌�VX�L�1x�d��qX�����19��5��7�i�1��uF�����F�G	�z
�#�4�dk,W�R�LMЫdR,�D���V���ե7~ZF��I���U��n�7'�luZQ5��k>���/��l�$w�W�~�yoy�B@���]�6觰ryR�� Zų��r�����鋺1T�j8�CU�k���U�2��+w+�����
Oj����;^�k���C~��"����:� �p:��}�h$;�SY٦T�jRwZ�cI���&��H����^s,��,ǩɩ���Hd�&e�S�<���բ<�������R��VUbI��5M��"��ր��'LS4RX�ث�����3
Ɗ���ե%
�v�SH5�?�5��2�T9�����|�p��^�9�+\q�#�N
����	S��*	k{T�K�g�k�@�Q@�}%#ޥS�2��6� \sOL���AL�v�O,�5�q���T�UE
J+1�үB�u�Bz~��$F�V�$���S���*LJ�8�zGV� hTZ�!d�*jm'�D��� J�l�zTLs�i�&*=��!�3��4��Q�q9�6N��{���� �Ef�� �Ϩ���;��A���[��Ӯ/`2B�V�C�?��W4mS��i�����#l��$�s�*��4���<�ݪtp�۸���Uc�D��Z����s1�� �wt�W�kl�[�(�ګ$�~��]�A�
O�Y�_i������ ��v�l��xH�����e/�%��k�p�Xr9�X��!�u����n;T}[��'��Z;}�c]��\R�+g�s6����rOY3աȮYT1�����?JΚD�V%��9�in5�,[�
ʾ�M���<�|����5�5��ˇ��^�oY�L[�T�Ǩ���
ڱ��1�8�g�6)D�<��s���Kp�VS|�c�}Mi7}�6�&�e�Բ��`<������q�X�ܝ�Gz��GqN��q�X��b����K���~��QWU�G@$_ƫ@�$h	�[�O�)�>.m��F�� ���e����^�l�Ԝ���ָ� ���� �&<�򞕹�\��?�ACN�Š{u�Q�&7�c��Mu9~�=��,(���4̳��q�NrY��^����c�Jh���
|���o0v7N��.>c�EK �~S�PH4�X1��֣1�@w|
�@�He�-�p��"�*9�V�A�N*�
�� �f�SME��f-�LV6=v��[�x�FV>��s��*[߉gb� �Z).{�?b�;��S��+Z7�L�X��o,f�n�!�yt�2Ncaʜ�kӃ3t�7��?d��0�������T��S9��=����*}&?����R�a�"�ɭk	m�1�{���|C���Ժ��N���6�~�ۓU._s�{v�oB�C��W�a�޲c�0 E^�L����1�8�)�H�sH��ңݵ����f�"�+�"��a�dm�,jԈ�X%�CyG�<��?�P9
�+*[�-n)��N	�B�����a]�\ג�h�K�t<��^�a#뎕���Kk��,����"��2��������
��<�U�kB]L�Fq�s2�O2mPY6"�c��E%��R*&��O�E!�C[]،���F��ݛ��j*��s1=�U�ѵ ����{`��8����>�s����,ls�g�Z�P�>�чP���0$�TM��S�6��8#�W��%��Km4Q`����X�����'''4��7w�(4�$�4�N(&��S���H���S�Eܹ �^�n���+d���R�	ۃ�{|�)�4��FPNp
�!��A�X0�t^#d�A�x��W�V���)7(�zV�ux;�R�/ԃ��g�U�L�u�2�4侵�T���\����]���nK0����d�ڲ�wN:�)h0U�w��z�
�A��9۰�m�zS��b��I�D�@��je��j��ˌ���
�o>i8!@���R�98�qHgM���������T w�α<�*M#�a�5�f�꓏j�v9jIs�rdn2~��\���۟�	�3x�E�C-���*�f�`�?q� q��oʝ����gn��f�
��M��i��g�-Gbe���H��N}�@�Q���i
?���]�5�o��Ƣ;`���=�5��s��讚4�5�aR|��w.�~5��'R����ʭ�����w��Z�KBo�Y�4L�2��V�c$z���$BJm�ϡ沧�,sW��R� ¨�ՑpI�P�@�wf1��g�kN5.�Յa8k�����S%�]ޑ�'���"-͐���#�5o�.sֳ<J���:�S�֔��QH-tsI�u�
�O���f���w�7� R���i�e:"��-g��8?�������*���I��V��^7�c�A�*����@T�z�
���$dZ��E� ٴ�������w��T�9Z+qN3���-*t��!�U�+r+�{�6��8|�8��\�ݴw�ٌI*����
��aZ�3�)���-����?23����7 O8"�?6m�0Q��Eq���Ta��I6^&
Q�<�9���V�UX�0)69��z���\��nEGmo-��4��ª�MI�v�6������/�nT��S�Q�k)ϑR��J��#J���lF�c܁������j��&�c�O;�p����_?]��vd�����y�����N��B�pƽq�ᛔ��뭒�X�������d�XӄO�>�Z�U���˶`���j����˧ż���ƴ��6
nqFr:� ��am�����M'4�RNA�^i��h�_��s޳7�OJ���w�D�8+���J�krd�
���Vo]آ�m�k��x�]Ѻ0#���G���̘�/5o�^�H�;��AZ��!�pb�$ �W+���v��pRw.5��h�)CvH³�k�j����U���Z͂u��|�\ZZ������G�Q�H�;��Tye���sC]�e\6ó ��ޫg5a�nMo�6p8\sZ�����<
R��
H">Yb8*%�D�pkBߧ��y���iT�H8�ҥ9'��XdT��x8�:��rEV����<|<g#n.h��To d�f���/�l�i��pX�zsZw6��xE�2mX.՛���F�Dbx>Fq�ڎ'ú�p��� ծ�8�k����"�ڪ�8^�B-'�i��^\L��!�V���֮�y
�O���7A[V%�!��&����%	�w<��J�'u��Ƨ�θ�k:He��d���׫x�B�o�0�UO�q^P��F$��3[R�1�Zn�d��t戢-(Q�C��#�MK�K��V�3�] ��Vܫ��b�>h�~4K���Ҩ^qR���$<�87���䘑�Vn�m2�P���#<
�u��l���ԓ9ek�T,sP�s�֟���?JzxsV�+?Jm1&��'���H��F�S��OҞ</��1`� ��qe�#	����$�[�xSZ�	1�M_
�'����M��a����#<V����y���5��a'�J�sA�*L�V��ު62�U*�oS�Z�Oʟ(���8� �[-�j�M��¡mP?v���C�)�&�V�hz�8���4躚�leǰ�F��GAM$��4�H�����M�
SL1o<T[��w�<���S��a�RO9�h�R�*�E1���44׌V+��Q�����TR)S�4��Y��85��_���6z�s�t~��������[Gff��P�~H!bN���=�y�E�ag ^�<��MK${
D�V�yA �t��_���i"�9�P�/�"�~�| �{��~FVW9�kַ7Z��wim0�5w�Q�s����gj~3���l4(��Ý�.>P}��ⶍ�d�kx�T�]=-]��$ueA�Q�n>��d[�[M���IC��MOA���Z������i��%H;G��:K���@e�_�ZՄT��I��]Bt�J8��\Ė�o�%S.3�u���2�C���GU���ļdy��'��"��R�Tj8�,�@��# ��<���qX�D�?r8=�5�s��.7,������ӛ�e�n�ȧ�lUB��RB�܌�@]ǯozX��%�V4�<���G+p6����ӆ+��vيΤv5I�پ����Úz,ry�����Egܶ��x/O�L!N
�Tm?��e�:��Օ�T
��k��/݂Nx�d%���(��]h�dh0~��k���.�w��s��>e*GR8{O�0;�Z��E��k�����\~<V����9�}&
�=/C7�%�
2�V����4��I�{o���.&�8T榭cL-z����KQok���i#8隵�j�d�S�nIb�{s��5
�p*N�X�K��LvK�c��׏Oz��ip�ڝ_Q`�.xlw>�oQ�N[ȍ���Z�N������3�Sk���D!a�1� �VP����0��9c�SL�t��Œ�PŬ2.#$|㞠}+J���I�Y��'��hqQvݕw/$>�G�J�}��}�}�=3�T�o��X�$}��\ι�Bbג��o�N[۩���1=rƜhI�#9׌tG���6v�L��{��rzǈ���-�1Ľv�l��<����4cY�:Җ�CR�V߅����ּ���W%S�w-��#�ҕ$�U��S =V�#5F�W�\,�i�5p<lr1��Z�錓ؘJ��5"�x �P���`}�`�v)0sW�*:VB�Ԋ��=k)��Gsg-�����+�mK�C�i�5�I�GcK#v8���6��]�n�q��{3�օ��0�}
��o"f]�m$`�{����qn��V@
8=���<I1$��5ч��g&.I��<8*̸�9� 3�j���|ը~X�s]
+���R!�_ʇA��l�N�i>¬,c�q��&��� ��I��9ƤWC� ���\t^;���Z��-���>��t��3eVKEs��K�K�R� �g��L?K�L�k�AE`ig�f� �i��a�%� �h�S����}ir}k��<�Y*z��N=|��R�S��͞�y�4�މ��� �'�;���J<Q�����	��O�{Hw/5��r�����j��G�UG���� /`�M(�6���c�4{)�xw����K�^M2�r������_������X�p
��*޲�QU̖=�?��i�Tq3�Q4�	~�Vu��,��9��}����MX5%��K�T�f�#�R�UW�SO��������~�Zr(��q
~U2�9�S�J=SN'�~?V��H�#������f����mۭ��Ȩ#��ۑr?1V#�ɺ]/�J�.���O��G��8CjF
�E��mb� �9ol���)˪د��'�J����i9k8�� tR��"E���QR&����p��
JLF뵢#Ў�鐒�by�0�S�x����y]�� �+X+Ғ�g�~�L�#�c,���<�J���O�� ��Ҟ� J�k�񏇮5-,In����
:���A�Q\��reI��m���OZw�4����ļ�������t���+y�D�q]\�־!�$�Vt2���9S�)Ԅ���g��c
8]d������܇ ����Q�,-�dhRE�G�ҸT� ,���ah���.��0�A'�L�nԗ��?u�'}�SR�r~�nr����
�� �v��D����I�mB�;;(L���ɮ���1�bMN�穎#�>�kѫ��K�`���0?:�����R�?i(H�a�.����� m���##���fJ�Dg�G��hR}���Y��`���^�� �^V�i�
*3�w��V�;�G����>�J�fB���,:�����~��r��$N�� ��1��J\��Y� _Һp��U�j�4'��aǝk*n\�� {��4�A��ܾ��?*�?
��f�"��D��]͂�t��ZR��|
]Y�K]��?\��j/��#��#'���Oq��+(������\��t{�慿�C����Ǆ5�g,l�.@�oOJ�HM]������tu�p
J�XY@aʞ��793C���BG�ҵ��TH5�� -?Jx�n��Zʪȫ��p3�����5.�;�K��5����a���]�&/��'���.�x5.�7ХVk�$��I�L���T����櫃��SZ�\)�IY6ެ�'�7vpzR�g��z���8�sHO���қ��S�)����@<f����Lu���M4���c�H�h��0h�O^�R(ni��Ԣ�~��jO��y�_�P��R
�`�}�� i��J9���ՠ�n`���kH�"�6 'O�f	��p�$bFjGԄ���,:�I�j*iܴZ`�G�2���)N�3
}@5b=^�A����q�|�w>��5Je�[�ߥ3�zHX*�x=i��P�M�j���jP���w³��`���h6�R9h8��ٍY5b���&h���h��}s#H��Q���=��ݻ���ŗ��֡�-3F��%�|þ+I;E��{Ĺ��{�nnu��"&~n�L^��*�#�㊼!�O�am��q�:�bw���M��M��Ibo0�!F6�h�F�fD�z�]CG�Q֬$KH�"D��3�_j��I�MF�|��9mc�#��)���*���s��.��aY�d���ҠA�cV"b�j̎��v�<���yYG���:>9#5�MvAY5%y��M!V�*�a�kI���d"�ʎi��VL��
~�+�l\�֚n:�m��~�y>�T�h��{���0��?*i�����(��I�J$�SU�|��c�C-g4u�f���e�a�W���وRRO4И��������˚�O��NG<�`Ƥ��x��!�L��\U`�Njd��Sv;�f�SO�s��#4�v<T�2�d4�a4ҧڀ�ڥɎī!��rH�����*Ќ���re(��i�,�y�^��\C�q�*�6�0q�M0#&����։����6�2۶�
�q�\_�:��y!:�i�ё�kt�H��Q��4c#4��x5J���B��5jf
��A��O<
o[˾�6#�מx�?�|B����1����+^�h �U� h�	�	M���ۮ��'�� ��߆ո�FL�B������H�:�氏��!	@��׊ͺ�m�8����5[Z��oc��Ub�B@< ǯ�����t֍ou���#�C��+3�Z��usox�0UʮG ���
�@�'���[���ƿS\+)�B������6�[�DM��oE�_j�P$���I�{T�&�t��*(vd+�S�V[�#.
�����V��c��]�����1���;�䤧�T���'��k��g$(nqֻ���{CM"B=3�[!�Ca�{1v=K�-�����<W3?�^Bc��^f�T�~������Id�ǖ��zӍ9Kd�����B-fY=���Y:c6�S��洰�K���1�<���'ޡ���uha݁#'�&�(�P�%bd��5��.���ÌZ�Y���]c]��d��[i����v��a��b}=��z�jq5UY� H��|_��U���� v.?Z�o�ܯ2]�����}J���\��V5��B��}����\{�&�-���Fo���w�� � ��5&��_B�K��i����Y�SZ�1�-����毧�g�$��3V������!�'*��閩ɜ�y7e����[�f��+B/,���W#��h� �D�(�	g<�6D�=*=�^�=�-;��qyi�7��?�k�|B��c�O� <�S�ι��[��>����ϵ� �������|:�i�;}B?&�+{�[�Q�����;ks����N�O��9$/r+�'���e��d�v� ���o��Ď�Cql� #���M:�+'��:RN�T��?�Rfh��"��{d���-�;�|Mء���4���rGJ��\�K��R���I v`�{
�����;t+�0��\��[;����U8(���5�C�EN��¹ڒ������r�ߊ�k��sN
�E�Cv��Cg#"��*�N�҈��L���+Dd�HT�~i��@�*U]�q)<��F<E2'�9�QK��8��
�:T[w��S���9����J��R�W�䌊k�@*�e��EE$+�럥����K�zb�4hS׭H�qM�S�JzɎ�);%O#�F�l����iLV�i�6UH��BF�=
(��#��[�� �6� z�*���_�5`� �ȿ�?ʓ�?��� x� *(����J�I�����?���Q\��[3��� ����W�����=f��Eks�<k�Z�������G֊+��=3K� �� ݩ�Z(��y�܉���QEh�O�U����E�4�	�Q(�f�kw�����R%_�R'J(�2U��ފ(��V�(��=zQE!	'APz�E ��R��)��QH�%H�T2����8�EAhct5Y��EZN��E�!����c�>�Q@"�u�XN��*YH�zq�Eh���QEK,�>�Y�Ee9����(�!�����c����lC��<� ���QEhg�h��e~�P�u���]������	f���{'�Ƹ�� ���}$�b�+�	�H� ]d7�������*��W�f��Eo� �!��O���@�� �f��:�/���s�@����� �R��g���/���ʹ���o��S��Or����ڡo����(��z�+b��e?먥�� ���EtD�fׂ����EMu� #}W�a?���u!�������b��'�C����W?�������������Q^o@��Z�V�)2��A��~�j?���h��4����E�Z���+�𢊉��t5����Ed�-�g���?Z��:(���pKs��~���yG�k� ����[#(��SO�4QY�=��E��墊C�P�SӭU31���T
��O���+��֊(�i��
INSERT INTO tbl_news VALUES("19","8","Sacramento Kings sign Domantas Sabonis","","Domantas Sabonis said he was looking for a home when the Indiana Pacers traded him to the Kings in a blockbuster deal involving Tyrese Haliburton in February 2022. He has found one in Sacramento.
Read more at: https://www.sacbee.com/sports/nba/sacramento-kings/article276946963.html#storylink=cpy","2023-07-06 07:59:20","���� JFIF      �� C 





�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ��(��-% �
JZ z�zӱ��S�� �S��4�ԴW\�j� *x9�2�� 4Z@s׭.r2 7�E/�9� �Rrrz��8��ހN�IE ;��JP2(�P=� ��"��� ��<"�G�=V��<R�Tc�T�1�H��U��B*�H�R��(�NRm���C�i�=�Q"�#��D@�5aWz�4C)�e(��Jm��"�T����\��48��N�SJg�����do@jf��s@Ƈ�i�<��#�Rc<��y�NVS��f3ڐ.��`�`3������/̠��;Ұ��g��NpEF���8�1�ԏ¤H��i�ޢ�D>���8�ߥ*���Nc�R2E T*����(9�Z�b9�J�`d��@:sH!��qV���J�`��a
��$E\7aZ2A�����C��-�g'=MJ��ƙ=j���'�d�*�
hM�ΙU��DQG@*ل��S��,�����
�q��!��i<���8"�IHq�f��'�d�X��\��R]�� a�$T��IX�Uw#�'5n��g����!&�(���O(�z�a��V>� � I��9�*����pq],�0( ʝ=k���!��t��!E9�)�+�� 2��Q@����zՉ��K�G`j�-t���sN�(f�y��U�@T&����OUJ�#�=Xv���c����x�UM����d�F�H�-��+05���#;�N#^O5~�Bp�z��+@�ɽ�諒�l;�)۩7���%�$*��ϴ�&�R���&�k�+`}�J�Mv\��*.��
*X�6�JZ�AEPE� R�Q@<�(1��GJ�SĄ.��p�����qҚ
����K���(���S��S�#�\�*6O���G"�:�T� q@	J(�<
 @=��>x��iy�B�=B�q@>�j8q�)A-�i��NL�$��N>���(\qH	 �((9뚕W��*��V#$.Th��w�^D�2P�@�
�qǱ���B�j�4�����E9��ɩ1���=hT���
z�;P"���㚛a�i�3�"(d��La��YD��5!����^i�>:U֋ڣ	�M������⮼D�^I� U*;Tlj�`��#��,E.��� Ճ��"�H�6�/�=E Ƣ�sڦX�zS�g�Hϧ�j�P��*[xCWRԂ:�I���V��=E<��p)�jBY��$��� �W��h�I��"�7�B8��*t�'8�b����[n`6�ƌ���͵t�M�H���S�jS�mX�]�R�����6�`�Y�'��l��wp;��0�kFG�M����������n�$qqA�FRMSt+<����0�N�z�\��[nߊi�S(�!n��=a����}��q�L�N܌g=)��:;l��#����q���QB�3��l�NNq�)]�*6��'6G�}�k�Ҵ���c�#�s:<��^zg��4����_'����(�Ra��h�"i�����@'���q�ihidT�G�IT��9�\~�h-�XF9�i���U��rƸ�bL�H�)��|TI�Z[�fk��6Zt� �g�k>��47QO��@��G#�Q�ܟܣo!A�:�&�c�M��h��/!H�?Q�Sk�t9$�l���t�r+a$�����qI`u
�{Z��2#���Y�g��끟�U����׵
ȭKEb
(�����K� J)qK@
ַ�-�3P�.HY���d
��TU�d��$Sŗ`;�]1�M���[i]��sg�)�H��=�3c7�!۷m;���#�ul�}:�;�?�j�cyܡ�=MM+;F���X`��.1U'����SZ5��ݚE����i#]�r�����3�i+M�7`:V�����r���\�ƭ-�Ħٚ8��U��wЏu��i�2]�GDa�F
�B61��u��>��;��Y���#��<���rG�hZ�	���+V�F�����c��&�PҴRL��wO�U�BĒ?:݆���k
	6�=��]��3BWd6nͬeJ���TU���^��'�T���3V��s6.�62���G�uL���W?qxq�j��s�J���� 1YTV�ׅ��2�A�8d
L�L	�9�ḟڟʙ�O$�ހb�jE뚌T��L�O��j�}��\t��[���0��4"Ɲoϝ 㰧]�4����ԗSyI��0H��x��H��sOȟ2�[mb�#=�1����U��.�<
���?�+�"I'�0:�j-�<�p��d����q�@۟!�MG ��5+�b��d$.iT�ƙ3ah�	�4!,��NjQ�?�j�|�lS�Z��&rI��j ce��&9�1�֐6;S��&�e<��SK
3i�4�H����"ƕ�M�N-�)��X��֚i�G�4�((�%%hҒ�u��Ҥ���)GZB�t��4����Q`q��S�(��J4�K��� �޴��4�O��(��))OJ1�h ��t����ҌP8�� ��-.M ����֘��P"��p���S���<��U������� J
/@J�i�+:�jU�O�� 0F�g��A��
V�}*\�X�␙]x�MJ���53و�]�$g�J,eEcb;Ȫ�$K�1Vct�EQ�]�Ta�9��H��1#'��z���\B�MK
���[dt�InM[�ԜqL
��T�m�"���Z�ǀ��JH�{n�
T�,J�m8��)�hC�oZc
�g��L�T0��֮���}��T��A5�G��+��L��� �~�=3K��s1(W�;\��g�h�]�h�,��WP���
��]~�|�[���l�g>��y��h����.k���q��mlwQx��A ��E�ֵZ����be�Xc��YdPÅ۞��>��va�8��O��1��.�EHHN*��B�$U+�@<�\ٻ�J��bzUEԐ5c�_�
i�,��#q�ϖ�$y$s���YFr@�c��9Q������ �Y_��c�.Ϊ q�:sR�8�rF�=3Q� kY!�X�V�'���|܀x��4�M�ɐ@�5���@aQ��J�6��F� �u�,��Z�s���9�j6��5K���"řg&��sq��ʡ����+���k��� w�k6�y$9���Սg�ya`�i"l�\�/�F*����Vvb:Zz]2�OOjY�
��Q�V_� v𕬸� Ss�G�/� Z��?ަ�|U7�9Y��3�ҝ��u5S��+�?�z��4%����U
WC�4ۃ������RȻ�f�(B�&]�Ҙdi�,���;R(��%�&�a��L}i�B�#�i�?�@��6�O4���!$�$�I���L�p{Rg�!8�@qI׊C�;RclSh$搂{R) 4��=i��P�E)�% @M&�(�җi�1��C�yR9��4�&(ǭ� ��� �(�<�삊 ��JZ@QE 8R�{�@ť�M�@��&� JZ(4 
ploz^� � �/�;nzP �)qA ��sF�ԋ@��L��G���or8�B)*r>�b9ʰb7��)�2� �<�1=�o��%�"Uy���Z�P�+kL�(�RB�=�֔�OS���|w�5Ų�n��q����m"����+�:I�β��Qa�	��k��o�;�<�9e���F���%��ܞ�
�Ȑ)��\�a�Ҩ��hQUFɭ;�=lIu���nV�SM��R��)nJ!�I��dg	O�sV�L�9�v��mż;�9�6��I㞕�%c�2��pù2_�Բ���Z����k��8=;Vf�&46%�U�c�|��
cq��&� �-1��2u'�}�I�M���U.Iɧ���W$ط��FMk[]�2
�Z��]~�d�V凨�U��m�����Gm��Y���cQ��'��2����iZ�8��_Q\��D��T�IY�g_i7����q�!ܿ�b�rk�`�c�JH9#޹�h��
8�4��$V
�f��r���(�=��\�F�����--�U�Ou�F�[c-�|��OqR}��BiZ&��a��)���t�b�f�r� 3tz�%Լ9���ŭ��=�~a��-a�5
��������p��RT��iGI&���6���N�����&�v�*�**����0}*�[��j�F(E��AEP1(��)4 �$xOZEP:ҏ�@Ǔ뚍�v�C@�QN�jR�G'�a��1�8!'J��T[y�OLJۤ�P��94�� ?!G%�{�q�Q��;T��8���V�(��=�P�Fq�fZ;*�����坰�$[ɑ�EW�}��I�m^�����O�JEX@K74������rE�||U���Z� ă5t���Ca�S;����ߩ�J�@�����uہ��H�D0:��&���@����HpҘ
iϦi�c�a��c�R�sڙ��2����!�6�c.3M2f�95#����QI�!�P1��t��t�f�4��I��
x�G�i��ps�HD�`�s���sbd�2z��+�~UUs�Ո�a�"�&����=��k[��2N�s�a�y �FezըDR7�f��pMm��ގ�h�I[�ҥK��̌{��Q4�6�j�wc�M̕��/!K9��3p	8���ֶ�7�A�'�y���f�3Px����rl�Qw=%a� �.�v��n�_!~b1C�h��}k;�]!tXSLѨ��\��dX��Mk�����JwͶ�I�"�5%c��s�r����5��A.V:S�
k������k;��.ca����;������p�P��z�v%Ⱥo$Unn��j���85V[�94
�Y�j���y����U&���А����'�,�g��Ǯi��y)��Z����@ɼ�ԛ��z�
�ؤ�sVV|w��~sR����r�A���\�U�O�zT>g�O֒Eד֡3㡨d�y�<��lXy>n�To&GZ����Q4�4҉����I��楄�1��W-�H�[��w5�4��IT+
�Li��iUN:R�9<�	\c8�>EDz�ۥ1�տt�ҡ�刢%zSd���)
�.-[%�s��w)?��a���
PGZ��`������� ��o��+.U�g��LKdѠ΂-A����<�� ���c�ȮunH�S-��"���cs�M��@�{�"RAn�k,\^����'�@7sE�1���A��i��֔���X�ny��r\:�/8��I}
�
	8���	'*�5)h'������zM���w�[���~��U�iOp��8��i�jz��E*�V��F�׏�kz*��9�R�-�㼦�oΦ��#�k���4
�{���ғ�c=(|��Z��G%��Ӿ���	P�z��)*�c-�*�����ڢ�+08�U݆��u<R�����JdBG$��8�y�w z�J�q�
�[���D�*J+D�~�˒��IV�Ct�
