DELIMITER //
CREATE FUNCTION DriverTotalSeasonFastLaps(season_year YEAR, driver_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE fast_laps INT DEFAULT 0;

	SELECT COUNT(*)
    INTO fast_laps
    FROM races 
    WHERE races.DriverID = driver_id
    AND races.IsfastestLap = 1
    AND YEAR(races.RaceDate) = season_year;
					
    RETURN fast_laps;
END //
DELIMITER ;