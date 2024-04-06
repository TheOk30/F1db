Delimiter //
CREATE PROCEDURE `DriverStatsOnDifferentTrackTypes` (IN driver_id INT)
BEGIN
	SELECT 
		drivers.DriverID,
        (SELECT avg(points.Points + races.IsfastestLap) FROM points
			INNER JOIN races ON points.GridPosition = races.GridPosition
			INNER JOIN circuits ON circuits.CircuitID = races.CircuitID
            INNER JOIN circuittypes ON circuittypes.CircuitTypeID = circuits.CircuitTypeID
			WHERE circuittypes.CircuitType ='Street Circuit' AND
			drivers.DriverID = races.DriverID) As `points in Street Circuit`,
		
		(SELECT avg(points.Points + races.IsfastestLap) FROM points
			INNER JOIN races ON points.GridPosition = races.GridPosition
			INNER JOIN circuits ON circuits.CircuitID = races.CircuitID
            INNER JOIN circuittypes ON circuittypes.CircuitTypeID = circuits.CircuitTypeID
			WHERE circuittypes.CircuitType = 'Race Circuit' AND
			drivers.DriverID = races.DriverID) As `points in Race Circuit`
	FROM
		drivers
	WHERE
		drivers.DriverID = driver_id;
END//
Delimiter ;