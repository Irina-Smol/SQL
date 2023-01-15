-- 1)Выберите из таблицы workers записи с id равным 3, 5, 6, 10
SELECT * FROM workers WHERE id IN(3,5,6,10)

-- 2)Выберите из таблицы workers записи с id равным 3, 5, 6, 10 и логином, равным 'eee', 'zzz' или 'ggg'.
SELECT * FROM workers WHERE id IN(3,5,6,10) AND login IN("eee", "zzz", "ggg")

-- 3)Выберите из таблицы workers записи c зарплатой от 500 до 1500
SELECT * FROM workers WHERE price BETWEEN 500 AND 1500

-- 4)Выберите из таблицы workers все записи так, чтобы вместо id было workersId, вместо login – workersLogin, вместо salary - workersSalary.
SELECT id AS userId, login AS userLogin, salary AS userSalary FROM workers

-- 5)Найдите в таблице workers суммарный возраст
SELECT SUM(age) FROM workers

-- 6)Вставьте в таблицу workers запись с полем date с текущим моментом времени в формате 'год-месяц-день часы:минуты:секунды'
INSERT INTO workers ('name', 'date') VALUES ('Вася', NOW())

-- 7)Вставьте в таблицу workers запись с полем date с текущей датой в формате 'год-месяц-день'
INSERT INTO workers ('name', 'date') VALUES ( 'Маша', CURDATE())

-- 8)При выборке из таблицы workers запишите день, месяц и год в отдельные поля
SELECT EXTRACT(DAY FROM date) AS day,
EXTRACT(MONTH FROM date) AS month,
EXTRACT(YEAR FROM date) AS year 
FROM workers

-- 9)При выборке из таблицы workers прибавьте к дате 1 год.
SELECT DATE_ADD(date, INTERVAL 1 YEAR) as date FROM workers

-- 10)Выберите из таблицы workers все записи так, чтобы туда попали только записи с разной зарплатой (без дублей)
SELECT DISTINCT salary FROM workers

-- 11)Выберите из таблицы workers все записи за 2016 год
SELECT * FROM workers WHERE YEAR(date) = 2016

-- 12)Выберите из таблицы workers все записи за вторник
SELECT * FROM workers WHERE DAYOFWEEK(date)= 3

-- 13)При выборке из таблицы workers создайте новое поле today, в котором будет номер текущего дня недели
SELECT WEEKDAY(NOW()) as today FROM workers;

-- 14)При выборке из таблицы workers создайте новое поле res, в котором будет лежать разность зарплаты и возраста
SELECT (salary - age) AS res FROM workers 

-- 15)При выборке из таблицы workers получите первые 5 символов поля description
SELECT LEFT(description, 5) FROM workers

-- 16)При выборке из таблицы workers получите из поля description символы со второго по десятый
SELECT SUBSTRING(description, 2,10) FROM workers

-- 17)Даны две таблицы: таблица category и таблица sub_category с полями id и name. Достаньте одним запросом названия категорий и подкатегорий
SELECT id, name FROM workers UNION SELECT id, name FROM sub_category 

-- 18)При выборке из таблицы workers создайте новое поле res, в котором будут лежать одновременно зарплата и возраст (слитно)
SELECT CONCAT(salary, age) AS res FROM workers

-- 19)При выборке из таблицы workers создайте новое поле res, в котором будут лежать одновременно зарплата и возраст через дефис
SELECT CONCAT_WS('-', salary, age) AS res FROM workers

-- 20)При выборке из таблицы workers получите первые 5 символов логина и добавьте троеточие
SELECT CONCAT (LEFT(login, 5), '...') AS log FROM workers;

-- 21)Найдите самые маленькие зарплаты по группам возрастов (для каждого возраста свою минимальную зарплату)
SELECT MIN(salary), MAX(salary) FROM workers GROUP BY age

-- 22)Выберите из таблицы workers уникальные возраста так, чтобы для каждого возраста было поле res, в котором будут лежать через дефис id записей с таким возрастом
SELECT  DISTINCT age AS res (SELECT GROUP_CONCAT( id SEPARATOR '-') ) FROM workers

-- 23)Выберите из таблицы workers все записи, зарплата в которых больше средней зарплаты
SELECT * FROM workers WHERE salary >(SELECT AVG(salary) FROM workers)

-- 24)Выберите из таблицы workers все записи, возраст в которых меньше среднего возраста, деленного на 2 и умноженного на 3
SELECT * FROM workers WHERE age < (SELECT AVG(age)/2*3 FROM workers)

-- 25)Выберите из таблицы workers записи с максимальной зарплатой
SELECT * FROM workers WHERE salary = (SELECT MAX(salary) FROM workers) 

-- 26)При выборке из таблицы workers создайте новое поле avg, в котором будет лежать деленная на 2 разница между максимальным значением возраста и 
-- минимальным значением возраста в во всей таблице
SELECT (SELECT (MAX(age) - MIN(age))/2 FROM workers) AS avg

-- 27)При выборке из таблицы workers создайте новое поле avg, в котором будет лежать деленная на 2 разница между максимальным значением 
-- зарплаты и минимальным значением зарплаты для возраста 25 лет
SELECT (SELECT (MAX(age) - MIN(age))/2 FROM workers ) AS avg FROM workers WHERE age = 25

-- 28)Даны две таблицы: таблица category с полями id и name и таблица page с полями id, name и category_id. Достаньте одним запросом все страницы 
-- вместе с их категориями
SELECT * FROM page LEFT JOIN category ON  page.catogory_id = category.id 

-- 29)Даны 3 таблицы: таблица category с полями id и name, таблица sub_category с полями id и name и таблица page с полями id, name и sub_category_id. 
-- Достаньте одним запросом все страницы вместе с их подкатегориями и категориями
SELECT * FROM page LEFT JOIN category ON page.catogory_id = category.id
LEFT JOIN sub_category ON  category.id = sub_category.category_id 

-- 30)Создайте базы данных test1 и test2
CREATE DATABASE test1
CREATE DATABASE test2

-- 31)Удалите базу данных test2
DROP DATABASE test2

-- 32)Создайте в базе данных test1 таблицы table1 и table2 с полями id, login, salary, age, date
CREATE TABLE table1(
   id INT(1),
   login VARCHAR(255),
   salary INT(6),
   age INT(6),
   date DATE NOT NULL
   primary key (Id)
);
CREATE TABLE table2(
   id INT(1),
   login VARCHAR(255),
   salary INT(6),
   age INT(6),
   date DATE NOT NULL
   primary key (Id)
);


-- 33)Переименуйте таблицу table2 в table3
RENAME TABLE table2 TO table3

-- 34)Добавьте в таблицу table1 поле status
ALTER TABLE table1 ALTER COLUMN status

-- 35)Удалите из таблицы table1 поле age
ALTER TABLE table1 DROP COLUMN age

-- 36)Переименуйте поле login на user_login
RENAME COLUMN login TO user_login

-- 37)Очистите все таблицы базы данных test1
TRUNCATE test1

-- 38)Очистите таблицу table1
DELETE FROM table1

-- 39)Смените типа поля salary с int на varchar(255)
ALTER TABLE table1 CHANGE salary salary VARCHAR(255)
