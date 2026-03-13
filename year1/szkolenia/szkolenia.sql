-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 17, 2025 at 12:58 PM
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
-- Database: `szkolenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trenerzy`
--

CREATE TABLE `trenerzy` (
  `id_trenera` int(11) NOT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `miejscowosc` varchar(30) DEFAULT NULL,
  `ulica` varchar(30) DEFAULT NULL,
  `nr_domu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trenerzy`
--

INSERT INTO `trenerzy` (`id_trenera`, `imie`, `nazwisko`, `miejscowosc`, `ulica`, `nr_domu`) VALUES
(1, 'Jan', 'Kowalski', 'Tomaszow Lubelski', 'Trenerowska', 1),
(2, 'Kowal', 'Jankowski', 'Tomaszow Lubelski', 'Trenerowska', 4),
(3, 'Jadwiga', 'Wancerz', 'Majdan Dolny', 'Zajeciowa', 3),
(4, 'Karol', 'Wisniewski', 'Warszawa', 'Kopernika', 123),
(5, 'Bartlomiej', 'Halasa', 'Tomaszow Lubelski', 'Trenerowska', 31),
(6, 'Magda', 'Kowalska', 'Zamosc', 'Matejki', 13);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczestnicy`
--

CREATE TABLE `uczestnicy` (
  `id_uczestnika` int(11) NOT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `miejscowosc` varchar(30) DEFAULT NULL,
  `ulica` varchar(30) DEFAULT NULL,
  `nr_domu` int(11) DEFAULT NULL,
  `id_zajecia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uczestnicy`
--

INSERT INTO `uczestnicy` (`id_uczestnika`, `imie`, `nazwisko`, `miejscowosc`, `ulica`, `nr_domu`, `id_zajecia`) VALUES
(1, 'Karol', 'Nawrocki', 'Warszawa', 'Matejki', 875, 6),
(2, 'Krzysztof', 'Rachanski', 'Zakopane', 'Roztoczanska', 123, 5),
(3, 'Lukasz', 'Kowalski', 'Zamosc', 'Kopernika', 33, 4),
(4, 'Lucja', 'Blaszczuk', 'Nowy Jork', 'Nowo Jorkowska', 67, 6),
(5, 'Andrzej', 'Bonaparte', 'Ameryka', 'Amerykanska', 76, 1),
(6, 'Zhang', 'Chi', 'Hongkong', 'Polska', 4, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zajecia`
--

CREATE TABLE `zajecia` (
  `id_zajecia` int(11) NOT NULL,
  `rodzaje_zajec` varchar(30) DEFAULT NULL,
  `id_trenera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zajecia`
--

INSERT INTO `zajecia` (`id_zajecia`, `rodzaje_zajec`, `id_trenera`) VALUES
(1, 'Zoomba', 3),
(2, 'Koszykowka', 5),
(3, 'Gimnastyka', 6),
(4, 'Pilka Nozna', 2),
(5, 'Programowanie', 4),
(6, 'Aerobik', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `trenerzy`
--
ALTER TABLE `trenerzy`
  ADD PRIMARY KEY (`id_trenera`);

--
-- Indeksy dla tabeli `uczestnicy`
--
ALTER TABLE `uczestnicy`
  ADD PRIMARY KEY (`id_uczestnika`),
  ADD KEY `fk_zajecia` (`id_zajecia`);

--
-- Indeksy dla tabeli `zajecia`
--
ALTER TABLE `zajecia`
  ADD PRIMARY KEY (`id_zajecia`),
  ADD KEY `fk_id_trenera` (`id_trenera`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uczestnicy`
--
ALTER TABLE `uczestnicy`
  ADD CONSTRAINT `fk_zajecia` FOREIGN KEY (`id_zajecia`) REFERENCES `zajecia` (`id_zajecia`);

--
-- Constraints for table `zajecia`
--
ALTER TABLE `zajecia`
  ADD CONSTRAINT `fk_id_trenera` FOREIGN KEY (`id_trenera`) REFERENCES `trenerzy` (`id_trenera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
