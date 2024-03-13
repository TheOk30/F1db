DELIMITER $$

CREATE PROCEDURE `CalculateAllTimeDriverStats`()
BEGIN
    DECLARE finished INT DEFAULT FALSE;
    DECLARE cur_year INT;
    DECLARE champ_driver_id INT;

    -- Cursor to iterate through years from the races
    DECLARE year_cursor CURSOR FOR 
        SELECT DISTINCT YEAR(RaceDate) 
        FROM Races 
        ORDER BY YEAR(RaceDate);
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = TRUE;
    
    -- Prepare a temporary table to store calculations
    DROP TEMPORARY TABLE IF EXISTS TempDriverStats;
    CREATE TEMPORARY TABLE TempDriverStats (
        DriverID INT,
        TotalPoints INT DEFAULT 0,
        TotalWins INT DEFAULT 0,
        TotalPoles INT DEFAULT 0,
        TotalPodiums INT DEFAULT 0,
        TotalFastLaps INT DEFAULT 0,
        WorldChampionships INT DEFAULT 0,
        PRIMARY KEY (DriverID)
    );

    OPEN year_cursor;

    year_loop: LOOP
        FETCH year_cursor INTO cur_year;
        IF finished THEN
            LEAVE year_loop;
        END IF;

        -- Determine the world champion for the current year
        SET champ_driver_id = WorldChampionPerSeason(cur_year);

        -- Insert or update driver stats for the current year
        -- Assume detailed implementation for stats calculation functions exists
        -- This is a placeholder for the logic
        INSERT INTO TempDriverStats (DriverID, TotalPoints, TotalWins, TotalPoles, TotalPodiums, TotalFastLaps, WorldChampionships)
        SELECT d.DriverID,
               DriverTotalSeasonPoints(cur_year, d.DriverID),
               DriverTotalSeasonWins(cur_year, d.DriverID),
               DriverTotalSeasonPolls(cur_year, d.DriverID),
               DriverTotalSeasonPodiums(cur_year, d.DriverID),
               DriverTotalSeasonFastLaps(cur_year, d.DriverID),
               IF(d.DriverID = champ_driver_id, 1, 0)
        FROM Drivers d
        ON DUPLICATE KEY UPDATE
            TotalPoints = TotalPoints + VALUES(TotalPoints),
            TotalWins = TotalWins + VALUES(TotalWins),
            TotalPoles = TotalPoles + VALUES(TotalPoles),
            TotalPodiums = TotalPodiums + VALUES(TotalPodiums),
            TotalFastLaps = TotalFastLaps + VALUES(TotalFastLaps),
            WorldChampionships = WorldChampionships + VALUES(WorldChampionships);

    END LOOP;

    CLOSE year_cursor;

    -- Select and display final aggregated results
    SELECT
           CONCAT(d.FirstName, ' ', d.LastName) AS DriverName, 
		   t.WorldChampionships,
           t.TotalWins,
		   t.TotalPodiums, 
		   t.TotalPoles, 
           t.TotalPoints, 
           t.TotalFastLaps
    FROM TempDriverStats t
    JOIN Drivers d ON d.DriverID = t.DriverID
    ORDER BY t.WorldChampionships DESC, t.TotalWins DESC,  t.TotalPodiums DESC, t.TotalPoles DESC, t.TotalPoints DESC, t.TotalFastLaps DESC;

    -- Cleanup
    DROP TEMPORARY TABLE IF EXISTS TempDriverStats;

END$$

DELIMITER ;
