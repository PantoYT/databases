-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 27, 2026 at 12:07 PM
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
-- Database: `klasa1_samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auta`
--

CREATE TABLE `auta` (
  `idauta` int(11) NOT NULL,
  `marka` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `model` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `przebieg` int(11) NOT NULL,
  `rocznik` int(11) NOT NULL,
  `kolor` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ubezpieczenie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auta`
--

INSERT INTO `auta` (`idauta`, `marka`, `model`, `przebieg`, `rocznik`, `kolor`, `ubezpieczenie`) VALUES
(1, 'Fiat', 'Punto', 124150, 2007, 'green', 800),
(2, 'Ford', 'Focus', 250415, 2010, 'yellow', 1528),
(3, 'Ford', 'Fiesta', 88056, 2011, 'green', 2588),
(4, 'Opel', 'Astra', 145001, 2009, 'yellow', 999),
(5, 'Opel', 'Corsa', 185470, 2010, 'red', 1050);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idklienta` int(11) NOT NULL,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `dowod` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `adres` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `plec` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`idklienta`, `imie`, `nazwisko`, `dowod`, `adres`, `miasto`, `plec`) VALUES
(1, 'Andrzej', 'Nowak', 'AFK343456', 'Toszecka 75, 44-100', 'Gliwice', 'm'),
(2, 'Joanna', 'Pastewniak', 'ACN345345', 'Rolna 57, 40-001', 'Katowice', 'k'),
(3, 'Jan', 'Jakubowski', 'ACN112234', 'Rolna 15, 40-001', 'Katowice', 'm'),
(4, 'Anna', 'Mariańska', 'ACF345678', 'Korfantego 13, 40-001', 'Katowice', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `idwyp` int(11) NOT NULL,
  `idklienta` int(11) NOT NULL,
  `idauta` int(11) NOT NULL,
  `datawyp` date NOT NULL,
  `datazwrotu` date NOT NULL,
  `naleznosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`idwyp`, `idklienta`, `idauta`, `datawyp`, `datazwrotu`, `naleznosc`) VALUES
(1, 2, 3, '2012-11-04', '2012-11-06', 89),
(2, 3, 1, '2012-11-01', '2012-11-13', 320),
(3, 4, 5, '2012-11-12', '2012-11-15', 102),
(4, 4, 1, '2012-04-15', '2012-04-20', 221);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auta`
--
ALTER TABLE `auta`
  ADD PRIMARY KEY (`idauta`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idklienta`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`idwyp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auta`
--
ALTER TABLE `auta`
  MODIFY `idauta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idklienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `idwyp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
