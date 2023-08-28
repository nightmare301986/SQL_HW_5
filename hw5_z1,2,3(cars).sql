SELECT * FROM hw5_cars.cars;

CREATE VIEW CheapCars AS 
SELECT Name FROM Cars
 WHERE Cost<25000;
 
SELECT * FROM hw5_cars.cheapcars;

CREATE VIEW CheapCars2 AS 
SELECT Name FROM Cars
 WHERE Cost<30000;
 
SELECT * FROM hw5_cars.cheapcars2;

CREATE VIEW SkorAuCars1 AS 
SELECT * FROM Cars
 WHERE Name='Skoda' OR Name ='Audi';
 
SELECT * FROM hw5_cars.skoraucars;

SELECT * FROM hw5_cars.skoraucars1;