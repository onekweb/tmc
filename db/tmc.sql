-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 13 jun 2012 kl 15:00
-- Serverversion: 5.5.16
-- PHP-version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `tmc`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL,
  `album_name` varchar(44) NOT NULL,
  `about_album` text NOT NULL,
  `album_date` datetime NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `albums`
--

INSERT INTO `albums` (`id`, `album_name`, `about_album`, `album_date`, `artist_id`) VALUES
(1, 'the fight of my life', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ullamcorper venenatis elit, eu aliquet elit dignissim nec. Fusce id est lacus, ac dapibus magna. Donec auctor, metus quis luctus pulvinar, purus felis imperdiet ipsum, sit amet consequat elit nisi quis justo. Suspendisse magna metus, gravida eu pharetra quis, sagittis sed elit. Sed sed luctus erat. Nam ac risus a erat pharetra pellente', '2012-06-13 00:00:00', 1),
(2, 'Hello Fear', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ullamcorper venenatis elit, eu aliquet elit dignissim nec. Fusce id est lacus, ac dapibus magna. Donec auctor, metus quis luctus pulvinar, purus felis imperdiet ipsum, sit amet consequat elit nisi quis justo. Suspendisse magna metus, gravida eu pharetra quis, sagittis sed elit. Sed sed luctus erat. Nam ac risus a erat pharetra pellente', '2012-06-13 00:00:00', 1),
(3, 'hero', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ullamcorper venenatis elit, eu aliquet elit dignissim nec. Fusce id est lacus, ac dapibus magna. Donec auctor, metus quis luctus pulvinar, purus felis imperdiet ipsum, sit amet consequat elit nisi quis justo. Suspendisse magna metus, gravida eu pharetra quis, sagittis sed elit. Sed sed luctus erat. Nam ac risus a erat pharetra pellente', '2012-06-13 00:00:00', 1),
(4, 'Decades of worship', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ullamcorper venenatis elit, eu aliquet elit dignissim nec. Fusce id est lacus, ac dapibus magna. Donec auctor, metus quis luctus pulvinar, purus felis imperdiet ipsum, sit amet consequat elit nisi quis justo. Suspendisse magna metus, gravida eu pharetra quis, sagittis sed elit. Sed sed luctus erat. Nam ac risus a erat pharetra pellente', '0000-00-00 00:00:00', 3),
(5, 'A new hallelujah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ullamcorper venenatis elit, eu aliquet elit dignissim nec. Fusce id est lacus, ac dapibus magna. Donec auctor, metus quis luctus pulvinar, purus felis imperdiet ipsum, sit amet consequat elit nisi quis justo. Suspendisse magna metus, gravida eu pharetra quis, sagittis sed elit. Sed sed luctus erat. Nam ac risus a erat pharetra pellente', '0000-00-00 00:00:00', 3),
(6, 'thank you', 'lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem lorem ipsumssasasdlorem lorem ', '2012-06-13 00:00:00', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(44) NOT NULL,
  `about_artist` text NOT NULL,
  `genre_id` int(44) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `artists`
--

INSERT INTO `artists` (`id`, `artist_name`, `about_artist`, `genre_id`) VALUES
(1, 'kirk franklin', 'Kirk Dwayne Franklin (born January 26, 1970) is an American Gospel music musician, choir director, and author, and is most notably known for leading urban contemporary gospel choirs such as The Family, God''s Property and One Nation Crew (1NC).', 1),
(2, 'mary mary', 'Mary Mary is an American gospel music duo, consisting of sisters Erica Atkins-Campbell (born April 29, 1972)[1] and Trecina "Tina" Atkins-Campbell (born May 2, 1974).', 3),
(3, 'michael smith', 'Michael Whitaker Smith (born October 7, 1957) is an American contemporary Christian musician, who is best known for his Billboard Hot 100 top ten hit song, "Place in this World". As a longtime Musician, he has charted primarily in the contemporary Christian and occasionally in the mainstream charts.', 2),
(4, 'darlene zschech', 'arlene Joyce Zschech born Steinhardt on 8 September 1965 in Brisbane, Queensland, Australia) is an Australian Pentecostal worship leader and singer-songwriter who primarily writes praise and worship songs. She is the former worship pastor of Hillsong Church and is currently a member of Compassionart, a charity founded by Martin Smith', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `contain_songs_playlists`
--

CREATE TABLE IF NOT EXISTS `contain_songs_playlists` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(44) NOT NULL,
  `about_genre` text NOT NULL,
  `genre_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumpning av Data i tabell `genres`
--

INSERT INTO `genres` (`id`, `genre_name`, `about_genre`, `genre_date`) VALUES
(1, 'gospel', '2012-06-13 00:00:00', '2012-06-13 00:00:00'),
(2, 'worship', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat lacus. Donec eget purus augue. Vivamus malesuada facilisis metus eget egestas. Curabitur pretium accumsan sollicitudin. Praesent sit amet fermentum leo. Vestibulum ante ipsum primis in faucibus orci ', '2012-06-13 00:00:00'),
(3, 'rnb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat lacus. Donec eget purus augue. Vivamus malesuada facilisis metus eget egestas. Curabitur pretium accumsan sollicitudin. Praesent sit amet fermentum leo. Vestibulum ante ipsum primis in faucibus orci ', '2012-06-13 00:00:00'),
(4, 'rap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat lacus. Donec eget purus augue. Vivamus malesuada facilisis metus eget egestas. Curabitur pretium accumsan sollicitudin. Praesent sit amet fermentum leo. Vestibulum ante ipsum primis in faucibus orci ', '2012-06-13 00:00:00'),
(5, 'soul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat lacus. Donec eget purus augue. Vivamus malesuada facilisis metus eget egestas. Curabitur pretium accumsan sollicitudin. Praesent sit amet fermentum leo. Vestibulum ante ipsum primis in faucibus orci ', '2012-06-13 00:00:00');

-- --------------------------------------------------------

--
-- Tabellstruktur `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plalist_name` varchar(44) NOT NULL,
  `playlist_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(44) NOT NULL,
  `song_date` datetime NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumpning av Data i tabell `songs`
--

INSERT INTO `songs` (`id`, `song_name`, `song_date`, `album_id`) VALUES
(1, 'intro', '2012-06-13 00:00:00', 0),
(2, 'melody from heaven', '2012-06-13 00:00:00', 0),
(3, 'jesus', '2012-06-13 00:00:00', 0),
(4, 'draw me close to you', '2012-06-13 00:00:00', 0),
(5, 'god is able', '2012-06-13 00:00:00', 0),
(6, 'heaven', '2012-06-13 00:00:00', 2),
(7, 'potters hand', '2012-06-13 00:00:00', 4);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(44) NOT NULL,
  `password` varchar(44) NOT NULL,
  `mail` varchar(44) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`) VALUES
(1, 'mario', 'onekanda', 'mario.onekanda@gmal.com'),
(2, 'joel', 'onekanda31', 'mario.onekanda@hotmail.com');

-- --------------------------------------------------------

--
-- Tabellstruktur `users_playlist`
--

CREATE TABLE IF NOT EXISTS `users_playlist` (
  `users_id` int(11) NOT NULL,
  `playslists_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
