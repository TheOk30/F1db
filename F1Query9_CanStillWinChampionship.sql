DELIMITER //
CREATE PROCEDURE `CanStillWinChampionship`(IN givenDate DATE, IN totalRacesSeason INT)
BEGIN
    DECLARE maxPointsAvailable INT;
    DECLARE leaderPoints INT DEFAULT 0;
    DECLARE remainingRaces INT;

    -- Calculate the remaining races based on the given date and the season year
    SET remainingRaces = totalRacesSeason - (SELECT COUNT(DISTINCT RaceDate) 
                                              FROM Races 
                                              WHERE RaceDate <= givenDate 
                                              AND YEAR(RaceDate) = YEAR(givenDate));
    SET maxPointsAvailable = remainingRaces * 26; -- Assuming 26 points for a win

    -- Determine the current leader's total points for the current season
    SELECT MAX(TotalPoints) INTO leaderPoints FROM (
        SELECT r.DriverID, SUM(IFNULL(p.Points, 0)) AS TotalPoints
        FROM Races r
        LEFT JOIN points p ON r.GridPosition = p.GridPosition
        WHERE r.RaceDate <= givenDate AND YEAR(r.RaceDate) = YEAR(givenDate)
        GROUP BY r.DriverID
    ) AS CurrentStandings;

    -- Determine drivers who can theoretically still win, considering only those who participated in the current season
    SELECT CONCAT(d.FirstName, ' ', d.LastName) AS `DriverName`,
           SUM(p.Points) AS `CurrentPoints`, 
           SUM(p.Points) + maxPointsAvailable AS `MaxPossiblePoints`
    FROM drivers d
    JOIN teamDrivers td ON d.DriverID = td.DriverID AND td.Season = YEAR(givenDate)
    LEFT JOIN Races r ON d.DriverID = r.DriverID AND r.RaceDate <= givenDate AND YEAR(r.RaceDate) = YEAR(givenDate)
    LEFT JOIN points p ON r.GridPosition = p.GridPosition
    GROUP BY d.DriverID
    HAVING MaxPossiblePoints >= leaderPoints
    ORDER BY MaxPossiblePoints DESC;
END//
DELIMITER ;
