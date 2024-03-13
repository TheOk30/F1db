DELIMITER //
CREATE PROCEDURE DriversComparisonSeason(IN team_id INT, IN season_year YEAR)
BEGIN
	SELECT
        CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`,
        DriverTotalSeasonPoints(season_year, drivers.DriverID) AS `Points`,
        DriverTotalSeasonWins(season_year, drivers.DriverID) AS `Wins`,
        DriverTotalSeasonPolls(season_year, drivers.DriverID) AS `Poles`,
        DriverTotalSeasonPodiums(season_year, drivers.DriverID) AS `Podiums`,
        AVG(races.GridPosition) AS `AvgGridPosition`,
        AVG(races.StartedPosition) AS `AvgStartingPosition`,
		AVG(races.GridPosition - races.StartedPosition) AS `AvgPositionDifference`
    FROM
        drivers
    JOIN
        teamDrivers ON drivers.DriverID = teamDrivers.DriverID AND teamDrivers.TeamID = team_id
    LEFT JOIN
        races ON drivers.DriverID = races.DriverID AND YEAR(races.RaceDate) = season_year
    GROUP BY
        drivers.DriverID, `DriverName`
    ORDER BY
        `Points` DESC;
END //
DELIMITER ;

