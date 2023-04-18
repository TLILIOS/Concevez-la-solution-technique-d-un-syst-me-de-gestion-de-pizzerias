INSERT INTO `Adress` (`streetNumber`, `streetName`, `city`, `postCode`)
VALUES
(10, 'John', 'Nice', 12345),
(5, 'Jane', 'Paris', 12345),
(2, 'Sebastien', 'Strasbourg', 12345),
(8, 'Emilie', 'Lyon', 12345)

INSERT INTO `Basket` (`idBasket`, `pizza`, `availability`, `quantityItems`)
VALUES
("10BAD", 'AZERT', 2, 1),
("5EFEF", 'QSDFG', 4, 2),
("2SCHG", 'WXCVB', 7, 3),
("8SCKG", 'POIUY', 10, 4);


INSERT INTO `command` (`idcommand`, `quantity`, `heur`, `date`, `status`, `paymentMethod`, `deliveryMode`, `Basket_idBasket`, `Customer_CustomerEmail`)
VALUES
("LIUBF778", 5, now(), "2023-05-21", 'valide', 'especes', 'sur place', 'kjndcv', 'kjn@yahoo.fr'),
("LIU98YH", 3, now(), "2023-05-20", "en cour", "sans cantact", "a emporter", "DJHD3", "zpps@icloud.com"),
("LKHDC92", 19, "10:56:03", "2023-05-21", 'valide', 'cart', 'livraison', 'LDBE9', 'mpa@gmail.uk');

INSERT INTO `Customer` (`CustomerEmail`, `CustomerName`, `CustomerFirstName`, `CustomerAddress`, `CustomerPhoneN`, `login`, `passWord`, `orderHistory`, `Adress_streetNumber`, `Adress_streetName`, `Adress_city`, `Adress_postCode`)
VALUES
('QZEFK@gmail.com', 'alex', 'Dupon', '7 rue de Toyon Paris', 0184973620, 'EFE939', '83G@ME', '54 Commandes', '7', 'Troyon', 'Paris', 75017),
('PKZZ@gmail.fr', 'Joeffrey', 'De la rue', '47 rue du temple', 0738092761, 'NCUEHS', 'CVBN#922', '19 Commandes', '47', 'temple', 'Paris', 75003),
('PZKKN@yahoo.uk', 'maxim', 'amien', '26 rue de Oberkompf Paris', 0604837652, 'ADLLMM', '2ONIUHG3', '28 Commandes', '26', 'Oberkompf', 'Paris', 75011);

INSERT INTO `Employee` (`emailAddress`, `job`, `name`, `login`, `passWord`, `Restaurant_idRestaurant`, `Restaurant_Adress_streetNumber`, `Restaurant_Adress_streetName`, `Restaurant_Adress_city`, `Restaurant_Adress_postCode`)
VALUES
('LKJN@gmail.com', 'commis', 'jean', 'kjnc234', '939377&lk@', 8766, 92, 'BAYEN', 'Paris', 75017),
('ABB@yahoo.fr', 'receptioniste', 'anne', 'lmnj344', 'bcnnm222', 1255, 2, 'republique', 'Paris', 75011),
('AXJN@gmail.uk', 'chef', 'lea', 'lubcbbc3', 'lb3366', 24444, 17, 'rom', 'Paris', 75008);

INSERT INTO `Ingredient` (`id`, `unitIngredients`, `Pizza_name`, `Pizza_Basket_idBasket`)
VALUES
(0039, 'gram', 'fromage','LDFJN55'),
(071, 'gram', 'viande','LOEJF8'),
(912, 'gram', 'Chorizo','MMMB');


INSERT INTO `MemoryAid` (`idMemoryAid`, `recipe`, `ingredientQuantity`, `steps`, `Pizza_pizzaName`, `Pizza_Basket_idBasket`, `Ingredient_id`)
VALUES
(99485, 'fake recipe', '4 fromage', 'A + B + C', 'frommage', 'JGFH36', 7563),
(03746, 'recipe TEST', 'vnd', 'A + B + C', 'viande', 'MZIDK', 0286),
(06186, 'TEST', 'CHZ', 'A + B + C', 'CHORIZO', 'MCBYE', 19993);


INSERT INTO `Pizza`(`name`, `description`, `memoryAid`, `size`, `type`, `Basket_idBasket`)
VALUES
('Chorrizo', 'big.sz', 'test', 'MD', 'sb', 'JGFH36'),
('Frommage', 'MMMMM', 'test', 'BIG', 'sT', 'MLLZ'),
('Viande', 'ASSS', 'test', 'MD', 'sb', 'ZSXCVR');


INSERT INTO `Restaurant` (`idRestaurant`, `name`, `adress`, `employee`, `Adress_streetNumber`, `Adress_streetName`, `Adress_city`, `Adress_postCode`)
VALUES
(99383, 'Le Ritz', 'Place vendome', 'chef', 1, 'la place', 'Paris', 75001),
(1113, 'Picotte', 'Republique', 'comis', 52, 'rue de malte', 'Paris', 75011),
(22225, 'pizza pino', 'Place republique', 'pizzaiollo', 5, 'la place', 'Paris', 75011);

INSERT INTO `Stock`(`idStock`, `ingredientAvailability`, `inventory`, `unitPrice`, `Restaurant_idRestaurant`, `Restaurant_Adress_streetNumber`, `Restaurant_Adress_streetName`, `Restaurant_Adress_city`, `Restaurant_Adress_postCode`)
VALUES
(09494, 5, 'tout dispo', 8, 677, 5, 'rue de parmentier', 'Paris', 75011),
(3333, 7, 'dispo', 56, 345, 22, 'rue de rome', 'Paris', 75008),
(228, 19, 'non dispo', 61, 6668, 13, 'rue de Lyon', 'Paris', 75012);