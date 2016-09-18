-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2016 at 07:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_oxu.az`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `username`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chingiz Mammadli', '5 star', '2016-09-18 02:25:42', '2016-09-18 10:38:43'),
(4, 2, 'Gunel Memmedli', 'Who cares?', '2016-09-18 13:11:14', '2016-09-18 13:11:14'),
(8, 1, 'Samir', 'Not interesting', '2016-09-18 13:27:19', '2016-09-18 13:27:19'),
(9, 3, 'Mammadli', 'It should be New Jersey, not York', '2016-09-18 13:28:11', '2016-09-18 13:28:11'),
(10, 9, 'Chingiz', 'Flowers', '2016-09-18 13:28:28', '2016-09-18 13:28:28'),
(11, 9, 'Camila', 'I saw this post earlier this morning', '2016-09-18 13:29:07', '2016-09-18 13:29:07'),
(12, 9, 'Togrul', 'Lorem ipsum is simply dummy text', '2016-09-18 13:29:44', '2016-09-18 13:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_18_123438_create_news_table', 1),
('2016_09_18_162133_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `headline`, `body`, `created_at`, `updated_at`) VALUES
(1, 'The rare Afghan deer that survived war', 'For more than 40 years people believed the elusive Bactrian deer was extinct in Afghanistan, unsurprising considering the conflict across the country in that time. But then, unexpectedly, in 2013, ecologist Zalmai Moheb and a team of researchers caught a glimpse of one. Their findings were recently published and the IUCN, the world conservation union and keeper of the Red List of endangered species, is also now considering reclassifying the deer, a move that would highlight just how vulnerable the animal still is. It was an extraordinary moment for Mr Moheb and one that tells a story - not just about the animal and how it managed to survive against the odds - but the country too. "We said to ourselves, ''wow, we are going to confirm the presence of this rare deer for this first time in 45 years when conservationists had almost lost hope to find this animal again in Afghanistan''''", he said. The Bactrian deer, also called the Bukhara, is a rare sub-species of red deer, native to central Asia. They are typically found in riparian habitats- areas where trees, shrubs and grasses grow along river banks.', '2016-09-17 08:46:41', '2016-09-18 11:43:01'),
(2, 'New York charity race cancelled after pipe bomb blast', 'A pipe bomb has exploded on the route of a road race in the US state of New Jersey, forcing the event to be cancelled but causing no injuries. The bomb had been placed in a rubbish bin along the route of the 5km Semper Five run in Seaside Park. The participants would have been in the area but the race had been delayed because of an unattended bag. The charity race, in its third year, is in aid of Marines and sailors and this year attracted thousands of runners. ''Serious act of violence'' The blast occurred at about 09:30 local time (13:30 GMT) on a boardwalk area, which authorities sealed off. State and federal law enforcement agencies are investigating the explosion.', '2016-09-18 10:47:45', '2016-09-18 11:30:43'),
(3, 'New York bomb was ''act of terrorism''', 'Addressing reporters on Sunday near the site of the explosion, Mr Cuomo said: "A bomb exploding in New York is obviously an act of terrorism." But he said that, as yet, no international organisation such as so-called Islamic State had claimed they were behind it. Mr Cuomo said: "We will not allow these type of people and these type of threats to disrupt our life in New York. This is freedom. This is democracy, and we are not going to allow them to take that from us. "They want to instil terror. They want to make you worry about going into New York. We''re not going to let them instil fear." He said the two devices in New York appeared similar in design, but different from the pipe bomb that detonated earlier on Saturday on the route of a charity race in New Jersey. That explosion caused no injuries.', '2016-09-18 10:48:35', '2016-09-18 11:31:08'),
(9, 'We can all recognise a flower when we see one, but it is surprisingly tricky to define what they are', 'A flower, says Kevin Drucas, is an adaptation that "was so successful that over the last 200+ million years they radiated, speciated, climbed up into trees, cliffs, hid beneath snow … even battled pathogenic fungi and insects", adding, "one could say flowers have conquered every habitat on Earth". A flower is "a very conspicuous sexual organ" Other people felt a more spiritual relationship to the flower. "A flower is to a plant as eyes are to a person...expressive, beautiful, delicate yet strong," says Kristy Hardage Launius, while Valerie Wakefield describes flowers as "magic, beauty, abundance". Many expressed the feeling that there is something indefinable about the flower. "Describing how I feel about blooming flowers is like baring my soul...how do I put it into words?" says Naomi Sunczyk.', '2016-09-18 11:38:23', '2016-09-18 11:38:23'),
(10, 'Few of us really understand the weird world of quantum physics – but our bodies might take advantage of quantum properties', 'All in the details If there’s any subject that perfectly encapsulates the idea that science is hard to understand, it’s quantum physics. Scientists tell us that the miniature denizens of the quantum realm behave in seemingly impossible ways: they can exist in two places at once, or disappear and reappear somewhere else instantly. The one saving grace is that these truly bizarre quantum behaviours don’t seem to have much of an impact on the macroscopic world as we know it, where “classical” physics rules the roost. Or, at least, that’s what scientists thought until a few years ago. Quantum processes might be at work behind some very familiar processes Now that reassuring wisdom is starting to fall apart. Quantum processes may occur not quite so far from our ordinary world as we once thought. Quite the opposite: they might be at work behind some very familiar processes, from the photosynthesis that powers plants – and ultimately feeds us all – to the familiar sight of birds on their seasonal migrations. Quantum physics might even play a role in our sense of smell.', '2016-09-18 11:38:48', '2016-09-18 11:38:48'),
(11, 'Over 100 years after the most powerful explosion in documented history, researchers are still trying to figure out exactly what happened', 'On 30 June 1908, an explosion ripped through the air above a remote forest in Siberia, near the Podkamennaya Tunguska river. The fireball is believed to have been 50-100m wide. It depleted 2,000 sq km of the taiga forest in the area, flattening about 80 million trees. The earth trembled. Windows smashed in the nearest town over 35 miles (60km) away. Residents there even felt heat from the blast, and some were blown off their feet. The crash was followed by a noise like stones falling from the sky, or of guns firing Fortunately, the area in which this massive explosion occurred was sparsely inhabited. There were no official reports of human casualties, though one local deer herder reportedly died after he was thrust into a tree from the blast. Hundreds of reindeer were also reduced to charred carcasses.', '2016-09-18 11:39:15', '2016-09-18 11:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_index` (`news_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
