-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 21 2024 г., 06:43
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Clock`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Client`
--

CREATE TABLE `Client` (
  `ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Log_In` varchar(30) NOT NULL,
  `Password` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Client`
--

INSERT INTO `Client` (`ID`, `Name`, `Log_In`, `Password`) VALUES
(1, 'Елена', 'lena123', '$2y$10$OoKryQ9uBaa5AJFSCiecUunyZi3TPdnzROk5Dkh.7mDHY6GrezToK'),
(2, 'Настя', 'nastya123', '$2y$10$gQiJZp2LgMnxweZJvdd08Oh0C7U1NRWV4/vgqAo6jG0StAxjSPECq');

-- --------------------------------------------------------

--
-- Структура таблицы `Feedback`
--

CREATE TABLE `Feedback` (
  `ID` int NOT NULL,
  `Log_In` varchar(30) NOT NULL,
  `Comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Product`
--

CREATE TABLE `Product` (
  `ID` int NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Img` varchar(500) NOT NULL,
  `Price` int NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Model` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Product`
--

INSERT INTO `Product` (`ID`, `Name`, `Img`, `Price`, `Country`, `Model`) VALUES
(1, 'Наручные часы Quadro Rouge Daniel Wellington', 'https://static.alltime.ru/obj/catalog/watch/daniel-wellington/img/big/DW00100508.jpg', 14890, ' Швеция', 'Daniel Wellington DW00100508'),
(2, 'Механические наручные часы Seiko Presage SARY213', 'https://static.alltime.ru/obj/catalog/watch/seiko/img/big/SARY213.jpg', 84300, ' Япония', 'Seiko SARY213'),
(3, 'Механические наручные часы AGELOCER 9101L4', 'https://static.alltime.ru/obj/catalog/watch/agelocer/img/big/9101L4.jpg', 172990, 'Гонконг', 'AGELOCER 9101L4'),
(4, 'Наручные часы Citizen с хронографом', 'https://static.alltime.ru/obj/catalog/watch/citizen/img/big/AN3600-59L.jpg', 16960, 'Япония', 'Citizen AN3600-59L'),
(5, 'Наручные часы LIU JO', 'https://static.alltime.ru/obj/catalog/watch/liu-jo/img/big/TLJ2195.jpg', 16750, 'Италия', 'LIU JO TLJ2195'),
(6, 'Механические наручные часы Infantry', 'https://static.alltime.ru/obj/catalog/watch/infantry/img/big/REVO-SKL-03-V2.jpg', 37400, 'Китай', 'Infantry REVO-SKL-03-V2'),
(7, 'Наручные часы COACH', 'https://static.alltime.ru/obj/catalog/watch/coach/img/big/14503657.jpg', 47990, 'США', 'COACH 14503657'),
(8, 'Наручные часы SAGA', 'https://static.alltime.ru/obj/catalog/watch/saga/img/big/53628-SVMEBL-2.jpg', 24500, 'Китай', 'SAGA 53628-SVMEBL-2'),
(9, 'Наручные часы Rodania', 'https://static.alltime.ru/obj/catalog/watch/rodania/img/big/R27014.jpg', 38700, 'Бельгия', 'Rodania R27014'),
(10, 'Наручные часы Thomas Sabo', 'https://static.alltime.ru/obj/catalog/watch/thomas-sabo/img/big/WA0404-201-211-33.jpg', 65670, 'Германия', 'Thomas Sabo WA0404-201-211-33'),
(11, 'Швейцарские наручные часы Continental', 'https://static.alltime.ru/obj/catalog/watch/continental/img/big/23001-GD158830.jpg', 22100, ' Швейцария', 'Continental 23001-GD158830'),
(12, 'Швейцарские наручные часы Calvin Klein', 'https://static.alltime.ru/obj/catalog/watch/calvin-klein/img/big/K8G23626.jpg', 18900, 'США', '\r\nCalvi Klein K8G23626'),
(13, 'Швейцарские наручные часы Mathey-Tissot', 'https://static.alltime.ru/obj/catalog/watch/mathey-tissot/img/big/D117SK.jpg', 36000, ' Швейцария', 'Mathey-Tissot D117SK'),
(14, 'Наручные часы Fossil', 'https://static.alltime.ru/obj/catalog/watch/fossil/img/big/FS5986.jpg', 14990, 'США', 'Fossil FS5986'),
(15, 'Умные часы Suunto 9 G1 Baro Granite Blue Titanium', 'https://static.alltime.ru/obj/catalog/watch/suunto/img/big/SS050565000.jpg', 36880, 'Финляндия', 'Suunto SS050565000'),
(16, 'Швейцарские наручные часы Swarovski', 'https://static.alltime.ru/obj/catalog/watch/swarovski/img/big/5580348.jpg', 47000, 'Швейцария', 'Swarovski 5580348');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Client`
--
ALTER TABLE `Client`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Feedback`
--
ALTER TABLE `Feedback`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
