/*
SQLyog Ultimate v12.2.4 (64 bit)
MySQL - 5.7.11 : Database - cpo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cpo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cpo`;

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `batchId` varchar(256) DEFAULT NULL,
  `type` enum('PunchoutSetupRequest','PunchoutSetupResponse','PunchoutOrderMessage','OrderRequest','OrderResponse','ShoppingCart') DEFAULT NULL,
  `id` varchar(256) DEFAULT NULL,
  `httpStatus` smallint(6) DEFAULT NULL,
  `tradeNetName` varchar(128) DEFAULT NULL,
  `customerName` varchar(128) DEFAULT NULL,
  `storeName` varchar(128) DEFAULT NULL,
  `entityType` enum('TradeNet','Store','CPO') DEFAULT NULL,
  `entityName` varchar(256) DEFAULT NULL,
  `addressId` varchar(32) DEFAULT NULL,
  `orderId` varchar(64) DEFAULT NULL,
  `body` mediumtext,
  `parsedDataJson` mediumtext,
  `extrinsicValuesJson` mediumtext,
  `processJson` mediumtext,
  `dateTimeBeg` varchar(32) DEFAULT NULL,
  `dateTimeEnd` varchar(32) DEFAULT NULL,
  `elapsed` varchar(16) DEFAULT NULL,
  `errorsJson` mediumtext,
  PRIMARY KEY (`pid`),
  KEY `entityName` (`entityName`(255)),
  KEY `entityType` (`entityType`),
  KEY `dateTimeBeg` (`dateTimeBeg`),
  KEY `orderId` (`orderId`(63)),
  KEY `id` (`id`(47)),
  KEY `batchId` (`batchId`(47)),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
