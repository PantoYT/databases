-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 10:29 PM
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
-- Database: `klasa1_firma`
--
DROP DATABASE IF EXISTS `klasa1_firma`;
CREATE DATABASE IF NOT EXISTS `klasa1_firma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_firma`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

DROP TABLE IF EXISTS `dostawcy`;
CREATE TABLE `dostawcy` (
  `id_dostaw` char(4) NOT NULL,
  `dostawca` char(30) DEFAULT NULL,
  `adres1` char(30) DEFAULT NULL,
  `adres2` char(30) DEFAULT NULL,
  `miasto` char(20) DEFAULT NULL,
  `stan` char(2) DEFAULT NULL,
  `kod` char(10) DEFAULT NULL,
  `telefon` char(13) DEFAULT NULL,
  `kontakt` char(30) DEFAULT NULL,
  `tel_wewn` char(4) DEFAULT NULL,
  `warunki` char(10) DEFAULT NULL,
  `rabat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dostawcy`
--

INSERT INTO `dostawcy` VALUES
('1000', 'DYNAMITE INDUSTRIES', '54 N. MAIN', NULL, 'Sacramento', 'CA', '46002', '(916)555-3000', 'P. MORGAN, SR.', NULL, 'NET 15', 0),
('1005', 'ACME ENTERPRISES', '1424 LAKESIDE', 'SUITE 1200', 'Modesto', 'AZ', '96002', '(209)555-1000', 'KIRK PETERS', '909', 'NET 30', 0),
('2000', 'DEPENDO INDUSTRIES', '33 S.W. SWINGLE BLVD.', 'SUITE 4403', 'Sacramento', 'CA', '46004', '(916)555-5400', 'T.D. KIMBLE', '0300', 'NET 30', 0),
('2100', 'EXECUTIVE ENTERPRISES', '2204 MOONGLOW LANE', 'SUITE 4055', 'San Francisco', 'AZ', '55032', '(415)555-2000', 'JIM SMITHSON', '1500', 'NET 30', 0),
('3000', 'SOUTHERN SALES LTD.', '9904 ELM STREET', NULL, 'San Diego', 'CA', '40444', '(619)555-5100', 'TIM DAVIDSON', '0200', 'NET 30', 0),
('5000', 'KIRK ENTERPRISES', '2001 JUPITER LANE', 'SUITE 1701', 'San Francisco', 'CA', '55032', '(415)555-7000', 'KIRK BARRETT', '0007', 'NET 30', 5),
('5500', 'FASTWARE FURNITURE MFG.', '6602 CROW STREET', 'SUITE 331', 'San Diego', 'AZ', '40347', '(619)555-4400', 'DAVID SOUP', '0300', 'NET 15', 5),
('8000', 'HARVARD FURNITURE MFG.', '47663 TRAMWAY', 'SUITE 4', 'San Diego', 'CA', '40345', '(619)555-5620', 'DAVID SAMSON', '4501', 'NET 15', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

DROP TABLE IF EXISTS `klient`;
CREATE TABLE `klient` (
  `id_klienta` char(6) NOT NULL,
  `klient` char(30) DEFAULT NULL,
  `nazwisko` char(15) DEFAULT NULL,
  `imie` char(15) DEFAULT NULL,
  `adres` char(30) DEFAULT NULL,
  `miasto` char(20) DEFAULT NULL,
  `stan` char(2) DEFAULT NULL,
  `kod` char(10) DEFAULT NULL,
  `telefon` char(13) DEFAULT NULL,
  `transakcje` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` VALUES
('A00001', 'WRIGHT & SONS, LTD.', 'Wright', 'Fred', '3232 48th St.', 'New York', 'NY', '10092', '(212)555-7474', NULL),
('A00005', 'SMITH ASSOCIATES', 'Yamada', 'George J.', '7500 Santa Monica Blvd.', 'Los Angeles', 'CA', '90055-1319', '(213)555-4300', NULL),
('A10025', 'PUBLIC EVENTS', 'Beckman', 'Riener', '332 S. Michigan Ave.', 'Pasadena', 'CA', '91125-0001', '(818)555-3842', NULL),
('B12000', 'VOLTAGE IMPORTS', 'Maxwell', 'Florence', '8506 Habana Ave.', 'Tampa', 'FL', '33614', '(813)555-5522', NULL),
('C00001', 'L. G. BLUM & ASSOCIATES', 'Martinez', 'Ric', '4818 Allendale Ave.', 'Santa Fe', 'NM', '87501', '(505)555-3232', NULL),
('C00002', 'TIMMONS & CASEY, LTD.', 'Timmons', 'Gene', '310-2090 Comex St.', 'Vancouver', 'BC', 'V6G 1E8', '(604)555-7644', NULL),
('L00001', 'BAILEY & BAILEY', 'Bailey', 'Sandra', '5132 Livingston Dr.', 'Long Beach', 'CA', '90801', '(213)555-1104', NULL),
('L00002', 'SAWYER LONGFELLOWS', 'Peters', 'Kimberly', '12300 N. Elm St.', 'Dallas', 'TX', '75277', '(214)555-5603', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `nazwisko` char(15) NOT NULL,
  `imie` char(10) NOT NULL,
  `inicjal` char(1) DEFAULT NULL,
  `dzial` char(15) DEFAULT NULL,
  `id_pracown` char(11) NOT NULL,
  `telefon` char(13) DEFAULT NULL,
  `specjaln` char(11) DEFAULT NULL,
  `uwagi` char(40) DEFAULT NULL,
  `nagrody` char(15) DEFAULT NULL,
  `data_zatr` date DEFAULT NULL,
  `stopien` char(3) DEFAULT NULL,
  `zwolniony` char(1) DEFAULT NULL,
  `pelny_etat` char(1) DEFAULT NULL,
  `wydajnosc` double DEFAULT NULL,
  `wskaznik` double DEFAULT NULL,
  `pensja` double DEFAULT NULL,
  `stanowisko` char(15) DEFAULT NULL,
  `staz` double DEFAULT NULL,
  `adres1` char(20) DEFAULT NULL,
  `adres2` char(20) DEFAULT NULL,
  `miasto` char(14) DEFAULT NULL,
  `stan` char(2) DEFAULT NULL,
  `kod` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` VALUES
('Montovan', 'John', 'U', 'ZBYT', '001-02-0003', '(617)555-3403', 'HANDEL', NULL, NULL, '1986-09-09', NULL, '0', '0', 5, 0, 2770, 'SPRZEDAWCA', 5, '1034 Lorraine St.', NULL, 'Boston', 'MA', '02201'),
('Loftus', 'Kathy', 'I', 'ZBYT', '001-02-3333', '(615)555-6331', 'HANDEL', NULL, NULL, '1985-05-05', NULL, '1', '1', 5, 0, 2770, 'SPRZEDAWCA', 3, '40555 Brentwood', NULL, 'Nashville', 'TN', '37201'),
('London', 'Eric', 'S', 'ZBYT', '001-20-3033', '(612)555-4336', 'HANDEL', NULL, NULL, '1985-06-12', NULL, '0', '1', 5, 20, 2770, 'SPRZEDAWCA', 1, '2015 Edmonton', 'Apt 120', 'Minneapolis', 'MN', '55415'),
('Drendon', 'Kelly', 'A', 'ZBYT', '001-22-3333', '(805)555-8674', 'HANDEL', NULL, NULL, '1981-08-08', NULL, '0', '0', 5, 15, 2770, 'SPRZEDAWCA', 3, '12508 Robin Hood Ln.', 'Apt. 3303', 'Santa Barbara', 'CA', '93103'),
('Lisbonn', 'Rick', 'R', 'ZBYT', '001-22-3334', '(609)555-3344', 'HANDEL', NULL, NULL, '1986-12-13', NULL, '0', '0', 5, 20, 2770, 'SPRZEDAWCA', 3, '1550 Keystone St.', NULL, 'Atlantic City', 'NJ', '08401'),
('Kotky', 'Linda', 'J', 'ZBYT', '010-20-0333', '(716)555-1100', 'HANDEL', NULL, NULL, '1985-03-05', NULL, '0', '0', 5, 0, 2770, 'SPRZEDAWCA', 4, '6300 Canoga Ave.', NULL, 'Buffalo', 'NY', '14204'),
('Long', 'Chuck', 'E', 'ZBYT', '100-22-3333', '(602)555-6630', 'NADZOR', NULL, NULL, '1983-08-18', NULL, '1', '1', 4, 0, 3180, 'SPRZEDAWCA', 3, '40677 Misty Isle Dr.', NULL, 'Tucson', 'AZ', '85745'),
('Larson', 'Jill', 'O', 'ZBYT', '101-02-3303', '(402)555-9974', 'HANDEL', NULL, NULL, '1986-02-01', NULL, '0', '0', 5, 0, 2770, 'SPRZEDAWCA', 1, '13044 Etiwanda', 'Suite 3', 'Lincoln', 'NE', '68506'),
('Lucas', 'John', 'M', 'ZBYT', '101-20-3003', '(919)555-5842', 'HANDEL', NULL, NULL, '1982-08-09', NULL, '0', '0', 5, 0, 2770, 'SPRZEDAWCA', 2, '1240 Victory Blvd.', NULL, 'Durham', 'NC', '27701'),
('Kaufman', 'Lisa', 'C', 'ZBYT', '110-02-3030', '(312)555-0300', 'HANDEL', NULL, NULL, '1983-11-01', NULL, '1', '1', 5, 0, 2350, 'SPRZEDAWCA', 4, '1960 Lindley Ave.', NULL, 'Chicago', 'IL', '60680'),
('Keegan', 'Keith', 'S', 'ZBYT', '110-20-0303', '(213)555-5922', 'HANDEL', NULL, NULL, '1981-09-11', 'RD', '1', '1', 5, 0, 3180, 'SPRZEDAWCA', 3, '6045 Vineland Blvd.', 'Apt. 1201', 'Hollywood', 'CA', '90028'),
('Sanders', 'Kathy', 'O', 'ZBYT', '111-11-2222', '(206)555-5800', 'NADZOR', NULL, NULL, '1986-03-23', NULL, '1', '1', 6, 5, 4850, 'DYREKTOR', 9, '1202 N. Pacific Ave.', NULL, 'Seattle', 'WA', '98102'),
('Michaels', 'Ellen', 'V', 'ZBYT', '111-11-3333', '(215)555-0912', 'NADZOR', NULL, NULL, '1986-03-17', NULL, '1', '1', 4, 0, 3180, 'SPRZEDAWCA', 4, '18088 Westbrook', 'Suite 100', 'Philadelphia', 'PA', '19104'),
('Orlando', 'John', 'S', 'ZBYT', '111-22-3333', '(305)555-7647', 'HANDEL', NULL, NULL, '1986-04-24', NULL, '1', '1', 5, 0, 2930, 'SPRZEDAWCA', 6, '899 Kenwood St.', NULL, 'N.Bay Village', 'FL', '33141'),
('Eivera', 'Harry', 'E', 'ADMINISTRACJA', '111-22-3777', '(213)555-3232', 'ZARZADZANIE', NULL, NULL, '1982-10-10', NULL, '1', '1', 2, 0, 980, 'URZEDNIK', 3, '7010 Balcom Ave.', NULL, 'El Segundo', 'CA', '90245'),
('Egan', 'Michelle', 'P', 'ZBYT', '111-22-5555', '(303)555-7337', 'HANDEL', NULL, NULL, '1981-07-07', NULL, '1', '1', 5, 25, 2770, 'SPRZEDAWCA', 3, '5670 Colorado Blvd.', NULL, 'Denver', 'CO', '80249'),
('Gilbert', 'Chuck', 'H', 'ZBYT', '111-22-6666', '(202)555-9626', 'HANDEL', NULL, NULL, '1984-04-05', NULL, '1', '1', 5, 25, 2770, 'SPRZEDAWCA', 3, '7619 Kraft Dr.', NULL, 'Washington', 'DC', '20002'),
('Hart', 'Paul', 'C', 'ZBYT', '111-22-7777', '(718)555-0059', 'HANDEL', NULL, NULL, '1982-03-02', 'RD', '0', '0', 5, 20, 2770, 'SPRZEDAWCA', 3, '8301 Sale Street', 'Apt. 230', 'Brooklyn', 'NY', '11222'),
('Johnson', 'Jay', 'O', 'ZBYT', '111-22-8888', '(502)555-6784', 'HANDEL', NULL, NULL, '1983-06-19', 'ZAW', '1', '1', 5, 25, 2770, 'SPRZEDAWCA', 7, '14234 Riverside Dr.', NULL, 'Louisville', 'KY', '40202'),
('Anderson', 'Debbie', 'I', 'ADMINISTRACJA', '118-72-3777', '(415)555-3489', 'ZARZADZANIE', NULL, NULL, '1986-04-04', NULL, '1', '1', 2, 0, 1100, 'URZEDNIK', 2, '951 Knob Hill Blvd.', 'Apt. 101', 'San Francisco', 'CA', '94123'),
('Young', 'Sandy', 'E', 'ZBYT', '122-33-4444', '(802)555-8777', 'NADZOR', NULL, NULL, '1986-04-24', NULL, '1', '1', 4, 0, 3180, 'SPRZEDAWCA', 2, '14097 Gilmore St.', NULL, 'Burlington', 'VT', '05401'),
('Peterson', 'John', 'F', 'ZBYT', '134-44-5555', '(213)555-3358', 'HANDEL', NULL, NULL, '1986-05-15', NULL, '0', '0', 5, 0, 2770, 'SPRZEDAWCA', 2, '10711 Highland Ave.', NULL, 'Los Angeles', 'CA', '90044'),
('Beman', 'Sandy', 'J', 'ADMINISTRACJA', '151-22-7773', '(213)555-0554', 'ZARZADZANIE', NULL, NULL, '1984-06-06', 'RD', '1', '1', 3, 0, 1110, 'SEKRETARKA', 1, '440 Chase Blvd.', NULL, 'Beverly Hills', 'CA', '90213'),
('Arlich', 'Kim', 'Y', 'ZBYT', '437-22-6788', '(603)555-8773', 'HANDEL', NULL, NULL, '1985-03-06', NULL, '1', '1', 5, 20, 3180, 'SPRZEDAWCA', 3, '10564 Ventura Blvd.', NULL, 'Manchester', 'NH', '03108'),
('Campbell', 'Linda', 'H', 'ZBYT', '441-22-3333', '(602)555-1974', 'HANDEL', NULL, NULL, '1986-12-01', NULL, '1', '0', 5, 25, 2770, 'SPRZEDAWCA', 3, '6700 Tyler Street', NULL, 'Paragould', 'AZ', '86334'),
('Plimpton', 'Daniel', 'M', 'ZBYT', '444-22-3333', '(803)555-7150', 'HANDEL', NULL, NULL, '1982-11-10', 'RE', '0', '0', 6, 5, 5480, 'DYREKTOR', 4, '5934 Ocean Blvd.', 'Apt. 303', 'Charleston', 'SC', '29401'),
('Gelson', 'George', 'G', 'ADMINISTRACJA', '445-22-3555', '(503)555-2323', 'ZARZADZANIE', NULL, 'ZOTA, BRZOWA', '1980-07-18', 'MGR', '1', '0', 8, 0, 4770, 'VICE-PREZES', 3, 'P.O. Box 6045', NULL, 'Eugene', 'OR', '97401'),
('Garnett', 'Lena', 'D', 'ADMINISTRACJA', '461-22-5553', '(702)555-9121', 'ZARZADZANIE', NULL, NULL, '1983-03-05', NULL, '1', '1', 2, 0, 1120, 'URZEDNIK', 3, '520 S. 8th St.', NULL, 'Reno', 'NV', '89504'),
('Cohen', 'Larry', 'A', 'ZBYT', '551-22-3333', '(217)555-4204', 'HANDEL', NULL, NULL, '1985-09-08', 'RD', '1', '1', 5, 25, 2770, 'SPRZEDAWCA', 3, '908 Glen Oaks Ave.', NULL, 'Decatur', 'IL', '62526'),
('Pope', 'Jan', 'L', 'ZBYT', '555-22-3333', '(717)555-2313', 'HANDEL', NULL, NULL, '1983-10-13', NULL, '1', '1', 5, 22, 2770, 'SPRZEDAWCA', 1, '101 Pierce St.', NULL, 'Harrisburg', 'PA', '17101'),
('Goreman', 'Vicky', 'J', 'ADMINISTRACJA', '647-22-3433', '(602)555-8801', 'ZARZADZANIE', NULL, NULL, '1980-11-01', 'MGR', '1', '1', 7, 0, 5020, 'VICE-PREZES', 1, '203 E. 3rd St. South', NULL, 'Mesa', 'AZ', '85201'),
('Collins', 'Sara', 'H', 'ZBYT', '661-22-3333', '(503)555-0953', 'HANDEL', NULL, NULL, '1985-04-13', NULL, '1', '0', 5, 20, 2770, 'SPRZEDAWCA', 3, '303 W. Milford St.', NULL, 'Portland', 'OR', '97219'),
('Rizzo', 'Ann', 'B', 'ZBYT', '666-22-3333', '(202)555-3810', 'HANDEL', NULL, NULL, '1985-12-19', NULL, '1', '1', 5, 0, 2770, 'SPRZEDAWCA', 7, '20984 Leadway Ave.', NULL, 'Washington', 'DC', '20002'),
('Dickerson', 'Lori', 'E', 'ADMINISTRACJA', '677-82-3333', '(602)555-7100', 'ZARZADZANIE', NULL, 'BRZOWA', '1985-05-05', 'ZAW', '1', '1', 7, 0, 4180, 'DYREKTOR', 3, '14565 Collins Ave.', NULL, 'Phoenix', 'AZ', '85041'),
('Adams', 'Nathan', 'K', 'ZBYT', '703-22-3333', '(505)555-4556', 'HANDEL', NULL, NULL, '1986-02-02', 'ZAW', '1', '1', 5, 20, 2770, 'SPRZEDAWCA', 5, '980 Sarah Street', 'Apt. 4302', 'Santa Fe', 'NM', '87501'),
('Daniels', 'Dominique', 'F', 'ZBYT', '771-22-3333', '(609)555-0911', 'HANDEL', NULL, 'ZOTA', '1984-11-11', 'RD', '1', '1', 5, 15, 2770, 'SPRZEDAWCA', 3, '5601 Grand Ave.', NULL, 'Trenton', 'NJ', '08601'),
('Rodan', 'Bill', 'H', 'ZBYT', '777-22-3333', '(413)555-0571', 'HANDEL', NULL, NULL, '1986-05-28', NULL, '1', '1', 5, 17, 2770, 'SPRZEDAWCA', 5, '18097 Bryant Blvd.', NULL, 'Northampton', 'MA', '01060'),
('Hamby', 'Mary', 'C', 'ADMINISTRACJA', '861-22-3333', '(713)555-0059', 'ZARZADZANIE', NULL, NULL, '1985-02-13', NULL, '1', '1', 2, 0, 1060, 'URZEDNIK', 5, '345 Sherman St.', NULL, 'Houston', 'TX', '77095'),
('Dean', 'Michelle', 'W', 'ADMINISTRACJA', '861-28-3983', '(301)555-3193', 'ZARZADZANIE', NULL, 'SREBRNA', '1983-04-12', NULL, '1', '1', 3, 0, 1310, 'SEKRETARKA', 3, '854 Rushmore Ave.', NULL, 'Baltimore', 'MD', '21201'),
('Halasa', 'Wojciech', NULL, NULL, '88-888-8888', NULL, NULL, NULL, NULL, '2025-11-25', NULL, '1', NULL, NULL, NULL, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('DeBello', 'Todd', 'S', 'ZBYT', '881-22-3333', '(504)555-3737', 'HANDEL', NULL, NULL, '1983-02-02', 'ZAW', '1', '1', 5, 20, 2770, 'SPRZEDAWCA', 3, '4564 Benedict Canyon', NULL, 'New Orleans', 'LA', '70175'),
('Skye', 'Jim', 'D', 'ZBYT', '888-22-3333', '(401)555-3131', 'HANDEL', NULL, NULL, '1983-02-22', NULL, '0', '0', 5, 10, 2770, 'SPRZEDAWCA', 4, '6043 White Oak Blvd.', 'Apt. 501', 'Providence', 'RI', '02903'),
('Keegan', 'Marilyn', 'D', 'ADMINISTRACJA', '897-22-3333', '(213)555-5922', 'ZARZADZANIE', NULL, NULL, '1983-03-18', NULL, '1', '1', 3, 0, 1480, 'SEKRETARKA', 5, '6045 Vineland Blvd.', 'Apt. 1201', 'Hollywood', 'CA', '90028'),
('Bicksby', 'Hank', 'F', 'ZBYT', '899-02-3333', '(602)555-1278', 'HANDEL', NULL, NULL, '1985-11-01', 'RD', '1', '0', 5, 20, 2770, 'SPRZEDAWCA', 4.5, '4101 Peonia Road', NULL, 'Flagstaff', 'AZ', '86001'),
('Newman', 'Robert', 'A', 'ADMINISTRACJA', '971-22-3333', '(214)555-0919', 'ZARZADZANIE', NULL, NULL, '1981-10-12', 'MGR', '1', '1', 6, 0, 4430, 'DYREKTOR', 7, '2310 Lacewood Drive', NULL, 'Garland', 'TX', '75044'),
('Zambini', 'Rick', 'J', 'ADMINISTRACJA', '978-22-4444', '(208)555-1945', 'ZARZADZANIE', NULL, NULL, '1980-01-01', 'MGR', '1', '1', 9, 0, 6730, 'PREZES', 13, '108 Prairie Lane', NULL, 'Idaho Falls', 'ID', '83403'),
('Nawicki', 'Andrzej', NULL, NULL, '99-999-9999', NULL, NULL, NULL, NULL, '1985-05-03', NULL, '1', NULL, NULL, NULL, 4770, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Drasin', 'Pedro', 'E', 'ZBYT', '991-22-3333', '(203)555-1522', 'HANDEL', NULL, NULL, '1982-04-04', NULL, '0', '0', 5, 20, 2770, 'SPRZEDAWCA', 3, '12804 Sunburst Ave.', NULL, 'Hartford', 'CT', '06103'),
('Youngblood', 'Dick', 'P', 'ZBYT', '999-22-3333', '(513)555-3228', 'HANDEL', NULL, NULL, '1982-11-25', NULL, '0', '0', 5, 5, 2770, 'SPRZEDAWCA', 3, '7100 Fulton Place', NULL, 'Cincinnati', 'OH', '45214');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towary`
--

DROP TABLE IF EXISTS `towary`;
CREATE TABLE `towary` (
  `id_towaru` char(10) NOT NULL,
  `data_zamow` date DEFAULT NULL,
  `nazwa` char(30) DEFAULT NULL,
  `opis` char(30) DEFAULT NULL,
  `czas_realizacji` double DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `il_do_zam` double DEFAULT NULL,
  `il_na_stan` double DEFAULT NULL,
  `id_dostaw` char(4) DEFAULT NULL,
  `nie_kontyn` char(1) DEFAULT NULL,
  `koszt` double DEFAULT NULL,
  `komentarz` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `towary`
--

INSERT INTO `towary` VALUES
('C-111-6000', NULL, 'KRZESLO BIUROWE', 'SKORA-BRZ-WYSOKIE OPARCIE', 45, 2000, 3, 5, '1000', '0', 1200, NULL),
('C-111-6015', NULL, 'SOFA-1.80 m', 'WELWET-SZARA-FRANCUSKA', 45, 1250, 1, 3, '1005', '0', 650, NULL),
('C-111-6045', NULL, 'SOFA-1.80 m', 'WELWET-NIEBIESKA-FRANCUSKA', 45, 1400, 1, 1, '1005', '0', 1000, NULL),
('C-111-8000', NULL, 'SOFA-2.40 m', 'SKORA-BRZ-WYSOKIE OPARCIE', 45, 2300, 1, 2, '1000', '0', 1500, NULL),
('C-111-8045', NULL, 'SOFA-2.40 m', 'WELWET-NIEBIESKA-FRANCUSKA', 45, 1500, 1, 1, '1005', '1', 1200, NULL),
('C-222-1000', NULL, 'KRZESLO BIUROWE', 'SKORA-BRZ-WYSOKIE OPARCIE', 60, 1750, 2, 2, '2000', '0', 1250, NULL),
('C-222-1001', NULL, 'KRZESLO BIUROWE', 'SKORA-BRZ', 60, 1750, 2, 4, '2000', '0', 1000, NULL),
('C-222-2000', NULL, 'KRZESLO BIUROWE', 'PLASTIK-CZARNE-WYSOKIE OPARCIE', 60, 1300, 2, 2, '2100', '0', 900, NULL),
('C-222-2010', NULL, 'KRZESLO BIUROWE', 'PLASTIK-BRZ-WYSOKIE OPARCIE', 60, 1300, 2, 3, '2100', '0', 900, NULL),
('C-222-2020', NULL, 'KRZESLO BIUROWE', 'PLASTIK-SZARE-WYSOKIE OPARCIE', 60, 1300, 2, 1, '2100', '0', 900, NULL),
('C-222-3000', NULL, 'KRZESLO', 'PLASTIK-CZARNE', 60, 500, 4, 4, '2100', '0', 350, NULL),
('C-222-3010', NULL, 'KRZESLO', 'PLASTIK-BRZ', 60, 500, 4, 5, '2100', '0', 350, NULL),
('C-222-3020', NULL, 'KRZESLO', 'PLASTIK-SZARE', 60, 500, 4, 2, '2100', '0', 350, NULL),
('C-300-2020', NULL, 'STOLIK', 'DREWNO-TEKOWE-2 POLKI', 45, 250, 4, 5, '8000', '0', 125, NULL),
('C-300-2040', NULL, 'BIBLIOTECZKA', 'DREWNO-DAB-2 POLKI', 45, 325, 4, 7, '8000', '0', 175, NULL),
('C-300-4000', NULL, 'BIBLIOTECZKA', 'DREWNO-DAB-4 POLKI', 45, 550, 4, 12, '8000', '0', 350, NULL),
('C-300-4010', NULL, 'BIBLIOTECZKA', 'DREWNO-TEKOWE-4 POLKI', 45, 500, 4, 10, '8000', '0', 300, NULL),
('C-400-2060', NULL, 'STOLIK', 'DREWNO-DAB-30 X 60 CM', 45, 375, 12, 8, '3000', '0', 250, NULL),
('C-400-2080', NULL, 'STOLIK', 'SZKLO/MOSIADZ-30 X 60 CM', 45, 250, 12, 4, '3000', '0', 175, NULL),
('C-400-5000', NULL, 'STOLIK DO KAWY', 'SZKLO/MOSIADZ - 0.5 M2-OWAL', 30, 875, 4, 1, '3000', '0', 500, NULL),
('C-400-5020', NULL, 'STOLIK DO KAWY', 'SZKLO/MOSIADZ-0.5 M2-PROSTOKAT', 30, 85, 4, 3, '3000', '0', 500, NULL),
('C-400-5050', NULL, 'STOLIK DO KAWY', 'DREWNO-0.5 M2-PROSTOKAT', 45, 875, 4, 5, '3000', '0', 650, NULL),
('C-500-6000', NULL, 'LAMPA STOJACA', 'MOSIADZ-0.55 M2-ART DECO', 45, 250, 2, 2, '5000', '0', 150, NULL),
('C-500-6050', NULL, 'LAMPA STOJACA', 'MOSIADZ-0.55 M2-ANGIELSKI', 45, 275, 2, 1, '5000', '0', 165, NULL),
('C-600-5000', NULL, 'BIURKO PRACOWNICZE-1.50 M', 'DREWNO-DB-FANTAZYJNY', 60, 2250, 4, 3, '5500', '0', 1500, NULL),
('C-600-5050', NULL, 'BIURKO SEKRETARKI -1.50 M', 'DREWNO-DB-FANTAZYJNY', 60, 1100, 4, 6, '5500', '0', 850, NULL),
('C-600-6020', NULL, 'BIURKO PRACOWNICZE-1.80 M', 'DREWNO-DB-FANTAZYJNY', 60, 2450, 4, 4, '5500', '0', 1750, NULL),
('C-600-6050', NULL, 'BIURKO SEKRETARKI -1.80 M', 'DREWNO-DB-FANTAZYJNY', 60, 1350, 4, 4, '5500', '0', 975, NULL),
('C-700-2020', NULL, 'SZAFKA NA DOKUMENTY-2 SZUFLADY', 'METAL-BRAZ', 60, 100, 2, 4, '5500', '0', 75, NULL),
('C-700-2030', NULL, 'SZAFKA NA DOKUMENTY-2 SZUFLADY', 'METAL-CZARNA', 60, 100, 2, 5, '5500', '0', 75, NULL),
('C-700-4000', NULL, 'SZAFKA NA DOKUMENTY-4 SZUFLADY', 'DREWNO-DAB-FANTAZYJNY', 60, 400, 2, 10, '5500', '0', 250, NULL),
('C-700-4020', NULL, 'SZAFKA NA DOKUMENTY-4 SZUFLADY', 'METAL-BRAZ', 60, 150, 2, 15, '5500', '0', 100, NULL),
('C-700-4030', NULL, 'SZAFKA NA DOKUMENTY-4 SZUFLADY', 'METAL-CZARNY', 60, 150, 2, 20, '5500', '0', 100, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transak`
--

DROP TABLE IF EXISTS `transak`;
CREATE TABLE `transak` (
  `id_klienta` char(6) NOT NULL,
  `data_trans` date DEFAULT NULL,
  `id_towaru` char(10) NOT NULL,
  `ilosc` float(7,2) DEFAULT NULL,
  `nr_zamow` char(5) NOT NULL,
  `uwagi` blob DEFAULT NULL,
  `id_pracown` char(11) NOT NULL,
  `faktura` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transak`
--

INSERT INTO `transak` VALUES
('A00001', '1989-03-10', 'C-111-6000', 1.00, '46088', NULL, '771-22-3333', '0'),
('A00005', '1990-03-05', 'C-111-6000', 5.00, '70010', NULL, '661-22-3333', '0'),
('C00001', '1990-01-10', 'C-111-6015', 1.00, '49030', NULL, '991-22-3333', '0'),
('C00001', '1990-02-11', 'C-111-8000', 10.00, '53002', NULL, '111-22-3333', '1'),
('A00001', '1991-02-16', 'C-222-1000', 5.00, '43002', NULL, '771-22-3333', '1'),
('A00001', '1990-07-24', 'C-222-1000', 5.00, '44444', NULL, '111-22-5555', '0'),
('C00001', '1990-01-28', 'C-222-1000', 7.00, '49567', NULL, '111-22-5555', '0'),
('L00001', '1989-01-29', 'C-222-1000', 4.00, '50226', NULL, '111-22-3333', '0'),
('C00001', '1991-02-11', 'C-222-2000', 2.00, '53002', NULL, '991-22-3333', '1'),
('A00001', '1989-03-04', 'C-222-2010', 3.00, '70005', NULL, '661-22-3333', '0'),
('L00001', '1990-03-01', 'C-222-3000', 1.00, '54331', NULL, '111-22-5555', '0'),
('C00001', '1990-02-02', 'C-300-4010', 1.00, '51043', NULL, '111-22-5555', '1'),
('C00001', '1990-03-02', 'C-300-4010', 5.00, '55501', NULL, '991-22-3333', '0'),
('L00001', '1991-04-11', 'C-300-4010', 1.00, '57050', NULL, '111-22-5555', '0'),
('A00005', '1990-03-02', 'C-500-6050', 15.00, '44084', NULL, '771-22-3333', '0'),
('C00001', '1990-02-12', 'C-700-4030', 5.00, '53143', NULL, '111-22-3333', '1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id_dostaw`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id_pracown`);

--
-- Indeksy dla tabeli `towary`
--
ALTER TABLE `towary`
  ADD PRIMARY KEY (`id_towaru`);

--
-- Indeksy dla tabeli `transak`
--
ALTER TABLE `transak`
  ADD PRIMARY KEY (`id_towaru`,`nr_zamow`);
--
-- Database: `klasa1_magazyn`
--
DROP DATABASE IF EXISTS `klasa1_magazyn`;
CREATE DATABASE IF NOT EXISTS `klasa1_magazyn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_magazyn`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

DROP TABLE IF EXISTS `klient`;
CREATE TABLE `klient` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` VALUES
(1, 'Wojciech', 'Halasa', 'Mediolanska'),
(2, 'Andrzej', 'Mickiewicz', 'Ortopedyska'),
(3, 'Napoleon', 'Bonaparte', 'Mickiewicza');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

DROP TABLE IF EXISTS `towar`;
CREATE TABLE `towar` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `cena` int(11) DEFAULT NULL CHECK (`cena` > 0),
  `ilosc` int(11) DEFAULT 1,
  `kategoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `towar`
--

INSERT INTO `towar` VALUES
(1, 'kot', 500, 10, 'zwierze'),
(2, 'pies', 1500, 3, 'zwierze'),
(3, 'chomik', 50, 300, 'zwierze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_towaru` int(11) DEFAULT NULL,
  `id_klient` int(11) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `wartosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` VALUES
(1, '2025-12-30', 3, 3, 1, 50),
(2, '2025-04-05', 2, 1, 2, 3000),
(3, '2025-10-03', 1, 2, 1, 500);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `towar`
--
ALTER TABLE `towar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_towar` (`id_towaru`),
  ADD KEY `fk_id_klient` (`id_klient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `towar`
--
ALTER TABLE `towar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `fk_id_klient` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id`),
  ADD CONSTRAINT `fk_id_towar` FOREIGN KEY (`id_towaru`) REFERENCES `towar` (`id`);
--
-- Database: `klasa1_pracownicy`
--
DROP DATABASE IF EXISTS `klasa1_pracownicy`;
CREATE DATABASE IF NOT EXISTS `klasa1_pracownicy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_pracownicy`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

DROP TABLE IF EXISTS `pracownik`;
CREATE TABLE `pracownik` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `wynagrodzenie` float NOT NULL DEFAULT 1680,
  `PESEL` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `premia`
--

DROP TABLE IF EXISTS `premia`;
CREATE TABLE `premia` (
  `id` int(11) NOT NULL,
  `id_pracownika` int(11) DEFAULT NULL,
  `wysokosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PESEL` (`PESEL`);

--
-- Indeksy dla tabeli `premia`
--
ALTER TABLE `premia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_pracownika` (`id_pracownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `premia`
--
ALTER TABLE `premia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `premia`
--
ALTER TABLE `premia`
  ADD CONSTRAINT `fk_id_pracownika` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id`);
--
-- Database: `klasa1_samochody`
--
DROP DATABASE IF EXISTS `klasa1_samochody`;
CREATE DATABASE IF NOT EXISTS `klasa1_samochody` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_samochody`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auta`
--

DROP TABLE IF EXISTS `auta`;
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

INSERT INTO `auta` VALUES
(1, 'Fiat', 'Punto', 124150, 2007, 'green', 800),
(2, 'Ford', 'Focus', 250415, 2010, 'yellow', 1528),
(3, 'Ford', 'Fiesta', 88056, 2011, 'green', 2588),
(4, 'Opel', 'Astra', 145001, 2009, 'yellow', 999),
(5, 'Opel', 'Corsa', 185470, 2010, 'red', 1050);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

DROP TABLE IF EXISTS `klienci`;
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

INSERT INTO `klienci` VALUES
(1, 'Andrzej', 'Nowak', 'AFK343456', 'Toszecka 75, 44-100', 'Gliwice', 'm'),
(2, 'Joanna', 'Pastewniak', 'ACN345345', 'Rolna 57, 40-001', 'Katowice', 'k'),
(3, 'Jan', 'Jakubowski', 'ACN112234', 'Rolna 15, 40-001', 'Katowice', 'm'),
(4, 'Anna', 'Mariańska', 'ACF345678', 'Korfantego 13, 40-001', 'Katowice', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

DROP TABLE IF EXISTS `wypozyczenia`;
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

INSERT INTO `wypozyczenia` VALUES
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
--
-- Database: `klasa1_sklep`
--
DROP DATABASE IF EXISTS `klasa1_sklep`;
CREATE DATABASE IF NOT EXISTS `klasa1_sklep` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_sklep`;

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
(1, 'Papiernictwo', 'ul. Boczna 12, 23-355 Bukowina', 'papier'),
(2, 'Art. szkolne', 'ul. Dworcowa 20, 34-565 Warszawa', 'szkola'),
(3, 'Wszystko dla ucznia', 'ul. Towarowa 35, 88-123 Zakopane', 'uczen');

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
-- Database: `klasa1_sklep_muzyczny`
--
DROP DATABASE IF EXISTS `klasa1_sklep_muzyczny`;
CREATE DATABASE IF NOT EXISTS `klasa1_sklep_muzyczny` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_sklep_muzyczny`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `instrumenty`
--

DROP TABLE IF EXISTS `instrumenty`;
CREATE TABLE `instrumenty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `id_kat` int(11) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrumenty`
--

INSERT INTO `instrumenty` VALUES
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

DROP TABLE IF EXISTS `kategorie`;
CREATE TABLE `kategorie` (
  `id_kat` int(11) NOT NULL,
  `nazwa_kat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` VALUES
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

DROP TABLE IF EXISTS `klienci`;
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

INSERT INTO `klienci` VALUES
(1, 'Marian', 'Marianowicz', 1999, 'Warszawa'),
(2, 'Jan', 'Kowalski', 1980, 'Lublin'),
(3, 'Janusz', 'Kopernik', 1967, 'Zamosc'),
(4, 'Karol', 'Nawrocki', 1977, 'Nowy Jork'),
(5, 'Rafael', 'Bonaparte', 1410, 'Paryz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
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

INSERT INTO `zamowienia` VALUES
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
--
-- Database: `klasa1_szkolenia`
--
DROP DATABASE IF EXISTS `klasa1_szkolenia`;
CREATE DATABASE IF NOT EXISTS `klasa1_szkolenia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_szkolenia`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trenerzy`
--

DROP TABLE IF EXISTS `trenerzy`;
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

INSERT INTO `trenerzy` VALUES
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

DROP TABLE IF EXISTS `uczestnicy`;
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

INSERT INTO `uczestnicy` VALUES
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

DROP TABLE IF EXISTS `zajecia`;
CREATE TABLE `zajecia` (
  `id_zajecia` int(11) NOT NULL,
  `rodzaje_zajec` varchar(30) DEFAULT NULL,
  `id_trenera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zajecia`
--

INSERT INTO `zajecia` VALUES
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
--
-- Database: `klasa1_zadanie`
--
DROP DATABASE IF EXISTS `klasa1_zadanie`;
CREATE DATABASE IF NOT EXISTS `klasa1_zadanie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klasa1_zadanie`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

DROP TABLE IF EXISTS `uczen`;
CREATE TABLE `uczen` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `klasa` varchar(5) NOT NULL,
  `wiek` int(11) DEFAULT NULL,
  `srednia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` VALUES
(1, 'Piotr', 'Nowak', 'Id', 17, 3.4),
(2, 'Adam', 'Nowicki', 'Id', 17, 2.5),
(3, 'Anna', 'Kat', 'Id', 19, 3.7),
(4, 'Krzysztof', 'Wolny', 'Id', 18, 3.9);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
