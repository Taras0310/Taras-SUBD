CREATE DATABASE ChampionsLegaueDb;
USE [ChampionsLegaueDb]
CREATE TABLE Команда (
[Код] [int] NOT NULL PRIMARY KEY,
	[Назва] [nvarchar](255) NOT NULL,
	[Тренер] [nvarchar](255) NOT NULL,
	[Група] [nvarchar](5) NOT NULL,
);

CREATE TABLE Команда1 (
[Код] [int] NOT NULL PRIMARY KEY,
	[Назва] [nvarchar](255)  NOT NULL,
	[Тренер] [nvarchar](255) NOT NULL,
	[Група] [nvarchar](5) NOT NULL,
);

CREATE TABLE Матч (

	[Матч  ID] [int] NOT NULL PRIMARY KEY,
	[Дата матча] [datetime] NOT NULL,
	[Код команди господарів] [int] NOT NULL,
	[Код команди гостей] [int] NOT NULL,
	[Забиті голи господарями] [int] NULL,
	[Забиті гостями] [int] NULL,
	[Стадіон] [int] NOT NULL,
	[Суддівська бригада] [int] NOT NULL,
	[Етап] [nvarchar](20) NOT NULL,
);

CREATE TABLE Стадіони (
[Стадіон] [int] NOT NULL PRIMARY KEY,
	[Назва] [nvarchar](20) NOT NULL,
	[Країна] [nvarchar](20) NOT NULL,
	[Місто] [nvarchar](40) NOT NULL,
	[Місткість] [int] NOT NULL,
);

CREATE TABLE Судді(
	[Бригада] [int] NOT NULL PRIMARY KEY,
	[Головний суддя] [nvarchar](40) NOT NULL,
	[Боковий1] [nvarchar](50) NOT NULL,
	[Боковий2] [nvarchar](40) NOT NULL,
	[Резервний] [nvarchar](40) NOT NULL,
	[Країна] [nvarchar](40) NOT NULL,
	);

	CREATE TABLE [Склад команди](
	[Номер] [int] NOT NULL PRIMARY KEY,
	[Гравець] [nvarchar](40) NOT NULL,
	[Амплуа] [nvarchar](20) NOT NULL,
	[Матчі] [int] NULL,
	[Голи] [int] NULL,
	[Команда] [int] NOT NULL,
	);
	USE[ChampionsLegaueDb]
	GO
	

	ALTER TABLE [Склад команди]
	ADD
	FOREIGN KEY (Команда) REFERENCES Команда (Код)
	 ON DELETE CASCADE ON UPDATE CASCADE
	 GO
	 ALTER TABLE Матч
	ADD
	FOREIGN KEY ([Код команди господарів]) REFERENCES Команда (Код)
	 ON DELETE CASCADE ON UPDATE CASCADE

	  ALTER TABLE Матч
	ADD
	FOREIGN KEY ([Код команди гостей]) REFERENCES Команда1 (Код)
	 ON DELETE CASCADE ON UPDATE CASCADE

	 ALTER TABLE Матч
	ADD
	FOREIGN KEY (Стадіон) REFERENCES Стадіони (Стадіон)
	 ON DELETE CASCADE ON UPDATE CASCADE

	 ALTER TABLE Матч
	ADD
	FOREIGN KEY ([Суддівська бригада]) REFERENCES Судді (Бригада)
	 ON DELETE CASCADE ON UPDATE CASCADE
	 GO