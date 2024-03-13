DELIMITER //
CREATE PROCEDURE DriverStandingsPerSeason(IN season_year YEAR)
BEGIN
     IF NOT EXISTS(SELECT 1 FROM races  WHERE YEAR(races.RaceDate) = season_year) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No Record For This Season';
        
    ELSE
		-- SELECT all drivers that raced this season and their final point count using 
        -- DriverTotalSeasonPoints FUNCTION
		SELECT 
			CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`, 
			DriverTotalSeasonPoints(season_year, drivers.DriverID) AS `Points This Season`
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

