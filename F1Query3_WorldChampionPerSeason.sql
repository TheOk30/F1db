DELIMITER //

CREATE FUNCTION WorldChampionPerSeason(season_year YEAR) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE topDriverID INT;

    SELECT d.DriverID INTO topDriverID
    FROM drivers d
    INNER JOIN races r ON d.DriverID = r.DriverID 
    INNER JOIN points p ON r.GridPosition = p.GridPosition
    WHERE YEAR(r.RaceDate) = season_year
    GROUP BY d.DriverID
    ORDER BY (SUM(p.Points) + SUM(r.IsFastestLap)) DESC
    LIMIT 1;

    RETURN topDriverID;
END //

DELIMITER ;
