/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `PersonalNumber`, `Phone`, `Address`, `PostalCode`, `City`, `Email`) VALUES
(1, 'Iman', 'Qasem', '19781124-4444', '0794444444', 'Musketörgatan 11B', '21243', 'malmö', 'i.saab558@gmail.com');
INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `PersonalNumber`, `Phone`, `Address`, `PostalCode`, `City`, `Email`) VALUES
(2, 'Susanne', 'Salhi', '20101031-0000', '079121212', 'Musketörgatan 11B', '21243', 'malmö', 'i.saab558@gmail.com');
INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `PersonalNumber`, `Phone`, `Address`, `PostalCode`, `City`, `Email`) VALUES
(3, 'maosim ', 'mahmodd ', '20000320-0000 ', '0793320729  ', 'mirresgatan 3300 ', '378892 ', 'lund ', 'mositdagadagdag.at@gimal ');
INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `PersonalNumber`, `Phone`, `Address`, `PostalCode`, `City`, `Email`) VALUES
(4, 'tytu', 'Yagggo', '19901124-4040', '078887771', 'Storgatan 11', '32145', 'ystad', 'tatat@gmail.com'),
(5, 'soso', 'qqq', '1010310101', '079999999', 'newyork', '54545', 'lund', 'uyuy@yahoo.com');

INSERT INTO `orders` (`OrderID`, `CustomerID`, `Status`, `OrderDate`, `TotalAmount`) VALUES
(1, 1, 'Processing', '2024-01-07 16:12:32', 80);
INSERT INTO `orders` (`OrderID`, `CustomerID`, `Status`, `OrderDate`, `TotalAmount`) VALUES
(2, 1, 'Send', '2024-01-07 16:13:04', 50);
INSERT INTO `orders` (`OrderID`, `CustomerID`, `Status`, `OrderDate`, `TotalAmount`) VALUES
(3, 2, 'Processing', '2024-01-07 16:16:01', 50);
INSERT INTO `orders` (`OrderID`, `CustomerID`, `Status`, `OrderDate`, `TotalAmount`) VALUES
(4, 3, 'Processing', '2024-01-07 16:34:01', 1510),
(5, 4, 'Send', '2024-01-12 20:06:51', 100),
(6, 5, 'Processing', '2024-01-12 20:32:44', 50);

INSERT INTO `products` (`ProductID`, `ProductName`, `Description`, `price`, `Stock`) VALUES
(1, 'Shampoo', 'Antiinflammatoriskt och hårväxtstimulerande schampo', '40', '18');
INSERT INTO `products` (`ProductID`, `ProductName`, `Description`, `price`, `Stock`) VALUES
(2, 'Shampoo', 'Good for dry hair', '40', '2');
INSERT INTO `products` (`ProductID`, `ProductName`, `Description`, `price`, `Stock`) VALUES
(3, 'irpod', 'Iphon & Samsung', '1200', '3');
INSERT INTO `products` (`ProductID`, `ProductName`, `Description`, `price`, `Stock`) VALUES
(4, 'condition', 'De gamla grekerna brukade säga ”Ett bra balsam för håret, det är balsam även för själen det!”', '50', '37'),
(5, 'Hand Cream', 'Halthy natural', '90', '5');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;