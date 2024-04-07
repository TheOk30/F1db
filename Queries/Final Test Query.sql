-- 1. select all driver that apeared in more than the average races
-- 2. calculate average number of races per driver
-- 3. not including home race

SELECT 
	CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`,
    (SELECT COUNT(races.DriverID) 
    FROM races 
    INNER JOIN circuits ON races.CircuitID = circuits.CircuitID
	INNER JOIN cities ON cities.CityID = circuits.CityID
	WHERE 
		races.DriverID = drivers.DriverID AND drivers.CountryID <> cities.CountryID) AS `Num Races`
FROM 
	drivers
WHERE
	(SELECT COUNT(races.DriverID) 
    FROM races 
    INNER JOIN circuits ON races.CircuitID = circuits.CircuitID
	INNER JOIN cities ON cities.CityID = circuits.CityID
	WHERE 
		races.DriverID = drivers.DriverID AND drivers.CountryID <> cities.CountryID) >
    (SELECT SUM((SELECT COUNT(races.DriverID) FROM races) /(SELECT COUNT(distinct races.RaceDate) FROM races)));

