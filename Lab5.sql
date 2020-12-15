USE [ChampionsLegaueDb]
GO


SELECT * FROM Команда2
 UNION SELECT * FROM Команда3

 SELECT * FROM Команда2
 WHERE Команда2.[Код]  IN (SELECT [Код] FROM Команда3);

 SELECT * FROM Команда2
 WHERE Команда2.[Код] NOT IN (SELECT [Код] FROM Команда3);

 SELECT * FROM Команда2, Команда3;