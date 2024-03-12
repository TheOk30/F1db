DELIMITER //
CREATE FUNCTION DriverTotalSeasonPolls(season_year YEAR, driver_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE polls INT DEFAULT 0;

	SELECT COUNT(*)
    INTO polls
    FROM races 
    WHERE races.DriverID = driver_id
    AND races.StartedPosition = 1
    AND YEAR(races.RaceDate) = season_year;
					
    RETURN polls;
END //
DELIMITER ;