SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jota`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `naam` varchar(32) NOT NULL,
  `naammv` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `bijlage`
--

CREATE TABLE IF NOT EXISTS `bijlage` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `omschrijving` varchar(32) NOT NULL,
  `filename` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `file` longblob NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `duur`
--

CREATE TABLE IF NOT EXISTS `duur` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lengte` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lengte` (`lengte`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `gebied`
--

CREATE TABLE IF NOT EXISTS `gebied` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `speltak_id` tinyint(4) NOT NULL,
  `naam` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `speltak_id` (`speltak_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `groep`
--

CREATE TABLE IF NOT EXISTS `groep` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `wachtwoord` varchar(40) NOT NULL,
  `naam` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `jota` tinyint(1) NOT NULL,
  `joti` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `urlnaam` varchar(32) NOT NULL,
  `titel` varchar(32) NOT NULL,
  `tekst` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urlnaam` (`urlnaam`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `pagina_bijlage`
--

CREATE TABLE IF NOT EXISTS `pagina_bijlage` (
  `pagina_id` tinyint(4) NOT NULL,
  `bijlage_id` tinyint(4) NOT NULL,
  KEY `pagina_id` (`pagina_id`,`bijlage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `spel_id` tinyint(4) NOT NULL,
  `gebied_id` tinyint(4) NOT NULL,
  `groep_id` tinyint(4) NOT NULL,
  `gespeeld` tinyint(1) NOT NULL,
  `punten` tinyint(4) NOT NULL DEFAULT '0',
  `bijlage_id` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `spel_id` (`spel_id`,`gebied_id`,`groep_id`,`bijlage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spel`
--

CREATE TABLE IF NOT EXISTS `spel` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `urlnaam` varchar(32) NOT NULL,
  `titel` varchar(32) NOT NULL,
  `omschrijving` text NOT NULL,
  `voorbereiding` text NOT NULL,
  `beschrijving` text NOT NULL,
  `duur` smallint(6) NOT NULL,
  `spelers` tinyint(4) NOT NULL,
  `leiding` tinyint(4) NOT NULL,
  `jota` tinyint(1) NOT NULL,
  `joti` tinyint(1) NOT NULL,
  `maxpunten` tinyint(4) NOT NULL DEFAULT '0',
  `wincode` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urlnaam` (`urlnaam`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `speltak`
--

CREATE TABLE IF NOT EXISTS `speltak` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `naam` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `spel_artikel`
--

CREATE TABLE IF NOT EXISTS `spel_artikel` (
  `spel_id` tinyint(11) NOT NULL,
  `artikel_id` tinyint(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  KEY `spel_id` (`spel_id`,`artikel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spel_bijlage`
--

CREATE TABLE IF NOT EXISTS `spel_bijlage` (
  `spel_id` tinyint(4) NOT NULL,
  `bijlage_id` tinyint(4) NOT NULL,
  KEY `spel_id` (`spel_id`,`bijlage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spel_duur`
--

CREATE TABLE IF NOT EXISTS `spel_duur` (
  `spel_id` tinyint(4) NOT NULL,
  `duur_id` tinyint(4) NOT NULL,
  KEY `spel_id` (`spel_id`,`duur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spel_gebied`
--

CREATE TABLE IF NOT EXISTS `spel_gebied` (
  `spel_id` tinyint(4) NOT NULL,
  `gebied_id` tinyint(4) NOT NULL,
  KEY `spel_id` (`spel_id`,`gebied_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
