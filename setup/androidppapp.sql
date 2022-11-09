-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Wrz 2020, 23:06
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `androidppapp`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `_id` int(8) NOT NULL,
  `int` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`_id`, `int`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee_acc`
--

CREATE TABLE `employee_acc` (
  `_id` int(254) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(9) NOT NULL,
  `city` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `employee_acc`
--

INSERT INTO `employee_acc` (`_id`, `name`, `surname`, `phone`, `city`, `acc_id`) VALUES
(1, 'marcin', 'maj', 666595241, 'kalisz', 2),
(2, 'og', 'gg', 235636963, 'lalisz', 3),
(3, 'Jan', 'Kowalski', 690450800, 'Warszawa', 4),
(4, 'Marcin', 'Majzner', 666595242, 'Kalisz', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee_offert`
--

CREATE TABLE `employee_offert` (
  `_id` int(254) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(9) NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` int(5) NOT NULL,
  `salary` int(9) NOT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(8) NOT NULL,
  `acc_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `employee_offert`
--

INSERT INTO `employee_offert` (`_id`, `title`, `phone`, `email`, `city`, `postcode`, `salary`, `date`, `info`, `cat_id`, `acc_id`) VALUES
(6, 'Douczanie angielskiego', 690450800, 'jan.kowalski@g.com', 'Warszawa', 42200, 50, NULL, 'Witam, chętnie uczę języka angielskiego ', 6, 4),
(7, 'Porządki ogrodowe ', 666595241, 'marcin@g.com', 'Kalisz', 62800, 20, NULL, 'proponuje wszelkie porządki ogrodowe. ', 10, 2),
(10, 'Malowanie powierzchni płaskich ', 235636963, 'og@g.com', 'Kalisz', 62800, 50, '2020-09-27', 'Mam własny sprzęt .', 5, 3),
(11, 'programista java', 666595242, 'majzner.marcin@gmail.com', 'Kalisz', 62800, 40, '2020-09-28', '', 4, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employer_acc`
--

CREATE TABLE `employer_acc` (
  `_id` int(254) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(9) NOT NULL,
  `city` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `NIP` int(9) DEFAULT NULL,
  `c_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_nr` int(4) DEFAULT NULL,
  `acc_id` int(254) NOT NULL,
  `type` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `employer_acc`
--

INSERT INTO `employer_acc` (`_id`, `name`, `surname`, `phone`, `city`, `NIP`, `c_name`, `address`, `address_nr`, `acc_id`, `type`) VALUES
(1, 'cześć ', 'jak tam ', 123456789, 'co zrobiłeś ', 465978456, 'corporation ', 'bd jobs ', 25, 1, 1),
(2, 'Adam', 'Nowak', 999456456, 'Wrocław', 618099088, 'Google Corp. ', 'Ślężna', 102, 5, 1),
(4, 'Bill', 'Gates', 366255355, 'Warszawa', 618456258, 'Microsoft', 'Fabryczna', 52, 7, 1),
(5, 'Yeti', 'Downhill', 555444333, 'Zakopane', 618100100, 'yeti Corp. ', 'Fińska', 29, 8, 1),
(6, 'Anna', 'Nowak', 508788456, 'Wrocław', NULL, NULL, NULL, NULL, 9, 0),
(7, 'Tomasz', 'Drwal', 658321659, 'Opole', NULL, NULL, NULL, NULL, 11, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employer_offert`
--

CREATE TABLE `employer_offert` (
  `_id` int(254) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `address_nr` int(4) NOT NULL,
  `postcode` int(5) NOT NULL,
  `type` int(1) NOT NULL,
  `salary_o` int(16) DEFAULT NULL,
  `salary_a` int(16) DEFAULT NULL,
  `week` int(254) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `hours` int(8) DEFAULT NULL,
  `info` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(8) NOT NULL,
  `acc_id` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `employer_offert`
--

INSERT INTO `employer_offert` (`_id`, `title`, `phone`, `email`, `city`, `address`, `address_nr`, `postcode`, `type`, `salary_o`, `salary_a`, `week`, `date`, `date_from`, `date_to`, `hours`, `info`, `cat_id`, `acc_id`) VALUES
(5, 'programista java', 111222333, NULL, 'Warszawa', 'jakas', 255, 9000, 0, 5000, NULL, NULL, '2020-07-02', NULL, NULL, NULL, 'java min. 1 rok doświadczenia ', 4, 7),
(6, 'koszenie trawnika', 111222444, NULL, 'gshaj', 'hshs', 45, 63500, 1, NULL, 25, NULL, '2020-07-02', NULL, NULL, 10, ' ', 10, 7),
(7, 'Sprzątanie mieszkania', 508788456, NULL, 'Wrocław', 'ślężna', 102, 50001, 0, 50, NULL, NULL, '2020-09-28', NULL, NULL, NULL, 'potrzebna osoba do sprzątania raz w tygodniu. najlepiej sobota. ', 2, 9),
(8, 'Koszenie trawnika', 508788456, NULL, 'Wrocław', 'ślężna', 102, 50001, 0, 20, NULL, NULL, '2020-09-28', NULL, NULL, NULL, 'potrzebna osoba do koszenia trawnika raz na 2 tyg. możliwe dodatkowe prace ogrodowe', 10, 9),
(9, 'Prace ślusarskie', 658321659, NULL, 'Opole', 'Krótka ', 3, 45960, 1, NULL, 15, NULL, '2020-09-28', NULL, NULL, 40, 'zatrudnię pomocnika ślusarza', 5, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `f_employee_offerts`
--

CREATE TABLE `f_employee_offerts` (
  `_id` int(254) NOT NULL,
  `offert_id` int(11) NOT NULL,
  `empr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `f_employer_offerts`
--

CREATE TABLE `f_employer_offerts` (
  `_id` int(254) NOT NULL,
  `offert_id` int(254) NOT NULL,
  `empe_id` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `f_employer_offerts`
--

INSERT INTO `f_employer_offerts` (`_id`, `offert_id`, `empe_id`) VALUES
(16, 6, 3),
(17, 5, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tag`
--

CREATE TABLE `tag` (
  `_id` int(8) NOT NULL,
  `tagname` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `count` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tag`
--

INSERT INTO `tag` (`_id`, `tagname`, `count`) VALUES
(1, 'gg', 3),
(2, 'ez', 1),
(3, 'angielski', 1),
(4, 'korki', 1),
(5, 'koszenie', 1),
(6, 'sadzenie', 1),
(7, 'podlewanie', 1),
(8, 'nawadnianie', 1),
(9, 'ghh', 1),
(10, 'ogg', 1),
(11, 'malowanie', 1),
(12, 'weekend', 1),
(13, 'java', 1),
(14, 'mysql', 1),
(15, 'php', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `_id` int(8) NOT NULL,
  `tag_id` int(8) NOT NULL,
  `eo_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`_id`, `tag_id`, `eo_id`) VALUES
(5, 3, 6),
(6, 4, 6),
(7, 5, 7),
(8, 6, 7),
(9, 7, 7),
(10, 8, 7),
(13, 11, 10),
(14, 12, 10),
(15, 13, 11),
(16, 14, 11),
(17, 15, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `_id` int(254) NOT NULL,
  `usname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `acc_type` tinyint(1) NOT NULL,
  `acc_id` int(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`_id`, `usname`, `email`, `password`, `acc_type`, `acc_id`) VALUES
(1, 'yeti', 'yeti@g.com', 'gg', 1, 1),
(2, 'marc', 'marcin@g.com', 'gg', 0, NULL),
(3, 'og', 'og@g.com', 'hhhhh', 0, 2),
(4, 'jankowalski', 'jan.kowalski@g.com', 'gg', 0, 3),
(5, 'google', 'google@g.com', 'gg', 1, NULL),
(7, 'micro', 'microsoft@g.com', 'gg', 1, 4),
(8, 'yettti', 'yetti@g.com', 'gg', 1, 5),
(9, 'nowak', 'anna.nowak@g.com', 'anna12', 1, 6),
(10, 'zombdale', 'marcin.majzner@gmail.com', 'gg', 0, 4),
(11, 'tomasz3528', 'tomasz.drwal@g.com', 'gg', 1, 7);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `employee_acc`
--
ALTER TABLE `employee_acc`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `employee_offert`
--
ALTER TABLE `employee_offert`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `employer_acc`
--
ALTER TABLE `employer_acc`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `employer_offert`
--
ALTER TABLE `employer_offert`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `f_employee_offerts`
--
ALTER TABLE `f_employee_offerts`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `f_employer_offerts`
--
ALTER TABLE `f_employer_offerts`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `UQ_email` (`email`),
  ADD UNIQUE KEY `UQ_usname` (`usname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `employee_acc`
--
ALTER TABLE `employee_acc`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `employee_offert`
--
ALTER TABLE `employee_offert`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `employer_acc`
--
ALTER TABLE `employer_acc`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `employer_offert`
--
ALTER TABLE `employer_offert`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `f_employee_offerts`
--
ALTER TABLE `f_employee_offerts`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `f_employer_offerts`
--
ALTER TABLE `f_employer_offerts`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `tag`
--
ALTER TABLE `tag`
  MODIFY `_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
