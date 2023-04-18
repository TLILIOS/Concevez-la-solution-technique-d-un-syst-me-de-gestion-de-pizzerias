-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS mydb ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS mydb ;

-- -----------------------------------------------------
-- Table Adress
-- -----------------------------------------------------
DROP TABLE IF EXISTS Adress ;

CREATE TABLE IF NOT EXISTS Adress (
  streetNumber INT NOT NULL,
  streetName CHAR(30) NOT NULL,
  city CHAR(20) NOT NULL,
  postCode INT NOT NULL,
  PRIMARY KEY (streetNumber, streetName, city, postCode))
;



-- -----------------------------------------------------
-- Table Basket
-- -----------------------------------------------------
DROP TABLE IF EXISTS Basket ;


CREATE TABLE IF NOT EXISTS Basket (
  idBasket CHAR(15) NOT NULL,
 
  pizza CHAR(15) NULL,
  availability INT NULL,
  quantityItems INT NULL,
  PRIMARY KEY (idBasket))
;


CREATE UNIQUE INDEX idBasket_UNIQUE ON Basket (idBasket ASC) ;



-- -----------------------------------------------------
-- Table Customer
-- -----------------------------------------------------
DROP TABLE IF EXISTS Customer ;


CREATE TABLE IF NOT EXISTS Customer (
  CustomerEmail CHAR(20) NOT NULL,
  CustomerName CHAR(10) NULL,
  CustomerFirstName CHAR(10) NULL,
  CustomerAddress VARCHAR(45) NULL,
  CustomerPhoneN INT NULL,
  login CHAR(20) NULL,
  passWord CHAR(20) NULL,
  orderHistory VARCHAR(200) NULL,
  Adress_streetNumber INT NOT NULL,
  Adress_streetName CHAR(30) NOT NULL,
  Adress_city CHAR(20) NOT NULL,
  Adress_postCode INT NOT NULL,
  PRIMARY KEY (CustomerEmail, Adress_streetNumber, Adress_streetName, Adress_city, Adress_postCode))
;


-- -----------------------------------------------------
-- Table Employee
-- -----------------------------------------------------
DROP TABLE IF EXISTS Employee ;


CREATE TABLE IF NOT EXISTS Employee (
  emailAddress CHAR(20) NOT NULL,
  job VARCHAR(45) NULL,
  name CHAR(20) NULL,
  login VARCHAR(45) NULL,
  passWord VARCHAR(45) NULL,
  Restaurant_idRestaurant INT NOT NULL,
  Restaurant_Adress_streetNumber INT NOT NULL,
  Restaurant_Adress_streetName CHAR(30) NOT NULL,
  Restaurant_Adress_city CHAR(20) NOT NULL,
  Restaurant_Adress_postCode INT NOT NULL,
  PRIMARY KEY (emailAddress, Restaurant_idRestaurant, Restaurant_Adress_streetNumber, Restaurant_Adress_streetName, Restaurant_Adress_city, Restaurant_Adress_postCode))
;


CREATE UNIQUE INDEX emailAddress_UNIQUE ON Employee (emailAddress ASC);


CREATE UNIQUE INDEX login_UNIQUE ON Employee (login ASC);



-- -----------------------------------------------------
-- Table Ingredient
-- -----------------------------------------------------
DROP TABLE IF EXISTS Ingredient ;


CREATE TABLE IF NOT EXISTS Ingredient (
  id INT NOT NULL,
 
  unitIngredients CHAR(5) NULL,
  Pizza_name CHAR(15) NOT NULL,
  Pizza_Basket_idBasket CHAR(15) NOT NULL,
  PRIMARY KEY (id))
;



-- -----------------------------------------------------
-- Table MemoryAid
-- -----------------------------------------------------
DROP TABLE IF EXISTS MemoryAid ;


CREATE TABLE IF NOT EXISTS MemoryAid (
  idMemoryAid INT NOT NULL,
  recipe VARCHAR(100) NULL,
  ingredientQuantity VARCHAR(45) NULL,
  steps CHAR(20) NULL,
  Pizza_pizzaName CHAR(15) NOT NULL,
  Pizza_Basket_idBasket CHAR(15) NOT NULL,
  Ingredient_id INT NOT NULL,
  PRIMARY KEY (idMemoryAid, Pizza_pizzaName, Pizza_Basket_idBasket, Ingredient_id))
;


CREATE UNIQUE INDEX idMemoryAid_UNIQUE ON MemoryAid (idMemoryAid ASC);



-- -----------------------------------------------------
-- Table command
-- -----------------------------------------------------
DROP TABLE IF EXISTS command ;


CREATE TABLE IF NOT EXISTS command (
  idcommand CHAR(15) NOT NULL,
  quantity INT NULL,
  heur TIME NULL,
  date DATE NULL,
  status CHAR(15) NULL,
  paymentMethod CHAR(15) NULL,
  deliveryMode CHAR(15) NULL,
  Basket_idBasket CHAR(15) NOT NULL,
  Customer_CustomerEmail CHAR(20) NOT NULL,
  PRIMARY KEY (idcommand, Basket_idBasket, Customer_CustomerEmail))
;


CREATE UNIQUE INDEX idcommand_UNIQUE ON command (idcommand ASC) ;



-- -----------------------------------------------------
-- Table Pizza
-- -----------------------------------------------------
DROP TABLE IF EXISTS Pizza ;


CREATE TABLE IF NOT EXISTS Pizza (
  name CHAR(15) NOT NULL,
  description VARCHAR(45) NULL,
  memoryAid CHAR(10) NULL,
  size CHAR(10) NULL,
  type CHAR(10) NULL,
  Basket_idBasket CHAR(15) NOT NULL,
  PRIMARY KEY (name, Basket_idBasket))
;


CREATE UNIQUE INDEX pizzaName_UNIQUE ON Pizza (name ASC) ;



-- -----------------------------------------------------
-- Table Restaurant
-- -----------------------------------------------------
DROP TABLE IF EXISTS Restaurant ;


CREATE TABLE IF NOT EXISTS Restaurant (
  idRestaurant INT NOT NULL,
  name VARCHAR(20) NULL,
  adress VARCHAR(30) NULL,
  employee CHAR(10) NULL,
  Adress_streetNumber INT NOT NULL,
  Adress_streetName CHAR(30) NOT NULL,
  Adress_city CHAR(20) NOT NULL,
  Adress_postCode INT NOT NULL,
  PRIMARY KEY (idRestaurant, Adress_streetNumber, Adress_streetName, Adress_city, Adress_postCode))
;



-- -----------------------------------------------------
-- Table Stock
-- -----------------------------------------------------
DROP TABLE IF EXISTS Stock ;


CREATE TABLE IF NOT EXISTS Stock (
  idStock INT NOT NULL,
  ingredientAvailability INT NULL,
  inventory CHAR(20) NULL,
  unitPrice INT NULL,
  Restaurant_idRestaurant INT NOT NULL,
  Restaurant_Adress_streetNumber INT NOT NULL,
  Restaurant_Adress_streetName CHAR(30) NOT NULL,
  Restaurant_Adress_city CHAR(20) NOT NULL,
  Restaurant_Adress_postCode INT NOT NULL,
  PRIMARY KEY (idStock, Restaurant_idRestaurant, Restaurant_Adress_streetNumber, Restaurant_Adress_streetName, Restaurant_Adress_city, Restaurant_Adress_postCode))
;



-- -----------------------------------------------------
-- Table Stock
-- -----------------------------------------------------
DROP TABLE IF EXISTS Stock ;


CREATE TABLE IF NOT EXISTS Stock (
  idStock INT NOT NULL,
  ingredientAvailability INT NULL,
  inventory CHAR(20) NULL,
  unitPrice INT NULL,
  Restaurant_idRestaurant INT NOT NULL,
  Restaurant_Adress_streetNumber INT NOT NULL,
  Restaurant_Adress_streetName CHAR(30) NOT NULL,
  Restaurant_Adress_city CHAR(20) NOT NULL,
  Restaurant_Adress_postCode INT NOT NULL,
  PRIMARY KEY (idStock, Restaurant_idRestaurant, Restaurant_Adress_streetNumber, Restaurant_Adress_streetName, Restaurant_Adress_city, Restaurant_Adress_postCode))
;