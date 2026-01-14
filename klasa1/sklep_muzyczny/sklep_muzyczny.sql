-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 24, 2025 at 12:10 PM
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
-- Database: `sklep_muzyczny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `instrumenty`
--

CREATE TABLE `instrumenty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `id_kat` int(11) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrumenty`
--

INSERT INTO `instrumenty` (`id`, `nazwa`, `id_kat`, `cena`) VALUES
(1, 'Skrzypce', 2, 400),
(2, 'Fortepian', 3, 450),
(3, 'Marimba', 4, 730),
(4, 'Puzon', 1, 650),
(5, 'Paleczki', 6, 230),
(6, 'Pasek do gitary', 6, 70),
(7, 'Kostki gitarowe', 6, 15),
(8, 'Altowka', 2, 450),
(9, 'Wiolonczela', 2, 500),
(10, 'Kontrabas', 2, 550),
(11, 'Pianino', 3, 1000),
(12, 'Trombka', 1, 1000),
(13, 'Saksofon', 1, 850),
(14, 'Flet Poprzeczny', 1, 300),
(15, 'Klarnet', 1, 400),
(16, 'Oboj', 1, 750),
(17, 'Gitara Klasyczna', 2, 350),
(18, 'Gitara Elektryczna', 2, 800),
(19, 'Gitara Basowa', 2, 700),
(20, 'Ukulele', 2, 200),
(21, 'Harfa', 2, 1000),
(22, 'Lira', 2, 650),
(23, 'Syntezator', 3, 1000),
(24, 'Keyboard', 3, 600),
(25, 'Akordeon', 3, 850),
(26, 'Organy', 3, 1000),
(27, 'Klawesyn', 3, 1000),
(28, 'Beben', 4, 300),
(29, 'Werbel', 4, 250),
(30, 'Konga', 4, 450),
(31, 'Bongosy', 4, 320),
(32, 'Tamburyn', 4, 150),
(33, 'Talerze', 4, 200),
(34, 'Triangle', 4, 50),
(35, 'Djembe', 4, 370),
(36, 'Kazoo', 6, 20),
(37, 'Stojak na nuty', 6, 80),
(38, 'Tuner', 6, 90),
(39, 'Kapodaster', 6, 60),
(40, 'Metronom', 6, 110),
(41, 'Struny do gitary', 6, 40),
(42, 'Pokrowiec na gitare', 6, 100),
(43, 'Statyw mikrofonowy', 6, 150),
(44, 'Plyta Jazzowa', 5, 45),
(45, 'Plyta Rockowa', 5, 50),
(46, 'Plyta Klasyczna', 5, 55),
(47, 'Plyta Popowa', 5, 40),
(48, 'Plyta Metalowa', 5, 60),
(49, 'Plyta Elektroniczna', 5, 45),
(50, 'Plyta Rapowa', 5, 35);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kat` int(11) NOT NULL,
  `nazwa_kat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id_kat`, `nazwa_kat`) VALUES
(1, 'Instrumenty_Dete'),
(2, 'Instrumenty_Strunowe'),
(3, 'Instrumenty_Klawiszo'),
(4, 'Instrumenty_Perkusyj'),
(5, 'Plyty'),
(6, 'Akcesoria');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `rok_urodzenia` int(11) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `rok_urodzenia`, `miasto`) VALUES
(1, 'Marian', 'Marianowicz', 1999, 'Warszawa'),
(2, 'Jan', 'Kowalski', 1980, 'Lublin'),
(3, 'Janusz', 'Kopernik', 1967, 'Zamosc'),
(4, 'Karol', 'Nawrocki', 1977, 'Nowy Jork'),
(5, 'Rafael', 'Bonaparte', 1410, 'Paryz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zam` int(11) NOT NULL,
  `id_klient` int(11) DEFAULT NULL,
  `id_produktu` int(11) DEFAULT NULL,
  `data_wysylki` varchar(20) DEFAULT NULL,
  `numer_klienta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zam`, `id_klient`, `id_produktu`, `data_wysylki`, `numer_klienta`) VALUES
(1, 4, 32, '2025-03-21', 111222333),
(2, 1, 1, '2024-01-13', 123987234),
(3, 2, 15, '2015-03-05', 555999333),
(4, 5, 30, '2022-07-17', 616161616),
(5, 4, 23, '2025-05-27', 543765987),
(6, 1, 48, '1999-02-16', 883771662),
(7, 4, 3, '2025-04-05', 333222111),
(8, 3, 12, '2020-03-04', 135078234),
(9, 1, 3, '1999-05-09', 78345098),
(10, 2, 44, '2035-12-30', 123456721);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `instrumenty`
--
ALTER TABLE `instrumenty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_kat` (`id_kat`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`),
  ADD KEY `fk_id_klient` (`id_klient`),
  ADD KEY `fk_id_produktu` (`id_produktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instrumenty`
--
ALTER TABLE `instrumenty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instrumenty`
--
ALTER TABLE `instrumenty`
  ADD CONSTRAINT `fk_id_kat` FOREIGN KEY (`id_kat`) REFERENCES `kategorie` (`id_kat`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `fk_id_klient` FOREIGN KEY (`id_klient`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `fk_id_produktu` FOREIGN KEY (`id_produktu`) REFERENCES `instrumenty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
