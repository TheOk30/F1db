DELIMITER //
CREATE FUNCTION TeamsTotalSeasonPoints(season_year YEAR, team_id INT) 
RETURNS INT 
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE points INT DEFAULT 0;

	SELECT SUM((SELECT f1.DriverTotalSeasonPoints(season_year, teamdrivers.DriverID)))
    INTO points
    FROM teams INNER JOIN teamdrivers ON teams.TeamID = teamdrivers.TeamID
    WHERE teams.TeamID = team_id;
					
    RETURN points;
END //
DELIMITER ;
