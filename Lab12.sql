USE [ChampionsLegaueDb]
GO
CREATE TRIGGER DelInsert
ON Команда2
AFTER DELETE
AS
INSERT INTO Команда3
SELECT*
FROM DELETED;

DELETE FROM Команда2
WHERE Код =10;



CREATE TRIGGER Insert_Insert
ON Команда2
AFTER INSERT
AS
INSERT INTO Команда3 (Код, Назва, Тренер, Група, [Рік заснування])
SELECT Код, Назва, Тренер, Група, [Рік заснування]
FROM inserted;

INSERT INTO Команда2 VALUES (11,'Боруссія Д','Люсьєн Фавр','F',1909);
