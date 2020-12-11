ALTER TABLE Команда
ADD [Рік заснування] INT NOT NULL;

ALTER TABLE Матч
DROP COLUMN Етап;

ALTER TABLE Стадіони
ALTER COLUMN Місткість int  NULL;

ALTER TABLE Стадіони
ADD CHECK (Місто<=50 AND Місто>=0)