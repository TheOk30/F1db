Delimiter //
CREATE PROCEDURE `BestCircuitPerTeam` (IN team_id INT)
BEGIN
    SELECT 
		circuits.CircuitName,
		(SELECT Sum(points.Points + races.IsfastestLap)
		FROM 
			points
			INNER JOIN races ON points.GridPosition = races.GridPosition
			INNER JOIN teamdrivers ON teamdrivers.DriverID = races.DriverID
			WHERE circuits.CircuitID = races.CircuitID AND
			teamdrivers.TeamID = team_id) As `points`
	FROM
		circuits
	order by `points` desc; 
END//
Delimiter ;