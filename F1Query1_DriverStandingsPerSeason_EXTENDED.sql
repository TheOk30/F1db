DELIMITER //
CREATE PROCEDURE DriverStandingsPerSeason_EXTENDED(IN season_year YEAR)
BEGIN
     IF NOT EXISTS(SELECT 1 FROM races  WHERE YEAR(races.RaceDate) = season_year) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No Record For This Season';
        
    ELSE
		-- SELECT all drivers that raced this season and their final point count using 
        -- DriverTotalSeasonPoints FUNCTION
        -- DriverTotalSeasonWins   FUNCTION
        -- DriverTotalSeasonPolls  FUNCTION
        -- DriverTotalSeasonPodiums FUNCTION
        -- DriverTotalSeasonFastLaps FUNCTION
		SELECT 
			CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`, 
			DriverTotalSeasonPoints(2023, drivers.DriverID) AS `Points This Season`,
            DriverTotalSeasonWins(2023, drivers.DriverID) AS `Wins This Season`,
			DriverTotalSeasonPolls(2023, drivers.DriverID) AS `Polls This Season`,
			DriverTotalSeasonPodiums(2023, drivers.DriverID) AS `Podimus This Season`,
			DriverTotalSeasonFastLaps(2023, drivers.DriverID) AS `Fast Laps This Season`
		FROM 
			drivers
		WHERE
			-- If Driver Raced in this season
			EXISTS (
				SELECT 1 FROM races 
				WHERE YEAR(races.RaceDate) = season_year 
				AND races.DriverID = drivers.DriverID
				) 
		ORDER BY
			`Points This Season` desc;
	END IF;
END //
DELIMITER ;

