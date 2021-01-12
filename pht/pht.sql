-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2020 at 11:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liamcra1_pht_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `description`, `image`) VALUES
(1, 'How did we get started?', '<p>\r\n          We have such a passion for the city we live in. For over 33 years we have offered tours for Portland visitors and residents alike through our family business. Having family in Portland since the early 1900\'s has allowed us to build tours out of insight over 100 years. We are confident you will love any of our Portland tours with the help of our generous guides. We offer three tours: the Downtown, the Growth, and the Landmarks tour. Our favorites are the Downtown and Landmarks but with Portland\'s current growth we are selling out our Growth tours.<br><br>We hope to meet you soon! Let us know if you have any questions by visiting the <a href=\"contact.html\">Contact page.</a><br><br>Thank you!\r\n        </p>', 'images/downtown.png');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `tour` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `date` date NOT NULL,
  `participants` text NOT NULL,
  `allergies` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `duration` text NOT NULL,
  `transportation` text NOT NULL,
  `food` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `title`, `description`, `duration`, `transportation`, `food`, `price`, `image`) VALUES
(1, 'Downtown', '<p>Enjoy a walking tour of Portland\'s days gone by. This walking only tour provides a glimpse into the natural, architectural, and cultural history of downtown Portland. Upon arrival, you will receive a booklet of the 20 locations we will visit throughout this three hour tour. Use this booklet to compare Portland\'s current landscape with accurate historical context.</p>\r\n          <h2>What\'s Included?</h2>\r\n            <ul>\r\n              <li>Complimentary tour booklet with Before and After photos and a brief history of each location</li>\r\n              <li>Complimentary water</li>\r\n            </ul>\r\n          <blockquote>\"It was amazing to walk around downtown Portland comparing the images in the booklet to the current building or in some cases disappearance of a building.\" - Emily</blockquote>', '2', 'Walking', 'None', 50, 'images/downtowntoursmall.png'),
(2, 'Growth', ' <p>Want to jump into Portland\'s rich history of growth? This tour offers an insightful experience, by our very educated tour guides, about the history of Portland\'s growth. While this tour includes walking and driving most conversations will take place at Deschuttes Brewery over complimentary beer flights and complimentary dining at Portland\'s oldest restaurant, Huber\'s.</p>\r\n          <h2>What\'s Included?</h2>\r\n            <ul>\r\n              <li>Complimentary flight of three Deschutes Brewery beers</li>\r\n              <li>Complimentary tapas style appetizer at Huber\'s restaurant</li>\r\n            </ul>\r\n          <blockquote>\"I moved to Portland a few years ago and learned so much from our funny and informative tour guide on the evolution of Portland as I know it today.\" - Alex</blockquote>', '3', 'Walking/Driving', 'Included', 80, 'images/growthtoursmall.png'),
(3, 'Landmarks', '<p>This tour will help you cement your Portland knowledge and cover all of Portland\'s famous landmarks and must see spots. We use a spacious shuttle bus to travel around Portland\'s quadrants and famous bridges. When you finish the tour, you can tell everyone that you\'ve seen it all in Portland.</p>\r\n          <h2>What\'s Included?</h2>\r\n            <ul>\r\n              <li>Complimentary tour booklet with photos and brief descriptions of the locations we visit</li>\r\n              <li>Complimentary local snacks</li>\r\n            </ul>\r\n          <blockquote>\"We were only in town for a day and decided to make the most of it with a tour. We covered almost the entire city. I couldn\'t have done that alone and our tour guide was so fun!\" - Beatrix</blockquote>', '4', 'Walking/Driving', 'Included', 70, 'images/landmarkstoursmall.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
