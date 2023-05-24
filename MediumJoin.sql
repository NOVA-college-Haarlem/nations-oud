-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 12 apr 2023 om 13:29
-- Serverversie: 10.4.27-MariaDB-cll-lve
-- PHP-versie: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u52092p49331_oefeningen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `duur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `film`
--

INSERT INTO `film` (`id`, `medium`, `duur`) VALUES
(1, 1, 152),
(2, 2, 138),
(3, 7, 143),
(4, 8, 114),
(5, 16, 107),
(6, 17, 143),
(7, 18, 114),
(8, 23, 134);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `engine` varchar(128) DEFAULT NULL,
  `platform` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `game`
--

INSERT INTO `game` (`id`, `medium`, `engine`, `platform`) VALUES
(1, 6, 'Decima', 'Play Station'),
(2, 10, 'AnvilNext 2.0', 'Diversen'),
(3, 11, 'AnvilNext 2.0', 'Diversen'),
(4, 12, 'Slipspace', 'Windows'),
(5, 20, NULL, 'Nintendo'),
(6, 21, 'REDengine 3', 'Diversen'),
(7, 22, 'Unreal Engine 4', 'Play Station');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medium`
--

CREATE TABLE `medium` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `subtitel` varchar(256) DEFAULT NULL,
  `jaar` int(11) NOT NULL,
  `land` varchar(3) NOT NULL,
  `taal` varchar(24) NOT NULL,
  `genre` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `medium`
--

INSERT INTO `medium` (`id`, `titel`, `subtitel`, `jaar`, `land`, `taal`, `genre`) VALUES
(1, 'Star Wars', 'The Last Jedi', 2017, 'USA', 'Engels', 'Science Fiction'),
(2, 'Harry Potter', 'The Order of the Phoenix', 2007, 'UK', 'Engels', 'Fantasie'),
(3, 'Star Wars', 'The Mandalorian', 2019, 'USA', 'Engels', 'Science Fiction'),
(4, 'The Big Bang Theory', NULL, 2007, 'USA', 'Engels', 'Komedie'),
(5, 'Teen Wolf', NULL, 2011, 'USA', 'Engels', 'Fantasie'),
(6, 'Horizon Zero Dawn', NULL, 2017, 'NL', 'Engels', 'Fantasie'),
(7, 'The Avengers', NULL, 2012, 'USA', 'Engels', 'Actie'),
(8, 'Flodder 2', 'Flodder in Amerika', 1992, 'NL', 'Nederlands', 'Komedie'),
(9, 'De Luizenmoeder', NULL, 2018, 'NL', 'Nederlands', 'Komedie'),
(10, 'Assassins Creed', 'Origins', 2017, 'USA', 'Engels', 'Actie'),
(11, 'Assassins Creed', 'Valhalla', 2020, 'USA', 'Engels', 'Actie'),
(12, 'Halo', 'Infinite', 2021, 'USA', 'Engels', 'Science Fiction'),
(13, 'Forge of Empires', NULL, 2012, 'DEU', 'Duits', 'Actie'),
(14, 'Stranger Things', NULL, 2016, 'USA', 'Engels', 'Fantasie'),
(15, 'The Umbrella Academy ', NULL, 2019, 'USA', 'Engels', 'Fantasie'),
(16, 'Predator', NULL, 1987, 'USA', 'Engels', 'Science Fiction'),
(17, 'Transformers', NULL, 2007, 'USA', 'Engels', 'Science Fiction'),
(18, 'Bumblebee', NULL, 2018, 'USA', 'Engels', 'Science Fiction'),
(19, 'The Witcher', NULL, 2019, 'USA', 'Engels', 'Fantasie'),
(20, 'The Legend of Zelda', 'Link\'s Awakening', 2019, 'JPN', 'Japans', 'Fantasie'),
(21, 'The Witcher 3', 'Wild Hunt', 2015, 'USA', 'Engels', 'Fantasie'),
(22, 'Predator', 'Hunting Grounds', 2020, 'USA', 'Engels', 'Science Fiction'),
(23, 'Black Panther', NULL, 2018, 'USA', 'Engels', 'Actie'),
(24, 'Riverdale', NULL, 2017, 'USA', 'Engels', 'Fantasie'),
(25, 'Wednesday', NULL, 2022, 'USA', 'Engels', 'Fantasie');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `aantal_seizoenen` int(11) DEFAULT NULL,
  `aantal_afleveringen` int(11) DEFAULT NULL,
  `netwerk` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `serie`
--

INSERT INTO `serie` (`id`, `medium`, `aantal_seizoenen`, `aantal_afleveringen`, `netwerk`) VALUES
(1, 3, 3, 21, 'Disney+'),
(2, 4, 12, 279, 'CBS'),
(3, 5, 6, 100, 'MTV'),
(4, 9, 2, 20, 'NPO 3'),
(5, 14, 4, 34, 'Netflix'),
(6, 15, 3, 30, 'Netflix'),
(7, 19, 2, 16, 'Netflix'),
(8, 24, 6, 117, 'Netflix'),
(9, 25, 1, 8, 'Disney+');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medium` (`medium`);

--
-- Indexen voor tabel `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medium` (`medium`);

--
-- Indexen voor tabel `medium`
--
ALTER TABLE `medium`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medium` (`medium`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `medium`
--
ALTER TABLE `medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
