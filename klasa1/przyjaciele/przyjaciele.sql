-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2026, 12:00
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `przyjaciele`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyjaciele`
--

CREATE TABLE `przyjaciele` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `plec` tinyint(1) DEFAULT 0,
  `wiek` int(11) DEFAULT NULL,
  `zarobki` int(11) DEFAULT NULL,
  `kolor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `przyjaciele`
--

INSERT INTO `przyjaciele` (`id`, `imie`, `plec`, `wiek`, `zarobki`, `kolor`) VALUES
(1, 'Janek', 1, 19, 2000, '0'),
(2, 'Ania', 0, 29, 5000, '0'),
(3, 'Krysia', 0, 25, 3000, '0'),
(4, 'Marek', 1, 25, 3500, '0'),
(5, 'Krzysztof', 1, 32, 1400, '0'),
(6, 'Marysia', 0, 21, 1200, '0');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `przyjaciele`
--
ALTER TABLE `przyjaciele`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `przyjaciele`
--
ALTER TABLE `przyjaciele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
