# Host: localhost  (Version 5.7.10-log)
# Date: 2016-05-07 15:01:09
# Generator: MySQL-Front 5.3  (Build 5.31)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "post"
#

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "post"
#

INSERT INTO `post` VALUES (12,'32121',NULL,'2131',NULL),(13,'sadas',NULL,'dsadasdasdasdas',NULL),(14,'&#1074;&#1092;&#1099;&#1092;',NULL,'&#1074;&#1099;&#1092;',NULL);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'aas','dasas','sasa','myGeneratedPass'),(2,'1','1','1','1'),(3,'2','2','2','2'),(4,'rex_2010@ukr.net','Vasya','Pypkin','159357'),(5,'email','Max','Maax','123'),(6,'213','223123','Last na32121me','11');
