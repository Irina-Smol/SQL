DROP TABLE IF EXISTS country; 
CREATE TABLE IF NOT EXISTS country ( 
   name VARCHAR(30) NOT NULL,  
   population NUMERIC(10) NOT NULL,   
   money VARCHAR(25) NOT NULL,   
   language VARCHAR(20) NOT NULL,   
   export TEXT NOT NULL,   
   import TEXT NOT NULL   
);   
INSERT INTO country VALUES ('new zealand', 5123000, 'zealand dollar','английский','Молочная продукция; яйца птиц; мед натуральный; пищевые продукты животного происхождения, в другом месте не поименованные или не включенные','Средства наземного транспорта, кроме железнодорожного или трамвайного подвижного состава,звукозаписывающая и звуковоспроизводящая аппаратура, аппаратура для записи и воспроизведения телевизионного изображения и звука');  
SELECT*FROM country; 

DROP TABLE IF EXISTS people;  
CREATE TABLE IF NOT EXISTS people( 
  id serial PRIMARY KEY, 
  name VARCHAR(30) NOT NULL, 
  surname VARCHAR(30) NOT NULL 
); 
 
INSERT INTO people (id, name, surname) 
VALUES  
    (1,'Sue','Bright'), 
    (2,'Michael','Brown'), 
    (3,'Craig ','Knox'), 
    (4,'Brian','Bourke'), 
    (5,'Kim','Turnbull'), 
    (6,'Mark','Vercoe'), 
    (7,'Alan ','Walters'), 
    (8,'Helen','Shanks'), 
    (9,'Anne','Knox'), 
    (10,'John','Hannah'), 
    (11,'Bruce','Kumar'), 
    (12,'Anne','Stanley'), 
    (13,'Mary ','Hodge'), 
    (14,'Margaret','Neal'), 
    (15,'Sue','Parkinson'), 
    (16,'Sarah','Reeves'), 
    (17,'Paul ','Parkes'), 
    (18,'Brian','Greig'), 
    (19,'Kim','Collett'), 
    (20,'Mark','Cook'), 
    (21,'Chris','Bates'), 
    (22,'Michael','Drummond'), 
    (23,'Richard','Wu'), 
    (24,'Margaret','Tanner'), 
    (25,'Robert','Weaver'), 
    (26,'Kim','Sim'), 
    (27,'Andrew','Chandler'), 
    (28,'Mary','Ryan'), 
    (29,'David','Bremner'), 
    (30,'Robert','Robertson'); 
SELECT*FROM people; 


DROP TABLE IF EXISTS industry; 
CREATE TABLE IF NOT EXISTS industry (
	names VARCHAR(80) NOT NULL,
	profession VARCHAR(50) NOT NULL,
	primary key (names, profession)
);

INSERT INTO industry(names, profession)
VALUES 		 
	('С/х','зоотехник'), 
	('С/х','рыбовод'),
	('С/х','селекционер'),
	('Туризм','администратор гостиницы'), 
	('Туризм','аниматор'),
	('Туризм','экскурсовод'),
	('Образование','воспитатель'), 
	('Образование','учитель'),
	('Образование','директор'),
	('Юриспруденция','судья'),
	('Юриспруденция','адвокат'),
	('Юриспруденция','нотариус'),
	('Полиция','полицейский'), 
	('Полиция','следователь'),
	('Полиция','криминалист'),
	('Медицина','акушер'),
	('Медицина','ветеринар'),
	('Медицина','терапевт'),
	('Сфера услуг','парикмахер'), 
	('Сфера услуг','повар'), 
	('Сфера услуг','тренер'), 
	('Органы управления','менеджер'), 
	('Органы управления','администратор'),
	('Органы управления','it-директор'),
	('Торговля','продавец'), 
	('Торговля','агент по закупкам'), 
	('Торговля','директор магазина'), 
	('Обрабатывающая промышленность','слесарь'),
	('Обрабатывающая промышленность','электрик'),
	('Обрабатывающая промышленность','шахтер');
SELECT*FROM industry;

DROP TABLE IF EXISTS positions; 
CREATE TABLE IF NOT EXISTS positions (
	id serial PRIMARY KEY,
	profession_id VARCHAR(50) NOT NULL,
	people_id INTEGER
);

INSERT INTO positions (id, profession_id, people_id)
VALUES
	(111,'зоотехник',1), 
	(112,'рыбовод',2),
	(113,'селекционер',3),
	(114,'администратор гостиницы',4), 
	(115,'аниматор',5),
	(116,'экскурсовод',6),
	(117,'воспитатель',7), 
	(118,'учитель',8),
	(119,'директор',9),
	(120,'судья',10),
	(121,'адвокат',11),
	(122,'нотариус',12),
	(123,'полицейский',13), 
	(124,'следователь',14),
	(125,'криминалист',15),
	(126,'акушер',16),
	(127,'ветеринар',17),
	(128,'терапевт',18),
	(129,'парикмахер',19), 
	(130,'повар',20), 
	(131,'администратор',21),
	(132,'менеджер',22), 
	(133,'администратор',23),
	(134,'it-директор',24),
	(135,'продавец',25), 
	(136,'агент по закупкам',26), 
	(137,'директор магазина',27), 
	(138,'слесарь',28),
	(139,'электрик',29),
	(140,'шахтер',30);
	
SELECT * FROM positions;
