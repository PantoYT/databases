-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 10:27 PM
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
-- Database: `inf03_2022_01_01_baza`
--
DROP DATABASE IF EXISTS `inf03_2022_01_01_baza`;
CREATE DATABASE IF NOT EXISTS `inf03_2022_01_01_baza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2022_01_01_baza`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania`
--

DROP TABLE IF EXISTS `dania`;
CREATE TABLE `dania` (
  `id` int(10) UNSIGNED NOT NULL,
  `typ` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dania`
--

INSERT INTO `dania` VALUES
(1, 1, 'Gazpacho', 20),
(2, 1, 'Krem z warzyw', 25),
(3, 1, 'Gulaszowa ostra', 30),
(4, 2, 'Kaczka i owoc', 30),
(5, 2, 'Kurczak pieczony', 40),
(6, 2, 'wieprzowy przysmak', 35),
(7, 2, 'Mintaj w panierce', 30),
(8, 2, 'Alle kotlet', 30),
(9, 3, 'Owoce morza', 20),
(10, 3, 'Grzybki, warzywka, sos', 15),
(11, 3, 'Orzechy i chipsy', 10),
(12, 3, 'Tatar i jajo', 15),
(13, 3, 'Bukiet warzyw', 10),
(14, 4, 'Sok porzeczkowy', 3),
(15, 4, 'Cola', 3),
(16, 4, 'Woda', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konta`
--

DROP TABLE IF EXISTS `konta`;
CREATE TABLE `konta` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` text DEFAULT NULL,
  `haslo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokale`
--

DROP TABLE IF EXISTS `lokale`;
CREATE TABLE `lokale` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `miasto` text DEFAULT NULL,
  `ulica` text DEFAULT NULL,
  `numer` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lokale`
--

INSERT INTO `lokale` VALUES
(1, 'Wszystkie Smaki', 'Zakopane', 'Orkana', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenie`
--

DROP TABLE IF EXISTS `ogloszenie`;
CREATE TABLE `ogloszenie` (
  `id` int(10) UNSIGNED NOT NULL,
  `uzytkownik_id` int(10) UNSIGNED NOT NULL,
  `kategoria` int(10) UNSIGNED DEFAULT NULL,
  `podkategoria` int(10) UNSIGNED DEFAULT NULL,
  `tytul` text DEFAULT NULL,
  `tresc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ogloszenie`
--

INSERT INTO `ogloszenie` VALUES
(1, 1, 1, 12, 'Daniel Craig. Biografia', 'Biografia Daniela Craiga, niedrogo sprzedam'),
(2, 1, 1, 13, 'Selekcja', 'Sprzedam: \"Selekcja\" J. Kellermana, niezniszczona'),
(3, 2, 1, 13, 'Buick', 'Sprzedam horror Stephena Kinga w dobrym stanie'),
(4, 2, 1, 14, 'Tytus, Romek i Atomek', 'Ks. IV do sprzedania, stan dobry'),
(5, 2, 2, 0, 'Imagine Dragons', 'Sprzedam dwa CD Imagine Dragons');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `stanowisko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` VALUES
(1, 'Anna', 'Kowalska', 1),
(2, 'Monika', 'Nowak', 2),
(3, 'Ewelina', 'Nowakowska', 2),
(4, 'Anna', 'Przybylska', 4),
(5, 'Maria', 'Kowal', 4),
(6, 'Ewa', 'Nowacka', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

DROP TABLE IF EXISTS `rezerwacje`;
CREATE TABLE `rezerwacje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nr_stolika` int(10) UNSIGNED DEFAULT NULL,
  `data_rez` date DEFAULT NULL,
  `liczba_osob` int(10) UNSIGNED DEFAULT NULL,
  `telefon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rezerwacje`
--

INSERT INTO `rezerwacje` VALUES
(1, 1, '2017-07-04', 4, '111222333');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

DROP TABLE IF EXISTS `samochody`;
CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` VALUES
(1, 'Fiat', 'Punto', '2016', 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', '2002', 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', '2007', 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', '2016', 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', '2003', 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', '2016', 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', '2014', 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', '2004', 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `nick` text DEFAULT NULL,
  `zainteresowania` text DEFAULT NULL,
  `zawod` text DEFAULT NULL,
  `plec` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `konta`
--
ALTER TABLE `konta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lokale`
--
ALTER TABLE `lokale`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ogloszenie`
--
ALTER TABLE `ogloszenie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokale`
--
ALTER TABLE `lokale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ogloszenie`
--
ALTER TABLE `ogloszenie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `inf03_2022_06_01_wedkowanie`
--
DROP DATABASE IF EXISTS `inf03_2022_06_01_wedkowanie`;
CREATE DATABASE IF NOT EXISTS `inf03_2022_06_01_wedkowanie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2022_06_01_wedkowanie`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

DROP TABLE IF EXISTS `lowisko`;
CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lowisko`
--

INSERT INTO `lowisko` VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

DROP TABLE IF EXISTS `okres_ochronny`;
CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `okres_ochronny`
--

INSERT INTO `okres_ochronny` VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

DROP TABLE IF EXISTS `ryby`;
CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL,
  `dobowy_limit` int(11) DEFAULT NULL CHECK (`dobowy_limit` between 0 and 255)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ryby`
--

INSERT INTO `ryby` VALUES
(1, 'Szczupak', 'stawy, rzeki', 1, NULL),
(2, 'Karp', 'stawy, jeziora', 2, NULL),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1, NULL),
(4, 'Okon', 'rzeki', 1, NULL),
(5, 'Sum', 'jeziora, rzeki', 1, NULL),
(6, 'Dorsz', 'morza, oceany', 1, NULL),
(7, 'Leszcz', 'jeziora', 2, NULL),
(8, 'Lin', 'jeziora', 2, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

DROP TABLE IF EXISTS `samochody`;
CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` VALUES
(1, 'Fiat', 'Punto', '2016', 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', '2002', 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', '2007', 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', '2016', 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', '2003', 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', '2016', 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', '2014', 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', '2004', 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

DROP TABLE IF EXISTS `typy`;
CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `inf03_2022_06_02_samochody`
--
DROP DATABASE IF EXISTS `inf03_2022_06_02_samochody`;
CREATE DATABASE IF NOT EXISTS `inf03_2022_06_02_samochody` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2022_06_02_samochody`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

DROP TABLE IF EXISTS `lowisko`;
CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lowisko`
--

INSERT INTO `lowisko` VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

DROP TABLE IF EXISTS `okres_ochronny`;
CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `okres_ochronny`
--

INSERT INTO `okres_ochronny` VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

DROP TABLE IF EXISTS `ryby`;
CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ryby`
--

INSERT INTO `ryby` VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

DROP TABLE IF EXISTS `samochody`;
CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` VALUES
(1, 'Fiat', 'Punto', '2016', 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', '2002', 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', '2007', 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', '2016', 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', '2003', 'niebieski', 'dobry'),
(6, 'Toyota', 'Corolla', '2016', 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', '2014', 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', '2004', 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

DROP TABLE IF EXISTS `typy`;
CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `inf03_2022_06_03_wedkarstwo`
--
DROP DATABASE IF EXISTS `inf03_2022_06_03_wedkarstwo`;
CREATE DATABASE IF NOT EXISTS `inf03_2022_06_03_wedkarstwo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2022_06_03_wedkarstwo`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_wedkarskie`
--

DROP TABLE IF EXISTS `karty_wedkarskie`;
CREATE TABLE `karty_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `data_zezwolenia` date DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `karty_wedkarskie`
--

INSERT INTO `karty_wedkarskie` VALUES
(1, 'Jan', 'Kowalski', 'Warszawa, Aleje Jerozolimskie 65/4', '2018-02-15', 23),
(2, 'Andrzej', 'Nowak', 'Poznan, Dabowskiego 16/4', '2018-03-12', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

DROP TABLE IF EXISTS `lowisko`;
CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lowisko`
--

INSERT INTO `lowisko` VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

DROP TABLE IF EXISTS `okres_ochronny`;
CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `okres_ochronny`
--

INSERT INTO `okres_ochronny` VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

DROP TABLE IF EXISTS `ryby`;
CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ryby`
--

INSERT INTO `ryby` VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

DROP TABLE IF EXISTS `samochody`;
CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` VALUES
(1, 'Fiat', 'Punto', '2016', 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', '2002', 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', '2007', 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', '2016', 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', '2003', 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', '2016', 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', '2014', 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', '2004', 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

DROP TABLE IF EXISTS `typy`;
CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawody_wedkarskie`
--

DROP TABLE IF EXISTS `zawody_wedkarskie`;
CREATE TABLE `zawody_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `Karty_wedkarskie_id` int(10) UNSIGNED NOT NULL,
  `Lowisko_id` int(10) UNSIGNED NOT NULL,
  `data_zawodow` date DEFAULT NULL,
  `sedzia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zawody_wedkarskie`
--

INSERT INTO `zawody_wedkarskie` VALUES
(1, 1, 3, '2018-04-12', 'Jan Kowalewski'),
(2, 1, 5, '2018-05-01', 'Jan Kowalewski'),
(3, 1, 2, '2018-06-01', 'Jan Kowalewski'),
(4, 2, 1, '2018-06-21', 'Krzysztof Dobrowolski'),
(5, 2, 4, '2021-09-28', 'Andrzej Nowak'),
(6, 0, 1, '0000-00-00', '123');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `inf03_2023_01_01_malarz`
--
DROP DATABASE IF EXISTS `inf03_2023_01_01_malarz`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_01_01_malarz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_01_01_malarz`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `farby`
--

DROP TABLE IF EXISTS `farby`;
CREATE TABLE `farby` (
  `id_farby` int(11) NOT NULL,
  `kolor` text NOT NULL,
  `cena` int(11) NOT NULL,
  `pojemnosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farby`
--

INSERT INTO `farby` VALUES
(1, 'bialy', 20, 5),
(2, 'czerwony', 30, 3),
(3, 'niebieski', 35, 3),
(4, 'żółty', 22, 4),
(5, 'zielony', 30, 4),
(6, 'czarny', 50, 2),
(7, 'fioletowy', 64, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `malowanie`
--

DROP TABLE IF EXISTS `malowanie`;
CREATE TABLE `malowanie` (
  `id_pomieszczenia` int(11) NOT NULL,
  `id_sciany` int(11) NOT NULL,
  `id_farby` int(11) DEFAULT NULL,
  `liczba_puszek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `malowanie`
--

INSERT INTO `malowanie` VALUES
(1, 1, 1, 3),
(1, 2, 3, 2),
(1, 3, 1, 3),
(1, 4, 1, 2),
(2, 1, 7, 4),
(2, 2, 6, 3),
(2, 3, 5, 5),
(2, 4, 3, 2),
(3, 1, 5, 2),
(3, 2, 2, 2),
(4, 4, 5, 2),
(5, 1, 2, 2),
(5, 2, 6, 4);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pomieszczenie1`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `pomieszczenie1`;
CREATE TABLE `pomieszczenie1` (
`id_sciany` int(11)
,`id_farby` int(11)
,`liczba_puszek` int(11)
);

-- --------------------------------------------------------

--
-- Struktura widoku `pomieszczenie1`
--
DROP TABLE IF EXISTS `pomieszczenie1`;

DROP VIEW IF EXISTS `pomieszczenie1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pomieszczenie1`  AS SELECT `malowanie`.`id_sciany` AS `id_sciany`, `malowanie`.`id_farby` AS `id_farby`, `malowanie`.`liczba_puszek` AS `liczba_puszek` FROM `malowanie` WHERE `malowanie`.`id_pomieszczenia` = 1 ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `farby`
--
ALTER TABLE `farby`
  ADD PRIMARY KEY (`id_farby`);

--
-- Indeksy dla tabeli `malowanie`
--
ALTER TABLE `malowanie`
  ADD PRIMARY KEY (`id_pomieszczenia`,`id_sciany`);
--
-- Database: `inf03_2023_01_02_wynajem`
--
DROP DATABASE IF EXISTS `inf03_2023_01_02_wynajem`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_01_02_wynajem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_01_02_wynajem`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoje`
--

DROP TABLE IF EXISTS `pokoje`;
CREATE TABLE `pokoje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `cena` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokoje`
--

INSERT INTO `pokoje` VALUES
(1, 'jednoosobowy', 100),
(2, 'dwuosobowy', 170),
(3, 'trzyosobowy', 210);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

DROP TABLE IF EXISTS `rezerwacje`;
CREATE TABLE `rezerwacje` (
  `id_rez` int(10) UNSIGNED NOT NULL,
  `id_pok` int(10) UNSIGNED DEFAULT NULL,
  `liczba_dn` int(10) UNSIGNED DEFAULT NULL,
  `sezon` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezerwacje`
--

INSERT INTO `rezerwacje` VALUES
(1, 1, 10, 'lato'),
(2, 2, 4, 'zima'),
(3, 1, 5, 'lato'),
(4, 2, 6, 'zima'),
(5, 1, 5, 'lato'),
(6, 3, 9, 'zima'),
(7, 1, 8, 'zima'),
(8, 2, 4, 'lato'),
(9, 1, 4, 'lato'),
(10, 3, 4, 'lato');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pokoje`
--
ALTER TABLE `pokoje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id_rez`),
  ADD KEY `id_pok` (`id_pok`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`id_pok`) REFERENCES `pokoje` (`id`);
--
-- Database: `inf03_2023_01_03_kwiaciarnia`
--
DROP DATABASE IF EXISTS `inf03_2023_01_03_kwiaciarnia`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_01_03_kwiaciarnia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_01_03_kwiaciarnia`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

DROP TABLE IF EXISTS `klienci`;
CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) DEFAULT NULL,
  `nazwisko` varchar(15) DEFAULT NULL,
  `rabat` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwiaciarnie`
--

DROP TABLE IF EXISTS `kwiaciarnie`;
CREATE TABLE `kwiaciarnie` (
  `id_kwiaciarni` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `ulica` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kwiaciarnie`
--

INSERT INTO `kwiaciarnie` VALUES
(1, 'Astra', 'Warszawa', 'Sobieskiego'),
(2, 'Melisa', 'Malbork', 'Konopnickiej');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id_zam` int(10) UNSIGNED NOT NULL,
  `id_kwiaciarni` int(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `kwiaty` text DEFAULT NULL,
  `cena` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, 1, '2017-01-16', 'róża', 250),
(2, 1, '2017-01-10', 'gerbera', 120),
(3, 2, '2017-01-06', 'róża', 200),
(4, 2, '2017-01-09', 'gozdzik', 170),
(5, 1, '2017-01-07', 'róża', 125),
(6, 1, '2017-01-11', 'róża', 75);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kwiaciarnie`
--
ALTER TABLE `kwiaciarnie`
  ADD PRIMARY KEY (`id_kwiaciarni`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kwiaciarnie`
--
ALTER TABLE `kwiaciarnie`
  MODIFY `id_kwiaciarni` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `inf03_2023_01_04_biuro`
--
DROP DATABASE IF EXISTS `inf03_2023_01_04_biuro`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_01_04_biuro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_01_04_biuro`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadra`
--

DROP TABLE IF EXISTS `kadra`;
CREATE TABLE `kadra` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `stanowisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kadra`
--

INSERT INTO `kadra` VALUES
(1, 'Anna', 'Kowalska', 'dietetyk'),
(2, 'Jolanta', 'Szczesny', 'kosmetolog'),
(3, 'Aleksandra', 'Wilk', 'stylista'),
(4, 'Katarzyna', 'Nowak', 'fryzjer'),
(5, 'Piotr', 'Bartczak', 'fizjoterapeuta');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

DROP TABLE IF EXISTS `matematycy`;
CREATE TABLE `matematycy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `rok_urodzenia` int(10) DEFAULT NULL,
  `liczba_publikacji` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matematycy`
--

INSERT INTO `matematycy` VALUES
(1, 'Stefan', 'Banach', 1892, 20),
(2, 'Leonardo', 'Fibonacci', 1175, 15),
(3, 'Augustin', 'Cauchy', 1789, 10),
(4, 'Leonard', 'Euler', 1707, 30),
(5, 'Gotfried', 'Leibniz', 1646, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

DROP TABLE IF EXISTS `typy`;
CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

DROP TABLE IF EXISTS `uslugi`;
CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uslugi`
--

INSERT INTO `uslugi` VALUES
(1, 2, 1, 'Piling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycieczki`
--

DROP TABLE IF EXISTS `wycieczki`;
CREATE TABLE `wycieczki` (
  `id` int(10) UNSIGNED NOT NULL,
  `zdjecia_id` int(10) UNSIGNED NOT NULL,
  `dataWyjazdu` date DEFAULT NULL,
  `liczbaDni` int(10) UNSIGNED DEFAULT NULL,
  `cel` text DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `dostepna` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wycieczki`
--

INSERT INTO `wycieczki` VALUES
(1, 2, '2019-09-08', NULL, 'Wlochy, Wenecja', 1200, 1),
(2, 2, '2019-09-14', NULL, 'Wlochy, Wenecja', 1200, 1),
(3, 4, '2019-08-14', NULL, 'Polska, Warszawa', 640, 1),
(4, 6, '2019-08-14', NULL, 'Francja, Paryz', 1300, 1),
(5, 6, '2019-07-14', NULL, 'Francja, Paryz', 1350, 0),
(6, 6, '2019-09-14', NULL, 'Francja, Paryz', 1200, 1),
(7, 8, '2019-07-14', NULL, 'Hiszpania, Barcelona', 1500, 0),
(8, 8, '2019-08-14', NULL, 'Hiszpania, Barcelona', 1500, 0),
(9, 8, '2019-09-14', NULL, 'Hiszpania, Barcelona', 1400, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

DROP TABLE IF EXISTS `zdjecia`;
CREATE TABLE `zdjecia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaPliku` text DEFAULT NULL,
  `podpis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zdjecia`
--

INSERT INTO `zdjecia` VALUES
(1, '1.jpg', 'Londyn'),
(2, '2.jpg', 'Wenecja'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warszawa'),
(5, '5.jpg', 'Budapeszt'),
(6, '6.jpg', 'Paryz'),
(7, '7.jpg', 'Nowy Jork'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskwa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kadra`
--
ALTER TABLE `kadra`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- Indeksy dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kadra`
--
ALTER TABLE `kadra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wycieczki`
--
ALTER TABLE `wycieczki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `inf03_2023_01_05_kalendarz`
--
DROP DATABASE IF EXISTS `inf03_2023_01_05_kalendarz`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_01_05_kalendarz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_01_05_kalendarz`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadania`
--

DROP TABLE IF EXISTS `zadania`;
CREATE TABLE `zadania` (
  `id` int(10) UNSIGNED NOT NULL,
  `dataZadania` date DEFAULT NULL,
  `wpis` text DEFAULT NULL,
  `miesiac` text DEFAULT NULL,
  `rok` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zadania`
--

INSERT INTO `zadania` VALUES
(1, '2020-07-01', 'Projekt z programowania', 'lipiec', 2020),
(2, '2020-07-02', 'Projekt z programowania', 'lipiec', 2020),
(3, '2020-07-03', '', 'lipiec', 2020),
(4, '2020-07-04', '', 'lipiec', 2020),
(5, '2020-07-05', '', 'lipiec', 2020),
(6, '2020-07-06', '', 'lipiec', 2020),
(7, '2020-07-07', 'Weterynarz - Brutus', 'lipiec', 2020),
(8, '2020-07-08', '', 'lipiec', 2020),
(9, '2020-07-09', '', 'lipiec', 2020),
(10, '2020-07-10', 'Szczepienie', 'lipiec', 2020),
(11, '2020-07-11', '', 'lipiec', 2020),
(12, '2020-07-12', '', 'lipiec', 2020),
(13, '2020-07-13', '', 'lipiec', 2020),
(14, '2020-07-14', '', 'lipiec', 2020),
(15, '2020-07-15', '', 'lipiec', 2020),
(16, '2020-07-16', '', 'lipiec', 2020),
(17, '2020-07-17', '', 'lipiec', 2020),
(18, '2020-07-18', 'Wyjazd na wakacje!', 'lipiec', 2020),
(19, '2020-07-19', 'Mielno', 'lipiec', 2020),
(20, '2020-07-20', 'Mielno', 'lipiec', 2020),
(21, '2020-07-21', 'Mielno', 'lipiec', 2020),
(22, '2020-07-22', 'Mielno', 'lipiec', 2020),
(23, '2020-07-23', 'Mielno', 'lipiec', 2020),
(24, '2020-07-24', 'Mielno', 'lipiec', 2020),
(25, '2020-07-25', '', 'lipiec', 2020),
(26, '2020-07-26', '', 'lipiec', 2020),
(27, '2020-07-27', '', 'lipiec', 2020),
(28, '2020-07-28', '', 'lipiec', 2020),
(29, '2020-07-29', 'Weterynarz - Brutus', 'lipiec', 2020),
(30, '2020-07-30', 'Warszawa', 'lipiec', 2020),
(31, '2020-07-31', 'Warszawa', 'lipiec', 2020),
(32, '2020-08-01', 'Remont', 'sierpien', 2020),
(33, '2020-08-02', 'Remont', 'sierpien', 2020),
(34, '2020-08-03', 'Remont', 'sierpien', 2020),
(35, '2020-08-04', 'Remont', 'sierpien', 2020),
(36, '2020-08-05', '', 'sierpien', 2020),
(37, '2020-08-06', '', 'sierpien', 2020),
(38, '2020-08-07', 'Rower', 'sierpien', 2020),
(39, '2020-08-08', 'Rower', 'sierpien', 2020),
(40, '2020-08-09', 'SIGMASTYCZNIE', 'sierpien', 2020),
(41, '2020-08-10', '', 'sierpien', 2020),
(42, '2020-08-11', 'Weterynarz - Dika', 'sierpien', 2020),
(43, '2020-08-12', '', 'sierpien', 2020),
(44, '2020-08-13', 'Sopot', 'sierpien', 2020),
(45, '2020-08-14', 'Sopot', 'sierpien', 2020),
(46, '2020-08-15', '', 'sierpien', 2020),
(47, '2020-08-16', '', 'sierpien', 2020),
(48, '2020-08-17', 'Wyjazd na wakacje!', 'sierpien', 2020),
(49, '2020-08-18', 'Tatry', 'sierpien', 2020),
(50, '2020-08-19', 'Tatry', 'sierpien', 2020),
(51, '2020-08-20', 'Tatry', 'sierpien', 2020),
(52, '2020-08-21', 'Tatry', 'sierpien', 2020),
(53, '2020-08-22', 'Tatry', 'sierpien', 2020),
(54, '2020-08-23', 'Tatry', 'sierpien', 2020),
(55, '2020-08-24', 'Tatry', 'sierpien', 2020),
(56, '2020-08-25', '', 'sierpien', 2020),
(57, '2020-08-26', '', 'sierpien', 2020),
(58, '2020-08-27', '', 'sierpien', 2020),
(59, '2020-08-28', '', 'sierpien', 2020),
(60, '2020-08-29', 'Weterynarz - Dika', 'sierpien', 2020),
(61, '2020-08-30', '', 'sierpien', 2020),
(62, '2020-08-31', '', 'sierpien', 2020),
(63, '2020-11-01', NULL, 'listopad', 2020);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zadania`
--
ALTER TABLE `zadania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zadania`
--
ALTER TABLE `zadania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Database: `inf03_2023_06_01_sklep`
--
DROP DATABASE IF EXISTS `inf03_2023_06_01_sklep`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_06_01_sklep` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_06_01_sklep`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

DROP TABLE IF EXISTS `dostawcy`;
CREATE TABLE `dostawcy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `informacje` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dostawcy`
--

INSERT INTO `dostawcy` VALUES
(1, 'Papiernictwo', 'ul. Boczna 12, 23-355 Bukowina', NULL),
(2, 'Art. szkolne', 'ul. Dworcowa 20, 34-565 Warszawa', NULL),
(3, 'Wszystko dla ucznia', 'ul. Towarowa 35, 88-123 Zakopane', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towary`
--

DROP TABLE IF EXISTS `towary`;
CREATE TABLE `towary` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `cena` float NOT NULL,
  `promocja` tinyint(1) NOT NULL,
  `idDostawcy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `towary`
--

INSERT INTO `towary` VALUES
(1, 'Zeszyt 60 kartek', 4.5, 0, 1),
(2, 'Zeszyt 32 kartki', 1.2, 0, 2),
(3, 'Cyrkiel', 12.4, 0, 1),
(4, 'Linijka 30 cm', 7.2, 0, 3),
(5, 'Ekierka', 5.5, 0, 3),
(6, 'Linijka 50 cm', 8.2, 0, 2),
(7, 'Gumka do mazania', 3.2, 1, 1),
(8, 'Cienkopis', 2.5, 1, 2),
(9, 'Pisaki 60 szt.', 55, 1, 2),
(10, 'Markery 4 szt.', 22.4, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `towary`
--
ALTER TABLE `towary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDostawcy` (`idDostawcy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dostawcy`
--
ALTER TABLE `dostawcy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `towary`
--
ALTER TABLE `towary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `towary`
--
ALTER TABLE `towary`
  ADD CONSTRAINT `idDostawcy` FOREIGN KEY (`idDostawcy`) REFERENCES `dostawcy` (`id`);
--
-- Database: `inf03_2023_06_02_sklep`
--
DROP DATABASE IF EXISTS `inf03_2023_06_02_sklep`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_06_02_sklep` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_06_02_sklep`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

DROP TABLE IF EXISTS `dostawcy`;
CREATE TABLE `dostawcy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dostawcy`
--

INSERT INTO `dostawcy` VALUES
(1, 'Papiernictwo', 'ul. Boczna 12, 23-355 Bukowina'),
(2, 'Artykuly szkolne', 'ul. Dworcowa 20, 34-565 Warszawa'),
(3, 'Wszystko dla ucznia', 'ul. Towarowa 35, 88-123 Zakopane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towary`
--

DROP TABLE IF EXISTS `towary`;
CREATE TABLE `towary` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `cena` float NOT NULL,
  `promocja` tinyint(1) NOT NULL,
  `idDostawcy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `towary`
--

INSERT INTO `towary` VALUES
(1, 'Zeszyt 60 kartek', 4.5, 0, 1),
(2, 'Zeszyt 32 kartki', 1.2, 0, 2),
(3, 'Cyrkiel', 12.4, 0, 1),
(4, 'Linijka 30 cm', 7.2, 0, 3),
(5, 'Ekierka', 5.5, 0, 3),
(6, 'Linijka 50 cm', 8.2, 0, 2),
(7, 'Gumka do mazania', 3.2, 1, 1),
(8, 'Cienkopis', 2.5, 1, 2),
(9, 'Pisaki 60 szt.', 55, 1, 2),
(10, 'Markery 4 szt.', 22.4, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `towary`
--
ALTER TABLE `towary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDostawcy` (`idDostawcy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dostawcy`
--
ALTER TABLE `dostawcy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `towary`
--
ALTER TABLE `towary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `towary`
--
ALTER TABLE `towary`
  ADD CONSTRAINT `idDostawcy` FOREIGN KEY (`idDostawcy`) REFERENCES `dostawcy` (`id`);
--
-- Database: `inf03_2023_06_04_biblioteka`
--
DROP DATABASE IF EXISTS `inf03_2023_06_04_biblioteka`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_06_04_biblioteka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_06_04_biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

DROP TABLE IF EXISTS `autorzy`;
CREATE TABLE `autorzy` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` VALUES
(1, 'Jan', 'Kasprowicz'),
(2, 'Jan', 'Brzechwa'),
(3, 'Julian', 'Tuwim'),
(4, 'Janusz', 'Korczak'),
(5, 'Joanna', 'Chmielewska'),
(6, 'Witold', 'Gombrowicz'),
(7, 'Aleksander', 'Fredro'),
(8, 'Henryk', 'Sienkiewicz'),
(9, 'Magdalena', 'Witkiewicz'),
(10, 'Leon', 'Kruczkowski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

DROP TABLE IF EXISTS `czytelnicy`;
CREATE TABLE `czytelnicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `kod` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `czytelnicy`
--

INSERT INTO `czytelnicy` VALUES
(1, 'Janina', 'Michalak', ''),
(2, 'Adam', 'Milek', ''),
(3, 'Bogdan', 'Nowacki', ''),
(4, 'Krzysztof', 'Kowalski', ''),
(5, 'Jadwiga', 'Kowal', ''),
(6, 'Magdalena', 'Mucha', ''),
(7, 'Maciej', 'Wysocki', ''),
(8, 'zbigniew', 'Lasecki', ''),
(9, 'Aleksandra', 'Kucharczyk', ''),
(10, 'Olga', 'Domys', ''),
(11, 'Ewa', 'Kowalska', '145321');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` VALUES
(1, 'epika'),
(2, 'dramat'),
(3, 'liryka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

DROP TABLE IF EXISTS `ksiazki`;
CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `id_kategoria` int(11) DEFAULT NULL,
  `tytul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_wydawnictwo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` VALUES
(7, 3, 'Dies irae', 1, 3),
(8, 3, 'Poezje', 1, 1),
(9, 3, 'Wiersze wybrane', 2, 2),
(10, 3, 'Brzechwa dzieciom', 2, 1),
(11, 3, 'Bambo', 3, 3),
(12, 3, 'Rzepka', 3, 2),
(13, 3, 'Lokomotywa', 3, 1),
(17, 1, 'Kosmos', 6, 2),
(18, 1, 'Ferdydurke', 6, 2),
(19, 1, 'Trans-atlantyk', 6, 2),
(23, 1, 'Pech', 5, 3),
(24, 1, 'Lesio', 5, 2),
(25, 2, 'Zemsta', 7, 2),
(26, 2, 'Pan Jowialski', 7, 1),
(31, 1, 'Quo vadis', 8, 4),
(32, 1, 'Potop', 8, 1),
(33, 1, 'Ogniem i mieczem', 8, 2),
(34, 1, 'Panny roztropne', 9, 2),
(35, 1, 'Zamek z piasku', 9, 3),
(36, 2, 'Niemcy', 10, 1),
(37, 2, 'Odwiedziny', 10, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwa`
--

DROP TABLE IF EXISTS `wydawnictwa`;
CREATE TABLE `wydawnictwa` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wydawnictwa`
--

INSERT INTO `wydawnictwa` VALUES
(1, 'Amber'),
(2, 'Merlin'),
(3, 'Świat książki'),
(4, 'Dobra literatura');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

DROP TABLE IF EXISTS `wypozyczenia`;
CREATE TABLE `wypozyczenia` (
  `id` int(20) NOT NULL,
  `id_czytelnik` int(11) DEFAULT NULL,
  `id_ksiazka` int(11) DEFAULT NULL,
  `data_wypozyczenia` date DEFAULT NULL,
  `data_oddania` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` VALUES
(1, 2, 22, '2018-01-01', '2018-01-12'),
(2, 3, 12, '2017-10-01', '2017-10-26'),
(3, 1, 30, '2018-01-07', '2018-01-21'),
(4, 3, 15, '2017-12-03', '2017-12-11'),
(5, 2, 25, '2017-11-06', '2017-11-23'),
(6, 5, 28, '2018-01-02', '2018-01-10'),
(7, 6, 29, '2017-12-13', '2018-01-09'),
(8, 9, 21, '2017-11-19', '2017-12-12'),
(9, 2, 10, '2018-01-05', '2018-01-19'),
(10, 3, 17, '2017-11-13', '2017-12-03');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `czytelnicy`
--
ALTER TABLE `czytelnicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `inf03_2023_06_07_biblioteka`
--
DROP DATABASE IF EXISTS `inf03_2023_06_07_biblioteka`;
CREATE DATABASE IF NOT EXISTS `inf03_2023_06_07_biblioteka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2023_06_07_biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

DROP TABLE IF EXISTS `autorzy`;
CREATE TABLE `autorzy` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` VALUES
(1, 'Jan', 'Kasprowicz'),
(2, 'Jan', 'Brzechwa'),
(3, 'Julian', 'Tuwim'),
(4, 'Janusz', 'Korczak'),
(5, 'Joanna', 'Chmielewska'),
(6, 'Witold', 'Gombrowicz'),
(7, 'Aleksander', 'Fredro'),
(8, 'Henryk', 'Sienkiewicz'),
(9, 'Magdalena', 'Witkiewicz'),
(10, 'Leon', 'Kruczkowski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

DROP TABLE IF EXISTS `czytelnicy`;
CREATE TABLE `czytelnicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `kod` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `czytelnicy`
--

INSERT INTO `czytelnicy` VALUES
(1, 'Janina', 'Michalak', ''),
(2, 'Adam', 'Milek', ''),
(3, 'Bogdan', 'Nowacki', ''),
(4, 'Krzysztof', 'Kowalski', ''),
(5, 'Jadwiga', 'Kowal', ''),
(6, 'Magdalena', 'Mucha', ''),
(7, 'Maciej', 'Wysocki', ''),
(8, 'zbigniew', 'Lasecki', ''),
(9, 'Aleksandra', 'Kucharczyk', ''),
(10, 'Olga', 'Domys', ''),
(11, 'Ewelina', 'Romanowska', '56677');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` VALUES
(1, 'epika'),
(2, 'dramat'),
(3, 'liryka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

DROP TABLE IF EXISTS `ksiazki`;
CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `id_kategoria` int(11) DEFAULT NULL,
  `tytul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_wydawnictwo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` VALUES
(7, 3, 'Dies irae', 1, 3),
(8, 3, 'Poezje', 1, 1),
(9, 3, 'Wiersze wybrane', 2, 2),
(10, 3, 'Brzechwa dzieciom', 2, 1),
(11, 3, 'Bambo', 3, 3),
(12, 3, 'Rzepka', 3, 2),
(13, 3, 'Lokomotywa', 3, 1),
(17, 1, 'Kosmos', 6, 2),
(18, 1, 'Ferdydurke', 6, 2),
(19, 1, 'Trans-atlantyk', 6, 2),
(23, 1, 'Pech', 5, 3),
(24, 1, 'Lesio', 5, 2),
(25, 2, 'Zemsta', 7, 2),
(26, 2, 'Pan Jowialski', 7, 1),
(31, 1, 'Quo vadis', 8, 4),
(32, 1, 'Potop', 8, 1),
(33, 1, 'Ogniem i mieczem', 8, 2),
(34, 1, 'Panny roztropne', 9, 2),
(35, 1, 'Zamek z piasku', 9, 3),
(36, 2, 'Niemcy', 10, 1),
(37, 2, 'Odwiedziny', 10, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwa`
--

DROP TABLE IF EXISTS `wydawnictwa`;
CREATE TABLE `wydawnictwa` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wydawnictwa`
--

INSERT INTO `wydawnictwa` VALUES
(1, 'Amber'),
(2, 'Merlin'),
(3, 'Świat książki'),
(4, 'Dobra literatura');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

DROP TABLE IF EXISTS `wypozyczenia`;
CREATE TABLE `wypozyczenia` (
  `id` int(20) NOT NULL,
  `id_czytelnik` int(11) DEFAULT NULL,
  `id_ksiazka` int(11) DEFAULT NULL,
  `data_wypozyczenia` date DEFAULT NULL,
  `data_oddania` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` VALUES
(1, 2, 22, '2018-01-01', '2018-01-12'),
(2, 3, 12, '2017-10-01', '2017-10-26'),
(3, 1, 30, '2018-01-07', '2018-01-21'),
(4, 3, 15, '2017-12-03', '2017-12-11'),
(5, 2, 25, '2017-11-06', '2017-11-23'),
(6, 5, 28, '2018-01-02', '2018-01-10'),
(7, 6, 29, '2017-12-13', '2018-01-09'),
(8, 9, 21, '2017-11-19', '2017-12-12'),
(9, 2, 10, '2018-01-05', '2018-01-19'),
(10, 3, 17, '2017-11-13', '2017-12-03');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `czytelnicy`
--
ALTER TABLE `czytelnicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `inf03_2024_01_04_terminarz`
--
DROP DATABASE IF EXISTS `inf03_2024_01_04_terminarz`;
CREATE DATABASE IF NOT EXISTS `inf03_2024_01_04_terminarz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2024_01_04_terminarz`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadania`
--

DROP TABLE IF EXISTS `zadania`;
CREATE TABLE `zadania` (
  `id` int(10) UNSIGNED NOT NULL,
  `dataZadania` date DEFAULT NULL,
  `wpis` text DEFAULT NULL,
  `miesiac` text DEFAULT NULL,
  `rok` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zadania`
--

INSERT INTO `zadania` VALUES
(1, '2020-07-01', 'Projekt z programowania', 'lipiec', 2020),
(2, '2020-07-02', 'Projekt z programowania', 'lipiec', 2020),
(3, '2020-07-03', '', 'lipiec', 2020),
(4, '2020-07-04', '', 'lipiec', 2020),
(5, '2020-07-05', '', 'lipiec', 2020),
(6, '2020-07-06', '', 'lipiec', 2020),
(7, '2020-07-07', 'Weterynarz - Brutus', 'lipiec', 2020),
(8, '2020-07-08', '', 'lipiec', 2020),
(9, '2020-07-09', '', 'lipiec', 2020),
(10, '2020-07-10', 'Szczepienie', 'lipiec', 2020),
(11, '2020-07-11', '', 'lipiec', 2020),
(12, '2020-07-12', '', 'lipiec', 2020),
(13, '2020-07-13', '', 'lipiec', 2020),
(14, '2020-07-14', '', 'lipiec', 2020),
(15, '2020-07-15', '', 'lipiec', 2020),
(16, '2020-07-16', '', 'lipiec', 2020),
(17, '2020-07-17', '', 'lipiec', 2020),
(18, '2020-07-18', 'Wycieczka nad morze', 'lipiec', 2020),
(19, '2020-07-19', 'Mielno', 'lipiec', 2020),
(20, '2020-07-20', 'Mielno', 'lipiec', 2020),
(21, '2020-07-21', 'Mielno', 'lipiec', 2020),
(22, '2020-07-22', 'Mielno', 'lipiec', 2020),
(23, '2020-07-23', 'Mielno', 'lipiec', 2020),
(24, '2020-07-24', 'Mielno', 'lipiec', 2020),
(25, '2020-07-25', '', 'lipiec', 2020),
(26, '2020-07-26', '', 'lipiec', 2020),
(27, '2020-07-27', '', 'lipiec', 2020),
(28, '2020-07-28', '', 'lipiec', 2020),
(29, '2020-07-29', 'Weterynarz - Brutus', 'lipiec', 2020),
(30, '2020-07-30', 'Warszawa', 'lipiec', 2020),
(31, '2020-07-31', 'Warszawa', 'lipiec', 2020),
(32, '2020-08-01', 'Remont', 'sierpien', 2020),
(33, '2020-08-02', 'Remont', 'sierpien', 2020),
(34, '2020-08-03', 'Remont', 'sierpien', 2020),
(35, '2020-08-04', 'Remont', 'sierpien', 2020),
(36, '2020-08-05', '', 'sierpien', 2020),
(37, '2020-08-06', '', 'sierpien', 2020),
(38, '2020-08-07', 'Rower', 'sierpien', 2020),
(39, '2020-08-08', 'Rower', 'sierpien', 2020),
(40, '2020-08-09', '', 'sierpien', 2020),
(41, '2020-08-10', '', 'sierpien', 2020),
(42, '2020-08-11', 'Weterynarz - Dika', 'sierpien', 2020),
(43, '2020-08-12', '', 'sierpien', 2020),
(44, '2020-08-13', 'Sopot', 'sierpien', 2020),
(45, '2020-08-14', 'Sopot', 'sierpien', 2020),
(46, '2020-08-15', '', 'sierpien', 2020),
(47, '2020-08-16', '', 'sierpien', 2020),
(48, '2020-08-17', 'Wyjazd na wakacje!', 'sierpien', 2020),
(49, '2020-08-18', 'Tatry', 'sierpien', 2020),
(50, '2020-08-19', 'Tatry', 'sierpien', 2020),
(51, '2020-08-20', 'Tatry', 'sierpien', 2020),
(52, '2020-08-21', 'Tatry', 'sierpien', 2020),
(53, '2020-08-22', 'Tatry', 'sierpien', 2020),
(54, '2020-08-23', 'Tatry', 'sierpien', 2020),
(55, '2020-08-24', 'Tatry', 'sierpien', 2020),
(56, '2020-08-25', '', 'sierpien', 2020),
(57, '2020-08-26', '', 'sierpien', 2020),
(58, '2020-08-27', '', 'sierpien', 2020),
(59, '2020-08-28', '', 'sierpien', 2020),
(60, '2020-08-29', 'Weterynarz - Dika', 'sierpien', 2020),
(61, '2020-08-30', '', 'sierpien', 2020),
(62, '2020-08-31', '', 'sierpien', 2020),
(63, '2020-11-01', NULL, 'listopad', 2020);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zadania`
--
ALTER TABLE `zadania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zadania`
--
ALTER TABLE `zadania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Database: `inf03_2024_01_05_salon`
--
DROP DATABASE IF EXISTS `inf03_2024_01_05_salon`;
CREATE DATABASE IF NOT EXISTS `inf03_2024_01_05_salon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inf03_2024_01_05_salon`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadra`
--

DROP TABLE IF EXISTS `kadra`;
CREATE TABLE `kadra` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `stanowisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kadra`
--

INSERT INTO `kadra` VALUES
(1, 'Anna', 'Kowalska', 'dietetyk'),
(2, 'Jolanta', 'Szczesny', 'kosmetolog'),
(3, 'Aleksandra', 'Wilk', 'stylista'),
(4, 'Katarzyna', 'Nowak', 'fryzjer'),
(5, 'Piotr', 'Bartczak', 'fizjoterapeuta');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

DROP TABLE IF EXISTS `matematycy`;
CREATE TABLE `matematycy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `rok_urodzenia` int(10) DEFAULT NULL,
  `liczba_publikacji` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matematycy`
--

INSERT INTO `matematycy` VALUES
(1, 'Stefan', 'Banach', 1892, 20),
(2, 'Leonardo', 'Fibonacci', 1175, 15),
(3, 'Augustin', 'Cauchy', 1789, 10),
(4, 'Leonard', 'Euler', 1707, 30),
(5, 'Gotfried', 'Leibniz', 1646, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

DROP TABLE IF EXISTS `typy`;
CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `typy`
--

INSERT INTO `typy` VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

DROP TABLE IF EXISTS `uslugi`;
CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uslugi`
--

INSERT INTO `uslugi` VALUES
(1, 2, 1, 'Peeling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

DROP TABLE IF EXISTS `wyniki`;
CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kadra`
--
ALTER TABLE `kadra`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kadra`
--
ALTER TABLE `kadra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
