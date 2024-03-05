DELIMITER //
CREATE PROCEDURE ListWorldChampions()
BEGIN
    DECLARE startYEAR INT;
    DECLARE endYEAR INT;
    DECLARE currentYEAR INT;

    -- Find the range of years in the races table
    SELECT MIN(YEAR(RaceDate)), MAX(YEAR(RaceDate))
    INTO startYEAR, endYEAR
    FROM races;

    SET currentYEAR = startYEAR;

    -- Temporary table to hold yearly champions ID
    CREATE TEMPORARY TABLE IF NOT EXISTS YearlyChampions (
        YearWon YEAR,
        DriverID INT
    );

    WHILE currentYEAR <= endYEAR DO

        INSERT INTO YearlyChampions(YearWon, DriverID ) 
        VALUES (currentYEAR, (select f1.WorldChampionPerSeason(currentYEAR)));
        
        SET currentYEAR = currentYEAR + 1;
    END WHILE;

    -- Select the final result
    SELECT 
		(SELECT CONCAT(drivers.FirstName, ' ', drivers.LastName) FROM drivers WHERE drivers.DriverID = YearlyChampions.DriverID) AS `DriverName`,   
        YearWon  
	FROM YearlyChampions;

    -- Cleanup
    DROP TEMPORARY TABLE IF EXISTS YearlyChampions;
END //
DELIMITER ;
