CREATE DATABASE IF NOT EXISTS `gripbbs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gripbbs`;

CREATE TABLE IF NOT EXISTS `transactions` (
    `id` int(100) NOT NULL AUTO_INCREMENT,
	`fname` varchar(200) NOT NULL,
    `lname` varchar(200) NOT NULL,
    `accno` varchar(200) NOT NULL,
    `balance` varchar(100) NOT NULL,
    `ifsc` varchar(200) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (1,'White','Haykins', '9514753682','2365','SPB0053251');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (2,'Taub','Verma', '7536951428','2154','TSF0053238');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (3,'Harper','Lee', '8456279315','135','SPB0053272');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (4,'Stephen','Charlee', '4751235698','2684','SPB0053264');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (5,'John','Green', '1478523690','957','SPB0053269');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (6,'Steve','Harwey', '3654789012','159','TSF0053267');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (7,'Ben','Alton', '57896321480','753','TSF0053250');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (8,'Jonny','Rowling', '6321458709','48620','SPB0053233');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (9,'Yann','Martel', '0258963147','23','TSF005315');
INSERT INTO `transactions` (`id`, `fname`, `lname`, `accno`, `balance`, `ifsc`) VALUES (10,'Mark','Toel', '2369875410','15973','SPB0053261');
