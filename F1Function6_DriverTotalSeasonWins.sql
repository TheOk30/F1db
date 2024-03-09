DELIMITER //
CREATE FUNCTION DriverTotalSeasonWins(season_year YEAR, driver_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE wins INT DEFAULT 0;

	SELECT COUNT(*)
    INTO wins
    FROM races 
    WHERE races.DriverID = driver_id
    AND races.GridPosition = 1
    AND YEAR(races.RaceDate) = season_year;
					
    RETURN wins;
END //
DELIMITER ;