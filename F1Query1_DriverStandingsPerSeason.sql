DELIMITER //

CREATE PROCEDURE DriverStandingsPerSeason(IN season_year YEAR)
BEGIN
    -- Variable declarations
    DECLARE driver_id INT;
    DECLARE points INT;
    DECLARE done INT DEFAULT FALSE;

    -- Cursor to iterate over all drivers
    DECLARE driver_cursor CURSOR FOR
        SELECT DriverID FROM drivers;

    -- Handler to set 'done' when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
     IF NOT EXISTS(SELECT 1 FROM races  WHERE YEAR(races.RaceDate) = season_year) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No Record For This Season';
        
    ELSE
		-- Create a temporary table to store standings
		CREATE TEMPORARY TABLE IF NOT EXISTS temp_drivers_standings (
			DriverID INT UNIQUE,
			Points INT
		);
		
		-- Open the cursor
		OPEN driver_cursor;
		
		-- Loop through all drivers
		WHILE NOT done DO
			FETCH driver_cursor INTO driver_id;
			
			-- Check if the driver participated in any race for the given season
			 IF 
				EXISTS (
					SELECT 1 FROM races 
					WHERE YEAR(races.RaceDate) = season_year 
					AND races.DriverID = driver_id
				) 
				AND
				NOT EXISTS (
					SELECT 1 FROM temp_drivers_standings TMP 
					WHERE TMP.DriverID = driver_id
				) 
			THEN
			
				-- Calculate the total points for the driver
				SET points = (
					SELECT SUM(points.Points) 
					FROM points 
					INNER JOIN races ON points.GridPosition = races.GridPosition 
					WHERE YEAR(races.RaceDate) = season_year 
					AND races.DriverID = driver_id
					);
					
				-- Add bonus points for fastest laps within top 10 positions
				SET points = points + (
					SELECT COUNT(*) 
					FROM races 
					WHERE YEAR(RaceDate) = season_year 
					AND DriverID = driver_id 
					AND IsFastestLap 
					AND GridPosition <= 10
				);
					
				-- Insert the driver's standings into the temporary table
				INSERT INTO temp_drivers_standings (DriverID, Points) 
				VALUES (driver_id, points);
			END IF;
		END WHILE;
		
		-- Close the cursor
		CLOSE driver_cursor;
		
		-- Select and display the final standings
		 SELECT 
			(SELECT CONCAT(drivers.FirstName, ' ', drivers.LastName) FROM drivers WHERE drivers.DriverID = TMP.DriverID ) AS `DriverName`,
			TMP.Points
		FROM 
			temp_drivers_standings as TMP
		ORDER BY 
			TMP.Points DESC;

		-- Clean up by dropping the temporary table
		DROP TEMPORARY TABLE IF EXISTS temp_drivers_standings;    
	END IF;
END //
DELIMITER ;

