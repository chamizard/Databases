-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2021 at 04:27 AM
-- Server version: 5.6.48
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2020_Fall_3430_101_t13`
--

-- --------------------------------------------------------

--
-- Table structure for table `Addedto`
--

CREATE TABLE `Addedto` (
  `Songname` varchar(24) NOT NULL DEFAULT '',
  `PlaylistUserID` varchar(24) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Albums`
--

CREATE TABLE `Albums` (
  `Album Genre` varchar(12) NOT NULL,
  `Album Artist` varchar(30) NOT NULL,
  `Album Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Albums`
--

INSERT INTO `Albums` (`Album Genre`, `Album Artist`, `Album Name`) VALUES
('Rock', 'Aerosmith', 'Aerosmith\'s Greatest Hits'),
('Rock', 'Cinderella', 'Night Songs'),
('Pop', 'Cyndi Lauper', 'The Essential Cyndi Lauper'),
('Rock', 'Fleetwood Mac', 'The Very Best of Fleetwood Mac'),
('Rock', 'Guns N\' Roses', 'Appetite for Destruction'),
('Pop', 'Lady Gaga', 'The Fame'),
('Rock', 'Nickleback', 'All the right Reasons'),
('Metal', 'Ozzy Osbourne', 'No More Tears'),
('Metal', 'Skid Row', 'Skid Row'),
('Rock', 'The Eagles', 'The Eagles: Their Greatest Hits'),
('Country', 'Van Zant', 'Get Right With The Man'),
('Rock', 'Whitesnake', 'Whitesnake');

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `Artist Name` varchar(30) NOT NULL,
  `Artists Genre` varchar(12) NOT NULL,
  `RLCity` varchar(20) NOT NULL,
  `Record Label` varchar(40) NOT NULL,
  `UserID` varchar(24) DEFAULT NULL,
  `ArtistCity` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`Artist Name`, `Artists Genre`, `RLCity`, `Record Label`, `UserID`, `ArtistCity`) VALUES
('Aerosmith', 'Rock', 'Los Angeles', 'Geffen Records', 'Aero', 'Boston'),
('Cinderella', 'Rock', 'New York', 'PolyGram Records', 'Cinder', 'Jacksonville '),
('Cyndi Lauper', 'Pop', 'New York', 'Epic Associated', 'Cyndi', 'Miami'),
('Fleetwood Mac', 'Rock', 'Los Angeles', 'Warner Brothers Records', 'FM', 'Seattle'),
('Guns N\' Roses', 'Rock', 'Los Angeles', 'Geffen Records', 'GR', 'New York City'),
('Lady Gaga', 'Pop', 'Los Angeles', 'Interscope Records', 'LG', 'Mexico City'),
('Nickleback', 'Rock', 'New York', 'Roadrunner Records', 'NB', 'Dallas'),
('Ozzy Osbourne', 'Metal', 'New York', 'Epic Associated', 'OO', 'Tampa'),
('Skid Row', 'Metal', 'New York', 'Atlantic Recording Corporation', 'SKid', 'Seattle'),
('The Eagles', 'Rock', 'New York', 'Asylum Records', 'TE', 'Albany'),
('Van Zant', 'Country', 'New York', 'Columbia Records', 'VZ', 'Seattle'),
('Whitesnake', 'Rock', 'Los Angeles', 'Geffen Records', 'WS', 'Phoenix ');

-- --------------------------------------------------------

--
-- Table structure for table `Composes`
--

CREATE TABLE `Composes` (
  `Artistname` varchar(24) DEFAULT NULL,
  `SongArtist` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Composes`
--

INSERT INTO `Composes` (`Artistname`, `SongArtist`) VALUES
('Aerosmith', 'Rag Doll'),
('Cinderella', 'Once Around the Ride'),
('Cyndi Lauper', 'Unhook the Stars'),
('Fleetwood Mac', 'Big Love'),
('Guns N\' Roses', 'Anything Goes'),
('Lady Gaga', 'The Fame'),
('Nickleback', 'Animals'),
('Ozzy Osbourne', 'A.V.H.'),
('Skid Row', 'Big Guns'),
('The Eagles', 'Already gone'),
('Van Zant', 'Been there done that'),
('Whitesnake', 'Bad boys');

-- --------------------------------------------------------

--
-- Table structure for table `Creates`
--

CREATE TABLE `Creates` (
  `ArtistName` varchar(24) DEFAULT NULL,
  `AlbumArtist` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Creates`
--

INSERT INTO `Creates` (`ArtistName`, `AlbumArtist`) VALUES
('Aerosmith', 'Permanent Vacation'),
('Cinderella', 'Night Songs'),
('Cyndi Lauper', 'The Essential Cyndi L.'),
('Fleetwood Mac', 'The Very Best of FM'),
('Guns N\' Roses', 'Appetite For Destruction'),
('Lady Gaga', 'The Fame'),
('Nickleback', 'All the Right Reasons'),
('Ozzy Osbourne ', 'No More Tears'),
('Skid Row', 'Skid Row'),
('The Eagles', 'The Eagles: TGH'),
('Van Zant', 'Get Right With The Man'),
('Whitesnake', 'Whitesnake');

-- --------------------------------------------------------

--
-- Table structure for table `Follows`
--

CREATE TABLE `Follows` (
  `Artist` varchar(30) NOT NULL,
  `Followers` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Follows`
--

INSERT INTO `Follows` (`Artist`, `Followers`) VALUES
('Fleetwood Mac', 'BertErnie'),
('The Eagles', 'BertErnie'),
('Whitesnake', 'BertErnie'),
('Cyndi Lauper', 'BobMeyer'),
('Fleetwood Mac', 'BobMeyer'),
('Guns N\' Roses', 'BobMeyer'),
('Lady Gaga', 'BobMeyer'),
('The Eagles', 'BobMeyer'),
('Aerosmith', 'Frank05'),
('Ozzy Osbourne', 'Frank05'),
('Whitesnake', 'Frank05'),
('Fleetwood Mac', 'Galm1'),
('Guns N\' Roses', 'Galm1'),
('Nickleback', 'Galm1'),
('The Eagles', 'Galm1'),
('Van Zant', 'Galm1'),
('Aerosmith', 'Garuda1'),
('Cinderella', 'Garuda1'),
('Guns N\' Roses', 'Garuda1'),
('Lady Gaga', 'Garuda1'),
('Nickleback', 'Garuda1'),
('The Eagles', 'Garuda1'),
('Aerosmith', 'GaryStones'),
('Ozzy Osbourne', 'GaryStones'),
('Skid Row', 'GaryStones'),
('Van Zant', 'GaryStones'),
('Aerosmith', 'JohnKingston'),
('Cinderella', 'JohnKingston'),
('Fleetwood Mac', 'JohnKingston'),
('Whitesnake', 'JohnKingston'),
('Cyndi Lauper', 'JohnMcJohn'),
('Fleetwood Mac', 'JohnMcJohn'),
('Skid Row', 'JohnMcJohn'),
('Aerosmith', 'KateLockwell'),
('Cinderella', 'KateLockwell'),
('Cyndi Lauper', 'KateLockwell'),
('Ozzy Osbourne', 'KateLockwell'),
('Cinderella', 'LucyFran'),
('Fleetwood Mac', 'LucyFran'),
('Lady Gaga', 'LucyFran'),
('Skid Row', 'LucyFran'),
('The Eagles', 'LucyFran'),
('Aerosmith', 'MaryAnne'),
('Fleetwood Mac', 'MaryAnne'),
('Nickleback', 'MaryAnne'),
('The Eagles', 'MaryAnne'),
('Whitesnake', 'MaryAnne'),
('Cinderella', 'MatthewJones'),
('Guns N\' Roses', 'MatthewJones'),
('Nickleback', 'MatthewJones'),
('Ozzy Osbourne', 'MatthewJones'),
('The Eagles', 'MatthewJones'),
('Aerosmith', 'Moebius1'),
('Fleetwood Mac', 'Moebius1'),
('Guns N\' Roses', 'Moebius1'),
('Cinderella', 'MRN'),
('Skid Row', 'MRN'),
('The Eagles', 'MRN'),
('Van Zant', 'MRN'),
('Whitesnake', 'MRN'),
('Aerosmith', 'Razgriz1'),
('Fleetwood Mac', 'Razgriz1'),
('Guns N\' Roses', 'Razgriz1'),
('Lady Gaga', 'Razgriz1'),
('Aerosmith', 'Strider1'),
('Fleetwood Mac', 'Strider1'),
('Nickleback', 'Strider1'),
('Ozzy Osbourne', 'Strider1'),
('Van Zant', 'Strider1'),
('Fleetwood Mac', 'TimothyBlake3'),
('Guns N\' Roses', 'TimothyBlake3'),
('Nickleback', 'TimothyBlake3'),
('Ozzy Osbourne', 'TimothyBlake3'),
('Aerosmith', 'VertOtool'),
('Cinderella', 'VertOtool'),
('Guns N\' Roses', 'VertOtool'),
('Nickleback', 'VertOtool'),
('Aerosmith', 'xXGamer_boyXx'),
('Cyndi Lauper', 'xXGamer_boyXx'),
('Fleetwood Mac', 'xXGamer_boyXx'),
('Guns N\' Roses', 'xXGamer_boyXx'),
('Lady Gaga', 'xXGamer_boyXx'),
('Nickleback', 'xXGamer_boyXx'),
('Ozzy Osbourne', 'xXGamer_boyXx'),
('Skid Row', 'xXGamer_boyXx'),
('The Eagles', 'xXGamer_boyXx'),
('Van Zant', 'xXGamer_boyXx'),
('Whitesnake', 'xXGamer_boyXx'),
('Aerosmith', 'yourMOM33'),
('Cinderella', 'yourMOM33'),
('Cyndi Lauper', 'yourMOM33'),
('Fleetwood Mac', 'yourMOM33'),
('Guns N\' Roses', 'yourMOM33'),
('Nickleback', 'yourMOM33'),
('Ozzy Osbourne', 'yourMOM33'),
('Skid Row', 'yourMOM33'),
('The Eagles', 'yourMOM33');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `Continent` varchar(13) NOT NULL,
  `Country` varchar(40) NOT NULL,
  `State` varchar(5) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Continent`, `Country`, `State`, `City`) VALUES
('North America', 'United States of America', 'CA', 'Los Angeles'),
('North America', 'United States of America', 'NY', 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `Playlists`
--

CREATE TABLE `Playlists` (
  `UserID` varchar(24) NOT NULL,
  `Playlist Name` varchar(40) NOT NULL,
  `ID` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Playlists`
--

INSERT INTO `Playlists` (`UserID`, `Playlist Name`, `ID`) VALUES
('newCustomer1', 'SStreet', 'BertErnie'),
('newCustomer10', 'playlist4', 'yourMOM33'),
('newCustomer11', 'playlist4', 'yourMOM33'),
('newCustomer12', 'playlist4', 'yourMOM33'),
('newCustomer2', 'playlist1', 'BobMeyer'),
('newCustomer3', 'playlist2', 'Frank05'),
('newCustomer4', 'playlist4', 'yourMOM33'),
('newCustomer5', 'playlist4', 'yourMOM33'),
('newCustomer6', 'playlist9', 'MaryAnne'),
('newCustomer7', 'playlist8', 'KateLockwell');

-- --------------------------------------------------------

--
-- Table structure for table `Record Label`
--

CREATE TABLE `Record Label` (
  `Record Label Name` varchar(40) NOT NULL,
  `Record Label City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Record Label`
--

INSERT INTO `Record Label` (`Record Label Name`, `Record Label City`) VALUES
('Geffen Records', 'Los Angeles'),
('Interscope Records', 'Los Angeles'),
('Warner Brothers Records', 'Los Angeles'),
('Asylum Records', 'New York'),
('Atlantic Recording Corporation', 'New York'),
('Columbia Records', 'New York'),
('Epic Associated', 'New York'),
('PolyGram Records', 'New York'),
('Roadrunner Records', 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `Song Name` varchar(60) NOT NULL,
  `Album` varchar(60) NOT NULL,
  `Song Artist` varchar(30) NOT NULL,
  `Song Genre` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`Song Name`, `Album`, `Song Artist`, `Song Genre`) VALUES
('18 and Life', 'Skid Row', 'Skid Row', 'Metal'),
('A.V.H.', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('All Through the Night', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Already Gone', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Angel', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Animals', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Anything Goes', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('As Long as You Follow', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Back Home Again', 'Night Songs', 'Cinderella', 'Rock'),
('Bad Boys', 'Whitesnake', 'Whitesnake', 'Rock'),
('Beautiful, Dirty, Rich', 'The Fame', 'Lady Gaga', 'Pop'),
('Been There Done That', 'Get Right With the Man', 'Van Zant', 'Country'),
('Best of my Love', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Big Guns', 'Skid Row', 'Skid Row', 'Metal'),
('Big Love', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Brown Eyes', 'The Fame', 'Lady Gaga', 'Pop'),
('Can\'t Stand the Heartache', 'Skid Row', 'Skid Row', 'Metal'),
('Change of Heart', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Children of the Night', 'Whitesnake', 'Whitesnake', 'Rock'),
('Crying In The Rain', 'Whitesnake', 'Whitesnake', 'Rock'),
('Desire', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('Desperado', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Deuces Are Wild', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('Don\'t Stop', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Don\'t Turn Away', 'Whitesnake', 'Whitesnake', 'Rock'),
('Dreams', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Eh, Eh (Nothing Else I Can Say)', 'The Fame', 'Lady Gaga', 'Pop'),
('Everywhere', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Family Man', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Far Away', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Fight for all the Wrong Reasons', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Follow You Home', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Girls Just Want to Have Fun', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Give Me All Your Love', 'Whitesnake', 'Whitesnake', 'Rock'),
('Go Insane', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Go Your Own Way', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Gold Dust Woman', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Gypsy', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Hat Full of Stars', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Hell on Wheels', 'Night Songs', 'Cinderella', 'Rock'),
('Hellraiser', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('Help Somebody', 'Get Right With the Man', 'Van Zant', 'Country'),
('Here I Am', 'Skid Row', 'Skid Row', 'Metal'),
('Here I Go Again', 'Whitesnake', 'Whitesnake', 'Rock'),
('Hold Me', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('I Can\'t Help Myself', 'Get Right With the Man', 'Van Zant', 'Country'),
('I Don\'t Want To Change The World', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('I Drove All Night', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('I Know My History', 'Get Right With the Man', 'Van Zant', 'Country'),
('I Like It Rough', 'The Fame', 'Lady Gaga', 'Pop'),
('I Remember You', 'Skid Row', 'Skid Row', 'Metal'),
('I\'m Doin\' Alright', 'Get Right With the Man', 'Van Zant', 'Country'),
('I\'m down', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('I\'m so Afraid', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('In From the Outside', 'Night Songs', 'Cinderella', 'Rock'),
('Is This Love', 'Whitesnake', 'Whitesnake', 'Rock'),
('It\'s So Easy', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Janie\'s Got a Gun', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('Just Dance', 'The Fame', 'Lady Gaga', 'Pop'),
('Kings and Queens', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Landslide', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Last Child', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Little Lies', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Livin\' on the Edge', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('Love in an Elevator', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('Love in Store', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Lovegame', 'The Fame', 'Lady Gaga', 'Pop'),
('Lovin\' You', 'Get Right With the Man', 'Van Zant', 'Country'),
('Lyin Eyes', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Magic Touch', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Making\' A Mess', 'Skid Row', 'Skid Row', 'Metal'),
('Mama, I\'m Coming Home', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('Midnight/Tornado', 'Skid Row', 'Skid Row', 'Metal'),
('Monday Morning', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Money Changes Everything', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Money Honey', 'The Fame', 'Lady Gaga', 'Pop'),
('Mr. Brownstone', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Mr. Tinkertrain', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('My Michelle', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Never Going Back Again', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Next Contestant', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Night Songs', 'Night Songs', 'Cinderella', 'Rock'),
('Nightrain', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('No More Tears', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('No Questions Asked', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Nobody Gonna Tell Me What to do', 'Get Right With the Man', 'Van Zant', 'Country'),
('Nobody\'s Fool', 'Night Songs', 'Cinderella', 'Rock'),
('Nothin\' For Nothin\'', 'Night Songs', 'Cinderella', 'Rock'),
('Once Around the Ride', 'Night Songs', 'Cinderella', 'Rock'),
('One of These Nights', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Out Ta Get Me', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Over my Head', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Paper Doll', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Paradise City', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Peaceful, Easy Feeling', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Permanent Vacation', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Photograph', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Piece of Me', 'Skid Row', 'Skid Row', 'Metal'),
('Plain Jane', 'Get Right With the Man', 'Van Zant', 'Country'),
('Push, Push', 'Night Songs', 'Cinderella', 'Rock'),
('Rag Doll', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Rattlesnake Shake', 'Skid Row', 'Skid Row', 'Metal'),
('Remember (Walikng in the Sand)', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Rhiannon', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Road To Nowhere', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('Rocket Queen', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Rockstar', 'All the Right Reasons', 'Nickleback', 'Rock'),
('S.I.N.', 'No More Tears', 'Ozzy Osbourne', 'Metal'),
('Same old Song and Dance', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Sara', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Savin\' Me', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Say You Love Me', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Second Hand News', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Seven Wonders', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Shake Me', 'Night Songs', 'Cinderella', 'Rock'),
('She Bop', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Side of a Bullet', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Silver Springs', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Simoriah', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Sisters of Avalon', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Sisters of the Moon', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Skies the Limit', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Somebody Save Me', 'Night Songs', 'Cinderella', 'Rock'),
('Someone That You\'re With', 'All the Right Reasons', 'Nickleback', 'Rock'),
('Songbird', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('St. John', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('Starstruck', 'The Fame', 'Lady Gaga', 'Pop'),
('Still of the Night', 'Whitesnake', 'Whitesnake', 'Rock'),
('Storms', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Straight for the Heart', 'Whitesnake', 'Whitesnake', 'Rock'),
('Summerboy', 'The Fame', 'Lady Gaga', 'Pop'),
('Sweet Child O\' Mine', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Sweet Emotion', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Sweet Little Sister', 'Skid Row', 'Skid Row', 'Metal'),
('Sweet Mama', 'Get Right With the Man', 'Van Zant', 'Country'),
('Take It Easy', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Take it to the Limit', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('Takin Up Space', 'Get Right With the Man', 'Van Zant', 'Country'),
('Tequila Sunrise', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('The Chain', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('The Fame', 'The Fame', 'Lady Gaga', 'Pop'),
('The Goonies \'R\' Good Enough', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('The Movie', 'Permanent Vacation', 'Aerosmith', 'Rock'),
('The Other Side', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('Thigns I Miss the Most', 'Get Right With the Man', 'Van Zant', 'Country'),
('Think About Me', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Think About You', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Time After Time', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('True Colors', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Tusk', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Unhook the Stars', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Walk This Way', 'Aerosmith\'s Greatest Hits', 'Aerosmith', 'Rock'),
('Welcome to the Jungle', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('What it Takes', 'The best of Aerosmith: The Millennium Collection', 'Aerosmith', 'Rock'),
('What Makes You Think You\'re the One', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('When You Were Mine', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Who Let in the Rain', 'The Essential Cyndi Lauper', 'Cyndi Lauper', 'Pop'),
('Witchy Woman', 'The Eagles: Their Greatest Hits', 'The Eagles', 'Rock'),
('World Turning', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('You Make Loving Fun', 'The Very Best of Fleetwood Mac', 'Fleetwood Mac', 'Rock'),
('Your\'re Crazy', 'Appetite For Destruction', 'Guns N\' Roses', 'Rock'),
('Youth Gone Wild', 'Skid Row', 'Skid Row', 'Metal'),
('Zombie Stomp', 'No More Tears', 'Ozzy Osbourne', 'Metal');

-- --------------------------------------------------------

--
-- Table structure for table `SongsGenre`
--

CREATE TABLE `SongsGenre` (
  `SongName` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SongsGenre`
--

INSERT INTO `SongsGenre` (`SongName`) VALUES
('Country'),
('Disco'),
('Heavy metal'),
('Jazz'),
('Metal'),
('Pop'),
('Punk Rock'),
('R&B'),
('Rap'),
('Rock'),
('Soul'),
('Techno');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` varchar(24) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `Date of Birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`ID`, `password`, `email`, `Date of Birth`) VALUES
('Aero', 'Aerorulez', 'aero@gmail.com', '1980-05-02'),
('BertErnie', 'SeasameStreet', 'BertErnie@gmail.com', '1998-11-09'),
('BobMeyer', 'Meyerslegacy', 'BobMeyer@wh.gov', '1978-11-22'),
('Cinder', 'Cinder12', 'Cinder@gmail.com', '1800-05-25'),
('Cyndi', 'Cyndi213', 'Cyndi@gmail.com', '1998-05-05'),
('FM', 'FM45', 'FM@gmail.com', '1970-06-07'),
('Frank05', 'LandOSVU', 'Frank05@yahoo.com', '2004-02-29'),
('Galm1', 'Cipher', 'Galm1@galm.mil', '1978-08-04'),
('Garuda1', 'Talisman', 'Garuda1@garuda.mil', '1985-02-28'),
('GaryStones', 'BobLuck78', 'GaryStones@USAA.mil', '1978-11-20'),
('GR', 'GR87', 'GR@gmail.com', '1985-04-01'),
('JohnKingston', 'Mary1975', 'JohnKingston@msn.com', '1985-02-28'),
('JohnMcJohn', 'Jingles04', 'JohnMcJohn@yahoo.com', '1979-05-13'),
('KateLockwell', 'Unnlead', 'KateLockwell@yahoo.com', '1985-04-16'),
('LG', 'LGRULEZ', 'LG@gmail.com', '1980-03-04'),
('LucyFran', 'MegaCnt', 'LucyFran@who.gov', '2001-09-11'),
('MaryAnne', 'FavGranny', 'MaryAnne@charter.net', '1986-07-04'),
('MatthewJones', '32299', 'MatthewJones@aol.com', '1999-03-22'),
('Moebius1', 'IAF001', 'Moebius1@moebius.mil', '1994-06-15'),
('MRN', '430388061521', 'MRN@mrn.com', '1965-01-31'),
('NB', 'NBrulex', 'NB@gmail.com', '1970-01-21'),
('OO', 'OOBOOO', 'OORULZ@gmail.com', '1960-05-07'),
('Razgriz1', 'Blaze', 'Razgriz1@gor.mil', '1978-08-04'),
('SKid', 'SKIDROQ', 'SKIDROW@gmail.com', '1990-05-06'),
('Strider1', 'Trigger', 'Strider1@lrssg.mil', '1978-11-20'),
('TE', 'TEeagles', 'TE@gmail.com', '1960-02-04'),
('TimothyBlake3', '123456789', 'TimothyBlake3@yahoo.com', '1978-08-04'),
('VertOtool', 'ot0l', 'VertOtool@yahoo.com', '1964-06-15'),
('VZ', 'VZ76', 'VZ@gmail.com', '1980-02-04'),
('WS', 'whitesnake', 'whitesnake@gmail.com', '1970-04-24'),
('xXGamer_boyXx', 'CODBO2E', 'xXGamer_boyXx@gmail.com', '1994-06-15'),
('yourMOM33', 'YOURmom33', 'yourMOM33@gmail.com', '1994-06-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Addedto`
--
ALTER TABLE `Addedto`
  ADD UNIQUE KEY `PlaylistUserID` (`PlaylistUserID`),
  ADD KEY `Songname` (`Songname`),
  ADD KEY `PlaylistUserID_2` (`PlaylistUserID`);

--
-- Indexes for table `Albums`
--
ALTER TABLE `Albums`
  ADD PRIMARY KEY (`Album Artist`);

--
-- Indexes for table `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`Artist Name`),
  ADD KEY `ArtistCity` (`ArtistCity`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RLCity` (`RLCity`);

--
-- Indexes for table `Follows`
--
ALTER TABLE `Follows`
  ADD PRIMARY KEY (`Artist`,`Followers`),
  ADD KEY `Followers` (`Followers`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`City`);

--
-- Indexes for table `Playlists`
--
ALTER TABLE `Playlists`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `Record Label`
--
ALTER TABLE `Record Label`
  ADD PRIMARY KEY (`Record Label Name`),
  ADD KEY `Loc` (`Record Label City`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
  ADD PRIMARY KEY (`Song Name`),
  ADD KEY `Song_Artist` (`Song Artist`);

--
-- Indexes for table `SongsGenre`
--
ALTER TABLE `SongsGenre`
  ADD UNIQUE KEY `SongName` (`SongName`),
  ADD UNIQUE KEY `SongName_2` (`SongName`),
  ADD KEY `SongArtist` (`SongName`),
  ADD KEY `SongName_3` (`SongName`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Addedto`
--
ALTER TABLE `Addedto`
  ADD CONSTRAINT `Addedto_ibfk_1` FOREIGN KEY (`Songname`) REFERENCES `Songs` (`Song Name`),
  ADD CONSTRAINT `Addedto_ibfk_2` FOREIGN KEY (`PlaylistUserID`) REFERENCES `Playlists` (`UserID`);

--
-- Constraints for table `Artists`
--
ALTER TABLE `Artists`
  ADD CONSTRAINT `Artists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`ID`),
  ADD CONSTRAINT `Artists_ibfk_2` FOREIGN KEY (`RLCity`) REFERENCES `Record Label` (`Record Label City`);

--
-- Constraints for table `Follows`
--
ALTER TABLE `Follows`
  ADD CONSTRAINT `Artist` FOREIGN KEY (`Artist`) REFERENCES `Artists` (`Artist Name`),
  ADD CONSTRAINT `Followers` FOREIGN KEY (`Followers`) REFERENCES `User` (`ID`);

--
-- Constraints for table `Playlists`
--
ALTER TABLE `Playlists`
  ADD CONSTRAINT `Playlists_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `User` (`ID`);

--
-- Constraints for table `Record Label`
--
ALTER TABLE `Record Label`
  ADD CONSTRAINT `Loc` FOREIGN KEY (`Record Label City`) REFERENCES `Location` (`City`);

--
-- Constraints for table `Songs`
--
ALTER TABLE `Songs`
  ADD CONSTRAINT `Song_Artist` FOREIGN KEY (`Song Artist`) REFERENCES `Artists` (`Artist Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
