-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 09:46 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes_app`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`) VALUES
(1, 'Perferendis perferendis qui rerum.', 'Eaque quisquam nihil rerum consequatur. Vitae et eum ut magni quis. Consectetur voluptate blanditiis aliquam reprehenderit.'),
(2, 'Quisquam eveniet cumque cupiditate id tempore.', 'Aliquid vel id officia. Officiis nesciunt iure repellendus excepturi et. Repellendus facere inventore molestias at earum. Nisi maiores nemo quia ea et cumque veniam.'),
(3, 'Impedit vel explicabo non reiciendis.', 'Sit qui sequi et quo ut. Rerum iusto dicta odit voluptatem. Sed minus nulla labore.'),
(4, 'Ipsam occaecati autem non accusamus.', 'Consequatur eum dolore ipsa adipisci necessitatibus officiis. Itaque quam est non laboriosam laudantium harum. Distinctio voluptatem adipisci quas.'),
(5, 'Distinctio consectetur animi eum.', 'Aut nulla et quas expedita eveniet. Rerum tenetur ratione velit sequi perspiciatis recusandae voluptatem. Omnis tenetur velit ut sunt impedit ut. A aspernatur accusantium similique adipisci.'),
(6, 'Reprehenderit ipsam ex non.', 'Temporibus necessitatibus est non impedit in dolorum quo laborum. Esse eum nam dolores et minus. Porro sit suscipit consequatur.'),
(7, 'Qui velit eligendi.', 'Ipsa reprehenderit nesciunt officia doloremque sapiente culpa. Dolorem est nihil quam nam nesciunt quia aut. Odio totam ipsa debitis qui voluptatum soluta id tenetur. Asperiores officiis est nemo ea est.'),
(8, 'Sint quae ut.', 'Non quis aliquam eum sit. Voluptatem iste voluptates officia totam non ratione placeat.'),
(9, 'Eaque nisi optio laborum qui est.', 'Repudiandae reprehenderit odit et velit aut fugit voluptatem omnis. Et ratione iste eligendi omnis sequi veniam. Sed voluptas facilis blanditiis nisi. Et iusto itaque voluptatem aut similique laboriosam rerum voluptas.'),
(10, 'Deleniti explicabo laborum.', 'Est tempora voluptatem facere sapiente soluta. Mollitia doloremque sequi ducimus. Voluptatem eligendi illum commodi eos.'),
(11, 'jestem sigmastycznym goatem', 'spadi jest femboyem');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `banned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `banned`) VALUES
(1, 'admin@test.pl', '$2y$10$KFDoCDumqqbE6ExYNA8mUexynrEdmfuPBMEhkr.oS0Lfa4mjgB4Pa', 'admin', 0),
(2, 'user@test.pl', '$2y$10$BYmrzeSCxcK1IeCtSRtohu.EkNTV5as55R6bxRI3RHUPnJhAu.tsm', 'user', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
