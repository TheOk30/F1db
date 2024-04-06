Delimiter //
CREATE PROCEDURE `CompareTwoSpecificDrivers` (IN Driver_id1 INT, IN Driver_id2 INT, IN season_year YEAR)
BEGIN
	SELECT
        CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`,
        DriverTotalSeasonPoints(season_year, drivers.DriverID) AS `Points`,
        DriverTotalSeasonWins(season_year, drivers.DriverID) AS `Wins`,
        DriverTotalSeasonPolls(season_year, drivers.DriverID) AS `Poles`,
        DriverTotalSeasonPodiums(season_year, drivers.DriverID) AS `Podiums`,
        AVG(races.GridPosition) AS `AvgGridPosition`,
        AVG(races.StartedPosition) AS `AvgStartingPosition`
    FROM
        drivers
    LEFT JOIN
        races ON drivers.DriverID = races.DriverID 
	WHERE
		YEAR(races.RaceDate) = season_year AND
        drivers.DriverID = Driver_id1 OR drivers.DriverID = Driver_id2
    GROUP BY
        drivers.DriverID, `DriverName`
    ORDER BY
        `Points` DESC;
END //
Delimiter ;
