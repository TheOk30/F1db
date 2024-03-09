CREATE TABLE namechanges (
TeamId INT AUTO_INCREMENT PRIMARY KEY,
OldName VARCHAR(20) NOT NULL,
Datechanged DATE );

DELIMITER //
CREATE DEFINER = CURRENT_USER TRIGGER `f1`.`teams_BEFORE_UPDATE` BEFORE UPDATE ON `teams` FOR EACH ROW
BEGIN
	IF !OLD.TeamName <=> NEW.TeamName and NEW.TeamName is not null THEN
	INSERT INTO passwordlog (TeamId,OldName,Datechanged)
	VALUES(TeamId,OLD.TeamName,now()) ;
	END IF;
END //
DELIMITER ; 


