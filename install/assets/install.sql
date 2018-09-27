-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 27, 2018 at 04:04 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`) VALUES
(1, 'About', 'This is about.');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(4, 'Technology', '2018-09-25 05:10:07'),
(5, 'Bussiness', '2018-09-25 05:11:36'),
(6, 'LifeStyle', '2018-09-25 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 14, 'Kamran', 'kamran@gmail.com', 'This is a comment.', '2018-09-25 06:43:37'),
(2, 14, 'Ahmad', 'Ahamd@gmial.com', 'This is a comment.\r\n', '2018-09-25 06:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(15, 4, 2, 'Test Post', 'Test-Post', '<p>This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post. This is test post.</p>\r\n', 'noimage.png', '2018-09-26 07:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'Ahmad', 'Ahamd@gmail.com', 'ahmad12', '827ccb0eea8a706c4c34a16891f84e7b', '2018-09-26 05:02:05'),
(2, 'Kamran', 'Kamranhanif27@gmail.com', 'kami512', '827ccb0eea8a706c4c34a16891f84e7b', '2018-09-26 05:06:58'),
(3, 'Irfan', 'irfanhanif@gmail.com', 'ir123', '827ccb0eea8a706c4c34a16891f84e7b', '2018-09-26 05:08:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
