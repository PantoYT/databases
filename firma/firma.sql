-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2025 at 02:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firma`
--

-- --------------------------------------------------------

--
-- Table structure for table `dostawcy`
--

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

INSERT INTO `dostawcy` (`id_dostaw`, `dostawca`, `adres1`, `adres2`, `miasto`, `stan`, `kod`, `telefon`, `kontakt`, `tel_wewn`, `warunki`, `rabat`) VALUES
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
-- Table structure for table `klient`
--

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

INSERT INTO `klient` (`id_klienta`, `klient`, `nazwisko`, `imie`, `adres`, `miasto`, `stan`, `kod`, `telefon`, `transakcje`) VALUES
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
-- Table structure for table `personel`
--

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

INSERT INTO `personel` (`nazwisko`, `imie`, `inicjal`, `dzial`, `id_pracown`, `telefon`, `specjaln`, `uwagi`, `nagrody`, `data_zatr`, `stopien`, `zwolniony`, `pelny_etat`, `wydajnosc`, `wskaznik`, `pensja`, `stanowisko`, `staz`, `adres1`, `adres2`, `miasto`, `stan`, `kod`) VALUES
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
-- Table structure for table `towary`
--

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

INSERT INTO `towary` (`id_towaru`, `data_zamow`, `nazwa`, `opis`, `czas_realizacji`, `cena`, `il_do_zam`, `il_na_stan`, `id_dostaw`, `nie_kontyn`, `koszt`, `komentarz`) VALUES
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
-- Table structure for table `transak`
--

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

INSERT INTO `transak` (`id_klienta`, `data_trans`, `id_towaru`, `ilosc`, `nr_zamow`, `uwagi`, `id_pracown`, `faktura`) VALUES
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
-- Indexes for dumped tables
--

--
-- Indexes for table `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id_dostaw`);

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id_pracown`);

--
-- Indexes for table `towary`
--
ALTER TABLE `towary`
  ADD PRIMARY KEY (`id_towaru`);

--
-- Indexes for table `transak`
--
ALTER TABLE `transak`
  ADD PRIMARY KEY (`id_towaru`,`nr_zamow`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
