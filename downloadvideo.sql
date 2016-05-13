/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23 : Database - downloadvideo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`downloadvideo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `downloadvideo`;

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerId` int(2) NOT NULL,
  `customerName` varchar(11) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerId`,`customerName`,`password`) values (1,'admin','123'),(2,'essfree','essfree'),(3,'essfree','badwolf');

/*Table structure for table `t_download` */

DROP TABLE IF EXISTS `t_download`;

CREATE TABLE `t_download` (
  `downloadId` int(30) NOT NULL AUTO_INCREMENT,
  `video` int(11) NOT NULL,
  `customer` int(2) DEFAULT NULL,
  PRIMARY KEY (`downloadId`),
  KEY `FKBC73BF34597B8` (`video`),
  KEY `FKBC73BF3619701BA` (`customer`),
  CONSTRAINT `FKBC73BF34597B8` FOREIGN KEY (`video`) REFERENCES `t_video` (`videoId`),
  CONSTRAINT `FKBC73BF3619701BA` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerId`),
  CONSTRAINT `t_download_ibfk_1` FOREIGN KEY (`video`) REFERENCES `t_video` (`videoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_download_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `t_download` */

insert  into `t_download`(`downloadId`,`video`,`customer`) values (1,2,2),(2,2,2),(3,2,2),(4,2,2),(5,2,2),(6,2,2),(7,2,2),(8,2,2),(9,3,2),(10,2,2),(11,2,2),(12,3,2),(13,4,2);

/*Table structure for table `t_video` */

DROP TABLE IF EXISTS `t_video`;

CREATE TABLE `t_video` (
  `videoId` int(11) NOT NULL,
  `videoName` varchar(11) DEFAULT NULL,
  `introduce` varchar(50) DEFAULT NULL,
  `videoType` varchar(11) DEFAULT NULL,
  `director` varchar(11) DEFAULT NULL,
  `pubishData` varchar(11) DEFAULT NULL,
  `cast` varchar(11) DEFAULT NULL,
  `picture` varchar(30) DEFAULT NULL,
  `path` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`videoId`),
  KEY `videoType` (`videoType`),
  KEY `FKA11F50F0B0301A2C` (`videoType`),
  CONSTRAINT `FKA11F50F0B0301A2C` FOREIGN KEY (`videoType`) REFERENCES `t_videotype` (`videoTypeId`),
  CONSTRAINT `t_video_ibfk_1` FOREIGN KEY (`videoType`) REFERENCES `t_videotype` (`videoTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_video` */

insert  into `t_video`(`videoId`,`videoName`,`introduce`,`videoType`,`director`,`pubishData`,`cast`,`picture`,`path`) values (2,'POI','',NULL,'de',NULL,'carey','images/POI.png','video/Dickensian.mp4'),(3,'LM','fe','2','dfe','2014/04/16','de','images/LM.jpg','video/room.mp4'),(4,'DW','fe',NULL,'dji',NULL,'fjei','images/DW.jpg','video/dw.mp4');

/*Table structure for table `t_videotype` */

DROP TABLE IF EXISTS `t_videotype`;

CREATE TABLE `t_videotype` (
  `videoTypeId` varchar(11) NOT NULL,
  `videoTypeName` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`videoTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_videotype` */

insert  into `t_videotype`(`videoTypeId`,`videoTypeName`) values ('1','剧情'),('2','惊悚'),('3','喜剧'),('4','科幻');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
