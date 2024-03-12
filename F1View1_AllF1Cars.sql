CREATE VIEW `AllF1Cars` AS
	SELECT 
		c.CarName,
		c.Season,
		t.TeamName
	FROM 
		cars c
	JOIN 
		teams t ON c.TeamID = t.TeamID
	ORDER BY 
		c.Season DESC, t.TeamName, c.CarName;