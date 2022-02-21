-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 21 2022 г., 01:38
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `boohowaer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `beggars`
--

CREATE TABLE `beggars` (
  `target` varchar(60) NOT NULL,
  `phone` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `beggars`
--

INSERT INTO `beggars` (`target`, `phone`) VALUES
('Кто Нибудь', 345675),
('Кто Псё', 112227),
('Кто Там', 987654),
('Кто То', 567824),
('Кто Угодно', 256751);

-- --------------------------------------------------------

--
-- Структура таблицы `checks`
--

CREATE TABLE `checks` (
  `scan` varchar(60) NOT NULL,
  `donatname` varchar(60) NOT NULL,
  `target` varchar(60) NOT NULL,
  `paytype` varchar(30) NOT NULL,
  `id` int(4) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `checks`
--

INSERT INTO `checks` (`scan`, `donatname`, `target`, `paytype`, `id`, `amount`) VALUES
('images/check1.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 0, '1222.50'),
('images/check2.png', 'Без Задних-Мыслей', 'Кто Нибудь', 'Карта \"Мир\"', 1, '1222.50'),
('images/check3.png', 'Без Разницы', 'Кто Псё', 'Карта \"Мир\"', 2, '1222.50'),
('images/check4.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 3, '1222.50'),
('images/check5.png', 'Без Разницы', 'Кто То', 'Карта \"Мир\"', 4, '1222.50'),
('images/check6.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 5, '1222.50'),
('images/check7.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 6, '1222.50'),
('images/check8.png', 'Без Разницы', 'Кто Там', 'Карта \"Мир\"', 7, '1222.50'),
('images/check9.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 8, '56256.00'),
('images/check10.png', 'Без Ума', 'Кто Угодно', 'Карта \"Мир\"', 9, '1222.50'),
('images/check11.png', 'Без Разницы', 'Кто Угодно', 'PayPal', 10, '1222.50'),
('images/check12.png', 'Без Разницы', 'Кто Угодно', 'PayPal', 11, '1222.50'),
('images/check13.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 12, '1222.50'),
('images/check14.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 13, '225900.00'),
('images/check15.png', 'Без Разницы', 'Кто Угодно', 'MasterCard', 14, '1222.50'),
('images/check16.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 15, '1222.50'),
('images/check17.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 16, '1222.50'),
('images/check18.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 17, '10000.00'),
('images/check19.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 18, '6781.20'),
('images/check20.png', 'Без Разницы', 'Кто Угодно', 'Карта \"Мир\"', 19, '1805.50');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `beggars`
--
ALTER TABLE `beggars`
  ADD PRIMARY KEY (`target`);

--
-- Индексы таблицы `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `checks`
--
ALTER TABLE `checks`
  ADD CONSTRAINT `checks_ibfk_1` FOREIGN KEY (`target`) REFERENCES `beggars` (`target`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
