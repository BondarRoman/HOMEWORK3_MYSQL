CREATE DATABASE IF NOT EXISTS ArmyDB;

USE ArmyDB;

DROP TABLE IF EXISTS Recipients;
DROP TABLE IF EXISTS Stock;

CREATE TABLE Recipients
(
    RecipientID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FName NVARCHAR(15) NOT NULL,
    LName NVARCHAR(15) NOT NULL,
    MName NVARCHAR(15) NOT NULL,
    Platoon INT,
    Place VARCHAR(255)
);

CREATE TABLE Stock
(
    
    FName NVARCHAR(15) NOT NULL,
    LName NVARCHAR(15) NOT NULL,
    MName NVARCHAR(15) NULL,
    Ranks VARCHAR(40) NOT NULL,
    WeaponID INT AUTO_INCREMENT,
    Weapon VARCHAR(50),
    UNIQUE (WeaponID)
);


INSERT INTO Recipients (FName, MName, LName, Platoon, Place)
VALUES
('Петров', 'Віктор', 'Лященко', 222, 'оф.205'),
('Петров', 'Віктор', 'Білецький', 222, 'оф.205'),
('Лодарев', 'Петро', 'Лященко', 232, 'оф.221'),
('Лодарев', 'Петро', 'Лященко', 232, 'оф.221'),
('Іващенко', 'Анатолій', 'Лященко', 212, 'оф.201'),
('Іващенко', 'Анатолій', 'Лященко', 212, 'оф.201'),
('Духов', 'Роман', 'Миколайович', 200, NULL);


INSERT INTO Stock (LName, FName, MName, Ranks, Weapon)
VALUES
('Буров', 'Олександр', 'Сергійович', 'майор', 'АК-47'),
('Рибаков', 'Назар', 'Вікторович', 'майор', 'Глок20'),
('Деребанов', 'Володимир', 'Якович', 'підполковник',  'АК-74'),
('Рибаков', 'Назар', 'Вікторович', 'майор', 'Глок20'),
('Буров', 'Олександр', 'Сергійович', 'майор', 'АК-47'),
('Рибаков', 'Назар', 'Вікторович', 'майор', 'Глок20'),
('Буров', 'Олександр', 'Сергійович', 'майор', 'АК-47');

SELECT * 
FROM Recipients
CROSS JOIN Stock;

SELECT * FROM Recipients
UNION
SELECT * FROM Stock;
-- SELECT * FROM Stock;
-- SELECT * FROM Recipients;
