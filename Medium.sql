-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 02 apr 2023 om 08:28
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
  `titel` varchar(256) NOT NULL,
  `subtitel` varchar(256) DEFAULT NULL,
  `jaar` int(11) NOT NULL,
  `land` varchar(3) NOT NULL,
  `taal` varchar(24) NOT NULL,
  `genre` varchar(56) NOT NULL,
  `duur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `film`
--

INSERT INTO `film` (`id`, `titel`, `subtitel`, `jaar`, `land`, `taal`, `genre`, `duur`) VALUES
(1, 'Star Wars', 'The Last Jedi', 2017, 'USA', 'Engels', 'Science Fiction', 152),
(2, 'Harry Potter', 'The Order of the Phoenix', 2007, 'UK', 'Engels', 'Fantasie', 138),
(3, 'The Avengers', NULL, 2012, 'USA', 'Engels', 'Actie', 143),
(4, 'Flodder 2', 'Flodder in Amerika', 1992, 'NL', 'Nederlands', 'Komedie', 114),
(5, 'Predator', NULL, 1987, 'USA', 'Engels', 'Science Fiction', 107),
(6, 'Transformers', NULL, 2007, 'USA', 'Engels', 'Science Fiction', 143),
(7, 'Bumblebee', NULL, 2018, 'USA', 'Engels', 'Science Fiction', 114),
(8, 'Black Panther', NULL, 2018, 'USA', 'Engels', 'Actie', 134);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `subtitel` varchar(256) DEFAULT NULL,
  `jaar` int(11) NOT NULL,
  `land` varchar(3) NOT NULL,
  `taal` varchar(24) NOT NULL,
  `genre` varchar(56) NOT NULL,
  `engine` varchar(128) DEFAULT NULL,
  `platform` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `game`
--

INSERT INTO `game` (`id`, `titel`, `subtitel`, `jaar`, `land`, `taal`, `genre`, `engine`, `platform`) VALUES
(1, 'Horizon Zero Dawn', NULL, 2017, 'NL', 'Engels', 'Fantasie', 'Decima', 'Play Station'),
(2, 'Assassins Creed', 'Origins', 2017, 'USA', 'Engels', 'Actie', 'AnvilNext 2.0', 'Diversen'),
(3, 'Assassins Creed', 'Valhalla', 2020, 'USA', 'Engels', 'Actie', 'AnvilNext 2.0', 'Diversen'),
(4, 'Halo', 'Infinite', 2021, 'USA', 'Engels', 'Science Fiction', 'Slipspace', 'Windows'),
(5, 'Forge of Empires', NULL, 2012, 'DEU', 'Duits', 'Actie', NULL, NULL),
(6, 'The Legend of Zelda', 'Link\'s Awakening', 2019, 'JPN', 'Japans', 'Fantasie', NULL, 'Nintendo'),
(7, 'The Witcher 3', 'Wild Hunt', 2015, 'USA', 'Engels', 'Fantasie', 'REDengine 3', 'Diversen'),
(8, 'Predator', 'Hunting Grounds', 2020, 'USA', 'Engels', 'Science Fiction', 'Unreal Engine 4', 'Play Station');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `subtitel` varchar(256) DEFAULT NULL,
  `jaar` int(11) NOT NULL,
  `land` varchar(3) NOT NULL,
  `taal` varchar(24) NOT NULL,
  `genre` varchar(56) NOT NULL,
  `aantal_seizoenen` int(11) DEFAULT NULL,
  `aantal_afleveringen` int(11) DEFAULT NULL,
  `netwerk` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `serie`
--

INSERT INTO `serie` (`id`, `titel`, `subtitel`, `jaar`, `land`, `taal`, `genre`, `aantal_seizoenen`, `aantal_afleveringen`, `netwerk`) VALUES
(1, 'Star Wars', 'The Mandalorian', 2019, 'USA', 'Engels', 'Science Fiction', 3, 21, 'Disney+'),
(2, 'The Big Bang Theory', NULL, 2007, 'USA', 'Engels', 'Komedie', 12, 279, 'CBS'),
(3, 'Teen Wolf', NULL, 2011, 'USA', 'Engels', 'Fantasie', 6, 100, 'MTV'),
(4, 'De Luizenmoeder', NULL, 2018, 'NL', 'Nederlands', 'Komedie', 2, 20, 'NPO 3'),
(5, 'Stranger Things', NULL, 2016, 'USA', 'Engels', 'Fantasie', 4, 34, 'Netflix'),
(6, 'The Umbrella Academy ', NULL, 2019, 'USA', 'Engels', 'Fantasie', 3, 30, 'Netflix'),
(7, 'The Witcher', NULL, 2019, 'USA', 'Engels', 'Fantasie', 2, 16, 'Netflix'),
(8, 'Riverdale', NULL, 2017, 'USA', 'Engels', 'Fantasie', 6, 117, 'Netflix'),
(9, 'Wednesday', NULL, 2022, 'USA', 'Engels', 'Fantasie', 1, 8, 'Disney+');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
