DELIMITER //

CREATE PROCEDURE TeamStandingsPerSeason(IN season_year YEAR)
BEGIN
	IF NOT EXISTS(SELECT 1 FROM races  WHERE YEAR(races.RaceDate) = season_year) THEN
		SIGNAL SQLSTATE '45000' 
		SET MESSAGE_TEXT = 'No Record For This Season';
        
    ELSE
		-- Check if the driver participated in any race for the given season
		SELECT 
		teams.TeamName,
		TeamsTotalSeasonPoints(season_year, teams.TeamID) AS `Points This Season`
		FROM 
			teams
		WHERE
			-- If Driver Raced in this season
			EXISTS (
					SELECT 1 
					FROM races 
					INNER JOIN teamdrivers ON races.DriverID = teamdrivers.DriverID
					WHERE YEAR(races.RaceDate) = season_year 
					AND teamdrivers.TeamID = teams.TeamID
				) 
		ORDER BY
			`Points This Season` desc;
	END IF;
END //
DELIMITER ;

