-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: node36_bt
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `food`
--
CREATE SCHEMA IF NOT EXISTS node36;
USE node36;
DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(40) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `food_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Spaghetti Carbonara','spaghetti.jpg',12.99,'Creamy Italian pasta with bacon and eggs',1),(2,'Taco Supreme','taco.jpg',8.5,'Delicious Mexican taco with seasoned beef and toppings',2),(3,'Sushi Platter','sushi.jpg',20,'Assorted sushi rolls with soy sauce and wasabi',3),(4,'Butter Chicken','butter_chicken.jpg',14.99,'Classic Indian dish with tender chicken in a rich tomato sauce',4),(5,'Greek Salad','greek_salad.jpg',9.99,'Healthy Mediterranean salad with feta cheese and olives',5),(6,'Kung Pao Chicken','kung_pao_chicken.jpg',11.95,'Spicy Chinese chicken with peanuts and vegetables',6),(7,'BBQ Pulled Pork Sandwich','bbq_sandwich.jpg',9.99,'Savory American sandwich with slow-cooked pulled pork',7),(8,'Croissant aux Amandes','croissant.jpg',5.75,'Delicate French pastry filled with almond cream',8),(9,'Spaghetti Carbonara','spaghetti.jpg',12.99,'Creamy Italian pasta with bacon and eggs',1),(10,'Taco Supreme','taco.jpg',8.5,'Delicious Mexican taco with seasoned beef and toppings',2),(11,'Sushi Platter','sushi.jpg',20,'Assorted sushi rolls with soy sauce and wasabi',3),(12,'Butter Chicken','butter_chicken.jpg',14.99,'Classic Indian dish with tender chicken in a rich tomato sauce',4),(13,'Greek Salad','greek_salad.jpg',9.99,'Healthy Mediterranean salad with feta cheese and olives',5),(14,'Kung Pao Chicken','kung_pao_chicken.jpg',11.95,'Spicy Chinese chicken with peanuts and vegetables',6),(15,'BBQ Pulled Pork Sandwich','bbq_sandwich.jpg',9.99,'Savory American sandwich with slow-cooked pulled pork',7),(16,'Croissant aux Amandes','croissant.jpg',5.75,'Delicate French pastry filled with almond cream',8);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_type`
--

DROP TABLE IF EXISTS `food_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_type`
--

LOCK TABLES `food_type` WRITE;
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` VALUES (1,'Italian'),(2,'Mexican'),(3,'Japanese'),(4,'Indian'),(5,'Mediterranean'),(6,'Chinese'),(7,'American'),(8,'French'),(9,'Thai'),(10,'Vegetarian'),(11,'Italian'),(12,'Mexican'),(13,'Japanese'),(14,'Indian'),(15,'Mediterranean'),(16,'Chinese'),(17,'American'),(18,'French'),(19,'Thai'),(20,'Vegetarian');
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_res`
--

DROP TABLE IF EXISTS `like_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_res` (
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `date_like` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `like_res_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `like_res_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_res`
--

LOCK TABLES `like_res` WRITE;
/*!40000 ALTER TABLE `like_res` DISABLE KEYS */;
INSERT INTO `like_res` VALUES (1,1,'2023-10-01 13:15:00'),(2,3,'2023-10-02 14:30:00'),(3,2,'2023-10-03 16:45:00'),(4,5,'2023-10-04 18:30:00'),(10,5,'2023-10-04 18:30:00'),(6,5,'2023-10-04 18:30:00'),(5,4,'2023-10-05 19:45:00'),(1,4,'2023-10-01 13:15:00'),(1,1,'2022-10-01 13:10:00'),(5,4,'2023-10-01 13:15:00'),(5,1,'2022-10-01 13:10:00'),(5,4,'2023-10-01 13:15:00'),(5,1,'2022-10-01 13:10:00');
/*!40000 ALTER TABLE `like_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `food_id` int DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  KEY `food_id` (`food_id`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'ORD123',2,1),(4,'ORD124',3,2),(7,'ORD125',1,3),(2,'ORD126',2,4),(6,'ORD127',4,5),(3,'ORD128',2,1),(5,'ORD129',1,2),(8,'ORD130',3,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_res`
--

DROP TABLE IF EXISTS `rate_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_res` (
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date_rate` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `rate_res_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `rate_res_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_res`
--

LOCK TABLES `rate_res` WRITE;
/*!40000 ALTER TABLE `rate_res` DISABLE KEYS */;
INSERT INTO `rate_res` VALUES (1,1,4,'2023-10-01 12:00:00'),(2,1,5,'2023-10-02 14:30:00'),(3,1,4,'2023-10-03 18:15:00'),(4,2,5,'2023-10-04 20:45:00'),(5,2,3,'2023-10-05 17:30:00'),(6,3,4,'2023-10-06 14:30:00'),(7,3,5,'2023-10-07 16:45:00'),(8,4,4,'2023-10-08 19:00:00'),(9,4,3,'2023-10-09 11:30:00'),(8,4,4,'2023-10-08 19:00:00'),(9,4,3,'2023-10-09 11:30:00'),(10,5,5,'2023-10-10 13:15:00'),(7,5,4,'2023-10-11 21:00:00'),(1,1,4,'2023-10-01 12:00:00'),(2,1,5,'2023-10-02 14:30:00'),(3,1,4,'2023-10-03 18:15:00'),(4,2,5,'2023-10-04 20:45:00');
/*!40000 ALTER TABLE `rate_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_name` varchar(40) DEFAULT NULL,
  `Image` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Tasty Thai Delight','tasty_thai.jpg','Experience the authentic flavors of Thailand with our wide range of Thai dishes'),(2,'Mediterranean Oasis','mediterranean_oasis.jpg','Indulge in Mediterranean cuisine with our delicious kebabs, hummus, and more'),(3,'Sushi Harbor','sushi_harbor.jpg','Satisfy your sushi cravings with our fresh and innovative sushi creations'),(4,'Burger Bliss','burger_bliss.jpg','Delight in mouthwatering burgers with a variety of toppings and flavors'),(5,'Pasta Paradise','pasta_paradise.jpg','Enjoy a taste of Italy with our wide selection of pasta dishes and sauces');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_food`
--

DROP TABLE IF EXISTS `sub_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_food` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(40) DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  `sub_price` float DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `sub_food_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_food`
--

LOCK TABLES `sub_food` WRITE;
/*!40000 ALTER TABLE `sub_food` DISABLE KEYS */;
INSERT INTO `sub_food` VALUES (1,'Garlic Bread',1,4.99),(2,'Guacamole',2,2.5),(3,'Miso Soup',3,3.25),(4,'Naan Bread',4,2.75),(5,'Hummus',5,4.5),(6,'Egg Roll',6,1.99),(7,'Onion Rings',7,3.99),(8,'Chocolate Croissant',8,2.75),(9,'Garlic Bread',1,4.99),(10,'Guacamole',2,2.5),(11,'Miso Soup',3,3.25),(12,'Naan Bread',4,2.75),(13,'Hummus',5,4.5),(14,'Egg Roll',6,1.99),(15,'Onion Rings',7,3.99),(16,'Chocolate Croissant',8,2.75);
/*!40000 ALTER TABLE `sub_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John Smith','john.smith@example.com','password1'),(2,'Alice Johnson','alice.johnson@example.com','password2'),(3,'Bob Davis','bob.davis@example.com','password3'),(4,'Emily Wilson','emily.wilson@example.com','password4'),(5,'Michael Brown','michael.brown@example.com','password5'),(6,'Sarah Lee','sarah.lee@example.com','password6'),(7,'Daniel Taylor','daniel.taylor@example.com','password7'),(8,'Olivia Martinez','olivia.martinez@example.com','password8'),(9,'James Miller','james.miller@example.com','password9'),(10,'Sophia Garcia','sophia.garcia@example.com','password10'),(11,'Lily Prichett-Tucker','lilil.garcia@example.com','password10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-21 20:09:07
