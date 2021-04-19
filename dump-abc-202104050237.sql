-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: abc
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alphabeta`
--

DROP TABLE IF EXISTS `alphabeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alphabeta` (
  `character_ascii` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `language_code` char(2) NOT NULL,
  `char_case` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image_cover` varchar(36) DEFAULT NULL,
  `narration_audio_file_name` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`character_ascii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alphabeta`
--

LOCK TABLES `alphabeta` WRITE;
/*!40000 ALTER TABLE `alphabeta` DISABLE KEYS */;
INSERT INTO `alphabeta` VALUES (48,2,'en',NULL,NULL,NULL),(49,2,'en',NULL,NULL,NULL),(50,2,'en',NULL,NULL,NULL),(51,2,'en',NULL,NULL,NULL),(52,2,'en',NULL,NULL,NULL),(53,2,'en',NULL,NULL,NULL),(54,2,'en',NULL,NULL,NULL),(55,2,'en',NULL,NULL,NULL),(56,2,'en',NULL,NULL,NULL),(57,2,'en',NULL,NULL,NULL),(65,1,'en','CAPITAL',NULL,NULL),(66,1,'en','CAPITAL',NULL,NULL),(67,1,'en','CAPITAL',NULL,NULL),(68,1,'en','CAPITAL',NULL,NULL),(69,1,'en','CAPITAL',NULL,NULL),(70,1,'en','CAPITAL',NULL,NULL),(71,1,'en','CAPITAL',NULL,NULL),(72,1,'en','CAPITAL',NULL,NULL),(73,1,'en','CAPITAL',NULL,NULL),(74,1,'en','CAPITAL',NULL,NULL),(75,1,'en','CAPITAL',NULL,NULL),(76,1,'en','CAPITAL',NULL,NULL),(77,1,'en','CAPITAL',NULL,NULL),(78,1,'en','CAPITAL',NULL,NULL),(79,1,'en','CAPITAL',NULL,NULL),(80,1,'en','CAPITAL',NULL,NULL),(81,1,'en','CAPITAL',NULL,NULL),(82,1,'en','CAPITAL',NULL,NULL),(83,1,'en','CAPITAL',NULL,NULL),(84,1,'en','CAPITAL',NULL,NULL),(85,1,'en','CAPITAL',NULL,NULL),(86,1,'en','CAPITAL',NULL,NULL),(87,1,'en','CAPITAL',NULL,NULL),(88,1,'en','CAPITAL',NULL,NULL),(89,1,'en','CAPITAL',NULL,NULL),(90,1,'en','CAPITAL',NULL,NULL),(97,1,'en','SMALL',NULL,NULL),(98,1,'en','SMALL',NULL,NULL),(99,1,'en','SMALL',NULL,NULL),(100,1,'en','SMALL',NULL,NULL),(101,1,'en','SMALL',NULL,NULL),(102,1,'en','SMALL',NULL,NULL),(103,1,'en','SMALL',NULL,NULL),(104,1,'en','SMALL',NULL,NULL),(105,1,'en','SMALL',NULL,NULL),(106,1,'en','SMALL',NULL,NULL),(107,1,'en','SMALL',NULL,NULL),(108,1,'en','SMALL',NULL,NULL),(109,1,'en','SMALL',NULL,NULL),(110,1,'en','SMALL',NULL,NULL),(111,1,'en','SMALL',NULL,NULL),(112,1,'en','SMALL',NULL,NULL),(113,1,'en','SMALL',NULL,NULL),(114,1,'en','SMALL',NULL,NULL),(115,1,'en','SMALL',NULL,NULL),(116,1,'en','SMALL',NULL,NULL),(117,1,'en','SMALL',NULL,NULL),(118,1,'en','SMALL',NULL,NULL),(119,1,'en','SMALL',NULL,NULL),(120,1,'en','SMALL',NULL,NULL),(121,1,'en','SMALL',NULL,NULL),(122,1,'en','SMALL',NULL,NULL);
/*!40000 ALTER TABLE `alphabeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alphabeta_exercise_i`
--

DROP TABLE IF EXISTS `alphabeta_exercise_i`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alphabeta_exercise_i` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `exercise` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `alphabeta_exercise_i_course_FK` (`course_id`),
  KEY `alphabeta_exercise_i_student_FK` (`student_id`),
  CONSTRAINT `alphabeta_exercise_i_course_FK` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `alphabeta_exercise_i_student_FK` FOREIGN KEY (`student_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alphabeta_exercise_i`
--

LOCK TABLES `alphabeta_exercise_i` WRITE;
/*!40000 ALTER TABLE `alphabeta_exercise_i` DISABLE KEYS */;
INSERT INTO `alphabeta_exercise_i` VALUES (4,1,114,'i'),(5,1,114,NULL),(6,1,114,NULL),(7,1,114,NULL),(8,1,115,NULL),(9,1,117,NULL);
/*!40000 ALTER TABLE `alphabeta_exercise_i` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alphabeta_exercise_i_progress`
--

DROP TABLE IF EXISTS `alphabeta_exercise_i_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alphabeta_exercise_i_progress` (
  `session_id` bigint(20) NOT NULL,
  `character_ascii` int(11) NOT NULL,
  `wrong_count` int(11) NOT NULL DEFAULT '0',
  `status` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`session_id`,`character_ascii`),
  KEY `alphabeta_student_progress_FK` (`character_ascii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alphabeta_exercise_i_progress`
--

LOCK TABLES `alphabeta_exercise_i_progress` WRITE;
/*!40000 ALTER TABLE `alphabeta_exercise_i_progress` DISABLE KEYS */;
INSERT INTO `alphabeta_exercise_i_progress` VALUES (4,65,0,'RIGHT'),(4,66,0,'RIGHT'),(4,67,5,'RIGHT'),(4,68,0,'RIGHT'),(4,69,0,'RIGHT'),(4,70,1,'RIGHT'),(4,71,3,'RIGHT'),(4,72,0,'RIGHT'),(4,73,0,'RIGHT'),(4,74,0,'RIGHT'),(4,75,1,'RIGHT'),(4,76,0,'RIGHT'),(4,77,1,'RIGHT'),(4,78,1,'RIGHT'),(4,79,0,'RIGHT'),(4,80,0,'RIGHT'),(4,81,0,'RIGHT'),(4,82,3,'RIGHT'),(4,83,1,'RIGHT'),(4,84,0,'RIGHT'),(4,85,0,'RIGHT'),(4,86,0,'RIGHT'),(4,87,0,'RIGHT'),(4,88,0,'RIGHT'),(4,89,0,'RIGHT'),(4,90,1,'RIGHT'),(5,65,0,'RIGHT'),(5,66,0,'RIGHT'),(5,67,0,'RIGHT'),(5,68,0,'RIGHT'),(5,69,2,'RIGHT'),(5,70,0,'RIGHT'),(5,71,1,'RIGHT'),(5,72,0,'RIGHT'),(5,73,0,'RIGHT'),(5,74,3,'RIGHT'),(5,75,1,'RIGHT'),(5,76,1,'RIGHT'),(5,77,7,'RIGHT'),(5,78,2,'RIGHT'),(5,79,3,'RIGHT'),(5,80,6,'RIGHT'),(5,81,1,'RIGHT'),(5,82,7,'RIGHT'),(5,83,2,'RIGHT'),(5,84,4,'RIGHT'),(5,85,1,'RIGHT'),(5,86,2,'RIGHT'),(5,87,5,'RIGHT'),(5,88,5,'RIGHT'),(5,89,3,'RIGHT'),(5,90,3,'RIGHT'),(6,65,0,'RIGHT'),(6,66,0,'RIGHT'),(6,67,0,'RIGHT'),(6,68,0,'RIGHT'),(6,69,0,'RIGHT'),(6,70,0,'RIGHT'),(6,71,0,'RIGHT'),(6,72,0,'RIGHT'),(6,73,0,'RIGHT'),(6,74,0,'RIGHT'),(6,75,1,'RIGHT'),(6,76,0,'RIGHT'),(6,77,0,'RIGHT'),(6,78,1,'RIGHT'),(6,79,2,'RIGHT'),(6,80,0,'RIGHT'),(6,81,0,'RIGHT'),(6,82,1,'RIGHT'),(6,83,2,'RIGHT'),(6,84,1,'RIGHT'),(6,85,3,'RIGHT'),(6,86,3,'RIGHT'),(6,87,4,'RIGHT'),(6,88,1,'RIGHT'),(6,89,1,'RIGHT'),(6,90,0,'RIGHT'),(7,65,0,'RIGHT'),(7,66,0,'RIGHT'),(7,76,1,'WRONG'),(8,65,0,'RIGHT'),(8,69,1,'WRONG'),(8,71,1,'WRONG'),(8,74,1,'WRONG'),(8,75,1,'WRONG'),(8,77,3,'WRONG'),(8,82,1,'WRONG'),(8,86,1,'WRONG'),(8,87,2,'WRONG'),(8,88,1,'WRONG'),(9,65,0,'RIGHT'),(9,66,0,'RIGHT'),(9,67,0,'RIGHT'),(9,68,0,'RIGHT'),(9,69,0,'RIGHT'),(9,70,2,'RIGHT'),(9,71,0,'RIGHT'),(9,76,1,'WRONG'),(9,80,1,'WRONG'),(9,87,1,'WRONG'),(9,88,1,'WRONG'),(9,90,1,'WRONG');
/*!40000 ALTER TABLE `alphabeta_exercise_i_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'ABC','alphabet');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_relation`
--

DROP TABLE IF EXISTS `person_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `inverse_male` varchar(32) DEFAULT NULL,
  `inverse_female` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_relation`
--

LOCK TABLES `person_relation` WRITE;
/*!40000 ALTER TABLE `person_relation` DISABLE KEYS */;
INSERT INTO `person_relation` VALUES (1,'FATHER','SON','DAUGHTER'),(2,'MOTHER','SON','DAUGHTER'),(3,'BROTHER','BROTHER','SISTER'),(4,'SISTER','BROTHER','SISTER'),(5,'UNCLE','NEPHEW','NIECE'),(6,'AUNTY','NEPHEW','NIECE');
/*!40000 ALTER TABLE `person_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_un` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'SUPER_ADMIN','Super Admin'),(2,'ADMIN','Admin'),(3,'TEACHER','Teacher'),(4,'GUARDIAN','Guardian'),(5,'STUDENT','Student');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_course` (
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  UNIQUE KEY `student_course_un` (`user_id`,`course_id`),
  KEY `student_course_FK_1` (`course_id`),
  CONSTRAINT `student_course_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_course_FK_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (113,1),(114,1),(115,1),(117,1);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_guardian`
--

DROP TABLE IF EXISTS `student_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_guardian` (
  `guardian_user_id` bigint(20) NOT NULL,
  `student_user_id` bigint(20) NOT NULL,
  `relation_id` int(11) NOT NULL,
  PRIMARY KEY (`guardian_user_id`,`student_user_id`),
  KEY `student_guardian_FK_1` (`student_user_id`),
  CONSTRAINT `student_guardian_FK` FOREIGN KEY (`guardian_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_guardian_FK_1` FOREIGN KEY (`student_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_guardian`
--

LOCK TABLES `student_guardian` WRITE;
/*!40000 ALTER TABLE `student_guardian` DISABLE KEYS */;
INSERT INTO `student_guardian` VALUES (112,113,1),(112,114,1),(116,117,1);
/*!40000 ALTER TABLE `student_guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_course`
--

DROP TABLE IF EXISTS `teacher_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher_course` (
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  UNIQUE KEY `teacher_course_un` (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_course`
--

LOCK TABLES `teacher_course` WRITE;
/*!40000 ALTER TABLE `teacher_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_password_change_on` timestamp NULL DEFAULT NULL,
  `reset_password_token` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (109,'Jeevan','Kumar','jeevanaawara','jeevanaawara@gmail.com','$2a$10$g.gAiulq5UuAKnE1tYLmb.3XiH7grKt90YDe7aqkoOXVaWnE34Tt6',1,'2021-04-04 21:30:36','2021-04-03 19:25:10',NULL,'2021-04-03 19:20:39',NULL,NULL,NULL,NULL),(111,'Jeevan','Kumar 33','jeevanaawara33','jeevanaawara33@gmail.com','$2a$10$f3BW.jcyOtwkLRlIihOyVOLS0Dr/LKqEsSIW4ONzuqq6.0P9MM6ZC',1,'2021-04-03 19:27:33',NULL,NULL,'2021-04-03 19:27:05',NULL,NULL,NULL,NULL),(112,'Guardian','01','guardian01','guardian01@mail.com','$2a$10$cchA2meBLM.hVcsZERuAee3xyN89fIENsPrIL3sFuMI01Hg9XUavm',1,'2021-04-04 21:34:55',NULL,NULL,'2021-04-03 19:28:39',NULL,NULL,NULL,NULL),(113,'Student','01','student01','student01@gmail.com','$2a$10$qS9XF4aOLQufu0h8MXq3D.QC1GcFXRy2dDr1zC0nKepkQryxxLXta',1,'2021-04-03 19:34:39',NULL,NULL,'2021-04-03 19:29:06',NULL,NULL,NULL,NULL),(114,'Student','02','student02','student02@mail.com','$2a$10$N3NmBoj6FI4XMP0x8pPEpu89/kEOipqqaeG8EKI1dzL4mTwD5z942',1,'2021-04-04 19:17:09',NULL,NULL,'2021-04-03 19:33:23',NULL,NULL,NULL,NULL),(115,NULL,NULL,NULL,'student03@mail.com','$2a$10$X.7ziYkj8MHnjgtsmf7xc.t4cTAXLi7BzClH/l8k.IvDaqB1fwms2',1,'2021-04-04 21:17:41',NULL,NULL,'2021-04-03 19:36:26',NULL,NULL,NULL,NULL),(116,NULL,NULL,NULL,'guardian03@mail.com','$2a$10$/AwF8.1yTJWiRzM8wyyrPewm58xjSEZmZ.DN92dqzo94kLsv9a5zK',1,'2021-04-04 21:34:30',NULL,NULL,'2021-04-04 11:50:24',NULL,NULL,NULL,NULL),(117,'student','04',NULL,'student04@mail.com','$2a$10$OtktG2e/mo8ccXIbHGnjSu3NW6bxDPVa7t7ywxvy4yLx3mYppsboS',1,'2021-04-04 21:32:49',NULL,NULL,'2021-04-04 11:51:02',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_key` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  UNIQUE KEY `user_role_un` (`user_id`,`role_key`),
  KEY `user_role_FK` (`role_key`),
  CONSTRAINT `user_role_FK` FOREIGN KEY (`role_key`) REFERENCES `role` (`key`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_FK_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (109,'ADMIN'),(111,'ADMIN'),(111,'GUARDIAN'),(112,'GUARDIAN'),(116,'GUARDIAN'),(113,'STUDENT'),(114,'STUDENT'),(115,'STUDENT'),(117,'STUDENT'),(109,'SUPER_ADMIN');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'abc'
--
/*!50003 DROP PROCEDURE IF EXISTS `generate_abc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `generate_abc`(_character_ascii int, len int, _char_case varchar(8))
begin

	declare i int default 0;

	insert_alphabeta: loop

		insert into abc.alphabeta (character_ascii, course_id, language_code, char_case)

		values(_character_ascii + i, 1, 'en', _char_case);

		set i = i + 1;

		if i < len then iterate insert_alphabeta; end if;

		leave insert_alphabeta;

	end loop insert_alphabeta;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05  2:37:33
