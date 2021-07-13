-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 13, 2021 alle 18:10
-- Versione del server: 10.4.19-MariaDB
-- Versione PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progettoesame`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `ristorante_id` int(11) DEFAULT NULL,
  `menu` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` (`id`, `ristorante_id`, `menu`) VALUES
(1, 1, './img/baronessa.jpg'),
(2, 2, './img/granduca.jpg'),
(3, 3, './img/villa_antonio.jpg'),
(4, 4, './img/mazzaro.jpg'),
(5, 5, './img/taormina.jpg'),
(6, 6, './img/duomo.jpg'),
(7, 7, './img/saraceno.jpg'),
(8, 8, './img/terrazze.jpg'),
(9, 9, './img/baia_taormina.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `news_cliccate`
--

CREATE TABLE `news_cliccate` (
  `id` int(11) NOT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `news_cliccate`
--

INSERT INTO `news_cliccate` (`id`, `utente_id`, `titolo`) VALUES
(1, 3, 'COVID, DAI RISTORANTI ALLE PALESTRE: IL CRONOPROGRAMMA DELLE RIAPERTURE'),
(2, 8, 'COVID, DAI RISTORANTI ALLE PALESTRE: IL CRONOPROGRAMMA DELLE RIAPERTURE'),
(3, 8, 'COVID, DAI RISTORANTI ALLE PISCINE: PRIMA MAPPA DELLE RIAPERTURE'),
(4, 9, 'COVID, DAI RISTORANTI ALLE PALESTRE: IL CRONOPROGRAMMA DELLE RIAPERTURE'),
(5, 9, 'Covid, riaperture dei ristoranti a partire dalla fine del mese'),
(6, 8, 'Covid, dai ristoranti alle discoteche: ecco le riaperture'),
(7, 8, 'Covid, riaperture dei ristoranti a partire dalla fine del mese'),
(8, 15, 'Covid, dai ristoranti alle discoteche: ecco le riaperture');

-- --------------------------------------------------------

--
-- Struttura della tabella `preferiti`
--

CREATE TABLE `preferiti` (
  `id` int(11) NOT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `ristorante_id` int(11) DEFAULT NULL,
  `nome_ristorante` varchar(255) DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `preferiti`
--

INSERT INTO `preferiti` (`id`, `utente_id`, `ristorante_id`, `nome_ristorante`, `immagine`, `descrizione`) VALUES
(1, 1, 1, 'Ristorante Baronessa', './img/Ristorante1.jpg', 'Numero telefonico: 0942 620163, Via Corso Umberto, 148, 98039, Taormina, ME'),
(2, 3, 5, 'Ristorante Taormina', ' ./img/Ristorante5.jpg', 'Numero telefonico: 0942 856435, Viale San Pancrazio, 46, 98039, Taormina, ME'),
(6, 9, 6, 'Ristorante Al Duomo', ' ./img/Ristorante6.jpg', 'Numero telefonico: 0942 625656, Via degli Ebrei, 1, 98039, Taormina, ME'),
(7, 9, 7, 'Ristorante Al Saraceno', ' ./img/Ristorante7.jpg', 'Numero telefonico: 0942 62342, Via Madonna della Rocca, 16, 98039, Taormina, ME'),
(12, 8, 1, 'Ristorante Baronessa', './img/Ristorante1.jpg', 'Numero telefonico: 0942 620163, Via Corso Umberto, 148, 98039, Taormina, ME'),
(13, 15, 2, 'Ristorante Granduca', './img/Ristorante2.jpg', 'Numero telefonico: 0942 24983, Via Corso Umberto, 172, 98039, Taormina, ME'),
(14, 15, 3, 'Ristorante Villa Antonio', './img/Ristorante3.jpg', 'Numero telefonico: 0942 34345, Via Luigi Pirandello, 88, 98039, Taormina, ME');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazione`
--

CREATE TABLE `prenotazione` (
  `id` int(11) NOT NULL,
  `tavolo` int(11) DEFAULT NULL,
  `ristorante_id` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `ora` time DEFAULT NULL,
  `numero_persone` int(11) DEFAULT NULL,
  `fine_occupazione` time DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `numero_telefono` varchar(255) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prenotazione`
--

INSERT INTO `prenotazione` (`id`, `tavolo`, `ristorante_id`, `data`, `ora`, `numero_persone`, `fine_occupazione`, `cognome`, `numero_telefono`, `utente_id`) VALUES
(1, NULL, 2, '2021-05-31', '21:40:00', 2, NULL, 'Spataro', '34567890976', 7),
(2, NULL, 2, '2021-05-31', '21:05:00', 3, NULL, 'Spataro', '678959806', 6),
(3, NULL, 2, '2021-06-15', '21:00:00', 5, NULL, 'Scandura', '48321472391', 8),
(4, NULL, 5, '2021-06-20', '22:00:00', 2, NULL, 'Scandura', '213843874732', 8),
(10, NULL, 1, '2021-10-12', '20:45:00', 10, NULL, 'Scandura', '3894296336', 8),
(11, NULL, 5, '2021-07-14', '20:45:00', 3, NULL, 'Scandura', '3894296339', 8),
(12, NULL, 1, '2021-08-07', '21:35:00', 2, NULL, 'Scandura', '32456576542', 14),
(13, NULL, 2, '2021-10-10', '20:40:00', 4, NULL, 'Malfitana', '564523546534', 3),
(14, NULL, 8, '2021-12-23', '20:45:00', 4, NULL, 'Santarosa', '3403333333', 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `ristorante`
--

CREATE TABLE `ristorante` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `citta` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `immagine` varchar(1023) DEFAULT NULL,
  `descrizione` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ristorante`
--

INSERT INTO `ristorante` (`id`, `nome`, `citta`, `indirizzo`, `telefono`, `immagine`, `descrizione`) VALUES
(1, 'Ristorante Baronessa', 'Taormina', 'Via Corso Umberto, 148', '0942 620163', './img/Ristorante1.jpg', 'Numero telefonico: 0942 620163, Via Corso Umberto, 148, 98039, Taormina, ME'),
(2, 'Ristorante Granduca', 'Taormina', 'Via Corso Umberto, 172', '0942 24983', './img/Ristorante2.jpg', 'Numero telefonico: 0942 24983, Via Corso Umberto, 172, 98039, Taormina, ME'),
(3, 'Ristorante Villa Antonio', 'Taormina', 'Via Luigi Pirandello, 88', '0942 34345', './img/Ristorante3.jpg', 'Numero telefonico: 0942 34345, Via Luigi Pirandello, 88, 98039, Taormina, ME'),
(4, 'Ristorante Mazzarò', 'Taormina', 'Via Mazzarò, 11', '0942 12352', './img/Ristorante4.jpg', 'Numero telefonico: 0942 12352, Via Mazzarò, 11, 98039, Taormina, ME'),
(5, 'Ristorante Taormina', 'Taormina', 'Viale San Pancrazio, 46', '0942 856435', './img/Ristorante5.jpg', 'Numero telefonico: 0942 856435, Viale San Pancrazio, 46, 98039, Taormina, ME'),
(6, 'Ristorante Al Duomo', 'Taormina', 'Via degli Ebrei, 1', '0942 625656', './img/Ristorante6.jpg', 'Numero telefonico: 0942 625656, Via degli Ebrei, 1, 98039, Taormina, ME'),
(7, 'Ristorante Al Saraceno', 'Taormina', 'Via Madonna della Rocca, 16', '0942 62342', './img/Ristorante7.jpg', 'Numero telefonico: 0942 62342, Via Madonna della Rocca, 16, 98039, Taormina, ME'),
(8, 'Ristorante Le Terrazze', 'Taormina', 'Via Teatro Greco, 11', '0942 34198', './img/Ristorante8.jpg', 'Numero telefonico: 0942 34198, Via Teatro Greco, 11, 98039, Taormina, ME'),
(9, 'Ristorante Baia Taormina', 'Taormina', 'Via Mazzarò, 7', '0942 34288', './img/Ristorante9.jpg', 'Numero telefonico: 0942 34288, Via Mazzarò, 7, 98039, Taormina, ME');

-- --------------------------------------------------------

--
-- Struttura della tabella `tavolo`
--

CREATE TABLE `tavolo` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `ristorante_id` int(11) DEFAULT NULL,
  `posti` int(11) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `copertura` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tavolo`
--

INSERT INTO `tavolo` (`id`, `numero`, `ristorante_id`, `posti`, `descrizione`, `tipo`, `copertura`) VALUES
(1, 1, 1, 6, 'vista mare', 'interno', NULL),
(2, 1, 2, 6, 'vista mare', 'interno', NULL),
(3, 1, 3, 6, 'vista mare', 'interno', NULL),
(4, 1, 4, 6, 'vista mare', 'interno', NULL),
(5, 1, 5, 6, 'vista mare', 'interno', NULL),
(6, 2, 1, 10, 'centrale', 'interno', NULL),
(7, 2, 2, 10, 'centrale', 'interno', NULL),
(8, 2, 3, 10, 'centrale', 'interno', NULL),
(9, 2, 4, 10, 'centrale', 'interno', NULL),
(10, 2, 5, 10, 'centrale', 'interno', NULL),
(11, 3, 1, 10, 'vista mare', 'esterno', 1),
(12, 3, 2, 10, 'vista mare', 'esterno', 1),
(13, 3, 3, 10, 'vista mare', 'esterno', 1),
(14, 3, 4, 10, 'vista mare', 'esterno', 1),
(15, 3, 5, 10, 'vista mare', 'esterno', 1),
(16, 4, 1, 2, 'centrale', 'esterno', 1),
(17, 4, 2, 2, 'centrale', 'esterno', 1),
(18, 4, 3, 2, 'centrale', 'esterno', 1),
(19, 4, 4, 2, 'centrale', 'esterno', 1),
(20, 4, 5, 2, 'centrale', 'esterno', 1),
(21, 5, 1, 8, 'laterale', 'interno', NULL),
(22, 5, 2, 8, 'laterale', 'interno', NULL),
(23, 5, 3, 8, 'laterale', 'interno', NULL),
(24, 5, 4, 8, 'laterale', 'interno', NULL),
(25, 5, 5, 8, 'laterale', 'interno', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `username`, `password`, `nome`, `cognome`, `email`) VALUES
(1, 'adp10', '$2y$10$EsXQsLK31IfTfvTaJwcH9uTiARekLAsR4FfG/XdAj5YXAiYxPs0lW', 'Alessandro', 'Del Piero', 'adp10@gmail.com'),
(2, 'Bebo', '$2y$10$pw/NbBpAUDbtNa0LaFCwqem1wX0eR/4ei1UIOWkvdssHjWWZCzw4G', 'Luigi', 'Scalzo', 'scalzolu99@gmail.com'),
(3, 'Carlotta', '$2y$10$gp6lLaZAROxKicdUrFkyFOzifjuBHjbCrJl398qtHlbRW0woQqKAy', 'Carlotta', 'Malfitana', 'carlotta@gmail.com'),
(4, 'DarioGrasso', '$2y$10$lmsLu8hHSgExaC.pNtUTJeDxJbyMIq/cDjF5KNZDbHeZqtEOPJS0y', 'Dario', 'Grasso', 'dariograsso@gmail.com'),
(6, 'EleonoraSpataro', '$2y$10$.85cR2LdsUf1EQV0eEIDIOyYR6SotOJQyY6o5hdi6HLxp4qt9bf0y', 'Eleonora', 'Spataro', 'spataroeleonora29@gmail.com'),
(7, 'enri_spat', '$2y$10$y2wHvmR9X4Y/U4FaAEIUO.GDzQpmtNl07CXeuqaSXDPwMKKIV9.lK', 'Enrica', 'Spataro', 'enrica@gmail.com'),
(8, 'IvanScandura', '$2y$10$.Vh2Zky9zhTxo8S.5kHIZOsJUJbwYS6Pt2E.bFDn7SJh2.biYktxy', 'Ivan', 'Scandura', 'scanduraivan@gmail.com'),
(9, 'LucioScandura', '$2y$10$88G4nhKOkwYj8EsoLo9cvOLgFVkpORBc7X5d2x4tVGyzVu0nYkJJ2', 'Lucio', 'Scandura', 'scanduralucio47@gmail.com'),
(10, 'NadiaScandura', '$2y$10$QhkknAIz5.6tEDbRTuKiqeznuh9KnXUObXoH9KEEwz.EItS6JaJTm', 'Nadia', 'Scandura', 'nadiascandura@gmail.com'),
(11, 'OrianaAprile', '$2y$10$Kyq29Vcq9zGl42vk7qLo..pOBmCs6wMb6cD5.UVUymobGkNWL7YU2', 'Oriana', 'Aprile', 'orianaprile@gmail.com'),
(13, 'AndreaBambara', '$2y$10$x4YFLMa58UBCQL4J62QNAuA9NiCw1E4MJZYRRwI0XpOz1HLGnESDy', 'Andrea', 'Bambara', 'andreaBambara@gmail.com'),
(14, 'Scandura', '$2y$10$pHIIOAggRQCqO8ZXZLXcJurbOK9bJSIwSKuKTNB032eain2PNtYE.', 'Ivan', 'Scandura', 'scandura@gmail.com'),
(15, 'lori65', '$2y$10$N8ZOG7KB5MwF0G62dyGkJ.TEkub7V/2ZAhp04qiEDOCJuZqpbZsiK', 'Loredana', 'Santarosa', 'lori@gmail.com');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx2_ristorante` (`ristorante_id`);

--
-- Indici per le tabelle `news_cliccate`
--
ALTER TABLE `news_cliccate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx1_utente` (`utente_id`);

--
-- Indici per le tabelle `preferiti`
--
ALTER TABLE `preferiti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx2_utente` (`utente_id`),
  ADD KEY `idx3_ristorante` (`ristorante_id`);

--
-- Indici per le tabelle `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx4_ristorante` (`ristorante_id`),
  ADD KEY `idx2_utente` (`utente_id`);

--
-- Indici per le tabelle `ristorante`
--
ALTER TABLE `ristorante`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tavolo`
--
ALTER TABLE `tavolo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx1_ristorante` (`ristorante_id`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `news_cliccate`
--
ALTER TABLE `news_cliccate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `ristorante`
--
ALTER TABLE `ristorante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `tavolo`
--
ALTER TABLE `tavolo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`ristorante_id`) REFERENCES `ristorante` (`id`);

--
-- Limiti per la tabella `news_cliccate`
--
ALTER TABLE `news_cliccate`
  ADD CONSTRAINT `news_cliccate_ibfk_1` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`);

--
-- Limiti per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  ADD CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`),
  ADD CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`ristorante_id`) REFERENCES `ristorante` (`id`);

--
-- Limiti per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`ristorante_id`) REFERENCES `ristorante` (`id`),
  ADD CONSTRAINT `prenotazione_ibfk_2` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`);

--
-- Limiti per la tabella `tavolo`
--
ALTER TABLE `tavolo`
  ADD CONSTRAINT `tavolo_ibfk_1` FOREIGN KEY (`ristorante_id`) REFERENCES `ristorante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
