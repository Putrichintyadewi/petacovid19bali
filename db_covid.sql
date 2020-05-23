

/*Data for the table `migrations` */

/*Table structure for table `tb_data` */

DROP TABLE IF EXISTS `tb_data`;

CREATE TABLE `tb_data` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` INT(11) DEFAULT NULL,
  `tgl_data` DATE DEFAULT NULL,
  `sembuh` INT(11) DEFAULT NULL,
  `positif` INT(11) DEFAULT NULL,
  `rawat` INT(11) DEFAULT NULL,
  `meninggal` INT(11) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kabupaten` (`id_kabupaten`),
  CONSTRAINT `tb_data_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=572 DEFAULT CHARSET=latin1;

/*Data for the table `tb_data` */

INSERT  INTO `tb_data`(`id`,`id_kabupaten`,`tgl_data`,`sembuh`,`positif`,`rawat`,`meninggal`,`created_at`,`updated_at`) VALUES (1,1,'2020-05-01',5,7,2,0,'2020-05-14 07:33:59','2020-05-18 14:08:05'),(2,2,'2020-05-02',24,53,27,4,'2020-05-14 08:29:56','2020-05-14 13:02:17'),(3,3,'2020-05-02',8,11,3,0,'2020-05-14 08:31:30','2020-05-14 08:31:30'),(4,1,'2020-05-02',2,13,14,3,'2020-05-14 11:49:12','2020-05-14 11:49:12'),(5,5,'2020-05-02',5,3,5,12,'2020-05-14 13:38:15','2020-05-14 13:38:15'),(7,3,'2020-05-16',9,12,3,0,'2020-05-16 06:24:28','2020-05-16 06:24:28'),(8,6,'2020-05-16',11,14,3,0,'2020-05-16 06:25:15','2020-05-16 06:25:15'),(9,1,'2020-05-16',17,24,7,0,'2020-05-16 06:26:03','2020-05-16 06:26:03'),(10,2,'2020-05-16',49,65,14,2,'2020-05-16 06:26:42','2020-05-16 06:26:42'),(11,5,'2020-05-16',22,28,6,0,'2020-05-16 06:31:57','2020-05-16 06:31:57'),(12,9,'2020-05-16',54,81,27,0,'2020-05-16 06:33:57','2020-05-16 06:33:57'),(13,8,'2020-05-16',15,19,4,0,'2020-05-16 06:34:43','2020-05-16 06:34:43'),(14,7,'2020-05-16',22,29,7,0,'2020-05-16 06:35:11','2020-05-16 06:35:11'),(15,4,'2020-05-16',33,61,28,0,'2020-05-16 06:35:40','2020-05-16 06:35:40'),(32,3,'2020-05-17',9,12,3,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(33,6,'2020-05-17',11,14,3,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(34,1,'2020-05-17',18,24,6,0,'2020-05-17 16:31:00','2020-05-17 11:44:34'),(35,2,'2020-05-17',49,65,14,2,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(36,5,'2020-05-17',22,28,6,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(37,9,'2020-05-17',56,81,25,0,'2020-05-17 16:31:00','2020-05-17 11:46:11'),(38,8,'2020-05-17',15,19,4,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(39,7,'2020-05-17',22,29,7,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),(56,4,'2020-05-17',33,61,28,0,'2020-05-17 19:47:36','2020-05-17 19:47:38'),(563,3,'2020-05-18',9,12,3,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(564,6,'2020-05-18',11,14,3,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(565,1,'2020-05-18',18,24,6,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(566,2,'2020-05-18',49,65,14,2,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(567,5,'2020-05-18',22,28,6,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(568,9,'2020-05-18',56,81,25,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(569,8,'2020-05-18',15,19,4,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(570,7,'2020-05-18',22,29,7,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),(571,4,'2020-05-18',33,61,28,0,'2020-05-18 08:57:54','2020-05-18 08:57:54');

/*Table structure for table `tb_kabupaten` */

DROP TABLE IF EXISTS `tb_kabupaten`;

CREATE TABLE `tb_kabupaten` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `kabupaten` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kabupaten` */

INSERT  INTO `tb_kabupaten`(`id`,`kabupaten`) VALUES (1,'BADUNG'),(2,'BANGLI'),(3,'BULELENG'),(4,'DENPASAR'),(5,'GIANYAR'),(6,'JEMBRANA'),(7,'KARANGASEM'),(8,'KLUNGKUNG'),(9,'TABANAN');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

INSERT  INTO `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES (1,'juliarta','kecubung@email.com',NULL,'$2y$10$Ix0AFW1uB3/zifu2Ct74g.pnZQ5bXNmngMXy43CK0h.QevWEbLmHm',NULL,'2020-05-13 07:56:09','2020-05-13 07:56:09'),(2,'jack','jack@gmail.com',NULL,'$2y$10$.ibeTAYmv60AJ421cUBIvuzOe.TYYyjV1cpL8iFOC3VD8YESrxDrq',NULL,'2020-05-18 06:59:33','2020-05-18 06:59:33');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `copy_data` */

/*!50106 DROP EVENT IF EXISTS `copy_data`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `copy_data` ON SCHEDULE EVERY 1 DAY STARTS '2020-05-18 08:57:54' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
		-- copy deleted posts
		INSERT INTO tb_data ( 
		SELECT NULL,id_kabupaten,CURDATE() ,sembuh,positif,rawat,meninggal,NOW(),NOW()
		FROM tb_data
		WHERE tgl_data = (SELECT MAX(tb_data.`tgl_data`) FROM tb_data));
		    
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
