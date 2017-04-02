INSERT INTO `address` (`Id`, `Country`, `City`, `Zip_Code`, `Street`, `House_Number`) VALUES
(5, 'Andorra', 'St. Petersburg', '26-398', 'P.O. Box 875, 197 Cum Street', '19'),
(6, 'Algeria', 'Cittanova', '33049', '219-2177 Porttitor Rd.', '70'),
(7, 'Bosnia and Herzegovina', 'Nieuwerkerken', '57-651', 'P.O. Box 937, 6662 Nulla. St.', '78'),
(8, 'Norfolk Island', 'São José', '00-206', '7350 Dignissim. St.', '44'),
(9, 'Australia', 'Poggio Sann Marcello', '9041', '3582 Hendrerit St.', '2'),
(10, 'Ukraine', 'Weston-super-Mare', '5564', 'P.O. Box 306, 3509 Nulla Rd.', '51'),
(11, 'Congo (Brazzaville)', 'Mantova', '4987OR', '617-6324 Diam. St.', '14'),
(12, 'Kyrgyzstan', 'Unnao', '5444DE', 'Ap #930-9611 Donec Street', '67'),
(13, 'Antigua and Barbuda', 'Savona', '8691', 'P.O. Box 734, 1282 Felis Ave', '95'),
(14, 'French Southern Territories', 'Grand Falls', '1884', '4714 Magnis Road', '92'),
(15, 'Bahamas', 'Ichtegem', '94034', '865-1485 Ultrices Av.', '37'),
(16, 'Dominica', 'Orvieto', '760149', 'P.O. Box 271, 5167 Cras Avenue', '2'),
(17, 'Burundi', 'Pirque', '5625TK', 'Ap #760-5342 Ut Avenue', '93'),
(18, 'Lesotho', 'Ajax', '29609', '8386 Porttitor Rd.', '70'),
(19, 'Vanuatu', 'Hamilton', '96669', '956-1757 Ante St.', '42'),
(20, 'Denmark', 'Chesterfield', 'DP78 3KR', 'P.O. Box 884, 4950 Mauris Ave', '26'),
(21, 'Mauritania', 'Cerami', '81991', 'Ap #267-7285 Et, Av.', '34'),
(22, 'Saint Kitts and Nevis', 'Kakisa', '2177', 'P.O. Box 969, 8828 Iaculis Av.', '68'),
(23, 'Guinea-Bissau', 'Arvier', '77480', '544-9614 Nunc Road', '37'),
(24, 'Saint Kitts and Nevis', 'Dubuisson', '11119', 'P.O. Box 151, 541 Donec Road', '22'),
(25, 'Marshall Islands', 'Fratta Todina', '9958', '2428 Turpis Street', '66'),
(41, 'Algeria', 'Cittanova', '33049', '219-2177 Porttitor Rd.', '70'),
(43, 'Bosnia and Herzegovina', 'Nieuwerkerken', '57-651', 'P.O. Box 937, 6662 Nulla. St.', '78'),
(45, 'Ha', 'Tychy', '277', 'Lol', '12'),
(46, 'Poland', 'Tychy', '43-100', 'Paprocanska', '198'),
(67, 'Poland', 'Tychy', '43-100', 'Paprocanska', '198'),
(68, '', '', '', '', ''),
(81, 'Poland', 'Tychy', '43-100', 'Lol', '198'),
(82, '', '', '', '', ''),
(83, 'Poland', 'Tychy', '43-100', 'Paprocanska', '198'),
(84, '', '', '', '', ''),
(85, 'Poland', 'Tychy', '43-100', 'Paprocanska', '198'),
(87, 'Poland', 'Tychy', '43-100', 'Paprocanska', '198'),
(88, 'Poland', 'Tychy', '43-100', 'Paprocanska', '12'),
(89, 'Ha', 'Tychy', '43-100', 'Paprocanska', '198'),
(90, 'janusz', 'janusz', '43-100', 'janusz', '198'),
(91, 'janeczek', 'janeczek', '43-100', 'janeczek', '198'),
(92, 'abcd', 'abcd', '43-100', 'abcd', '198');

INSERT INTO `cart` (`Id`, `Grand_Total`) VALUES
(5, 234),
(6, 234),
(8, 234),
(10, 234),
(11, 234),
(14, 234),
(15, 234),
(16, 234),
(17, 234),
(18, 234),
(19, 234),
(22, 234),
(23, 234),
(24, 1006),
(25, 1600),
(26, 800),
(27, 639),
(28, 1166),
(29, 7200),
(30, 2400),
(31, 1600);

INSERT INTO `product` (`Id`, `Code`, `Name`, `Price`, `Description`, `Manufacturer`, `Category`, `Units_In_Stock`, `State`, `is_Promotion`) VALUES
(74, '8297', 'Klor-Con M200', 800, 'dictum eleifend, nunc risus varius orci, in consequat enim diam', 'Lavasoft', 'Laptop', 26, 'New', NULL),
(75, '3116', 'Ciprofloxacin HCl', 639, 'cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet', 'Finale', 'Tablet', 6, 'New', 0),
(76, '960322', 'Klor-Con M200', 2345, '', 'Lenovo', 'Tablet', 5, 'New', NULL),
(77, '7509', 'Ibuprofen (Rx)', 765, 'egestas. Fusce aliquet magna a neque. Nullam ut nisi a', 'Apple Systems', 'Phone', 15, 'Secondhand', 0),
(78, '7901', 'Vyvanse', 681, 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum', 'Macromedia', 'Monitor', 19, 'New', 1),
(79, '4453', 'Zolpidem Tartrate', 197, 'odio. Nam interdum enim non nisi. Aenean eget metus. In', 'Adobe', 'Monitor', 3, 'New', 0),
(80, '2429', 'Furosemide', 513, 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', 'Adobe', 'Monitor', 28, 'Secondhand', 1),
(81, '1493', 'Symbicort', 120, 'Curabitur ut odio vel est tempor bibendum. Donec felis orci,', 'Lavasoft', 'Monitor', 1, 'Secondhand', 0),
(82, '8795', 'Fluoxetine HCl', 536, 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit', 'Lavasoft', 'Phone', 13, 'Secondhand', 0),
(84, '4977', 'Viagra', 593, 'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', 'Apple Systems', 'Monitor', 14, 'Secondhand', 0),
(86, '2248', 'Atenolol', 918, 'eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis', 'Borland', 'Phone', 20, 'New', 0),
(87, '5461', 'Amoxicillin Trihydrate/Potassium Clavulanate', 375, 'vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', 'Lycos', 'Phone', 14, 'Secondhand', 1),
(88, '7208', 'Seroquel', 978, 'massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices', 'Yahoo', 'Monitor', 21, 'Secondhand', 1),
(89, '9666', 'Citalopram HBr', 307, 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus', 'Altavista', 'Monitor', 23, 'New', 0),
(90, '8022', 'Paroxetine HCl', 397, 'magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 'Sibelius', 'Phone', 27, 'Secondhand', 0);

INSERT INTO `cart_item` (`Id`, `Product_Id`, `Quantity`, `Total_Price`, `Cart_Id`) VALUES
(1, 74, 1, 234, 5),
(2, 74, 1, 234, 6),
(3, 74, 1, 234, 8),
(4, 74, 1, 234, 10),
(5, 74, 1, 234, 11),
(6, 74, 1, 234, 14),
(7, 74, 1, 234, 15),
(8, 74, 1, 234, 16),
(9, 74, 1, 234, 17),
(10, 74, 1, 234, 18),
(11, 74, 1, 234, 19),
(14, 74, 1, 234, 22),
(15, 74, 1, 234, 23),
(16, 74, 1, 234, 24),
(17, 76, 2, 772, 24),
(18, 74, 2, 1600, 25),
(19, 74, 1, 800, 26),
(23, 75, 1, 639, 27),
(24, 76, 2, 772, 28),
(25, 79, 2, 394, 28),
(26, 74, 9, 7200, 29),
(27, 74, 3, 2400, 30),
(28, 74, 2, 1600, 31);

INSERT INTO `user` (`Id`, `Login`, `Password`, `Enabled`) VALUES
(1, 'rafi', 'asdasdad', 1),
(2, 'rafi2', 'asdasdad2', 0),
(3, 'rafi3', 'asdasdad3', 0);

INSERT INTO `customer` (`Id`, `Firstname`, `Lastname`, `email`, `Registration_Date`, `User_Id`, `Address_Id`) VALUES
(31, 'Burton', 'Guthrie', '', '2016-07-25', 1, 8),
(32, 'Aladdin', 'Alvarado', '', '2016-07-25', 2, 9);

INSERT INTO `new_order` (`Id`, `Date`, `State`, `Customer_Id`, `Cart_Id`) VALUES
(14, '2016-08-30', 'Finished', 31, 5),
(15, '2016-08-30', 'Finished', 32, 6),
(16, '2016-08-31', 'Finished', 32, 8),
(17, '2016-08-31', 'Finished', 32, 10),
(18, '2016-08-31', 'Finished', 32, 11),
(19, '2016-08-31', 'Finished', 32, 14),
(20, '2016-08-31', 'Finished', 32, 15),
(21, '2016-08-31', 'Finished', 32, 16),
(22, '2016-08-31', 'Finished', 32, 17),
(23, '2016-08-31', 'Finished', 32, 18);





INSERT INTO `user_role` (`Id`, `USER_ID`, `Role`) VALUES
(2, '1', 'ROLE_ADMIN'),
(1, '2', 'ROLE_USER');