DELIMITER //
CREATE PROCEDURE `DriversWithPointsBetweenDates`(IN start_date DATE, IN end_date DATE)
BEGIN
	SELECT
		CONCAT(drivers.FirstName, ' ', drivers.LastName) AS `DriverName`,
		DriverTotalSeasonPoints(YEAR(start_date), drivers.DriverID) AS `TotalPoints`,
		SUM(points.Points) AS `PointsInBetween`,
		(SUM(points.Points) / DriverTotalSeasonPoints(YEAR(start_date), drivers.DriverID)) * 100 AS `PercentageOfTotalSeasonPoints`
	FROM
		drivers
	JOIN
		races ON races.DriverID = drivers.DriverID
	JOIN
		points ON points.GridPosition = races.GridPosition
	WHERE
		YEAR(start_date) = YEAR(end_date)  -- Check if start_date and end_date are in the same year
		AND YEAR(start_date) = YEAR(races.RaceDate)  -- Ensure that races are in the same year as start_date and end_date
		AND races.RaceDate BETWEEN start_date AND end_date
		AND drivers.DriverID = ANY(SELECT DISTINCT DriverID FROM races WHERE RaceDate BETWEEN start_date AND end_date)
	GROUP BY
		drivers.DriverID;  -- Group by driver ID to aggregate the results for each driver

END //
DELIMITER ;

