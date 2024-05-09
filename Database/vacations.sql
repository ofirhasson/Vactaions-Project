CREATE DATABASE  IF NOT EXISTS `vacations` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vacations`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: vacations-website
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `userId` int NOT NULL,
  `vacationId` int NOT NULL,
  PRIMARY KEY (`userId`,`vacationId`),
  KEY `user-like_idx` (`userId`),
  KEY `vacation-like_idx` (`vacationId`),
  CONSTRAINT `user-like` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vacation-like` FOREIGN KEY (`vacationId`) REFERENCES `vacations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (2,25),(2,27),(2,30),(2,32),(2,33),(3,25),(3,26),(3,29),(3,31),(3,32),(3,33),(4,25),(4,28),(4,31),(4,32),(4,33);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ofir','hasson','ofirhasson18@gmail.com','38c4b898249f7a8bd6bb0495dc7e52040c968888a32eaf621eefd9f378a03329c99d2ae0a708da5743679908d3b295e6633ba746bc3c4a5ade468bbf880a255b','admin'),(2,'ofir','hasson','ofirhasson@gmail.com','38c4b898249f7a8bd6bb0495dc7e52040c968888a32eaf621eefd9f378a03329c99d2ae0a708da5743679908d3b295e6633ba746bc3c4a5ade468bbf880a255b','user'),(3,'ofir','hasson','ofirhass@gmail.com','38c4b898249f7a8bd6bb0495dc7e52040c968888a32eaf621eefd9f378a03329c99d2ae0a708da5743679908d3b295e6633ba746bc3c4a5ade468bbf880a255b','user'),(4,'Noa','Cohen','noanoacohen234@gmail.com','1ee0b74557d7ae6f7cc9329e11cba0120450a980f73c10a5143c95cdfe4cbdbdd54f0354cb4961d5e1fa8bfcd6e8c1a7debf5eedfb323c0f74c251042be923fc','user'),(5,'asas','sadad','ofir@gmail.com','38c4b898249f7a8bd6bb0495dc7e52040c968888a32eaf621eefd9f378a03329c99d2ae0a708da5743679908d3b295e6633ba746bc3c4a5ade468bbf880a255b','user'),(6,'moishe','cohen','UQ2RW1MnYL@gmail.com','38c4b898249f7a8bd6bb0495dc7e52040c968888a32eaf621eefd9f378a03329c99d2ae0a708da5743679908d3b295e6633ba746bc3c4a5ade468bbf880a255b','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(50) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `startDate` varchar(10) NOT NULL,
  `endDate` varchar(10) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `imageName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (25,'Madrid , Spain','A vacation in Madrid promises an unforgettable blend of rich history, vibrant culture, and lively ambiance. Nestled at the heart of Spain, Madrid welcomes visitors with open arms to explore its enchanting streets and iconic landmarks. Immerse yourself in the city\'s royal legacy as you marvel at the majestic Royal Palace of Madrid, stroll through the bustling Plaza Mayor, or bask in the grandeur of the historic Puerta del Sol. Delve into the world of art and culture at renowned museums like the Prado Museum, home to masterpieces by Spanish masters such as Velázquez and Goya, or the Reina Sofia Museum, where Picasso\'s Guernica awaits. Indulge your taste buds with delectable Spanish cuisine, from savory tapas to aromatic paella, and satisfy your sweet tooth with crispy churros dipped in rich chocolate. As night falls, Madrid comes alive with its vibrant nightlife, offering a plethora of bars, clubs, and live music venues to dance the night away. Whether you\'re strolling through the leafy paths of Retiro Park, exploring charming neighborhoods like Malasaña and Chueca, or embarking on day trips to nearby towns, a vacation in Madrid promises endless excitement, cultural immersion, and cherished memories.','2024-03-13','2024-03-18',1250.00,'d50175d8-3e86-48c8-8f4d-e127f4b24f5f.jpg'),(26,'Bangkok , Thailand','Bangkok, the vibrant capital city of Thailand, is a captivating destination for vacationers seeking a blend of cultural richness, modernity, and exotic experiences. From the ornate Grand Palace showcasing traditional Thai architecture to the bustling markets like Chatuchak Weekend Market offering a sensory delight of sights, sounds, and flavors, Bangkok offers a tapestry of experiences. Visitors can explore the serene Wat Arun temple along the Chao Phraya River, indulge in delicious street food at Khao San Road, or immerse themselves in the vibrant nightlife of Sukhumvit. The city\'s fusion of ancient temples, skyscrapers, and shopping malls provides a unique backdrop for cultural exploration, culinary adventures, and urban discoveries, making Bangkok a captivating and dynamic destination for a memorable vacation experience.','2024-04-06','2024-04-19',3500.00,'7482a1fb-5ee6-442f-996a-68bb2b18de5c.jpg'),(27,'Prague , Czech Republic','A vacation in Prague, the enchanting capital of the Czech Republic, transports you to a fairytale-like cityscape steeped in centuries of history and romance. With its cobblestone streets, Gothic architecture, and charming riverside setting, Prague offers a picturesque backdrop for exploration and discovery. Wander through the winding alleys of the Old Town, where you\'ll encounter iconic landmarks such as the Astronomical Clock, the Charles Bridge adorned with Baroque statues, and the majestic Prague Castle towering over the city. Immerse yourself in the city\'s rich cultural heritage by exploring world-class museums, galleries, and theaters, or simply take in the sights and sounds of Prague\'s bustling squares and bustling markets. Indulge your palate with hearty Czech cuisine, from savory goulash and dumplings to crispy fried cheese and frothy Czech beer enjoyed in historic beer halls and cozy pubs. As night falls, Prague\'s romantic ambiance comes alive, with the glow of gas lamps illuminating the streets and the strains of live music drifting from intimate jazz clubs and lively beer gardens. Whether you\'re admiring panoramic views from Petřín Hill, cruising along the Vltava River, or soaking up the atmosphere in Prague\'s vibrant neighborhoods, a vacation in Prague promises an unforgettable blend of history, culture, and charm.','2024-04-14','2024-04-20',1950.00,'2128cae3-0507-4e53-b142-e93392367e40.jpg'),(28,'Budapest , Hungary','A vacation in Budapest, the captivating capital of Hungary, invites travelers to immerse themselves in a city brimming with beauty, culture, and history. Nestled along the banks of the majestic Danube River, Budapest boasts a stunning panorama of architectural marvels, from the Gothic spires of Buda Castle to the grandeur of the Hungarian Parliament Building. Explore the city\'s rich heritage by wandering through the charming cobblestone streets of the historic Buda Castle District, where centuries-old churches, museums, and thermal baths await discovery. Indulge in the city\'s culinary delights, sampling traditional Hungarian dishes like goulash, lángos, and chimney cake at bustling markets and cozy eateries. Relax and rejuvenate in one of Budapest\'s famous thermal baths, such as the iconic Széchenyi Thermal Bath or the lavish Gellért Baths, where healing waters and opulent architecture create a truly immersive experience. As night falls, Budapest comes alive with a vibrant nightlife scene, offering everything from trendy ruin bars and elegant rooftop lounges to lively music venues and river cruises along the Danube. Whether you\'re soaking in panoramic views from Fisherman\'s Bastion, exploring the eclectic shops of the Jewish Quarter, or simply strolling along the riverfront promenade, a vacation in Budapest promises an unforgettable blend of culture, cuisine, and relaxation.','2024-06-01','2024-06-05',1860.00,'afe1b01c-b210-4b52-979b-79ce81fb796a.jpg'),(29,'Rio de Janeiro , Brazil','A vacation in Rio de Janeiro, the iconic city nestled along the sun-kissed shores of Brazil, promises an unforgettable blend of vibrant culture, breathtaking natural beauty, and endless entertainment. With its world-famous beaches, including Copacabana and Ipanema, Rio invites visitors to soak up the sun, feel the rhythm of samba music, and embrace the city\'s infectious energy. Explore iconic landmarks such as the towering Christ the Redeemer statue atop Corcovado Mountain, offering panoramic views of the city, or the picturesque Sugarloaf Mountain, accessible by cable car. Immerse yourself in the city\'s rich cultural heritage by wandering through historic neighborhoods like Santa Teresa, known for its bohemian charm and colorful street art, or experiencing the pulsating beats of live samba music in the lively Lapa district. Indulge your palate with mouthwatering Brazilian cuisine, from feijoada and caipirinhas to fresh seafood and tropical fruits, served in bustling street markets, churrascarias, and upscale restaurants. As night falls, Rio comes alive with vibrant nightlife, with beachfront bars, samba clubs, and Carnival celebrations offering endless entertainment until the early hours. Whether you\'re exploring the lush landscapes of Tijuca National Park, dancing in the streets during Carnival, or simply relaxing on the golden sands of Rio\'s world-famous beaches, a vacation in Rio de Janeiro promises an unforgettable adventure filled with warmth, beauty, and excitement.','2024-07-04','2024-07-25',6050.00,'1f42dde1-425a-41bf-b294-468b3e5256da.jpg'),(30,'New York , USA','A vacation in New York City promises an exhilarating adventure through one of the world\'s most vibrant and iconic destinations. From the dazzling lights of Times Square to the historic streets of Greenwich Village, the city offers a kaleidoscope of experiences for every traveler. Immerse yourself in the cultural richness of renowned museums like the Metropolitan Museum of Art and the Museum of Modern Art, or catch a Broadway show in the legendary Theater District. Explore the diverse neighborhoods of Manhattan, each with its own unique charm and character, from the trendy boutiques of SoHo to the bustling markets of Chinatown. Indulge your palate with a culinary journey through the city\'s diverse culinary scene, sampling everything from world-class fine dining to beloved street food classics like pizza and bagels. Whether you\'re admiring the iconic skyline from the top of the Empire State Building, strolling through the leafy paths of Central Park, or cruising along the Hudson River at sunset, a vacation in New York City promises an unforgettable blend of excitement, culture, and endless possibilities.','2024-05-01','2024-05-26',9500.00,'65b3cd7d-916a-4672-a556-666ef63dcce5.jpg'),(31,'Tokyo , Japan','A vacation in Tokyo, Japan, offers an unforgettable immersion into a bustling metropolis where tradition meets innovation. From the neon-lit streets of Shinjuku to the serene gardens of Meiji Shrine, Tokyo captivates visitors with its dynamic energy and rich cultural heritage. Explore iconic landmarks such as the historic Senso-ji Temple in Asakusa and the futuristic skyline of the Tokyo Skytree, offering panoramic views of the cityscape. Dive into the vibrant street food scene at bustling markets like Tsukiji Outer Market and experience the art of sushi-making at world-renowned sushi bars. Immerse yourself in Japanese culture by participating in traditional tea ceremonies, exploring the historic districts of Edo-period architecture in Yanaka, and witnessing the spectacle of sumo wrestling matches. Indulge in shopping sprees at trendy fashion districts like Harajuku and Shibuya, or discover hidden gems in the quirky alleys of Golden Gai and Omoide Yokocho. Whether you\'re soaking in the tranquil atmosphere of Ueno Park, experiencing the pulsating nightlife of Roppongi, or marveling at the cherry blossoms in full bloom during springtime, a vacation in Tokyo promises an unforgettable fusion of tradition, modernity, and endless discovery.','2024-04-01','2024-04-27',10000.00,'825c9b17-de28-4ec2-9716-2c36bb8b9757.jpg'),(32,'Berlin , Germany','A vacation in Berlin, Germany, invites travelers to immerse themselves in a city that seamlessly blends history, culture, and creativity. From the remnants of its tumultuous past, such as the Berlin Wall and Checkpoint Charlie, to the vibrant street art adorning its neighborhoods, Berlin offers a fascinating journey through time and space. Explore iconic landmarks like the Brandenburg Gate and the Reichstag building, where the scars of history meet modern architecture and political significance. Dive into the city\'s rich cultural scene with visits to world-class museums on Museum Island, contemporary art galleries in Mitte, and vibrant markets like Mauerpark. Indulge in the diverse culinary offerings, from traditional German dishes like currywurst and schnitzel to international cuisine from all corners of the globe. Experience the city\'s legendary nightlife in trendy neighborhoods like Kreuzberg and Friedrichshain, where underground clubs, rooftop bars, and beer gardens offer endless entertainment until the early hours. Whether you\'re exploring the green spaces of Tiergarten, biking along the Spree River, or simply soaking in the cosmopolitan atmosphere of Potsdamer Platz, a vacation in Berlin promises an unforgettable blend of history, culture, and vibrant urban life.','2024-08-08','2024-08-13',2650.00,'6b01888b-d564-40fc-b222-26fc6203040a.jpg'),(33,'Lisbon , Portugal','A vacation in Lisbon, Portugal, unfolds like a love letter to the senses, captivating travelers with its picturesque streets, historic charm, and vibrant culture. Set against the backdrop of seven hills overlooking the Tagus River, Lisbon is a city of contrasts where ancient traditions blend seamlessly with modern flair. Wander through the narrow cobblestone alleys of the Alfama district, where colorful buildings adorned with azulejos tiles line the streets, and the soulful strains of fado music fill the air. Explore historic landmarks like the iconic São Jorge Castle, the grand Jerónimos Monastery, and the majestic Belém Tower, each bearing witness to the city\'s rich maritime history. Indulge in the city\'s culinary delights, savoring fresh seafood dishes, creamy pastéis de nata custard tarts, and robust Portuguese wines at local taverns and markets. Embrace the laid-back pace of life as you stroll along the riverside promenade of Cais do Sodré, sip espresso in charming cafes, or bask in the sun on the golden sands of nearby beaches like Cascais and Estoril. Whether you\'re exploring the vibrant neighborhoods of Bairro Alto and Chiado, riding the historic tram 28 through the city\'s hills, or simply admiring panoramic views from the Miradouros viewpoints, a vacation in Lisbon promises an enchanting blend of history, culture, and Mediterranean charm.','2024-03-08','2024-03-13',850.00,'9ad67c02-4126-4516-bc93-0a6c5256aa3b.jpg'),(34,' Buenos Aires , Argentina','A vacation in Buenos Aires, Argentina, is a vibrant journey through a city that pulsates with passion, culture, and history. Known as the \"Paris of South America,\" Buenos Aires enchants visitors with its European-style architecture, bustling boulevards, and lively neighborhoods. Explore the historic heart of the city in Plaza de Mayo, where iconic landmarks like the Casa Rosada and the Metropolitan Cathedral stand as symbols of Argentina\'s rich heritage. Wander through the colorful streets of La Boca, home to the famous Caminito street museum and the vibrant La Bombonera stadium, where the spirit of tango fills the air. Indulge in the city\'s culinary delights, sampling succulent steaks, empanadas, and dulce de leche treats at traditional parrillas and cafes. Experience the passion and rhythm of Argentine tango in the milongas of San Telmo or the elegant theaters of Avenida Corrientes. Escape the urban bustle in the tranquil parks of Palermo, where lush green spaces, lakes, and rose gardens offer a peaceful retreat from the city. Whether you\'re sipping mate in a local cafe, browsing for antiques in the historic San Telmo market, or immersing yourself in the vibrant street art scene of Palermo Soho, a vacation in Buenos Aires promises an unforgettable blend of culture, cuisine, and Latin American flair.','2024-06-18','2024-06-30',3620.00,'184036fa-1e15-454e-b36b-b7c6394d5cb0.jpg'),(35,'Tel Aviv , Israel','A vacation in Tel Aviv, Israel, is a vibrant journey through a city that harmoniously blends modernity with rich cultural heritage, stunning beaches, and an electrifying nightlife. Situated along the shores of the Mediterranean Sea, Tel Aviv welcomes visitors with its beautiful coastline, lined with golden sandy beaches perfect for soaking up the sun, swimming, and enjoying water sports. Explore the city\'s diverse neighborhoods, from the historic streets of Jaffa with its ancient port and bustling flea market to the cosmopolitan boulevards of Rothschild Boulevard, filled with trendy cafes, boutiques, and Bauhaus architecture. Immerse yourself in Tel Aviv\'s thriving cultural scene by visiting world-class museums, galleries, and theaters, or experiencing the city\'s vibrant street art and music festivals. Indulge in the city\'s culinary delights, from traditional Middle Eastern cuisine like hummus, falafel, and shakshuka to international gourmet restaurants offering innovative fusion dishes. As night falls, Tel Aviv comes alive with an eclectic nightlife, offering everything from hip rooftop bars and beachfront clubs to underground parties and live music venues. Whether you\'re admiring panoramic views from the Tel Aviv promenade, exploring the vibrant markets of Carmel and Levinsky, or simply relaxing on the beach with a refreshing drink in hand, a vacation in Tel Aviv promises an unforgettable blend of sun, sea, culture, and excitement.','2024-08-13','2024-08-20',3720.00,'100f0543-d659-4c78-b488-9b87a1f3d661.jpg'),(36,'New Zealand','A vacation in New Zealand promises an unparalleled adventure through breathtaking landscapes, vibrant cities, and rich cultural experiences. Nestled in the southwestern Pacific Ocean, New Zealand is renowned for its stunning natural beauty, from the snow-capped peaks of the Southern Alps to the pristine beaches and fjords of the South Island. Explore the lush rainforests and geothermal wonders of the North Island, including the iconic geysers of Rotorua and the enchanting glowworm caves of Waitomo. Embark on outdoor adventures such as hiking the majestic Tongariro Alpine Crossing, bungee jumping in Queenstown, or kayaking through the tranquil waters of Milford Sound. Discover the country\'s unique Maori heritage by visiting traditional marae (meeting grounds), experiencing cultural performances, and sampling delicious indigenous cuisine like hangi (earth-cooked meals) and kaimoana (seafood). Indulge in New Zealand\'s world-class wines and gourmet cuisine, from fresh seafood and lamb to award-winning Sauvignon Blancs and Pinot Noirs. Experience the vibrant city life of Auckland, Wellington, and Christchurch, where you can explore bustling markets, vibrant arts scenes, and eclectic dining options. Whether you\'re seeking adrenaline-pumping adventures, serene natural beauty, or rich cultural experiences, a vacation in New Zealand promises an unforgettable journey filled with excitement, exploration, and relaxation.','2024-06-15','2024-06-21',4630.00,'3af72a9a-fd96-4fc5-bf37-1dabfacb7823.jpg'),(69,'Eilat , Israel','Eilat, nestled at the southern tip of Israel along the Red Sea, offers a mesmerizing vacation experience blending sun-soaked beaches, vibrant marine life, and desert landscapes. Known for its crystal-clear waters and colorful coral reefs, Eilat is a paradise for snorkelers and scuba divers, showcasing a rich underwater world teeming with tropical fish and marine creatures. Beyond its aquatic wonders, Eilat boasts stunning desert scenery, where visitors can embark on Jeep safaris, hike through rugged canyons like Timna Park, or unwind in luxury resorts overlooking the Red Sea. The city\'s lively promenade, lined with restaurants, shops, and entertainment venues, provides a vibrant hub for leisure and relaxation, making Eilat an ideal destination for a rejuvenating and adventurous vacation by the sea.','2024-08-01','2024-08-04',1050.00,'64ddaca9-41c1-4751-808f-d3ed78c03400.jpg'),(70,'Barcelona , Spain','Barcelona, the cosmopolitan capital of Catalonia in Spain, offers a captivating blend of art, architecture, culture, and Mediterranean charm, making it a sought-after vacation destination. The city is renowned for its iconic landmarks, such as the breathtaking Sagrada Familia designed by Antoni Gaudí, and the vibrant Las Ramblas boulevard, bustling with street performers and market stalls. Visitors can explore the historic Barri Gòtic (Gothic Quarter) with its narrow cobblestone streets and medieval buildings, or relax on the golden beaches along the Mediterranean coast. Barcelona\'s rich cultural scene includes world-class museums like the Museu Picasso and vibrant neighborhoods like El Raval, known for its eclectic mix of shops, cafes, and street art. With a culinary scene featuring delectable Catalan cuisine and a lively nightlife with trendy bars and clubs, Barcelona offers a dynamic and unforgettable vacation experience for travelers seeking art, culture, history, and seaside leisure all in one vibrant city.','2024-06-06','2024-06-11',1980.00,'6bd2bc48-aed0-4f56-8fb7-7a3db4c2ae0e.webp'),(71,'Beijing , China','Beijing, the dynamic capital city of China, beckons travelers with its fascinating blend of ancient history and modernity. A vacation in Beijing promises an immersive journey through centuries-old landmarks like the magnificent Forbidden City, a UNESCO World Heritage site showcasing imperial architecture and treasures. The iconic Great Wall of China, snaking through picturesque mountains, offers breathtaking views and a glimpse into China\'s rich past. Beyond its historical marvels, Beijing buzzes with modern life, boasting futuristic skyscrapers, bustling markets like the vibrant Wangfujing Street, and serene parks such as the expansive Beihai Park. Visitors can savor authentic Peking duck cuisine, explore traditional hutongs (narrow alleyways), or delve into contemporary art and culture at the 798 Art District. With a mix of ancient grandeur and contemporary allure, Beijing captivates travelers seeking a multifaceted vacation experience steeped in history, culture, and modern marvels.','2024-05-04','2024-05-18',5230.00,'38abb93b-152d-45c8-a36a-ec666144909d.jpg'),(72,'Miami , USA','Miami, located on the southeastern coast of Florida, is a vibrant and diverse vacation destination known for its sunny beaches, Art Deco architecture, and lively atmosphere. Visitors flock to Miami\'s iconic South Beach, with its golden sands, clear blue waters, and bustling promenade lined with trendy restaurants, bars, and boutique shops. The city\'s cultural scene is equally captivating, with world-class art galleries like the Perez Art Museum Miami showcasing contemporary works and the vibrant street art of Wynwood Walls. Miami\'s culinary landscape is a melting pot of flavors, from fresh seafood and Latin American cuisine to innovative fusion restaurants. Beyond the beach and urban delights, nature enthusiasts can explore the nearby Everglades National Park, home to diverse wildlife and scenic wetlands. With its blend of sun, sea, art, culture, and nightlife, Miami offers a dynamic and unforgettable vacation experience for travelers seeking a mix of relaxation and excitement.','2025-01-05','2025-01-26',8260.00,'8a297537-2af6-46b9-b11c-d08e13eed20e.jpg'),(73,'Las Vegas , USA','Las Vegas, often dubbed as the \"Entertainment Capital of the World,\" is a glittering oasis in the heart of the Nevada desert that promises an unforgettable vacation experience. Known for its iconic casino resorts along the famous Las Vegas Strip, this vibrant city is a playground for adults seeking excitement, luxury, and non-stop entertainment. From world-class casinos offering gaming and live shows to opulent hotels with extravagant themed designs, Las Vegas is a spectacle of lights, glamour, and indulgence. Visitors can explore themed attractions like the replica Eiffel Tower at Paris Las Vegas or take in breathtaking views from the High Roller observation wheel. The city\'s entertainment scene is unmatched, with top-notch performances by renowned artists, spectacular Cirque du Soleil shows, and lively nightlife at trendy clubs and bars. Beyond the Strip, outdoor adventures await, from hiking in nearby Red Rock Canyon to exploring the stunning Hoover Dam. With its unique blend of entertainment, luxury, and excitement, Las Vegas offers an exhilarating vacation experience unlike any other.','2024-07-04','2024-07-31',9640.00,'6f148e81-8cc0-4652-864c-a07531266497.jpg'),(74,'London , United Kingdom','London, the vibrant capital of the United Kingdom, is a city that seamlessly blends rich history with modern cosmopolitan flair, offering an enchanting vacation experience. Steeped in iconic landmarks, visitors can marvel at the grandeur of Buckingham Palace, witness the majesty of Tower Bridge, and explore the historic Tower of London with its crown jewels. London\'s cultural scene is equally captivating, with world-renowned museums like the British Museum housing treasures from around the globe, and the Tate Modern showcasing cutting-edge contemporary art. The city\'s diverse neighborhoods offer something for every traveler, from the trendy boutiques of Covent Garden to the eclectic street markets of Camden Town. West End theaters stage spectacular musicals and plays, while cozy pubs and Michelin-starred restaurants cater to culinary enthusiasts. London\'s green spaces, such as Hyde Park and Kensington Gardens, provide serene retreats amidst the bustling cityscape. With its blend of history, culture, art, cuisine, and vibrant energy, London promises an enriching and memorable vacation for visitors from all walks of life.','2024-10-05','2024-10-10',3780.00,'42f3348f-5e85-4af3-8a8d-9451c9df013c.jpg'),(76,'Paris , France','Paris, the enchanting capital of France, is a timeless destination that captures the hearts of travelers with its romantic ambiance, iconic landmarks, and artistic allure. A vacation in Paris promises a journey through history, culture, and gastronomy, all set against the backdrop of stunning architecture and scenic beauty. Visitors can marvel at the architectural masterpiece of the Eiffel Tower, stroll along the elegant Champs-Élysées boulevard, and explore world-class museums like the Louvre, home to priceless artworks including the Mona Lisa. The city\'s charming neighborhoods, such as Montmartre with its bohemian vibe and the historic Marais district, offer delightful experiences at every turn. Paris is also renowned for its culinary delights, from cozy cafes serving freshly baked croissants to Michelin-starred restaurants offering gourmet French cuisine. Whether taking a romantic boat cruise on the Seine River, admiring the Gothic beauty of Notre-Dame Cathedral, or simply savoring the ambiance of Parisian parks and gardens, a vacation in Paris is a captivating blend of elegance, culture, and romance that leaves a lasting impression.','2024-11-09','2024-11-14',2640.00,'f2593d0b-c487-44b0-933a-4e594f364032.jpg'),(77,'Seoul , South Korea','Seoul, the bustling capital of South Korea, is a vibrant city that seamlessly blends modernity with tradition, offering a captivating vacation experience. Visitors to Seoul can immerse themselves in the rich cultural heritage of the city by exploring ancient palaces like Gyeongbokgung and Changdeokgung, where they can witness traditional ceremonies and architecture dating back centuries. The city\'s dynamic neighborhoods, such as Myeongdong and Hongdae, pulse with energy, offering endless shopping, dining, and entertainment options. Seoul\'s culinary scene is a delight for food enthusiasts, with a diverse array of street food markets, trendy cafes, and Michelin-starred restaurants showcasing Korean cuisine at its finest. Beyond the urban hustle, nature lovers can escape to the serene Bukhansan National Park or stroll along the picturesque Han River. Whether experiencing the high-tech innovations of Gangnam or delving into the historic charm of Bukchon Hanok Village, a vacation in Seoul promises a harmonious blend of ancient traditions and modern delights that captivate travelers from around the world.','2024-12-04','2024-12-18',7930.00,'cd47b25e-7912-4637-8579-75a2b6935aed.jpg'),(78,'Mykonos , Greece','Mykonos, a gem in the Aegean Sea and part of the Cyclades islands in Greece, is a dreamy vacation destination known for its picturesque white-washed buildings, azure waters, and vibrant nightlife. A vacation in Mykonos offers a perfect blend of relaxation and excitement, where visitors can unwind on pristine beaches like Paradise Beach or Super Paradise Beach, soaking in the Mediterranean sun and enjoying water sports such as snorkeling and windsurfing. The island\'s charming villages, such as Mykonos Town (Chora) with its narrow winding streets and iconic windmills, exude a quaint charm and are perfect for leisurely strolls and exploring boutiques, art galleries, and traditional tavernas. As the sun sets, Mykonos comes alive with its legendary nightlife, offering beach clubs, bars, and clubs that host world-renowned DJs and parties that last until dawn. Whether seeking a peaceful retreat by the sea or a lively escape filled with music and dancing, Mykonos enchants visitors with its beauty, charm, and vibrant atmosphere, making it a beloved vacation destination for travelers from around the globe.','2024-07-07','2024-07-13',1360.00,'23a97430-a6cf-4a0c-8812-0a9e6c957575.jpg'),(79,'Amsterdam , Netherlands','Amsterdam, the vibrant capital of the Netherlands, is a captivating vacation destination that combines rich history, cultural diversity, and picturesque landscapes. A vacation in Amsterdam offers a unique blend of old-world charm and modern innovation, where visitors can explore historic landmarks such as the iconic Anne Frank House, the Van Gogh Museum showcasing the works of the Dutch master, and the picturesque canals lined with beautiful 17th-century buildings. The city\'s lively neighborhoods like Jordaan and De Pijp are filled with trendy boutiques, cozy cafes, and vibrant markets, offering a taste of local life and culture. Amsterdam\'s renowned art scene extends beyond museums, with street art and galleries showcasing contemporary works. Cycling is a popular way to explore the city, with bike-friendly paths and parks like Vondelpark providing a scenic backdrop for outdoor activities. Whether admiring tulip fields in spring, cruising the canals, or sampling Dutch delicacies like stroopwafels and cheese, Amsterdam promises a memorable vacation experience filled with charm, history, and cultural exploration.','2025-02-09','2025-02-13',3250.00,'5de85d86-9d29-4a7c-acd0-3aca3561d20a.jpg'),(80,'Bora Bora , France','Bora Bora, a stunning island paradise in French Polynesia, is a dream vacation destination known for its pristine beaches, turquoise lagoons, and overwater bungalows. A vacation in Bora Bora is a getaway to a tropical haven, where visitors can relax on powdery white sands, swim in crystal-clear waters teeming with colorful marine life, and snorkel or dive amidst vibrant coral reefs. The island\'s iconic Mount Otemanu offers breathtaking panoramic views, while boat tours and excursions allow exploration of nearby islets and hidden coves. Bora Bora is renowned for its luxury resorts, many of which feature overwater bungalows with direct access to the ocean, creating an idyllic retreat for honeymooners and couples seeking romance. The local Polynesian culture adds to the charm, with traditional dance performances, handicraft markets showcasing exquisite artistry, and delicious Tahitian cuisine featuring fresh seafood and tropical fruits. Whether basking in the sun, indulging in water activities, or simply soaking in the natural beauty of the South Pacific, a vacation in Bora Bora promises an unforgettable experience of paradise on earth.','2024-07-20','2024-07-25',5630.00,'efe346a6-26fe-4848-8935-1c075755e636.jpg'),(81,'Vienna , Austria ','Vienna, the elegant capital of Austria, offers a captivating vacation experience steeped in history, culture, and classical beauty. A vacation in Vienna is like stepping into a fairy tale, with its magnificent imperial palaces like Schönbrunn Palace and Hofburg Palace, where visitors can immerse themselves in the grandeur of the Habsburg dynasty. The city\'s historic center, a UNESCO World Heritage site, is a treasure trove of architectural marvels, charming cobblestone streets, and cozy coffeehouses where you can savor a slice of Sachertorte. Vienna\'s cultural scene is legendary, with world-class museums like the Belvedere showcasing works by Gustav Klimt and Egon Schiele, and the Vienna State Opera offering captivating performances of Mozart, Strauss, and other classical masters. The Danube River adds to the city\'s allure, with scenic waterfront promenades and boat cruises providing panoramic views of Vienna\'s skyline. From exploring the Naschmarkt for gourmet delights to wandering through the lush gardens of the Prater, Vienna offers a blend of old-world charm and modern vibrancy that enchants visitors from around the globe.','2024-06-08','2024-06-12',4010.00,'be669e0b-815c-4401-99b8-21f51bf9eda4.jpg');
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 12:24:41