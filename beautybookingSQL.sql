-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2019 at 11:47 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautybooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Permission` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Id`, `Full_name`, `Email`, `Password`, `Permission`) VALUES
(1, 'Sarah BOURAHLA', 'sarah@hotmail.fr', 'sarah1995', 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `assem`
--

DROP TABLE IF EXISTS `assem`;
CREATE TABLE IF NOT EXISTS `assem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_pro` varchar(210) NOT NULL,
  `Email` varchar(210) NOT NULL,
  `Password` varchar(210) NOT NULL,
  `Adresse` varchar(150) NOT NULL,
  `Postale` int(5) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Traite` tinyint(1) NOT NULL,
  `Actif` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assem`
--

INSERT INTO `assem` (`id`, `Nom_pro`, `Email`, `Password`, `Adresse`, `Postale`, `image_path`, `image_name`, `url`, `name`, `Traite`, `Actif`) VALUES
(19, 'sarah Bourahla', 'Hjj', 'test', '', 0, 'beautybooking/upload/tyhb.jpg', 'tyhb', 'http://10.192.130.162/beautybooking/uploads/19.jpg', 'sarah Bourahla', 1, 0),
(20, 'Thomas', 'Hb', '2be88ca4242c76e8253ac62474851065032d6833', '', 0, 'beautybooking/upload/kcugk.jpg', 'kcugk', 'http://10.192.130.162/beautybooking/uploads/20.pdf', 'sarah Bourahla', 1, 0),
(21, 'sarah Bourahla', 'Thv', '2be88ca4242c76e8253ac62474851065032d6833', 'Paris', 92342, 'beautybooking/upload/yuyjjj.jpg', 'yuyjjj', 'http://10.192.130.162/beautybooking/uploads/21.jpg', 'sarah Bourahla', 1, 1),
(22, 'sarah Bourahla', 'yuyu@hotmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Massy', 91234, 'beautybooking/upload/test1.jpg', 'test1', 'http://10.192.130.162/beautybooking/uploads/22.jpg', 'sarah Bourahla', 1, 0),
(25, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Paris', 91000, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/25.jpg', 'TVA DE sarah Bourahla', 0, 0),
(23, 'sarah Bourahla', 'tyty@hotmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Paris', 72345, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/23.jpg', 'sarah Bourahla', 0, 0),
(24, 'Athmane Aoudjit', 'athmane@hotmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Paris', 91000, 'beautybooking/upload/Athmane Aoudjit.jpg', 'Athmane Aoudjit', 'http://10.192.130.162/beautybooking/uploads/24.pdf', 'TVA DE Athmane Aoudjit', 0, 0),
(26, 'sarah Bourahla', 'sarah.bourahla2015@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Val Marne', 91000, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/26.jpg', 'TVA DE sarah Bourahla', 0, 0),
(27, 'sarah Bourahla', 'sarah.bourahla2018@gmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Hhjn', 34566, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/27.jpg', 'TVA DE sarah Bourahla', 0, 0),
(28, 'sarah Bourahla', 'sarahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Bbn', 14666, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/28.pdf', 'TVA DE sarah Bourahla', 0, 0),
(29, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Hhh', 23344, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/29.jpg', 'TVA DE sarah Bourahla', 0, 0),
(30, 'sarah Bourahla', 'sarah.bourahla2018@gmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Hhh', 93000, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/30TVA DETVA DE sarah Bourahla.jpg', 'TVA DE sarah Bourahla', 0, 0),
(31, 'Lilya', 'sarah.bourahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Hjnn', 91900, 'beautybooking/upload/Lilya.jpg', 'Lilya', 'http://10.192.130.162/beautybooking/uploads/31TVA DETVA DE Lilya.jpg', 'TVA DE Lilya', 0, 0),
(32, 'Toto', 'sarah.bourahla2018@gmail.fr', '2be88ca4242c76e8253ac62474851065032d6833', 'Jdkdn', 91340, 'beautybooking/upload/Toto.jpg', 'Toto', 'http://10.192.130.162/beautybooking/uploads/32TVA DETVA DE Toto.png', 'TVA DE Toto', 0, 0),
(33, 'Titi', 'sarah.bourahla2018@gmail.dz', '2be88ca4242c76e8253ac62474851065032d6833', 'Bonjour', 91803, 'beautybooking/upload/Titi.jpg', 'Titi', 'http://10.192.130.162/beautybooking/uploads/33TVA DETVA DE Titi.png', 'TVA DE Titi', 0, 0),
(34, 'Papiou', 'sarah.bourahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Bonjour', 78945, 'beautybooking/upload/Papiou.jpg', 'Papiou', 'http://10.192.130.162/beautybooking/uploads/34.png', 'Papiou', 0, 0),
(35, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', '2be88ca4242c76e8253ac62474851065032d6833', 'Jdk', 91830, 'beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'http://10.192.130.162/beautybooking/uploads/35.png', 'sarah Bourahla', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `name`, `first_name`, `email`, `password`, `phone`, `street`, `zip`, `city`) VALUES
(3, 'test', 'testy', 'test@hotmail.com', 'test', 'test', 'test', 'test', 'test'),
(4, 'toto', 'gérard', 'toto@gmail.com', 'toto12345', '222555885', '25 rue machin', '75000', 'paris'),
(5, 'nek', 'tata', 'titi@hotmail.com', 'test', '00000000000', 'aaaaaaaa', 'aaaaaaa', 'versaille'),
(12, 'yahya', 'Moh', 'moh@gmail.com', 'moh123456', '02536458', 'rue 45', '92000', 'nanterre'),
(13, 'sarah', 'sarah', 'sarah@homail.com', 'sarah12345', '123456789', 'paris', '75000', 'paris'),
(14, 'lilya', 'lil', 'lilya@hotmail.fr', 'jojo1995', '0528781', 'hjdddd', '25220', 'khkdh'),
(15, 'aaaaaa', 'aaaaaaaa', 'sarah@hotmail.com', 'sarah12345', '4444444444444', 'aaaaaaaaaa', '44444', 'aaaaaaa'),
(16, 'ttttttttttt', 'tttttttttt', 'aaaaa@aaa.de', 'aaaaaaaaaa', '1111111111111111', 'aaaaaaaaaa', '11111', 'vvvvvvvvv'),
(17, 'test', 'test', 'testtest@test.com', 'testtest', '444444444', 'test 5555', '44444', 'test'),
(18, 'BOURAHLA', 'SARAH', 'SAROUCHA@hotmail.com', 'sarah1995,', '068782125', '50 RUE GENERAL', '94240', 'HAY LES ROSES'),
(19, 'test', 'test', 'marouane@gmail.com', 'marouane', '0254665555', '25 ruee macchin', '25645', 'nanterre'),
(20, 'Toto', 'sarah', 'saidani@hotmail.fr', 'saidani1995', '06758829', 'CitÃ© 50 ', '91234', 'Palaiseau'),
(21, 'Ffgg', 'Ccg', 'sarah.bourahla2018@gmail.com', 'saidani1995', '04366275', 'Cotecghhhhh', '93425', 'Fgh'),
(22, 'Sarah', 'sarah', 'saidi@hotmail.fr', 'saidani1995', '065478946', 'CitÃ© 40 ', '91234', 'Palaiseau'),
(23, 'Bonjour', 'sarah', 'sarah.bourahla@gmail.com', 'saidani1995', '67777788777', 'Hhjdkdkk', '26272', 'Jjkkkkkk');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `email`, `photo`) VALUES
(8, 'logo', 'sarah@hotmail.fr', 'http://10.0.37.128/beautybooking//upload/logo.JPG'),
(9, 'logo', 'sarah@hotmail.fr', 'http://10.0.37.128/beautybooking//upload/logo.JPG'),
(10, 'background', 'lili@hotmail.fr', 'http://10.0.37.128/beautybooking//upload/background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

DROP TABLE IF EXISTS `pdf`;
CREATE TABLE IF NOT EXISTS `pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `url`, `name`) VALUES
(1, 'http://10.0.70.176/beautybooking/uploads/1.pdf', 'my file'),
(2, 'http://10.0.70.176/beautybooking/uploads/2.pdf', 'my file'),
(3, 'http://10.192.130.162/beautybooking/uploads/3.pdf', 'hhg'),
(4, 'http://10.192.130.162/beautybooking/uploads/4.pdf', 'test'),
(5, 'http://10.192.130.162/beautybooking/uploads/5.pdf', 'oui'),
(6, 'http://10.192.130.162/beautybooking/uploads/1.pdf', 'ghghjh'),
(7, 'http://10.192.130.162/beautybooking/uploads/7.pdf', 'gjgh'),
(8, 'http://10.192.130.162/beautybooking/uploads/8.pdf', 'testtt'),
(9, 'http://10.192.130.162/beautybooking/uploads/9.pdf', 'yuy'),
(10, 'http://10.192.130.162/beautybooking/uploads/10.pdf', '124455'),
(11, 'http://10.192.130.162/beautybooking/uploads/11.pdf', 'yuyutghjijfvb'),
(12, 'http://10.192.130.162/beautybooking/uploads/12.pdf', 'sarah Bourahla'),
(13, 'http://10.192.130.162/beautybooking/uploads/13.pdf', 'sarah Bourahla');

-- --------------------------------------------------------

--
-- Table structure for table `professionels`
--

DROP TABLE IF EXISTS `professionels`;
CREATE TABLE IF NOT EXISTS `professionels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NomP` varchar(200) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Telephone` varchar(150) DEFAULT NULL,
  `Categorie` varchar(50) NOT NULL,
  `image_path` varchar(150) DEFAULT NULL,
  `image_name` varchar(150) DEFAULT NULL,
  `Adresse` varchar(200) DEFAULT NULL,
  `Postale` int(5) DEFAULT NULL,
  `Distance` int(3) DEFAULT NULL,
  `NomEntreprise` varchar(150) DEFAULT NULL,
  `Registre` varchar(150) DEFAULT NULL,
  `Description` longtext,
  `Traite` tinyint(1) NOT NULL,
  `Actif` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professionels`
--

INSERT INTO `professionels` (`id`, `NomP`, `Email`, `Password`, `Telephone`, `Categorie`, `image_path`, `image_name`, `Adresse`, `Postale`, `Distance`, `NomEntreprise`, `Registre`, `Description`, `Traite`, `Actif`) VALUES
(23, 'sarah Bourahla', 'sarah@hotmail.fr', '9e9d7a08e048e9d604b79460b54969c3', '067868447', '', 'http://192.168.43.79/beautybooking/upload/test.jpg', 'sarah Bourahla', 'jkfvjjkkkvjijjkkhjhv', 75349, 110, 'sarah Bourahla', 'kk', 'https://stackoverflow.com/ \r\n\r\nhttps://stackoverflow.com/ \r\n\r\nhttps://stackoverflow.com/ \r\n\r\nhttps://google.com/\r\n\r\n', 1, 0),
(33, 'sarah Bourahla', 'sarouchazenzouna@gmail.com', '9e9d7a08e048e9d604b79460b54969c3', '0678978302', '', 'http://192.168.43.79/beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'Tizi ouzou', 15000, 100, 'BPCE', '12345678912345', 'https://Google.com', 1, 1),
(32, 'lilya biurahkq', 'lilyabou@gmail.com', '60539e04d8bb5f3aa7f63e383c6940ce', '0678978302', '', 'http://192.168.43.79/beautybooking/upload/lilya biurahkq.jpg', 'lilya biurahkq', 'Tizi ouzou', 15000, 10, 'BPCE', '12345678987654', 'https://Google.com', 1, 1),
(34, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', 'f71dbe52628a3f83a77ab494817525c6', '054677478', 'Bien-Ãªtre', 'http://192.168.43.79/beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'michelet', 15400, 132, 'sarah Bourahla', '123445556667', 'www.google.fr', 1, 1),
(35, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', 'f71dbe52628a3f83a77ab494817525c6', '054677478', 'Onglerie', 'http://192.168.43.79/beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'michelet', 15400, 132, 'sarah Bourahla', '123445556667', 'www.google.fr', 1, 1),
(36, 'tito', 'sarah.bourahla@gmail.com', 'f71dbe52628a3f83a77ab494817525c6', '06557846778', 'Epilation', 'http://192.168.43.79/beautybooking/upload/tito.jpg', 'tito', 'tizi', 15000, 12, 'sarah Bourahla', '12356988966555', 'www.google.fr', 1, 1),
(37, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', 'b54bead4c9e8d198837e6a9b2fcbb20d', '+3367878302', 'Epilation', 'http://192.168.43.79/beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'paris', 12535, 12, 'sarah Bourahla', '12334568878558', 'www.google.fr', 1, 1),
(38, 'sarah Bourahla', 'sarah.bourahla2018@gmail.com', 'b54bead4c9e8d198837e6a9b2fcbb20d', '+33678978306', 'Onglerie', 'http://192.168.43.79/beautybooking/upload/sarah Bourahla.jpg', 'sarah Bourahla', 'Paris', 12345, 12, 'daru', '12345678912345', 'www.google.fr', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vente_privee`
--

DROP TABLE IF EXISTS `vente_privee`;
CREATE TABLE IF NOT EXISTS `vente_privee` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `ancien_prix` float NOT NULL,
  `nouveau_prix` float NOT NULL,
  `image` varchar(50) NOT NULL,
  `texte` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vente_privee`
--

INSERT INTO `vente_privee` (`id`, `titre`, `date_debut`, `date_fin`, `ancien_prix`, `nouveau_prix`, `image`, `texte`) VALUES
(1, 'promo', '2019-04-09', '2019-04-19', 455.5, 256.6, '', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
