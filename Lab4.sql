﻿USE [ChampionsLegaueDb]
Go

INSERT INTO Команда
VALUES (5, 'Тотенхем', 'Жозе Моуріньо', 'B', 1882);

INSERT INTO Команда
VALUES (6, 'Ювентус', 'Маурісіо Саррі', 'D', 1897),
  (7, 'Олімпіакос Пірей', 'Педру Мартінш', 'В', 1897),
  (8, 'Зеніт', 'Сергій Семак', 'G', 1925)

  UPDATE Команда
  SET Тренер='Маурісіо Почетіно'
  WHERE Код='5'

  DELETE
  FROM Команда
   WHERE Код='8'