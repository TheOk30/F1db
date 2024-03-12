DELIMITER //
CREATE FUNCTION DriverTotalSeasonPoints(season_year YEAR, driver_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE points INT DEFAULT 0;

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
                
    RETURN points;
END //

DELIMITER ;
