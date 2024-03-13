-- Create the F1 database
CREATE DATABASE IF NOT EXISTS F1;
USE F1;

-- Create the countries table
CREATE TABLE IF NOT EXISTS countries (
    CountryID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(50) NOT NULL
);

-- Create the cities table
CREATE TABLE IF NOT EXISTS cities (
    CityID INT AUTO_INCREMENT PRIMARY KEY,
    CityName VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES countries(CountryID)
);

-- Create the drivers table
CREATE TABLE IF NOT EXISTS drivers (
    DriverID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
    YearStarted YEAR NOT NULL,
    YearRetired YEAR,

    FOREIGN KEY (CountryID) REFERENCES countries(CountryID)
);

-- Create the circuitTypes table
CREATE TABLE IF NOT EXISTS circuitTypes (
    CircuitTypeID INT AUTO_INCREMENT PRIMARY KEY,
    CircuitType ENUM('Street Circuit', 'Race Circuit') NOT NULL
);

-- Create the circuits table
CREATE TABLE IF NOT EXISTS circuits (
    CircuitID INT AUTO_INCREMENT PRIMARY KEY,
    CircuitName VARCHAR(100) NOT NULL,
    NumberOfLaps INT NOT NULL,
    RaceLength DECIMAL(10, 2) NOT NULL,
    CircuitStatus ENUM('Active', 'Retired') NOT NULL,
    NumberOfDRSStraights INT NOT NULL,
    CityID INT NOT NULL,
    CircuitTypeID INT NOT NULL,
    FOREIGN KEY (CityID) REFERENCES cities(CityID),
    FOREIGN KEY (CircuitTypeID) REFERENCES circuitTypes(CircuitTypeID)
);

-- Create the points table
CREATE TABLE IF NOT EXISTS points (
    GridPosition INT AUTO_INCREMENT PRIMARY KEY,
    Points INT NOT NULL
);

-- Create the teamPrincipals table
CREATE TABLE IF NOT EXISTS teamPrincipals (
    TeamPrincipleID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
    YearStarted YEAR NOT NULL,
    YearRetired YEAR,
    FOREIGN KEY (CountryID) REFERENCES countries(CountryID)
);

-- Create the cars table
CREATE TABLE IF NOT EXISTS cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    CarName VARCHAR(100) NOT NULL
);

-- Create the teams table
CREATE TABLE IF NOT EXISTS teams (
    TeamID INT AUTO_INCREMENT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    CountryID INT NOT NULL,
    TeamStatus ENUM('Active', 'Retired') NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES countries(CountryID)
);

-- Create the teamCars junction table with Season as part of the primary key
CREATE TABLE IF NOT EXISTS teamCars (
    Season YEAR,
    CarID INT,
    TeamID INT,
    PRIMARY KEY (Season, CarID, TeamID),
    FOREIGN KEY (CarID) REFERENCES cars(CarID),
    FOREIGN KEY (TeamID) REFERENCES teams(TeamID)
);

-- Create the teamDrivers table for the many-to-many relationship between teams and drivers
CREATE TABLE IF NOT EXISTS teamDrivers (
    TeamID INT,
    DriverID INT,
    Season YEAR,
    PRIMARY KEY (TeamID, DriverID, Season),
    FOREIGN KEY (TeamID) REFERENCES teams(TeamID),
    FOREIGN KEY (DriverID) REFERENCES drivers(DriverID)
);

-- Create the teamPrincipalsTeams table for the many-to-many relationship between teams and team principals
CREATE TABLE IF NOT EXISTS teamPrincipalsTeams (
    TeamID INT,
    TeamPrincipleID INT,
    Season YEAR,
    PRIMARY KEY (TeamID, TeamPrincipleID, Season),
    FOREIGN KEY (TeamID) REFERENCES teams(TeamID),
    FOREIGN KEY (TeamPrincipleID) REFERENCES teamPrincipals(TeamPrincipleID)
);

-- Create the Race table
CREATE TABLE IF NOT EXISTS Race (
    RaceDate DATE,
    CircuitID INT,
    DriverID INT,
    GridPosition INT,
    StartedPosition INT,
    IsfastestLap INT DEFAULT 0,
    PRIMARY KEY (RaceDate, CircuitID, DriverID, GridPosition),
    FOREIGN KEY (CircuitID) REFERENCES circuits(CircuitID),
    FOREIGN KEY (DriverID) REFERENCES drivers(DriverID),
    FOREIGN KEY (GridPosition) REFERENCES points(GridPosition)
);
