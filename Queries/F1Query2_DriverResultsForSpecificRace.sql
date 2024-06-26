DELIMITER //
CREATE PROCEDURE DriverResultsForSpecificRace(IN season_year YEAR, IN circuit_id INT)
BEGIN
    -- Check if a race was held at the specified circuit during the specified season
    IF NOT EXISTS(SELECT 1 FROM races  WHERE YEAR(races.RaceDate) = season_year AND races.CircuitID = circuit_id) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No Race Was Held At This Circuit During This Season';
    ELSE
        -- Fetch race results
        SELECT 
            CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`, 
            races.GridPosition AS `Position`, 
            races.IsFastestLap AS `Has Fastest Lap` 
        FROM 
            drivers 
        INNER JOIN 
            races ON drivers.DriverID = races.DriverID 
        WHERE
            YEAR(races.RaceDate) = season_year 
            AND 
            races.CircuitID = circuit_id
        ORDER BY 
            `Position` ASC; 
    END IF;
END//
DELIMITER ;

