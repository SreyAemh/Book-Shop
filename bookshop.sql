-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 02:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `publish_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `language` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `category`, `price`, `date`, `publish_date`, `image`, `language`, `author`, `description`) VALUES
(1, 'Harry Potter and the Chamber of Secrets', 'Fantasy & Magic, Humorous Stories, School & Education', 10.99, '2021-08-18 23:09:36', '2000-09-01', 'post-61214b9978a574.30788854.jpg', 'English', 'J. K. Rowling and Mary Grandpre', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\'s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.And strike it does. For in Harry\'s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockhart, a spirit named Moaning Myrtle who haunts the girls\' bathroom, and the unwanted attentions of Ron Weasley\'s younger sister, Ginny.But each of these seem minor annoyances when the real trouble begins, and someone - or something - starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects... Harry Potter himself!'),
(2, 'Harry Potter and the Prisoner of Azkaban', 'Fantasy & Magic, Humorous Stories, School & Education', 10.99, '2021-08-18 23:09:36', '2001-10-01', 'post-61214b892d3f69.32014502.jpg', 'English', 'J. K. Rowling and Mary Grandpre', 'For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort.Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter\'s defeat of You-Know-Who was Black\'s downfall as well. And the Azkaban guards heard Black muttering in his sleep, He\'s at Hogwarts . . . he\'s at Hogwarts.Harry Potter isn\'t safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst.'),
(3, 'Harry Potter and the Order of the Phoenix', 'Fantasy & Magic, Humorous Stories, School & Education', 12.99, '2021-08-19 21:46:35', '2004-09-01', 'post-61214b704461d3.83187312.jpg', 'English', 'J. K. Rowling ', 'The most eagerly anticipated book in history becomes the biggest paperback release of 2004!\r\nThe book that took the world by storm....In his fifth year at Hogwarts, Harry faces challenges at every turn, from the dark threat of He-Who-Must-Not-Be- Named and the unreliability of the government of the magical world to the rise of Ron Weasley as the keeper of the Gryffindor Quidditch Team. Along the way he learns about the strength of his friends, the fierceness of his enemies, and the meaning of sacrifice.'),
(4, 'Harlem Grown: How One Big Idea Transformed a Neighborhood', 'Biography & Autobiography - Social Activists\r\nPeople & Places - United States - African-American\r\nLi', 17.98, '2021-08-20 23:40:26', '2020-08-18', 'post-61214b472825a6.17066855.jpg', 'English', 'Tony Hillery ', '\"Hartland\'s joyful folk-art illustrations bop from the gray-toned jazzy vibrancy of a bustling city neighborhood to the colorful harvest of a lush urban farm.\" --The New York Times\r\n\"An inspiring picture book for youngsters with meaningful ties to the environment, sustainability, and community engagement.\" --Booklist\r\nDiscover the incredible true story of Harlem Grown, a lush garden in New York City that grew out of an abandoned lot and now feeds a neighborhood.\r\nOnce\r\nIn a big city called New York\r\nIn a bustling neighborhood\r\nThere was an empty lot.\r\nNevaeh called it the haunted garden.\r\nHarlem Grown tells the inspiring true story of how one man made a big difference in a neighborhood. After seeing how restless they were and their lack of healthy food options, Tony Hillery invited students from an underfunded school to turn a vacant lot into a beautiful and functional farm. By getting their hands dirty, these kids turned an abandoned space into something beautiful and useful while lea'),
(5, 'The Arbornaut: A Life Discovering the Eighth Continent in the Trees Above Us', 'Science & Technology, Life Sciences - Botany, Life Sciences - Ecology, Ecosystems & Habitats - Fores', 28, '2021-08-20 23:40:26', '2021-08-10', 'post-61214b280eae74.26730365.jpg', 'English', 'Meg Lowman ', 'Nicknamed the \"Real-Life Lorax\" by National Geographic, the biologist, botanist, and conservationist Meg Lowman--aka \"CanopyMeg\"--takes us on an adventure into the \"eighth continent\" of the world\'s treetops, along her journey as a tree scientist, and into climate action\r\n\r\nWelcome to the eighth continent!\r\nAs a graduate student exploring the rain forests of Australia, Meg Lowman realized that she couldn\'t monitor her beloved leaves using any of the usual methods. So she put together a climbing kit: she sewed a harness from an old seat belt, gathered hundreds of feet of rope, and found a tool belt for her pencils and rulers. Up she went, into the trees.\r\nForty years later, Lowman remains one of the world\'s foremost arbornauts, known as the \"real-life Lorax.\" She planned one of the first treetop walkways and helps create more of these bridges through the eighth continent all over the world.\r\nWith a voice as infectious in its enthusiasm as it is practical in its optimism, The Arbornaut ch'),
(6, 'Trees', 'Science & Nature - General, Recycling & Green Living, Poetry (see also Stories in Verse)', 17.98, '2021-08-20 23:40:26', '2021-10-19', 'post-61214b0f6af7a2.97661010.jpg', 'English', 'Tony Johnston ', 'Explore a fantastical forest in this exquisite and lyrical picture book that celebrates all trees, from maple to elm to ginkgo to magnolia to redwood--written by award-winning author Tony Johnston.\r\nPart poetry, part celebration of nature, each page of this stunning book brings readers deeper into the majestic world of trees. Old trees. Trees with shiny leaves shimmering after rain. And at night, trees holding out their limbs for the stars. Debut illustrator Tiffany Bozic created her striking artwork by painting directly on tree bark and the authenticity shines through in this meditative work.'),
(7, 'Hummingbird Salamander', 'Literary, Thrillers - Technological, Dystopian', 27, '2021-08-20 23:40:26', '2021-04-06', 'post-61214af5a388f2.37425123.jpg', 'English', 'Jeff VanderMeer', 'From the author of Annihilation, a brilliant speculative thriller of dark conspiracy, endangered species, and the possible end of all things.\r\n\r\nSecurity consultant \"Jane Smith\" receives an envelope with a key to a storage unit that holds a taxidermied hummingbird and clues leading her to a taxidermied salamander. Silvina, the dead woman who left the note, is a reputed ecoterrorist and the daughter of an Argentine industrialist. By taking the hummingbird from the storage unit, Jane sets in motion a series of events that quickly spin beyond her control.\r\nSoon, Jane and her family are in danger, with few allies to help her make sense of the true scope of the peril. Is the only way to safety to follow in Silvina\'s footsteps? Is it too late to stop? As she desperately seeks answers about why Silvina contacted her, time is running out--for her and possibly for the world.\r\nHummingbird Salamander is Jeff VanderMeer at his brilliant, cinematic best, wrapping profound questions about climate ch'),
(8, 'The Complete Cookbook for Young Chefs: 100+ Recipes That You\'ll Love to Cook and Eat', 'Cooking & Food', 19.99, '2021-08-20 23:40:26', '2018-10-16', 'post-61214ae3414a12.43793920.jpg', 'English', 'America\'s Test Kitchen Kids', 'The #1 New York Times Best Seller!\r\nIACP Award Winner\r\n\r\nWant to bake the most-awesome-ever cupcakes? Or surprise your family with breakfast tacos on Sunday morning? Looking for a quick snack after school? Or maybe something special for a sleepover? It\'s all here. Learn to cook like a pro--it\'s easier than you think.\r\n\r\nFor the first time ever, America\'s Test Kitchen is bringing their scientific know-how, rigorous testing, and hands-on learning to KIDS in the kitchen!\r\n\r\nUsing kid-tested and approved recipes, America\'s Test Kitchen has created THE cookbook every kid chef needs on their shelf. Whether you\'re cooking for yourself, your friends, or your family, The Complete Cookbook for Young Chefs has delicious recipes that will wow!\r\n\r\n1. Recipes were thoroughly tested by more than 750 kids to get them just right for cooks of all skill levels--including recipes for breakfast, snacks and beverages, dinners, desserts, and more.\r\n2. Step-by-step photos of tips and techniques will help youn'),
(9, 'Falastin: A Cookbook', 'Regional & Ethnic - Middle Eastern, Regional & Ethnic, Mediterranean, Specific Ingredients - Natural', 35, '2021-08-20 23:40:26', '2020-06-16', 'post-612148c0981ff1.95756945.jpg', 'English', 'Tara Wigley and Sami Tamimi ', 'A soulful tour of Palestinian cooking today from the Ottolenghi restaurants\' executive chef and partner--120 recipes shaped by his personal story as well as the history of Palestine.\r\nIACP AWARD FINALIST - LONGLISTED FOR THE ART OF EATING PRIZE - NAMED ONE OF THE BEST COOKBOOKS OF THE YEAR BY Forbes - Bon Appétit - NPR - San Francisco Chronicle - Food Network - Food & Wine - The Guardian - National Geographic - Smithsonian Magazine - Publishers Weekly - Library Journal\r\n\"Truly, one of the best cookbooks of the year so far.\"--Bon Appétit\r\n\r\nThe story of Palestine\'s food is really the story of its people. When the events of 1948 forced residents from all regions of Palestine together into one compressed land, recipes that were once closely guarded family secrets were shared and passed between different groups in an effort to ensure that they were not lost forever.\r\nIn Falastin (pronounced \"fa-la-steen\"), Sami Tamimi retraces the lineage and evolution of his country\'s cuisine, born of its'),
(10, 'Vegetable Kingdom: The Abundant World of Vegan Recipes', 'Vegan, Specific Ingredients - Natural Foods, Vegetarian', 30, '2021-08-20 23:40:26', '2020-02-11', 'post-61225697585014.04613964.jpg', 'English', 'Bryant Terry', 'NAACP IMAGE AWARD NOMINEE - \"Phenomenal . . . transforms the kitchen into a site for creating global culinary encounters, this time inviting us to savor Afro-Asian vegan creations.\"--Angela Y. Davis, distinguished professor emerita at the University of California Santa Cruz\r\nIACP AWARD FINALIST - NAMED ONE OF THE BEST COOKBOOKS OF THE YEAR BY The New Yorker - The Washington Post - Vogue - San Francisco Chronicle - Forbes - Food & Wine - Salon - Garden & Gun - Delish - Epicurious\r\nMore than 100 beautifully simple recipes that teach you the basics of a great vegan meal centered on real food, not powders or meat substitutes--from the James Beard Award-winning chef and author of Afro-Vegan\r\nFood justice activist and author Bryant Terry breaks down the fundamentals of plant-based cooking in Vegetable Kingdom, showing you how to make delicious meals from popular vegetables, grains, and legumes. Recipes like Dirty Cauliflower, Barbecued Carrots with Slow-Cooked White Beans, Millet Roux Mushroom Gumbo, and Citrus & Garlic-Herb-Braised Fennel are enticing enough without meat substitutes, instead relying on fresh ingredients, vibrant spices, and clever techniques to build flavor and texture.\r\nThe book is organized by ingredient, making it easy to create simple dishes or showstopping meals based on what\'s fresh at the market. Bryant also covers the basics of vegan cooking, explaining the fundamentals of assembling flavorful salads, cooking filling soups and stews, and making tasty grains and legumes. With beautiful imagery and classic design, Vegetable Kingdom is an invaluable tool for plant-based cooking today.\r\nPraise for Vegetable Kingdom\r\n\"In the great Black American tradition of the remix and doing what you can with what you got, my friend Bryant Terry goes hard at vegetables with a hip-hop eye and a Southern grandmama\'s nature. To paraphrase Maya Angelou, Bryant wants us to know that once we know vegetables better, we will cook vegetables better. He ain\'t lyin\'.\"--W. Kamau Bell, comedian, author, and host of the Emmy Award-winning series United Shades of America\r\n\"[Terry\'s] perspective is casual and family-oriented, and the book feels personal and speaks to a wide swath of cooks . . . each dish comes with a recommended soundtrack, completing his mission to provide an immersive, joyful experience.\"--Publishers Weekly (starred review)');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `book_id`, `order_date`) VALUES
(1, 10, 1, '2021-08-22 22:01:53'),
(2, 8, 7, '2021-08-22 22:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`, `address`) VALUES
(1, 'amy', '$2y$10$FIjYG4Fr9oRQGUx.nhEUUuF0GLAAmhM0t7F5WgLLvJBduVWZ8q.rm', 'admin', 'sreyaem.hourn@gmail.com', 'Phnom Penh'),
(8, 'molika', '$2y$10$jguqkPB8G7oj1S3xMLoHZ.WFVWQBynVm5z9ZKWalcOr312bBBdG2u', 'user', 'molika@gmail.com', 'Phnom Penh'),
(9, 'emily', '$2y$10$YkxqyHq5PiulqhGeJP0Z8O1yKJ6iRnIoIz58FRqSvBP50mu52K6RC', 'user', 'emily@gmail.com', 'France'),
(10, 'kaka', '$2y$10$9zBWofguNUvlYCdxgmn.h.lbXyqv2UQXK5QtPwlccesqW9AVo/dia', 'user', 'kaka@gmail.com', 'English'),
(11, 'Sreyaemh', '$2y$10$upA7zjOxKhd67zWXqGLwmuIP.TsBuPGtWTFCwaLk7fBtGoP2co2ay', 'user', 'sreyaem.hourn@gmail.com', 'Phnom Penh'),
(12, 'rady', '$2y$10$19Wx5yjnTNVAve7J8Mwm0u6oKJLhL4dbEIbP7zsHu.HAFvEdPgtGm', 'user', 'sreyaem05@gmail.com', 'Phnom Penh'),
(13, 'dara', '$2y$10$yAWaHOnw2JowzRcvXGFWZuf2qiaA6uIHVJSgvXGcYpU6IVLbXEG.a', 'user', 'dara@gmail.com', 'Phnom Penh'),
(14, 'nara', '$2y$10$AkKaREh5qB4HOjoexLt5XO4LheSPqJ1UvX4wSOP7LdA5nilYlqgt2', 'user', 'nara@gmail.com', 'Phnom Penh'),
(15, 'jhour', '$2y$10$GzhrVBwKrKO/3GLDMBTffezvYWZ.na9kwLHP5OOou6RxM3QJfSM9m', 'user', 'jhou@student.com', 'Phnom Penh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `us` (`user_id`),
  ADD KEY `bo` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `bo` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `us` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
