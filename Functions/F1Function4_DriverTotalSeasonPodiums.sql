DELIMITER //
CREATE FUNCTION DriverTotalSeasonPodiums(season_year YEAR, driver_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE podiums INT DEFAULT 0;

	SELECT COUNT(*)
    INTO podiums
    FROM races 
    WHERE races.DriverID = driver_id
    AND races.GridPosition BETWEEN 1 AND 3
    AND YEAR(races.RaceDate) = season_year;
					
    RETURN podiums;
END //
DELIMITER ;