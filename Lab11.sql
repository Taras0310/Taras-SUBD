USE[ChampionsLegaueDb]
BEGIN TRANSACTION 
INSERT INTO Стадіони VALUES (7, 'Сан-Паоло', 'Італія',  'Неаполь', 54726); 
INSERT INTO Стадіони VALUES (8, 'Енфілд', 'Англія',  'Ліверпуль', 53394); 
INSERT INTO Стадіони VALUES (9, 'Камп-Ноу', 'Іспанія',  'Барселона', 99354); 

COMMIT;

BEGIN TRANSACTION 
INSERT INTO Стадіони VALUES (10, 'Ештадіу да Луж', 'Португалія',  'Лісабон', 65647)
ROLLBACK; 
INSERT INTO Стадіони VALUES (11, 'Стемфорд Брідж', 'Англія',  'Лондон', 41837);

BEGIN TRANSACTION
UPDATE Стадіони
SET Місткість = 30000
WHERE Стадіон = 11
COMMIT TRAN
