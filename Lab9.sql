USE [ChampionsLegaueDb]
GO
Select Avg(Місткість)
From Стадіони
Where Країна = 'Англія'

SELECT  Група, COUNT(Код) as Кількість from Команда
GROUP BY Команда.Група;


Select SUM(Місткість)
From Стадіони
Where Країна = 'Англія'

SELECT  YEAR(getdate())- AVG(DISTINCT [Рік заснування]) as Середній_Вік_Команди from Команда;

Select MIN(Місткість)
From Стадіони

