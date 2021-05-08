/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.30 : Database - library_management_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library_management_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `library_management_system`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `Username` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Sec_Q` varchar(200) DEFAULT NULL,
  `Answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `account` */

insert  into `account`(`Username`,`Name`,`Password`,`Sec_Q`,`Answer`) values ('admin','Admin','12345','What is your mother Toungue?','hindi');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `Book_ID` bigint(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Edition` bigint(100) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Price` bigint(100) DEFAULT NULL,
  `Pages` bigint(100) DEFAULT NULL,
  `bookIssuedStatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `book` */

insert  into `book`(`Book_ID`,`Name`,`Edition`,`Publisher`,`Price`,`Pages`,`bookIssuedStatus`) values (1,'Maths',5,'RD Sharma',450,500,'Issued'),(2,'Physics',4,'HL Verma',700,400,'Available'),(3,'Chemistry',3,'KN boliya',340,560,'Available'),(4,'Computer',4,'Sumita Arora',490,700,'Available');

/*Table structure for table `issue` */

DROP TABLE IF EXISTS `issue`;

CREATE TABLE `issue` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Book_ID` bigint(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Edition` bigint(20) DEFAULT NULL,
  `Publisher` varchar(200) DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `Pages` bigint(20) DEFAULT NULL,
  `Student_Id` bigint(20) DEFAULT NULL,
  `SName` varchar(200) DEFAULT NULL,
  `FName` varchar(200) DEFAULT NULL,
  `Course` varchar(200) DEFAULT NULL,
  `Branch` varchar(200) DEFAULT NULL,
  `Year` bigint(20) DEFAULT NULL,
  `Semester` bigint(20) DEFAULT NULL,
  `DateOfIssue` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `issue` */

insert  into `issue`(`Id`,`Book_ID`,`Name`,`Edition`,`Publisher`,`Price`,`Pages`,`Student_Id`,`SName`,`FName`,`Course`,`Branch`,`Year`,`Semester`,`DateOfIssue`,`status`) values (4,1,'Maths',5,'RD Sharma',450,500,2,'Raj Verma','KL Deepak','BBA','CS',4,4,'Apr 4, 2021','Returned'),(5,1,'Maths',5,'RD Sharma',450,500,1,'Tanay','DK Saxena','B.S.C','IT',4,3,'Apr 7, 2021','Returned'),(6,1,'Maths',5,'RD Sharma',450,500,1,'Tanay','DK Saxena','B.S.C','IT',4,3,'Apr 5, 2021','Returned'),(7,1,'Maths',5,'RD Sharma',450,500,1,'Tanay','DK Saxena','B.S.C','IT',4,3,'Apr 6, 2021','Returned'),(8,1,'Maths',5,'RD Sharma',450,500,1,'Tanay','DK Saxena','B.S.C','IT',4,3,'May 8, 2021','BookIssued');

/*Table structure for table `returnbook` */

DROP TABLE IF EXISTS `returnbook`;

CREATE TABLE `returnbook` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Student_ID` bigint(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `FName` varchar(200) DEFAULT NULL,
  `Course` varchar(200) DEFAULT NULL,
  `Branch` varchar(200) DEFAULT NULL,
  `Year` bigint(20) DEFAULT NULL,
  `Semester` bigint(20) DEFAULT NULL,
  `Book_ID` bigint(20) DEFAULT NULL,
  `BName` varchar(200) DEFAULT NULL,
  `Edition` bigint(20) DEFAULT NULL,
  `Publisher` varchar(200) DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `Page` bigint(20) DEFAULT NULL,
  `DOI` varchar(200) DEFAULT NULL,
  `DOR` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `returnbook` */

insert  into `returnbook`(`Id`,`Student_ID`,`Name`,`FName`,`Course`,`Branch`,`Year`,`Semester`,`Book_ID`,`BName`,`Edition`,`Publisher`,`Price`,`Page`,`DOI`,`DOR`,`status`) values (2,1,'Tanay','DK Saxena','B.S.C','IT',4,3,1,'Maths',5,'RD Sharma',450,500,'Apr 7, 2021','Apr 9, 2021','Returned');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Student_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Father` varchar(100) DEFAULT NULL,
  `Course` varchar(100) DEFAULT NULL,
  `Branch` varchar(100) DEFAULT NULL,
  `Year` bigint(20) DEFAULT NULL,
  `Semester` bigint(20) DEFAULT NULL,
  `bookIssueCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student` */

insert  into `student`(`Student_ID`,`Name`,`Father`,`Course`,`Branch`,`Year`,`Semester`,`bookIssueCount`) values (1,'Tanay','DK Saxena','B.S.C','IT',4,3,1),(2,'Raj Verma','KL Deepak','BBA','CS',4,4,0),(3,'Rohit','Ravikant','M.S.C','Dbase',4,3,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
