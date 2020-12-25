USE [ChampionsLegaueDb]
GO
SET SHOWPLAN_ALL ON;
GO
SELECT *
FROM Стадіони
GO
SET SHOWPLAN_ALL OFF;

SET SHOWPLAN_ALL ON;
GO
SELECT [Дата матча], [Код команди господарів],[Код команди гостей], [Забиті голи господарями], [Забиті гостями], Назва,[Головний суддя]
FROM (dbo.Матч INNER JOIN dbo.Стадіони ON Матч.Стадіон =
Стадіони.Стадіон)
INNER JOIN dbo.Судді ON Судді.Бригада = Матч.[Суддівська бригада]
GO
SET SHOWPLAN_ALL OFF;

SET SHOWPLAN_TEXT ON;
GO
SELECT *
FROM Стадіони
GO
SET SHOWPLAN_TEXT OFF;

