  CREATE TABLE `USER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(200) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(300) CHARACTER SET latin1 NOT NULL,
  `ENABLED` tinyint(4) DEFAULT '0',
  PRIMARY KEY (ID)
);

CREATE TABLE `ADDRESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(200) DEFAULT NULL,
  `CITY` varchar(200) DEFAULT NULL,
  `ZIP_CODE` varchar(200) DEFAULT NULL,
  `STREET` varchar(200) DEFAULT NULL,
  `HOUSE_NUMBER` varchar(200) DEFAULT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `CUSTOMER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LASTNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REGISTRATION_DATE` date DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ADDRESS_ID` int(11) DEFAULT NULL,
  FOREIGN KEY (USER_ID) REFERENCES USER(ID),
  FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS(ID),
  PRIMARY KEY (ID)
);


CREATE TABLE `USER_ROLE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `ROLE` varchar(45) CHARACTER SET latin1 NOT NULL,
  FOREIGN KEY (USER_ID) REFERENCES USER(ID),
  PRIMARY KEY (ID)
);

CREATE TABLE `PRODUCT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(200) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(500) CHARACTER SET utf8 NOT NULL,
  `PRICE` float UNSIGNED DEFAULT NULL,
  `DESCRIPTION` varchar(500) COLLATE utf8_bin NOT NULL,
  `MANUFACTURER` varchar(500) COLLATE utf8_bin NOT NULL,
  `CATEGORY` varchar(500) COLLATE utf8_bin NOT NULL,
  `UNITS_IN_STOCK` int(255) NOT NULL,
  `STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_PROMOTION` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `CART` (
  `ID` int(11) NOT NULL,
  `GRAND_TOTAL` int(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE `CART_ITEM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUANTITY` int(255) NOT NULL,
  `TOTAL_PRICE` int(50) NOT NULL,
  `PRODUCT_ID`  int(11) DEFAULT NULL,
  `CART_ID`  int(11) DEFAULT NULL,
  FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID),
  FOREIGN KEY (CART_ID) REFERENCES CART(ID),
  PRIMARY KEY (ID)
);



CREATE TABLE `NEW_ORDER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` date NOT NULL,
  `STATE` varchar(255) NOT NULL,
  `CUSTOMER_ID`  int(11) DEFAULT NULL,
  `CART_ID`  int(11) DEFAULT NULL,
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID),
  FOREIGN KEY (CART_ID) REFERENCES CART(ID),
  PRIMARY KEY (ID)
);

