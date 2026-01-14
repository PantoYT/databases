-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 26, 2025 at 01:00 PM
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
-- Database: `kasyno`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dealerzy`
--

CREATE TABLE `dealerzy` (
  `id_dealera` int(11) NOT NULL,
  `nazwa_dealera` varchar(20) DEFAULT NULL,
  `lata_przepracowane` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dealerzy`
--

INSERT INTO `dealerzy` (`id_dealera`, `nazwa_dealera`, `lata_przepracowane`) VALUES
(1, 'Adam', 5),
(2, 'Beata', 3),
(3, 'Cezary', 7),
(4, 'Daria', 2),
(5, 'Edward', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracze`
--

CREATE TABLE `gracze` (
  `id_gracza` int(11) NOT NULL,
  `nazwa_gracza` varchar(20) DEFAULT NULL,
  `dochody_gracza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gracze`
--

INSERT INTO `gracze` (`id_gracza`, `nazwa_gracza`, `dochody_gracza`) VALUES
(1, 'Tomek', -5000),
(2, 'Olga', -750),
(3, 'Micha?', -980);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id_gry` int(11) NOT NULL,
  `nazwa_gry` varchar(20) DEFAULT NULL,
  `id_dealera` int(11) DEFAULT NULL,
  `szanse` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gry`
--

INSERT INTO `gry` (`id_gry`, `nazwa_gry`, `id_dealera`, `szanse`) VALUES
(1, 'Blackjack', 1, 'Szanse: 49.5% dla gracza'),
(2, 'Ruletka', 2, 'Szanse: 48.6% dla gracza'),
(3, 'Poker Texas Hold\'em', 3, 'Zalezy od umiejetnosci'),
(4, 'Bakarat', 4, 'Szanse: 45.9% dla gracza'),
(5, 'Kosci', 5, 'Szanse: 49.3% dla gracza');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dealerzy`
--
ALTER TABLE `dealerzy`
  ADD PRIMARY KEY (`id_dealera`);

--
-- Indeksy dla tabeli `gracze`
--
ALTER TABLE `gracze`
  ADD PRIMARY KEY (`id_gracza`);

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id_gry`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dealerzy`
--
ALTER TABLE `dealerzy`
  MODIFY `id_dealera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gracze`
--
ALTER TABLE `gracze`
  MODIFY `id_gracza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gry`
--
ALTER TABLE `gry`
  MODIFY `id_gry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
