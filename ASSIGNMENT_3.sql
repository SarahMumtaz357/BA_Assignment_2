create table airbnb_listings
(
ID int primary key,
city varchar (50),
Country varchar (50),
Number_of_rooms int,
Year_listed int,
)

select * from airbnb_listings
insert into airbnb_listings values (1,'Karachi','Pakistan',3,2025),(2,'Paris','France',5,2018),(3,'Tokyo','Japan',2,2017),
(4,'New York','USA',2,2022),(5,'Shanhai','China',4,2019)




SELECT city FROM airbnb_listings

SELECT city,Year_listed FROM  airbnb_listings


SELECT id,city FROM  airbnb_listings
ORDER BY Number_of_rooms 

SELECT id,city,Number_of_rooms FROM  airbnb_listings
ORDER BY Number_of_rooms DESC

SELECT TOP 3 *  FROM airbnb_listings

SELECT DISTINCT city FROM airbnb_listings

SELECT * FROM airbnb_listings
WHERE Number_of_rooms >=3;


SELECT * FROM airbnb_listings
WHERE Number_of_rooms >=3;


SELECT * FROM airbnb_listings
WHERE Number_of_rooms =3;

SELECT * FROM airbnb_listings
WHERE Number_of_rooms  <3;

SELECT * FROM airbnb_listings
WHERE Number_of_rooms  BETWEEN 3 AND 6;

SELECT * FROM airbnb_listings
WHERE city = 'Paris';

SELECT * FROM airbnb_listings
WHERE country IN ('USA', 'France');

SELECT * FROM airbnb_listings
WHERE city LIKE 'j%' AND city NOT LIKE '%t';

SELECT * FROM airbnb_listings
WHERE city='Paris' AND Number_of_rooms>3;


SELECT * FROM airbnb_listings
WHERE city='Paris' OR Year_listed> 2018;

SELECT * FROM airbnb_listings
WHERE Number_of_rooms IS NULL;


SELECT * FROM airbnb_listings
WHERE Number_of_rooms IS NOT NULL;

SELECT SUM(Number_of_rooms) AS ROOM_COUNT
FROM airbnb_listings

SELECT AVG(Number_of_rooms) AS AVG_ROOM
FROM airbnb_listings

SELECT * FROM airbnb_listings
WHERE Number_of_rooms = (SELECT MAX(Number_of_rooms) 
FROM airbnb_listings)


SELECT * FROM airbnb_listings
WHERE Number_of_rooms = (SELECT MIN(Number_of_rooms) 
FROM airbnb_listings)

SELECT Country, sum(Number_of_rooms) AS TOT_ROOM
FROM airbnb_listings
GROUP BY Country


SELECT Country, AVG(Number_of_rooms) AS AVG_ROOM
FROM airbnb_listings
GROUP BY Country


SELECT Country, MAX(Number_of_rooms) AS MAX_ROOM
FROM airbnb_listings
GROUP BY Country
ORDER BY MAX_ROOM DESC;

SELECT Country, MIN(Number_of_rooms) AS MIN_ROOM
FROM airbnb_listings
GROUP BY Country
ORDER BY MIN_ROOM ASC;


SELECT Country, AVG(Number_of_rooms) AS AVG_ROOMS
FROM airbnb_listings
GROUP BY Country
ORDER BY AVG_ROOMS;

SELECT Country, AVG(Number_of_rooms) AS AVG_ROOMS
FROM airbnb_listings
WHERE Country IN('USA','Japan')
GROUP BY Country
ORDER BY Country;


SELECT Country, COUNT(DISTINCT city) AS UNIQUE_CITY
FROM airbnb_listings
GROUP BY Country;

SELECT YEAR(Year_listed) AS LISTING_YEAR
FROM airbnb_listings
GROUP BY YEAR(Year_listed)
HAVING COUNT(ID)>100;