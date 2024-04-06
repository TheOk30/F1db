Delimiter //
CREATE VIEW `BestAvgPositionForCar` AS
SELECT 
    cars.CarName,
    cars.Season
FROM
    Cars
WHERE
    cars.Season = (
        SELECT teamdrivers.Season
        FROM teamdrivers
        INNER JOIN races ON teamdrivers.DriverID = races.DriverID
        GROUP BY teamdrivers.Season, teamdrivers.TeamID
        ORDER BY AVG(races.GridPosition)
        LIMIT 1
    );
 //
Delimiter ;
