/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.27 : Database - bookshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookshop`;

/*Table structure for table `t_orderitem` */

DROP TABLE IF EXISTS `t_orderitem`;

CREATE TABLE `t_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buynum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `t_orderitem` */

insert  into `t_orderitem`(`id`,`order_id`,`product_id`,`buynum`) values (1,41,28,1),(2,41,31,1),(3,41,28,1),(4,41,29,1),(5,10,29,1),(6,11,30,1),(7,12,31,1),(8,13,30,1),(9,14,31,1),(10,15,31,1),(11,16,31,1),(12,17,28,1),(13,18,31,1),(14,19,31,1),(15,20,29,1),(16,21,30,1),(17,22,31,1),(18,23,30,1),(19,24,29,1),(20,25,31,1),(21,26,29,1),(22,27,29,1),(23,28,29,1),(24,29,30,1),(25,30,33,1),(26,30,29,1),(27,31,31,4),(28,32,29,4),(29,33,48,3),(30,34,48,3);

/*Table structure for table `t_orders` */

DROP TABLE IF EXISTS `t_orders`;

CREATE TABLE `t_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double NOT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `payState` int(11) DEFAULT '0',
  `ordertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `receiverAddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `t_orders` */

insert  into `t_orders`(`id`,`money`,`receiverName`,`receiverPhone`,`payState`,`ordertime`,`user_id`,`receiverAddress`) values (32,100,'xxx, zhangjiabao','xxx',0,'2020-06-07 23:05:39',13,'xxx'),(30,63,'xxx, zhangjiabao','xxx',1,'2020-06-01 21:08:49',13,'xxx'),(5,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(6,332.5,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(7,60.8,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(8,22.8,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(9,25,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(10,25,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(11,332.5,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(12,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(13,332.5,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(14,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(15,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(16,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(17,22.8,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(18,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(19,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(20,25,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(21,332.5,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(22,38,'xxx, zhangjiabao','xxx',0,'2020-05-30 15:09:59',13,'xxx'),(23,332.5,'xxx, zhangjiabao','xxx',1,'2020-05-30 15:09:59',13,'xxx'),(24,25,'xxx, zhangjiabao','xxx',1,'2020-05-30 15:09:59',13,'xxx'),(25,38,'xxx, zhangjiabao','xxx',1,'2020-05-30 15:09:59',13,'xxx'),(34,3,'xxx, zhangjiabao','xxx',1,'2020-06-10 10:09:21',13,'xxx'),(27,25,'xxx, zhangjiabao','xxx',1,'2020-05-30 15:09:59',13,'xxx'),(33,3,'xxx, zhangjiabao','xxx',0,'2020-06-10 10:04:13',13,'xxx'),(31,152,'xxx, zhangjiabao','xxx',1,'2020-06-04 10:38:04',13,'xxx');

/*Table structure for table `t_product` */

DROP TABLE IF EXISTS `t_product`;

CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `pnum` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `t_product` */

insert  into `t_product`(`id`,`name`,`price`,`img_url`,`pnum`,`category`,`description`) values (28,'痕记','22.8','G:\\WebProject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookShop\\upload/106.jpg',977,'1','fffffffff'),(29,'天堂之旅','25','G:\\WebProject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookShop\\upload/106.jpg',989,'2','fffffffffff'),(30,'钱钟书集','332.50','images/book/book_04.gif',999,'2','ffffffffffff'),(31,'赵俪生高昭—夫妻回忆录','38.00','images/book/book_05.gif',998,'3','fffffffffff'),(33,'一颗热土豆是一张温馨的床','38.00','images/book/book_07.gif',999,'4','ggggggggggg'),(34,'李戡戡乱记','22.00','images/book/book_08.gif',999,'5','hhhhhhhhh'),(35,'生生世世未了缘','17.50','images/book/book_09.gif',999,'7','aaaaaaaaa'),(36,'一生有多少爱','17.50','images/book/book_10.gif',944,'7','sssssss'),(37,'悲惨世界','39','D:\\BYB\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\work\\Catalina\\localhost\\BookShop\\upload_e7110080_8376_44d1_9de7_2e28d50a91ce_00000004.tmp',1,'5','仅供参考');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `introduce` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `gender` varchar(10) NOT NULL,
  `registerTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`email`,`telephone`,`introduce`,`role`,`gender`,`registerTime`) values (1,'test3','aaaaaaaa','test@163.com','','',1,'2','2020-04-30 19:29:18'),(2,'test2','aaaaaaaa','test2@163.com','','',1,'2','2020-04-30 19:29:18'),(3,'test4','aaaaaaaa','test2@163.com','','',1,'2','2020-04-30 19:29:18'),(4,'test007','12312312','test007@aptech.com.cn','','',1,'2','2020-04-30 19:29:18'),(5,'test321','aaaaaaaa','aa@com.cm','','',1,'2','2020-04-30 19:29:18'),(6,'test008','aaaaaaaa','test008@1.c','','',1,'2','2020-04-30 19:29:18'),(7,'user1','aaaaaaaa','user1@aptech.com.cn','','',1,'2','2020-04-30 19:29:18'),(8,'test','test','test@test.com','','',0,'2','2020-04-30 19:29:18'),(9,'user123','12312312','user123@123.com','','',0,'2','2020-04-30 19:29:18'),(10,'wangxiao','12345678','123@asd.com','','',0,'2','2020-04-30 19:29:18'),(11,'admin','admin','admin@qq.com','','',1,'2','2020-04-30 19:29:18'),(12,'123','12345678','1184791118@qq.com','','',0,'2','2020-04-30 19:29:18'),(13,'zhangjiabao','123456','222@qq.com','15506441122','',0,'1','2020-05-30 18:17:36'),(14,'yyyy','yyyyyyyy','yy@qq.com','','',0,'2','2020-04-30 19:29:18'),(15,'tt','tt','tt','77777','tttt',0,'1','2020-05-15 17:31:42'),(16,'yy','yy','yyZ','7777','yyyy',0,'1','2020-05-15 17:33:47'),(17,'kk','kk','kk','77777','kk',0,'1','2020-05-15 17:41:38'),(18,'11111111','11111111','2609487310@qq.com','11111111','11111111',0,'1','2020-06-01 21:19:17'),(19,'123123','123456','2926375817@qq.com','123456789','123456789',0,'1','2020-06-04 10:34:13'),(20,'148258','123456','1234567898@qq.com','11111111','11111111',0,'2','2020-06-08 10:46:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
