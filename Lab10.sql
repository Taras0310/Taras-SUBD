USE [ChampionsLegaueDb]
GO
CREATE FUNCTION dbo.Age (@DATE datetime)
RETURNS int
AS
BEGIN
RETURN DATEDIFF(YEAR, @DATE, GETDATE());
END;

SELECT Команда.Назва,
dbo.Age(Команда.[Рік заснування])
FROM Команда;

CREATE PROCEDURE EARNINGS 
AS
BEGIN
SELECT Стадіони.Назва, Стадіони.Країна,Стадіони.Місто,Стадіони.Місткість
FROM [dbo].[Стадіони]
ORDER BY Назва
END;

EXEC Stadium;