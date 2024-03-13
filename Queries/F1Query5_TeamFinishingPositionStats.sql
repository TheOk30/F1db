DELIMITER //
CREATE PROCEDURE `TeamFinishingPositionStats` (IN season_year YEAR)
BEGIN
	SELECT
        teams.TeamName,
        -- Minimum grid position achieved by the team
        MIN(races.GridPosition) AS `BestGridPosition`,
        -- Maximum grid position achieved by the team
        MAX(races.GridPosition) AS `WorstGridPosition`,
        -- Average grid position across all races
        AVG(races.GridPosition) AS `AvgGridPosition`,
        -- Minimum starting position achieved by the team
        MIN(races.StartedPosition) AS `BestStartingPosition`,
        -- Maximum starting position achieved by the team
        MAX(races.StartedPosition) AS `WorstStartingPosition`,
        -- Average starting position across all races
        AVG(races.StartedPosition) AS `AvgStartingPosition`,
        -- Range of starting positions, calculated as the difference between the maximum and minimum starting positions
        AVG(races.GridPosition) - AVG(races.StartedPosition) AS `AverageStartingAndFinishingDev`
    FROM
        teams
     JOIN
        teamDrivers ON teams.TeamID = teamDrivers.TeamID
     JOIN
        drivers ON teamDrivers.DriverID = drivers.DriverID
     JOIN
        races ON drivers.DriverID = races.DriverID
    WHERE
        YEAR(races.RaceDate) = season_year 
    GROUP BY
        teams.TeamID, teams.TeamName
    ORDER BY
        `AvgGridPosition`;
END//
DELIMITER ;
