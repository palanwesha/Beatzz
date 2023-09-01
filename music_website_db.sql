-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 09:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `bio`, `user_id`, `image`) VALUES
(1, 'Shreya Ghoshal', 'Shreya Ghoshal (born 12 March 1984) is an Indian singer. Noted for her wide vocal range and versatility, she is one of the most prolific and popular singers of India. She has recorded songs for films and albums in various Indian languages and received numerous accolades, including four National Film Awards, four Kerala State Film Awards, two Tamil Nadu State Film Awards, two BFJA Awards, seven Filmfare Awards and ten Filmfare Awards South.', 1, 'uploads/Shreya_Ghoshal.jpg'),
(2, 'Arijit Singh', 'Arijit Singh (born 25 April 1987) is an Indian singer and music composer. The recipient of several accolades including a National Film Award and seven Filmfare Awards, he has recorded songs in several Indian languages.', 1, 'uploads/Arijit_Singh.jpg'),
(3, 'A R Rahman', 'Rahman (6th January, 1967) is an Indian music composer, record producer, singer, songwriter, musician, multi-instrumentalist and philanthropist,[1] popular for his works in Indian cinema; predominantly in Tamil and Hindi films, with occasional forays in international cinema. He is a winner of six National Film Awards, two Academy Awards, two Grammy Awards, a BAFTA Award, a Golden Globe Award, fifteen Filmfare Awards and seventeen Filmfare Awards South. In 2010, the Indian government conferred him with the Padma Bhushan, the nation\'s third-highest civilian award.', 1, 'uploads/AR_Rahman.jpg'),
(4, 'Amit Trivedi', 'Amit Trivedi (born 8 April 1979) is an Indian music director, singer, film scorer, composer, music producer and lyricist who works primarily in Hindi films. After working as a theatre and jingle composer and composing for non-film albums, he debuted as a film composer in the 2008 Hindi film Aamir, he gained prominence for his work in the Hindi film Dev.D (2009)', 1, 'uploads/Amit_Trivedi.jpg'),
(5, 'Taylor Swift', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Recognized for her genre-spanning discography, songwriting, and artistic reinventions, Swift is an influence on a generation of music artists and a prominent cultural figure of the 21st century.', 1, 'uploads/Taylor_Swift.jpg'),
(6, 'Selena Gomez', 'Selena Marie Gomez (born July 22, 1992) is an American singer, actress, producer, and businesswoman.', 1, 'uploads/Selena_Gomez.jpg'),
(7, 'Ellie Goulding', 'Ellie Goulding is an English singer and songwriter. Goulding released her debut studio album, Lights, in 2010; it debuted at No. 1 on the UK Albums Chart and has sold over 850,000 copies in the UK.', 1, 'uploads/Ellie_Goulding.jpg'),
(8, 'Shankar Mahadevan', 'Shankar Mahadevan (born 3 March 1967) is an Indian singer and composer who is part of the Shankar–Ehsaan–Loy trio that writes music for Indian films.', 1, 'uploads/Shankar_Mahadevan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`) VALUES
(1, 'Pop', 0),
(2, 'Party', 0),
(3, 'Classical', 0),
(4, 'Romance', 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `file` varchar(1024) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `views` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `user_id`, `artist_id`, `image`, `file`, `category_id`, `date`, `views`, `slug`, `featured`) VALUES
(1, 'Who Says', 1, 6, 'uploads/who says.jpg', 'uploads/Selena_Gomez_The_Scene_Who_Says_(NaijaMusic.NG).mp3', 1, '2023-06-26 09:06:23', 6, 'who-says', 0),
(2, 'Love Story', 1, 5, 'uploads/love story.jpg', 'uploads/Taylor_Swift_Love_Story_(NaijaMusic.NG).mp3', 4, '2023-06-26 15:22:19', 3, 'love-story', 0),
(3, 'Love Me Like You Do', 1, 7, 'uploads/love me like u do.jpg', 'uploads/Ellie_Goulding_-_Love_Me_Like_You_Do_Naijamusics.com.mp3', 1, '2023-06-26 15:25:16', 3, 'love-me-like-you-do', 0),
(4, 'The Humma Song', 1, 3, 'uploads/the humma song.jpg', 'uploads/02 The Humma Song - OK Jaanu 320Kbps.mp3', 4, '2023-06-26 15:28:51', 0, 'the-humma-song', 0),
(5, 'Garaj Garaj Jugalbandi', 1, 8, 'uploads/garaj garaj.jpg', 'uploads/Garaj Garaj Jugalbandi (Bandish Bandits)-Farid Hasan-VlcMusic.CoM.mp3', 3, '2023-06-26 15:46:38', 2, 'garaj-garaj-jugalbandi-bandish-bandits', 0),
(6, 'Mere Dholna', 1, 1, 'uploads/mere dholna.jpg', 'uploads/Mere Dholna (Bhool Bhulaiyaa)-(PagalWorld.Ink).mp3', 3, '2023-06-26 15:55:56', 2, 'mere-dholna', 0),
(7, 'Ghungroo (War)', 1, 2, 'uploads/ghungroo.jpg', 'uploads/Ghungroo - War.mp3', 2, '2023-06-26 16:00:29', 3, 'ghungroo-war', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `date`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$ty6ulIGd2EsIYwN5B26TuOG5oLJA8/4tRMn1qIwzRaKtSD62.8QMa', 'admin', '2023-06-25 14:48:38'),
(2, 'user_1', 'user_1@gmail.com', '$2y$10$eg1QR.RBX0TuyqFPohbzUuG0fkKWf0gdKn3kddGkxFNwfStB2vG8i', 'user', '2023-06-25 16:02:47'),
(3, 'user_2', 'user_2@gmail.com', '$2y$10$Ci0k4mJmFVkxFDPnv9ZO0e9B2MVKGix8/2XFAp1moPokdSxU3N3gS', 'user', '2023-06-25 16:03:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `views` (`views`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `date` (`date`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `featured` (`featured`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `date` (`date`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
