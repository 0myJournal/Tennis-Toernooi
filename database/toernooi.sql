-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 12 jan 2021 om 12:47
-- Serverversie: 10.4.13-MariaDB
-- PHP-versie: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toernooi`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aanmeldingen`
--

CREATE TABLE `aanmeldingen` (
  `aanmelding_id` int(10) NOT NULL,
  `speler_id` int(10) NOT NULL,
  `toernooi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `aanmeldingen`
--

INSERT INTO `aanmeldingen` (`aanmelding_id`, `speler_id`, `toernooi_id`) VALUES
(1, 1, 117),
(2, 2, 117),
(3, 3, 117),
(4, 4, 117),
(5, 5, 117),
(6, 6, 117),
(7, 7, 117),
(8, 8, 117),
(9, 9, 117),
(10, 10, 117),
(11, 11, 117),
(12, 12, 117),
(13, 13, 117),
(14, 14, 117),
(15, 15, 117),
(16, 16, 117),
(17, 17, 117),
(18, 18, 117),
(19, 19, 117),
(20, 20, 117),
(21, 21, 117),
(22, 22, 117);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `banen`
--

CREATE TABLE `banen` (
  `baan_id` int(10) NOT NULL,
  `baannaam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `banen`
--

INSERT INTO `banen` (`baan_id`, `baannaam`) VALUES
(3, 'baan 1'),
(4, 'baan 2'),
(5, 'baan 3');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `scholen`
--

CREATE TABLE `scholen` (
  `school_id` int(10) NOT NULL,
  `schoolnaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `scholen`
--

INSERT INTO `scholen` (`school_id`, `schoolnaam`) VALUES
(1, 'ROC van Twente De Sumpel');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `spelers`
--

CREATE TABLE `spelers` (
  `speler_id` int(10) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `tussenvoegsel` varchar(20) DEFAULT NULL,
  `achternaam` varchar(50) NOT NULL,
  `school_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `spelers`
--

INSERT INTO `spelers` (`speler_id`, `voornaam`, `tussenvoegsel`, `achternaam`, `school_id`) VALUES
(1, 'Ewaldo', '', 'Nieuwenhuis', 1),
(2, 'Edwin', '', 'Virginia', 1),
(3, 'Danny', '', 'Overbeeke', 1),
(4, 'Sven', '', 'Kolthof', 1),
(5, 'Chiel', '', 'Hoogma', 1),
(6, 'Aaron', '', 'Vlak', 1),
(7, 'Tom', '', 'Vroemen', 1),
(8, 'Joost', '', 'Roetgerink', 1),
(9, 'Maurice', '', 'Ekkel', 1),
(10, 'Jeremy ', '', 'Dijksterhuis', 1),
(11, 'Mart', '', 'Lohuis', 1),
(12, 'Thymo ', '', 'Röben', 1),
(13, 'Hylke ', '', 'Westerhof', 1),
(14, 'Mattijs ', '', 'Meijer', 1),
(15, 'Willem ', '', 'Vinke', 1),
(16, 'Mesut ', '', 'Için', 1),
(17, 'Stijn ', '', 'Koster', 1),
(18, 'Shaheen ', '', 'Setrakian', 1),
(19, 'Ralph ', '', 'Brandehof', 1),
(20, 'Furkan ', '', 'Nameli', 1),
(21, 'Bo ', '', 'Veneberg', 1),
(22, 'Michel ', 'de', 'Jong', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `toernooi`
--

CREATE TABLE `toernooi` (
  `toernooi_id` int(10) NOT NULL,
  `toernooi_naam` varchar(50) NOT NULL,
  `omschrijving` varchar(100) DEFAULT NULL,
  `datum` datetime DEFAULT current_timestamp(),
  `winnaar_id` int(10) DEFAULT NULL,
  `afgesloten` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `toernooi`
--

INSERT INTO `toernooi` (`toernooi_id`, `toernooi_naam`, `omschrijving`, `datum`, `winnaar_id`, `afgesloten`) VALUES
(117, '8AA1', 'toernooi van 8aa1', '2021-01-12 12:45:13', NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wedstrijd`
--

CREATE TABLE `wedstrijd` (
  `wedstrijd_id` int(10) NOT NULL,
  `toernooi_id` int(10) NOT NULL,
  `baan` int(10) DEFAULT NULL,
  `ronde` int(11) NOT NULL,
  `speler1_id` int(10) DEFAULT NULL,
  `speler2_id` int(10) DEFAULT NULL,
  `score1` int(1) DEFAULT NULL,
  `score2` int(1) DEFAULT NULL,
  `winnaar_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `wedstrijd`
--

INSERT INTO `wedstrijd` (`wedstrijd_id`, `toernooi_id`, `baan`, `ronde`, `speler1_id`, `speler2_id`, `score1`, `score2`, `winnaar_id`) VALUES
(1, 117, 3, 1, 9, 14, 2, 1, 9),
(2, 117, NULL, 1, 11, NULL, NULL, NULL, 11),
(3, 117, NULL, 1, NULL, 21, NULL, NULL, 21),
(4, 117, 4, 1, 8, 2, 0, 2, 2),
(5, 117, NULL, 1, NULL, 10, NULL, NULL, 10),
(6, 117, NULL, 1, 22, NULL, NULL, NULL, 22),
(7, 117, NULL, 1, NULL, 19, NULL, NULL, 19),
(8, 117, NULL, 1, NULL, 15, NULL, NULL, 15),
(9, 117, 5, 1, 20, 3, 0, 1, 3),
(10, 117, NULL, 1, NULL, 1, NULL, NULL, 1),
(11, 117, 3, 1, 18, 17, 1, 1, 17),
(12, 117, 4, 1, 16, 12, 1, 0, 16),
(13, 117, 5, 1, 7, 4, 0, 2, 4),
(14, 117, NULL, 1, 6, NULL, NULL, NULL, 6),
(15, 117, NULL, 1, 13, NULL, NULL, NULL, 13),
(16, 117, NULL, 1, 5, NULL, NULL, NULL, 5),
(17, 117, 3, 2, 9, 11, NULL, NULL, NULL),
(18, 117, 4, 2, 21, 2, NULL, NULL, NULL),
(19, 117, 5, 2, 10, 22, NULL, NULL, NULL),
(20, 117, 3, 2, 19, 15, NULL, NULL, NULL),
(21, 117, 4, 2, 3, 1, NULL, NULL, NULL),
(22, 117, 5, 2, 17, 16, NULL, NULL, NULL),
(23, 117, 3, 2, 4, 6, NULL, NULL, NULL),
(24, 117, 4, 2, 13, 5, NULL, NULL, NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `aanmeldingen`
--
ALTER TABLE `aanmeldingen`
  ADD PRIMARY KEY (`aanmelding_id`),
  ADD KEY `speler_id` (`speler_id`),
  ADD KEY `toernooi_id` (`toernooi_id`);

--
-- Indexen voor tabel `banen`
--
ALTER TABLE `banen`
  ADD PRIMARY KEY (`baan_id`);

--
-- Indexen voor tabel `scholen`
--
ALTER TABLE `scholen`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexen voor tabel `spelers`
--
ALTER TABLE `spelers`
  ADD PRIMARY KEY (`speler_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexen voor tabel `toernooi`
--
ALTER TABLE `toernooi`
  ADD PRIMARY KEY (`toernooi_id`),
  ADD KEY `winnaar_id` (`winnaar_id`);

--
-- Indexen voor tabel `wedstrijd`
--
ALTER TABLE `wedstrijd`
  ADD PRIMARY KEY (`wedstrijd_id`),
  ADD KEY `toernooi_id` (`toernooi_id`),
  ADD KEY `speler1_id` (`speler1_id`),
  ADD KEY `speler2_id` (`speler2_id`),
  ADD KEY `winnaar_id` (`winnaar_id`),
  ADD KEY `baan` (`baan`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `aanmeldingen`
--
ALTER TABLE `aanmeldingen`
  MODIFY `aanmelding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT voor een tabel `banen`
--
ALTER TABLE `banen`
  MODIFY `baan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `scholen`
--
ALTER TABLE `scholen`
  MODIFY `school_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `spelers`
--
ALTER TABLE `spelers`
  MODIFY `speler_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT voor een tabel `toernooi`
--
ALTER TABLE `toernooi`
  MODIFY `toernooi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT voor een tabel `wedstrijd`
--
ALTER TABLE `wedstrijd`
  MODIFY `wedstrijd_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `aanmeldingen`
--
ALTER TABLE `aanmeldingen`
  ADD CONSTRAINT `aanmeldingen_ibfk_1` FOREIGN KEY (`toernooi_id`) REFERENCES `toernooi` (`toernooi_id`),
  ADD CONSTRAINT `aanmeldingen_ibfk_2` FOREIGN KEY (`speler_id`) REFERENCES `spelers` (`speler_id`);

--
-- Beperkingen voor tabel `spelers`
--
ALTER TABLE `spelers`
  ADD CONSTRAINT `spelers_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `scholen` (`school_id`);

--
-- Beperkingen voor tabel `toernooi`
--
ALTER TABLE `toernooi`
  ADD CONSTRAINT `toernooi_ibfk_1` FOREIGN KEY (`winnaar_id`) REFERENCES `spelers` (`speler_id`);

--
-- Beperkingen voor tabel `wedstrijd`
--
ALTER TABLE `wedstrijd`
  ADD CONSTRAINT `wedstrijd_ibfk_1` FOREIGN KEY (`toernooi_id`) REFERENCES `toernooi` (`toernooi_id`),
  ADD CONSTRAINT `wedstrijd_ibfk_2` FOREIGN KEY (`speler1_id`) REFERENCES `spelers` (`speler_id`),
  ADD CONSTRAINT `wedstrijd_ibfk_3` FOREIGN KEY (`speler2_id`) REFERENCES `spelers` (`speler_id`),
  ADD CONSTRAINT `wedstrijd_ibfk_4` FOREIGN KEY (`winnaar_id`) REFERENCES `spelers` (`speler_id`),
  ADD CONSTRAINT `wedstrijd_ibfk_5` FOREIGN KEY (`baan`) REFERENCES `banen` (`baan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
