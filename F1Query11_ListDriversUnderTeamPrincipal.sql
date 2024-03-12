DELIMITER //

CREATE PROCEDURE `ListDriversUnderTeamPrincipal`(IN teamPrincipleID INT)
BEGIN
    SELECT DISTINCT 
        CONCAT(d.FirstName, ' ', d.LastName) AS DriverName,
        t.TeamName,
        tp.FirstName AS PrincipalFirstName,
        tp.LastName AS PrincipalLastName
    FROM 
        teamPrincipalsTeams tpt
    JOIN 
        teamPrincipals tp ON tpt.TeamPrincipleID = tp.TeamPrincipleID
    JOIN 
        teams t ON tpt.TeamID = t.TeamID
    JOIN 
        teamDrivers td ON t.TeamID = td.TeamID
    JOIN 
        drivers d ON td.DriverID = d.DriverID
    WHERE 
        tpt.TeamPrincipleID = teamPrincipleID
    ORDER BY 
        d.LastName, d.FirstName;
END//

DELIMITER ;