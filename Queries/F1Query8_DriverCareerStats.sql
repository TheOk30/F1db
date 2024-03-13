DELIMITER //
CREATE PROCEDURE `DriverCareerStats` (IN driver_id INT)
BEGIN
	 -- Date variables
    DECLARE end_date INT DEFAULT YEAR(CURDATE());  
    DECLARE career_start_year INT;

    -- Declare variables for statistics
    DECLARE currentYear INT;
    DECLARE careerLength INT DEFAULT 0;
    DECLARE careerWorldChampionships INT DEFAULT 0;

	-- Calculate career statistics for the current year
	DECLARE careerPoints INT DEFAULT 0;
	DECLARE careerWins INT DEFAULT 0;
	DECLARE careerPodiums INT DEFAULT 0;
	DECLARE careerFastLaps INT DEFAULT 0;
	DECLARE careerPoles INT DEFAULT 0;
    
    -- Cursor to fetch distinct years
    DECLARE year_cursor CURSOR FOR
        SELECT DISTINCT YEAR(RaceDate) AS RaceYear
        FROM races
        WHERE DriverID = driver_id;

    -- Get the driver's career start year
    SELECT MIN(YEAR(RaceDate)) INTO career_start_year
    FROM races
    WHERE DriverID = driver_id;

    -- Open the cursor
    OPEN year_cursor;

    -- Loop through each year
    year_loop: LOOP
        -- Fetch the next year from the cursor
        FETCH year_cursor INTO currentYear;

        -- Exit loop if no more years
        IF currentYear IS NULL THEN
            LEAVE year_loop;
        END IF;
        
        -- Assuming you have functions to calculate statistics for each season
        SET careerPoints = DriverTotalSeasonPoints(currentYear, driver_id);
        SET careerWins = DriverTotalSeasonWins(currentYear, driver_id);
        SET careerPodiums = DriverTotalSeasonPodiums(currentYear, driver_id);
        SET careerFastLaps = DriverTotalSeasonFastLaps(currentYear, driver_id);
        SET careerPoles = DriverTotalSeasonPolls(currentYear, driver_id);

        IF WorldChampionPerSeason(currentYear) = driver_id THEN
            SET careerWorldChampionships = careerWorldChampionships + 1;
        END IF;

        -- Select the statistics for the current season
        SELECT 
            CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`,
            end_date-career_start_year AS `CareerLength`,
            careerPoints AS `CareerPoints`,
            careerWins AS `CareerWins`,
            careerPodiums AS `CareerPodiums`,
            careerPoles AS `CareerPoles`,
            careerFastLaps AS `CareerFastLaps`
        FROM drivers
        WHERE DriverID = driver_id;

    END LOOP year_loop;

    -- Close the cursor
    CLOSE year_cursor;
END //
DELIMITER ;
