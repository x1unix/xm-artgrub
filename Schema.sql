-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: XmusiX
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `XTracks`
--

DROP TABLE IF EXISTS `XTracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XTracks` (
  `XTracksID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG` int(11) DEFAULT NULL,
  `Artist1` varchar(255) DEFAULT NULL,
  `Artist2` varchar(255) DEFAULT NULL,
  `Title` varchar(120) DEFAULT NULL,
  `Genre1` int(11) DEFAULT NULL,
  `Genre2` int(11) DEFAULT NULL,
  `Genre3` int(11) DEFAULT NULL,
  `SubGenre1` int(11) DEFAULT NULL,
  `SubGenre2` int(11) DEFAULT NULL,
  `SubGenre3` int(11) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `Tempo` int(11) DEFAULT NULL,
  `Nationality` int(11) DEFAULT NULL,
  `Mood` int(11) DEFAULT NULL,
  `Fade` int(11) DEFAULT NULL,
  `Mix` int(11) DEFAULT NULL,
  `Album` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `Minutes` tinyint(4) DEFAULT NULL,
  `Seconds` tinyint(4) DEFAULT NULL,
  `Year` smallint(6) DEFAULT NULL,
  `SoundFile` varchar(255) DEFAULT NULL,
  `TimesPlayed` int(11) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  `LastTimePlayed` datetime DEFAULT NULL,
  `lastUpDate` date DEFAULT NULL,
  `groups` varchar(20) DEFAULT NULL,
  `Voice` int(11) DEFAULT NULL,
  `AutoStart` int(11) DEFAULT NULL,
  `NoDelete` tinyint(4) DEFAULT NULL,
  `Cue` int(11) DEFAULT NULL,
  `Revision` int(11) DEFAULT NULL,
  `SizeOfFile` int(11) DEFAULT NULL,
  `TrackVersion` int(11) DEFAULT NULL,
  `IsCopyLeft` tinyint(4) DEFAULT NULL,
  `UpdateDatum` date DEFAULT NULL,
  `StartPoint` int(11) DEFAULT NULL,
  `ExportDatum` date DEFAULT NULL,
  `TrackOnline` tinyint(4) DEFAULT NULL,
  `Score` tinyint(3) unsigned DEFAULT NULL,
  `HasArt` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`XTracksID`),
  KEY `WDIDX14589846700` (`TAG`),
  KEY `WDIDX14589846701` (`Artist1`),
  KEY `WDIDX14589846702` (`Artist2`),
  KEY `WDIDX14589846703` (`Title`),
  KEY `WDIDX14589846704` (`Year`)
) ENGINE=InnoDB AUTO_INCREMENT=132138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iAlbums`
--

DROP TABLE IF EXISTS `iAlbums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iAlbums` (
  `mbid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `hasArt` tinyint(4) DEFAULT '0',
  `artistId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mbid`),
  UNIQUE KEY `mbid_UNIQUE` (`mbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iArtists`
--

DROP TABLE IF EXISTS `iArtists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iArtists` (
  `mbid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`mbid`),
  UNIQUE KEY `mbid_UNIQUE` (`mbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iTags`
--

DROP TABLE IF EXISTS `iTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iTags` (
  `trackId` varchar(45) NOT NULL,
  `tagName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iTracks`
--

DROP TABLE IF EXISTS `iTracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iTracks` (
  `tag` int(11) NOT NULL,
  `mbid` varchar(64) DEFAULT NULL,
  `duration` int(18) DEFAULT '0',
  `artist` varchar(45) DEFAULT NULL,
  `album` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tag`),
  UNIQUE KEY `tag_UNIQUE` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13 14:47:44
