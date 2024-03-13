DELIMITER //

CREATE PROCEDURE `UpdateRaceTeamName`(IN team_id INT, IN newTeamName VARCHAR(100))
BEGIN

	-- Check if the team exists
    IF NOT EXISTS(SELECT 1 FROM teams WHERE TeamID = team_id) THEN
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No Record For This Season';
        
	ELSE
		-- Update the team's name based on the team ID
		UPDATE teams
		SET TeamName = newTeamName
		WHERE TeamID = team_id;
    END IF;
END //

DELIMITER ;
