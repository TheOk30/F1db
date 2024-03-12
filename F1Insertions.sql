-- Insert grid positions and corresponding points
INSERT INTO points (Points) VALUES
(25), -- 1st position
(18), -- 2nd position
(15), -- 3rd position
(12), -- 4th position
(10), -- 5th position
(8),  -- 6th position
(6),  -- 7th position
(4),  -- 8th position
(2),  -- 9th position
(1),  -- 10th position
(0),  -- 11th position
(0),  -- 12th position
(0),  -- 13th position
(0),  -- 14th position
(0),  -- 15th position
(0),  -- 16th position
(0),  -- 17th position
(0),  -- 18th position
(0),  -- 19th position
(0);  -- 20th position


-- Insert countries
INSERT IGNORE INTO countries (CountryName) VALUES
('Australia'),
('Austria'),
('Azerbaijan'),
('Bahrain'),
('Belgium'),
('Brazil'),
('Canada'),
('China'),
('Denmark'),
('France'),
('Finland'),
('Germany'),
('Hungary'),
('Italy'),
('Japan'),
('Mexico'),
('Monaco'),
('Netherlands'),
('New Zealand'),
('Russia'),
('Saudi Arabia'),
('Singapore'),
('Spain'),
('Switzerland'),
('Thailand'),
('United Arab Emirates'),
('United Kingdom'),
('Luxembourg'),
('United States');

-- Insert data into circuitTypes table
INSERT INTO circuitTypes (CircuitType) VALUES
('Street Circuit'),
('Race Circuit');

-- Insert cities
INSERT INTO cities (CityName, CountryID)
VALUES
('Sakhir', (SELECT CountryID FROM countries WHERE CountryName = 'Bahrain')),
('Jeddah', (SELECT CountryID FROM countries WHERE CountryName = 'Saudi Arabia')),
('Melbourne', (SELECT CountryID FROM countries WHERE CountryName = 'Australia')),
('Imola', (SELECT CountryID FROM countries WHERE CountryName = 'Italy')),
('Miami Gardens', (SELECT CountryID FROM countries WHERE CountryName = 'United States')),
('Barcelona', (SELECT CountryID FROM countries WHERE CountryName = 'Spain')),
('Monte Carlo', (SELECT CountryID FROM countries WHERE CountryName = 'Monaco')),
('Baku', (SELECT CountryID FROM countries WHERE CountryName = 'Azerbaijan')),
('Montreal', (SELECT CountryID FROM countries WHERE CountryName = 'Canada')),
('Silverstone', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom')),
('Spielberg', (SELECT CountryID FROM countries WHERE CountryName = 'Austria')),
('Le Castellet', (SELECT CountryID FROM countries WHERE CountryName = 'France')),
('Budapest', (SELECT CountryID FROM countries WHERE CountryName = 'Hungary')),
('Spa-Francorchamps', (SELECT CountryID FROM countries WHERE CountryName = 'Belgium')),
('Zandvoort', (SELECT CountryID FROM countries WHERE CountryName = 'Netherlands')),
('Monza', (SELECT CountryID FROM countries WHERE CountryName = 'Italy')),
('Singapore', (SELECT CountryID FROM countries WHERE CountryName = 'Singapore')),
('Suzuka', (SELECT CountryID FROM countries WHERE CountryName = 'Japan')),
('Austin', (SELECT CountryID FROM countries WHERE CountryName = 'United States')),
('Mexico City', (SELECT CountryID FROM countries WHERE CountryName = 'Mexico')),
('São Paulo', (SELECT CountryID FROM countries WHERE CountryName = 'Brazil')),
('Las Vegas', (SELECT CountryID FROM countries WHERE CountryName = 'United States')),
('Abu Dhabi', (SELECT CountryID FROM countries WHERE CountryName = 'United Arab Emirates'));


INSERT INTO circuits (CircuitName, NumberOfLaps, RaceLength, CircuitStatus, NumberOfDRSStraights, CityID, CircuitTypeID)
VALUES
  ('Bahrain International Circuit', 57, 308.238, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Sakhir'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Jeddah Corniche Circuit', 50, 308.75, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Jeddah'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Albert Park Circuit', 58, 307.574, 'Active', 4, (SELECT CityID FROM cities WHERE CityName = 'Melbourne'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Baku City Circuit', 51, 306.049, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Baku'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Miami International Autodrome', 57, 321.93, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Miami Gardens'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')),
  ('Circuit de Monaco', 78, 260.286, 'Active', 1, (SELECT CityID FROM cities WHERE CityName = 'Monte Carlo'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Circuit de Barcelona-Catalunya', 66, 308.424, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Barcelona'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Circuit Gilles Villeneuve', 70, 305.27, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Montreal'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Silverstone Circuit', 52, 306.198, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Silverstone'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Red Bull Ring', 71, 307.146,  'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Spielberg'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Circuit Paul Ricard', 53, 309.69, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Le Castellet'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Hungaroring', 70, 306.63, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Budapest'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Circuit de Spa-Francorchamps', 44, 308.052, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Spa-Francorchamps'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Circuit Zandvoort', 72, 306.649, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Zandvoort'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Autodromo Nazionale di Monza', 53, 306.72,  'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Monza'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Marina Bay Street Circuit', 61, 308.706, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Singapore'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Suzuka International Racing Course', 53, 307.471, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Suzuka'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Circuit of the Americas', 56, 308.405, 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Austin'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Autódromo Hermanos Rodríguez', 71, 305.584,  'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Mexico City'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Autódromo José Carlos Pace', 71, 305.909, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'São Paulo'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')), 
  ('Las Vegas Street Circuit', 50, 310 , 'Active', 3, (SELECT CityID FROM cities WHERE CityName = 'Las Vegas'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Street Circuit')), 
  ('Yas Marina Circuit', 58, 306.183, 'Active', 2, (SELECT CityID FROM cities WHERE CityName = 'Abu Dhabi'), (SELECT CircuitTypeID FROM circuitTypes WHERE CircuitType = 'Race Circuit')); 


INSERT INTO drivers (FirstName, LastName, CountryID, YearStarted, DriverStatus, WorldChampionships, Birthdate)
VALUES
  ('Charles', 'Leclerc', (SELECT CountryID FROM countries WHERE CountryName = 'Monaco'), 2018, 'Active', 0, '1997-10-16'), 
  ('Sergio', 'Perez', (SELECT CountryID FROM countries WHERE CountryName = 'Mexico'), 2011, 'Active', 0, '1990-01-26'), 
  ('Max', 'Verstappen', (SELECT CountryID FROM countries WHERE CountryName = 'Netherlands'), 2015, 'Active', 2, '1997-09-30'),
  ('Carlos', 'Sainz', (SELECT CountryID FROM countries WHERE CountryName = 'Spain'), 2015, 'Active', 0, '1994-09-01'),
  ('George', 'Russell', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 2019, 'Active', 0, '1998-02-15'),
  ('Lewis', 'Hamilton', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 2007, 'Active', 7, '1985-01-07'),
  ('Esteban', 'Ocon', (SELECT CountryID FROM countries WHERE CountryName = 'France'), 2016, 'Active', 0, '1996-09-17'),
  ('Pierre', 'Gasly', (SELECT CountryID FROM countries WHERE CountryName = 'France'), 2017, 'Active', 0, '1996-02-07'),
  ('Lando', 'Norris', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 2019, 'Active', 0, '1999-11-13'),
  ('Oscar', 'Piastri', (SELECT CountryID FROM countries WHERE CountryName = 'Australia'), 2023, 'Active', 0, '2001-04-06'),
  ('Fernando', 'Alonso', (SELECT CountryID FROM countries WHERE CountryName = 'Spain'), 2001, 'Active', 2, '1981-07-29'),
  ('Lance', 'Stroll', (SELECT CountryID FROM countries WHERE CountryName = 'Canada'), 2017, 'Active', 0, '1998-10-29'),
  ('Kevin', 'Magnussen', (SELECT CountryID FROM countries WHERE CountryName = 'Denmark'), 2014, 'Active', 0, '1992-10-05'),
  ('Nico', 'Hulkenberg', (SELECT CountryID FROM countries WHERE CountryName = 'Germany'), 2010, 'Active', 0, '1987-08-19'),
  ('Alex', 'Albon', (SELECT CountryID FROM countries WHERE CountryName = 'Thailand'), 2019, 'Active', 0, '1996-03-23'),
  ('Logan', 'Sargeant', (SELECT CountryID FROM countries WHERE CountryName = 'United States'), 2023, 'Active', 0, '2000-12-31'), 
  ('Valtteri', 'Bottas', (SELECT CountryID FROM countries WHERE CountryName = 'Finland'), 2013, 'Active', 0, '1989-08-28'),
  ('Zhou', 'Guanyu', (SELECT CountryID FROM countries WHERE CountryName = 'China'), 2022, 'Active', 0, '1999-05-30'),
  ('Yuki', 'Tsunoda', (SELECT CountryID FROM countries WHERE CountryName = 'Japan'), 2021, 'Active', 0, '2000-05-11'),
  ('Nyck', 'De Vries', (SELECT CountryID FROM countries WHERE CountryName = 'Netherlands'), 2023, 'Active', 0, '1995-02-06');

INSERT INTO drivers (FirstName, LastName, CountryID, YearStarted, YearRetired, Birthdate)
VALUES ('Daniel', 'Ricciardo', (SELECT CountryID FROM countries WHERE CountryName = 'Australia'), 2011, NULL, '1989-07-01');

INSERT INTO drivers (FirstName, LastName, CountryID, YearStarted, YearRetired, Birthdate)
VALUES ('Liam', 'Lawson', (SELECT CountryID FROM countries WHERE CountryName = 'New Zealand'), 2023, 2023, '2002-10-11');

INSERT INTO teamPrincipals (FirstName, LastName, CountryID, YearStarted, PrincipleStatus)
VALUES
  ('Frederic', 'Vasseur', (SELECT CountryID FROM countries WHERE CountryName = 'France'), 2017, 'Active'),
  ('Franz', 'Tost', (SELECT CountryID FROM countries WHERE CountryName = 'Austria'), 2006, 'Active'),
  ('Otmar', 'Szafnauer', (SELECT CountryID FROM countries WHERE CountryName = 'United States'), 2009, 'Active'),
  ('Andreas', 'Seidl', (SELECT CountryID FROM countries WHERE CountryName = 'Germany'), 2019, 'Active'),   
  ('Guenther', 'Steiner', (SELECT CountryID FROM countries WHERE CountryName = 'Italy'), 2016, 'Active'),
  ('Jost', 'Capito', (SELECT CountryID FROM countries WHERE CountryName = 'Germany'), 2016, 'Active'), 
  ('Christian', 'Horner', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 2005, 'Active'),
  ('Toto', 'Wolff', (SELECT CountryID FROM countries WHERE CountryName = 'Austria'), 2013, 'Active'),
  ('Mike', 'Krack', (SELECT CountryID FROM countries WHERE CountryName = 'Luxembourg'), 2022, 'Active'),
  ('James', 'Vowles', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 2023, 'Active') 
;

INSERT INTO teams (TeamName, CountryID, TeamStatus)
VALUES 
   ('Scuderia Ferrari', (SELECT CountryID FROM countries WHERE CountryName = 'Italy'), 'Active'),
   ('Oracle Red Bull Racing', (SELECT CountryID FROM countries WHERE CountryName = 'Austria'), 'Active'),
   ('Mercedes-AMG Petronas F1 Team', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 'Active'),
   ('BWT Alpine F1 Team', (SELECT CountryID FROM countries WHERE CountryName = 'France'), 'Active'),
   ('McLaren F1 Team', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 'Active'),
   ('Alfa Romeo F1 Team Stake', (SELECT CountryID FROM countries WHERE CountryName = 'Switzerland'), 'Active'),
   ('Aston Martin Aramco Cognizant F1 Team', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 'Active'),
   ('MoneyGram Haas F1 Team', (SELECT CountryID FROM countries WHERE CountryName = 'United States'), 'Active'),
   ('Scuderia AlphaTauri', (SELECT CountryID FROM countries WHERE CountryName = 'Italy'), 'Active'),
   ('Williams Racing', (SELECT CountryID FROM countries WHERE CountryName = 'United Kingdom'), 'Active');
   

INSERT INTO cars (Season, CarName, TeamID)
VALUES
  (2023, 'Ferrari SF-23', (SELECT TeamID FROM teams WHERE TeamName = 'Scuderia Ferrari')),
  (2023, 'Red Bull RB19', (SELECT TeamID FROM teams WHERE TeamName = 'Oracle Red Bull Racing')),
  (2023, 'Mercedes F1 W14 E Performance', (SELECT TeamID FROM teams WHERE TeamName = 'Mercedes-AMG Petronas F1 Team')),
  (2023, 'Alpine A523', (SELECT TeamID FROM teams WHERE TeamName = 'BWT Alpine F1 Team')),
  (2023, 'McLaren MCL60', (SELECT TeamID FROM teams WHERE TeamName = 'McLaren F1 Team')),
  (2023, 'Alfa Romeo C43', (SELECT TeamID FROM teams WHERE TeamName = 'Alfa Romeo F1 Team Stake')),
  (2023, 'Aston Martin AMR23', (SELECT TeamID FROM teams WHERE TeamName = 'Aston Martin Aramco Cognizant F1 Team')),
  (2023, 'Haas VF-23', (SELECT TeamID FROM teams WHERE TeamName = 'MoneyGram Haas F1 Team')),
  (2023, 'AlphaTauri AT04', (SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri')),
  (2023, 'Williams FW45', (SELECT TeamID FROM teams WHERE TeamName = 'Williams Racing')); 
  
  
  INSERT INTO teamPrincipalsTeams (TeamID, TeamPrincipleID, Season)
VALUES
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia Ferrari'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Frederic' AND LastName = 'Vasseur'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Franz' AND LastName = 'Tost'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'BWT Alpine F1 Team'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Otmar' AND LastName = 'Szafnauer'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'McLaren F1 Team'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Andreas' AND LastName = 'Seidl'), 2023),  
  ((SELECT TeamID FROM teams WHERE TeamName = 'MoneyGram Haas F1 Team'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Guenther' AND LastName = 'Steiner'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Williams Racing'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'James' AND LastName = 'Vowles'), 2023), 
  ((SELECT TeamID FROM teams WHERE TeamName = 'Oracle Red Bull Racing'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Christian' AND LastName = 'Horner'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Mercedes-AMG Petronas F1 Team'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Toto' AND LastName = 'Wolff'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Aston Martin Aramco Cognizant F1 Team'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Mike' AND LastName = 'Krack'), 2023),  
  ((SELECT TeamID FROM teams WHERE TeamName = 'Alfa Romeo F1 Team Stake'), (SELECT TeamPrincipleID FROM teamPrincipals WHERE FirstName = 'Jost' AND LastName = 'Capito') , 2023) ;
  
  INSERT INTO teamDrivers (TeamID, DriverID, Season)
VALUES
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia Ferrari'), (SELECT DriverID FROM drivers WHERE FirstName = 'Charles' AND LastName = 'Leclerc'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia Ferrari'), (SELECT DriverID FROM drivers WHERE FirstName = 'Carlos' AND LastName = 'Sainz'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Oracle Red Bull Racing'), (SELECT DriverID FROM drivers WHERE FirstName = 'Sergio' AND LastName = 'Perez'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Oracle Red Bull Racing'), (SELECT DriverID FROM drivers WHERE FirstName = 'Max' AND LastName = 'Verstappen'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Mercedes-AMG Petronas F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Lewis' AND LastName = 'Hamilton'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Mercedes-AMG Petronas F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'George' AND LastName = 'Russell'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'McLaren F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Lando' AND LastName = 'Norris'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'McLaren F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Oscar' AND LastName = 'Piastri'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'BWT Alpine F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Esteban' AND LastName = 'Ocon'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'BWT Alpine F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Pierre' AND LastName = 'Gasly'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Alfa Romeo F1 Team Stake'), (SELECT DriverID FROM drivers WHERE FirstName = 'Valtteri' AND LastName = 'Bottas'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Alfa Romeo F1 Team Stake'), (SELECT DriverID FROM drivers WHERE FirstName = 'Zhou' AND LastName = 'Guanyu'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Aston Martin Aramco Cognizant F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Fernando' AND LastName = 'Alonso'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Aston Martin Aramco Cognizant F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Lance' AND LastName = 'Stroll'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'MoneyGram Haas F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Kevin' AND LastName = 'Magnussen'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'MoneyGram Haas F1 Team'), (SELECT DriverID FROM drivers WHERE FirstName = 'Nico' AND LastName = 'Hulkenberg'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri'), (SELECT DriverID FROM drivers WHERE FirstName = 'Yuki' AND LastName = 'Tsunoda'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri'), (SELECT DriverID FROM drivers WHERE FirstName = 'Nyck' AND LastName = 'De Vries'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri'), (SELECT DriverID FROM drivers WHERE FirstName = 'Daniel' AND LastName = 'Ricciardo'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Scuderia AlphaTauri'), (SELECT DriverID FROM drivers WHERE FirstName = 'Liam' AND LastName = 'Lawson'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Williams Racing'), (SELECT DriverID FROM drivers WHERE FirstName = 'Alex' AND LastName = 'Albon'), 2023),
  ((SELECT TeamID FROM teams WHERE TeamName = 'Williams Racing'), (SELECT DriverID FROM drivers WHERE FirstName = 'Logan' AND LastName = 'Sargeant'), 2023);
 
  
-- Inserting the race information with updated driver IDs, grid positions, and date
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-03-05', 1, 3, 1, 1, 0), -- Max Verstappen
('2023-03-05', 1, 2, 2, 2, 0), -- Sergio Perez
('2023-03-05', 1, 11, 3, 5, 0), -- Fernando Alonso
('2023-03-05', 1, 4, 4, 4, 0), -- Carlos Sainz
('2023-03-05', 1, 6, 5, 7, 0), -- Lewis Hamilton
('2023-03-05', 1, 12, 6, 8, 0), -- Lance Stroll
('2023-03-05', 1, 5, 7, 6, 0), -- George Russell
('2023-03-05', 1, 17, 8, 12, 0), -- Valtteri Bottas
('2023-03-05', 1, 8, 9, 20, 0), -- Pierre Gasly
('2023-03-05', 1, 15, 10, 15, 0), -- Alex Albon
('2023-03-05', 1, 19, 11, 14, 0), -- Yuki Tsunoda
('2023-03-05', 1, 16, 12, 16, 0), -- Logan Sargeant
('2023-03-05', 1, 13, 13, 15, 0), -- Kevin Magnussen
('2023-03-05', 1, 20, 14, 19, 0), -- Nyck De Vries
('2023-03-05', 1, 14, 15, 10, 0), -- Nico Hulkenberg
('2023-03-05', 1, 18, 16, 13, 1), -- Zhou Guanyu (fastest lap)
('2023-03-05', 1, 9, 17, 11, 0), -- Lando Norris
('2023-03-05', 1, 7, 18, 9, 0), -- Esteban Ocon
('2023-03-05', 1, 1, 19, 3, 0), -- Charles Leclerc
('2023-03-05', 1, 10, 20, 23, 0); -- Oscar Piastri

-- Inserting the race information for the Saudi Arabian Grand Prix
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-03-19', 2, 2, 1,1,0 ), -- Sergio Pérez
('2023-03-19', 2, 3, 2, 15, 1), -- Max Verstappen (fastest lap)
('2023-03-19', 2, 11, 3, 2, 0), -- Fernando Alonso
('2023-03-19', 2, 5, 4, 3, 0), -- George Russell
('2023-03-19', 2, 6, 5, 7, 0), -- Lewis Hamilton
('2023-03-19', 2, 4, 6, 4, 0), -- Carlos Sainz
('2023-03-19', 2, 1, 7, 12, 0), -- Charles Leclerc
('2023-03-19', 2, 7, 8, 6, 0), -- Esteban Ocon
('2023-03-19', 2, 8, 9, 9, 0), -- Pierre Gasly
('2023-03-19', 2, 13, 10, 13, 0), -- Kevin Magnussen
('2023-03-19', 2, 19, 11, 16, 0), -- Yuki Tsunoda
('2023-03-19', 2, 14, 12, 10, 0), -- Nico Hülkenberg
('2023-03-19', 2, 18, 13, 11, 0), -- Guanyu Zhou
('2023-03-19', 2, 20, 14, 18, 0), -- Nyck de Vries
('2023-03-19', 2, 10, 15, 8, 0), -- Oscar Piastri
('2023-03-19', 2, 16, 16, 20, 0), -- Logan Sargeant
('2023-03-19', 2, 9, 17, 19, 0), -- Lando Norris
('2023-03-19', 2, 17, 18, 14, 0), -- Valtteri Bottas
('2023-03-19', 2, 15, 19, 17, 1), -- Alexander Albon (DNF)
('2023-03-19', 2, 12, 20, 5, 1); -- Lance Stroll (DNF)


-- Inserting the race information for the Australian Grand Prix on 2023-04-02
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-04-02', 3, 3, 1, 1, 0), -- Max Verstappen
('2023-04-02', 3, 6, 2, 3, 0), -- Lewis Hamilton
('2023-04-02', 3, 11, 3, 4, 0), -- Fernando Alonso
('2023-04-02', 3, 12, 4, 6, 0), -- Lance Stroll
('2023-04-02', 3, 2, 5, 11, 1), -- Sergio Pérez
('2023-04-02', 3, 9, 6, 13, 0), -- Lando Norris
('2023-04-02', 3, 14, 7, 10, 0), -- Nico Hülkenberg
('2023-04-02', 3, 10, 8, 16, 0), -- Oscar Piastri
('2023-04-02', 3, 18, 9, 15, 0), -- Guanyu Zhou
('2023-04-02', 3, 19, 10, 12, 0), -- Yuki Tsunoda
('2023-04-02', 3, 17, 11, 20, 0), -- Valtteri Bottas
('2023-04-02', 3, 4, 12, 5, 0), -- Carlos Sainz
('2023-04-02', 3, 8, 13, 14, 0), -- Pierre Gasly
('2023-04-02', 3, 7, 14, 17, 0), -- Esteban Ocon
('2023-04-02', 3, 20, 15, 18, 0), -- Nyck de Vries
('2023-04-02', 3, 16, 16, 19, 0), -- Logan Sargeant
('2023-04-02', 3, 13, 17, 9, 0), -- Kevin Magnussen
('2023-04-02', 3, 5, 18, 2, 0), -- George Russell
('2023-04-02', 3, 15, 19, 8, 0), -- Alexander Albon
('2023-04-02', 3, 1, 20, 7, 0); -- Charles Leclerc

-- Inserting the race information for the Baku Grand Prix on 2023-04-30
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-04-30', 4, 2, 1, 3, 1), -- Sergio Pérez
('2023-04-30', 4, 3, 2, 2, 0), -- Max Verstappen
('2023-04-30', 4, 1, 3, 1, 0), -- Charles Leclerc
('2023-04-30', 4, 11, 4, 6, 0), -- Fernando Alonso
('2023-04-30', 4, 4, 5, 4, 0), -- Carlos Sainz
('2023-04-30', 4, 6, 6, 5, 0), -- Lewis Hamilton
('2023-04-30', 4, 12, 7, 9, 0), -- Lance Stroll
('2023-04-30', 4, 5, 8, 11, 0), -- George Russell
('2023-04-30', 4, 9, 9, 7, 0), -- Lando Norris
('2023-04-30', 4, 19, 10, 8, 0), -- Yuki Tsunoda
('2023-04-30', 4, 10, 11, 10, 0), -- Oscar Piastri
('2023-04-30', 4, 15, 12, 12, 0), -- Alexander Albon
('2023-04-30', 4, 13, 13, 16, 0), -- Kevin Magnussen
('2023-04-30', 4, 8, 14, 17, 0), -- Pierre Gasly
('2023-04-30', 4, 9, 15, 19, 0), -- Esteban Ocon
('2023-04-30', 4, 16, 16, 14, 0), -- Logan Sargeant
('2023-04-30', 4, 14, 17, 20, 0), -- Nico Hülkenberg
('2023-04-30', 4, 17, 18, 13, 0), -- Valtteri Bottas
('2023-04-30', 4, 18, 19, 15, 0), -- Guanyu Zhou
('2023-04-30', 4, 20, 20, 18, 0); -- Nyck de Vries


-- Inserting the race information for the Miami Grand Prix on 2023-05-07
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-05-07', 5, 3, 1, 9, 1), -- Max Verstappen
('2023-05-07', 5, 2, 2, 1, 0), -- Sergio Pérez
('2023-05-07', 5, 11, 3, 2, 0), -- Fernando Alonso
('2023-05-07', 5, 5, 4, 6, 0), -- George Russell
('2023-05-07', 5, 4, 5, 3, 0), -- Carlos Sainz
('2023-05-07', 5, 6, 6, 13, 0), -- Lewis Hamilton
('2023-05-07', 5, 1, 7, 7, 0), -- Charles Leclerc
('2023-05-07', 5, 8, 8, 5, 0), -- Pierre Gasly
('2023-05-07', 5, 7, 9, 8, 0), -- Esteban Ocon
('2023-05-07', 5, 13, 10, 4, 0), -- Kevin Magnussen
('2023-05-07', 5, 19, 11, 17, 0), -- Yuki Tsunoda
('2023-05-07', 5, 12, 12, 18, 0), -- Lance Stroll
('2023-05-07', 5, 17, 13, 10, 0), -- Valtteri Bottas
('2023-05-07', 5, 15, 14, 11, 0), -- Alexander Albon
('2023-05-07', 5, 14, 15, 12, 0), -- Nico Hülkenberg
('2023-05-07', 5, 18, 16, 14, 0), -- Guanyu Zhou
('2023-05-07', 5, 9, 17, 16, 0), -- Lando Norris
('2023-05-07', 5, 20, 18, 15, 0), -- Nyck de Vries
('2023-05-07', 5, 10, 19, 19, 0), -- Oscar Piastri
('2023-05-07', 5, 16, 20, 20, 0); -- Logan Sargeant

-- Inserting the race information for the Monaco Grand Prix on 2023-05-28
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-05-28', 6, 3, 1, 1, 0), -- Max Verstappen
('2023-05-28', 6, 11, 2, 2, 0), -- Fernando Alonso
('2023-05-28', 6, 7, 3, 3, 0), -- Esteban Ocon
('2023-05-28', 6, 6, 4, 5, 1), -- Lewis Hamilton (fastest lap)
('2023-05-28', 6, 5, 5, 8, 0), -- George Russell
('2023-05-28', 6, 1, 6, 6, 0), -- Charles Leclerc
('2023-05-28', 6, 8, 7, 7, 0), -- Pierre Gasly
('2023-05-28', 6, 4, 8, 4, 0), -- Carlos Sainz
('2023-05-28', 6, 9, 9, 10, 0), -- Lando Norris
('2023-05-28', 6, 10, 10, 11, 0), -- Oscar Piastri
('2023-05-28', 6, 17, 11, 15, 0), -- Valtteri Bottas
('2023-05-28', 6, 20, 12, 12, 0), -- Nyck de Vries
('2023-05-28', 6, 18, 13, 19, 0), -- Guanyu Zhou
('2023-05-28', 6, 15, 14, 13, 0), -- Alexander Albon
('2023-05-28', 6, 19, 15, 9, 0), -- Yuki Tsunoda
('2023-05-28', 6, 2, 16, 20, 0), -- Sergio Pérez
('2023-05-28', 6, 14, 17, 18, 0), -- Nico Hülkenberg
('2023-05-28', 6, 16, 18, 16, 0), -- Logan Sargeant
('2023-05-28', 6, 13, 19, 14, 0), -- Kevin Magnussen
('2023-05-28', 6, 12, 20, 17, 0); -- Lance Stroll


-- Inserting the race information for the Spanish Grand Prix on 2023-06-04
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-06-04', 7, 3, 1, 1, 1), -- Max Verstappen (fastest lap)
('2023-06-04', 7, 6, 2, 4, 0), -- Lewis Hamilton
('2023-06-04', 7, 5, 3, 12, 0), -- George Russell
('2023-06-04', 7, 2, 4, 11, 0), -- Sergio Pérez
('2023-06-04', 7, 4, 5, 2, 0), -- Carlos Sainz
('2023-06-04', 7, 12, 6, 5, 0), -- Lance Stroll
('2023-06-04', 7, 11, 7, 8, 0), -- Fernando Alonso
('2023-06-04', 7, 7, 8, 6, 0), -- Esteban Ocon
('2023-06-04', 7, 18, 9, 13, 0), -- Guanyu Zhou
('2023-06-04', 7, 8, 10, 10, 0), -- Pierre Gasly
('2023-06-04', 7, 1, 11, 19, 0), -- Charles Leclerc
('2023-06-04', 7, 19, 12, 15, 0), -- Yuki Tsunoda
('2023-06-04', 7, 10, 13, 9, 0), -- Oscar Piastri
('2023-06-04', 7, 20, 14, 14, 0), -- Nyck de Vries
('2023-06-04', 7, 14, 15, 7, 0), -- Nico Hülkenberg
('2023-06-04', 7, 15, 16, 18, 0), -- Alexander Albon
('2023-06-04', 7, 9, 17, 3, 0), -- Lando Norris
('2023-06-04', 7, 13, 17, 0, 0), -- Kevin Magnussen
('2023-06-04', 7, 17, 19, 16, 0), -- Valtteri Bottas
('2023-06-04', 7, 16, 20, 20, 0); -- Logan Sargeant

-- Inserting the race information for the Canadian Grand Prix on 2023-06-18
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-06-18', 8, 3, 1, 1, 0), -- Max Verstappen
('2023-06-18', 8, 11, 2, 2, 0), -- Fernando Alonso
('2023-06-18', 8, 6, 3, 3, 0), -- Lewis Hamilton
('2023-06-18', 8, 1, 4, 10, 0), -- Charles Leclerc
('2023-06-18', 8, 4, 5, 11, 0), -- Carlos Sainz
('2023-06-18', 8, 2, 6, 12, 1), -- Sergio Pérez (fastest lap)
('2023-06-18', 8, 12, 7, 9, 0), -- Alexander Albon
('2023-06-18', 8, 15, 8, 6, 0), -- Esteban Ocon
('2023-06-18', 8, 20, 9, 16, 0), -- Lance Stroll
('2023-06-18', 8, 4, 10, 14, 0), -- Valtteri Bottas
('2023-06-18', 8, 8, 11, 8, 0), -- Oscar Piastri
('2023-06-18', 8, 14, 12, 15, 0), -- Pierre Gasly
('2023-06-18', 8, 9, 13, 7, 0), -- Lando Norris
('2023-06-18', 8, 11, 14, 19, 0), -- Yuki Tsunoda
('2023-06-18', 8, 17, 15, 5, 0), -- Nico Hülkenberg
('2023-06-18', 8, 13, 16, 20, 0), -- Guanyu Zhou
('2023-06-18', 8, 10, 17, 13, 0), -- Kevin Magnussen
('2023-06-18', 8, 18, 18, 17, 0), -- Nyck de Vries
('2023-06-18', 8, 7, 19, 4, 0), -- George Russell
('2023-06-18', 8, 16, 20, 18, 0); -- Logan Sargeant

-- Inserting the race information for the Austrian Grand Prix on 2023-07-02 with grid positions from 1 to 20
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-07-02', 9, 3, 1, 1, 1), -- Max Verstappen (fastest lap)
('2023-07-02', 9, 1, 2, 2, 0), -- Charles Leclerc
('2023-07-02', 9, 2, 3, 15, 0), -- Sergio Pérez
('2023-07-02', 9, 9, 4, 4, 0), -- Lando Norris
('2023-07-02', 9, 11, 5, 7, 0), -- Fernando Alonso
('2023-07-02', 9, 4, 6, 3, 0), -- Carlos Sainz
('2023-07-02', 9, 5, 7, 11, 0), -- George Russell
('2023-07-02', 9, 6, 8, 5, 0), -- Lewis Hamilton
('2023-07-02', 9, 12, 9, 6, 0), -- Lance Stroll
('2023-07-02', 9, 8, 10, 9, 0), -- Pierre Gasly
('2023-07-02', 9, 15, 11, 10, 0), -- Alexander Albon
('2023-07-02', 9, 18, 12, 17, 0), -- Guanyu Zhou
('2023-07-02', 9, 16, 13, 18, 0), -- Logan Sargeant
('2023-07-02', 9, 7, 14, 12, 0), -- Esteban Ocon
('2023-07-02', 9, 17, 15, 14, 0), -- Valtteri Bottas
('2023-07-02', 9, 10, 16, 13, 0), -- Oscar Piastri
('2023-07-02', 9, 20, 17, 19, 0), -- Nyck de Vries
('2023-07-02', 9, 13, 18, 20, 0), -- Kevin Magnussen
('2023-07-02', 9, 19, 19, 16, 0), -- Yuki Tsunoda
('2023-07-02', 9, 14, 20, 8, 0); -- Nico Hülkenberg


-- Inserting the race information for the British Grand Prix on 2023-07-09 with grid positions from 1 to 20
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
('2023-07-09', 10, 3, 1, 1, 1), -- Max Verstappen (fastest lap)
('2023-07-09', 10, 9, 2, 2, 0), -- Lando Norris
('2023-07-09', 10, 6, 3, 7, 0), -- Lewis Hamilton
('2023-07-09', 10, 10, 4, 3, 0), -- Oscar Piastri
('2023-07-09', 10, 5, 5, 6, 0), -- George Russell
('2023-07-09', 10, 2, 6, 15, 0), -- Sergio Pérez
('2023-07-09', 10, 11, 7, 9, 0), -- Fernando Alonso
('2023-07-09', 10, 15, 8, 8, 0), -- Alexander Albon
('2023-07-09', 10, 1, 9, 4, 0), -- Charles Leclerc
('2023-07-09', 10, 4, 10, 5, 0), -- Carlos Sainz
('2023-07-09', 10, 16, 11, 14, 0), -- Logan Sargeant
('2023-07-09', 10, 17, 12, 20, 0), -- Valtteri Bottas
('2023-07-09', 10, 14, 13, 11, 0), -- Nico Hülkenberg
('2023-07-09', 10, 12, 14, 12, 0), -- Lance Stroll
('2023-07-09', 10, 18, 15, 17, 0), -- Guanyu Zhou
('2023-07-09', 10, 19, 16, 16, 0), -- Yuki Tsunoda
('2023-07-09', 10, 20, 17, 18, 0), -- Nyck de Vries
('2023-07-09', 10, 8, 18, 10, 0), -- Pierre Gasly
('2023-07-09', 10, 13, 19, 19, 0), -- Kevin Magnussen
('2023-07-09', 10, 7, 20, 13, 0); -- Esteban Ocon


INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES 
    ('2023-07-23', 11, 3, 1, 2, 1), -- Max Verstappen (fastest lap)
    ('2023-07-23', 11, 9, 2, 3, 0), -- Lando Norris
    ('2023-07-23', 11, 6, 3, 9, 0), -- Sergio Pérez
    ('2023-07-23', 11, 1, 4, 1, 0), -- Lewis Hamilton
    ('2023-07-23', 11, 10, 5, 4, 0), -- Oscar Piastri
    ('2023-07-23', 11, 5, 6, 18, 0), -- George Russell
    ('2023-07-23', 11, 2, 7, 6, 0), -- Charles Leclerc
    ('2023-07-23', 11, 4, 8, 11, 0), -- Carlos Sainz
    ('2023-07-23', 11, 11, 9, 8, 0), -- Fernando Alonso
    ('2023-07-23', 11, 12, 10, 14, 0), -- Lance Stroll
    ('2023-07-23', 11, 15, 11, 16, 0), -- Alexander Albon
    ('2023-07-23', 11, 17, 12, 7, 0), -- Valtteri Bottas
    ('2023-07-23', 11, 14, 13, 10, 0), -- Nico Hülkenberg
    ('2023-07-23', 11, 19, 14, 15, 0), -- Yuki Tsunoda
    ('2023-07-23', 11, 18, 15, 5, 0), -- Guanyu Zhou
    ('2023-07-23', 11, 13, 16, 19, 0), -- Kevin Magnussen
    ('2023-07-23', 11, 20, 17, 20, 0), -- Nyck de Vries
    ('2023-07-23', 11, 7, 18, 12, 0), -- Esteban Ocon
    ('2023-07-23', 11, 8, 19, 17, 0), -- Pierre Gasly
    ('2023-07-23', 11, 16, 20, 18, 0); -- Logan Sargeant

-- Adjusted Belgian Grand Prix Results with Finishing Order as Grid Positions
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-07-30', 12, 3, 1, 6, 0),   -- Max Verstappen
	('2023-07-30', 12, 2, 2, 2, 0),   -- Sergio Pérez
	('2023-07-30', 12, 1, 3, 1, 0),   -- Charles Leclerc
	('2023-07-30', 12, 6, 4, 3, 1),   -- Lewis Hamilton, Fastest Lap
	('2023-07-30', 12, 11, 5, 9, 0),  -- Fernando Alonso
	('2023-07-30', 12, 5, 6, 8, 0),   -- George Russell
	('2023-07-30', 12, 9, 7, 7, 0),   -- Lando Norris
	('2023-07-30', 12, 7, 8, 14, 0),  -- Esteban Ocon
	('2023-07-30', 12, 12, 9, 10, 0), -- Lance Stroll
	('2023-07-30', 12, 19, 10, 11, 0),-- Yuki Tsunoda
	('2023-07-30', 12, 8, 11, 12, 0), -- Pierre Gasly
	('2023-07-30', 12, 17, 12, 13, 0),-- Valtteri Bottas
	('2023-07-30', 12, 18, 13, 17, 0),-- Zhou Guanyu
	('2023-07-30', 12, 15, 14, 15, 0),-- Alexander Albon
	('2023-07-30', 12, 13, 15, 16, 0),-- Kevin Magnussen
	('2023-07-30', 12, 21, 16, 19, 0),-- Daniel Ricciardo
	('2023-07-30', 12, 16, 17, 18, 0),-- Logan Sargeant
	('2023-07-30', 12, 14, 18, 20, 0), -- Nico Hülkenberg
	('2023-07-30', 12, 4, 19, 4, 0),   -- Carlos Sainz
	('2023-07-30', 12, 10, 20, 5, 0);  -- Oscar Piastri

-- Dutch Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-08-27', 13, 3, 1, 1, 0),  -- Max Verstappen, Fastest lap by Fernando Alonso
	('2023-08-27', 13, 11, 2, 5, 1), -- Fernando Alonso, had the fastest lap
	('2023-08-27', 13, 8, 3, 12, 0),  -- Pierre Gasly
	('2023-08-27', 13, 2, 4, 7, 0),  -- Sergio Pérez
	('2023-08-27', 13, 4, 5, 6, 0),  -- Carlos Sainz
	('2023-08-27', 13, 6, 6, 13, 0), -- Lewis Hamilton
	('2023-08-27', 13, 9, 7, 2, 0),  -- Lando Norris
	('2023-08-27', 13, 15, 8, 4, 0), -- Alexander Albon
	('2023-08-27', 13, 10, 9, 8, 0), -- Oscar Piastri
	('2023-08-27', 13, 7, 10, 16, 0),-- Esteban Ocon
	('2023-08-27', 13, 12, 11, 11, 0),-- Lance Stroll
	('2023-08-27', 13, 14, 12, 14, 0),-- Nico Hülkenberg
	('2023-08-27', 13, 22, 13, 19, 0),-- Liam Lawson
	('2023-08-27', 13, 17, 14, 18, 0),-- Valtteri Bottas
	('2023-08-27', 13, 19, 15, 17, 0),-- Yuki Tsunoda
	('2023-08-27', 13, 13, 16, 20, 0),-- Kevin Magnussen
	('2023-08-27', 13, 5, 17, 3, 0),  -- George Russell
	('2023-08-27', 13, 18, 18, 15, 0),-- Guanyu Zhou, Accident
	('2023-08-27', 13, 1, 19, 9, 0),  -- Charles Leclerc, Undertray
	('2023-08-27', 13, 16, 20, 10, 0);-- Logan Sargeant, Accident
    
    
    -- Italian Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-09-03', 14, 3, 1, 2, 0),  -- Max Verstappen
	('2023-09-03', 14, 2, 2, 5, 0),  -- Sergio Pérez
	('2023-09-03', 14, 4, 3, 1, 0),  -- Carlos Sainz
	('2023-09-03', 14, 1, 4, 3, 0),  -- Charles Leclerc
	('2023-09-03', 14, 5, 5, 4, 0),  -- George Russell
	('2023-09-03', 14, 6, 6, 8, 0),  -- Lewis Hamilton
	('2023-09-03', 14, 15, 7, 6, 0), -- Alexander Albon
	('2023-09-03', 14, 9, 8, 9, 0),  -- Lando Norris
	('2023-09-03', 14, 11, 9, 10, 0), -- Fernando Alonso
	('2023-09-03', 14, 17, 10, 14, 0),-- Valtteri Bottas
	('2023-09-03', 14, 22, 11, 12, 0),-- Liam Lawson
	('2023-09-03', 14, 10, 12, 7, 1), -- Oscar Piastri, Fastest Lap
	('2023-09-03', 14, 16, 13, 15, 0),-- Logan Sargeant
	('2023-09-03', 14, 18, 14, 16, 0),-- Guanyu Zhou
	('2023-09-03', 14, 8, 15, 17, 0),  -- Pierre Gasly
	('2023-09-03', 14, 12, 16, 20, 0), -- Lance Stroll
	('2023-09-03', 14, 14, 17, 13, 0), -- Nico Hülkenberg
	('2023-09-03', 14, 13, 18, 19, 0), -- Kevin Magnussen
	('2023-09-03', 14, 7, 19, 18, 0),  -- Esteban Ocon
	('2023-09-03', 14, 19, 20, 11, 0); -- Yuki Tsunoda

-- Singapore Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-09-17', 15, 4, 1, 1, 0),  -- Carlos Sainz
	('2023-09-17', 15, 9, 2, 4, 0),  -- Lando Norris
	('2023-09-17', 15, 6, 3, 5, 1),  -- Lewis Hamilton, Fastest Lap
	('2023-09-17', 15, 1, 4, 3, 0),  -- Charles Leclerc
	('2023-09-17', 15, 3, 5, 11, 0), -- Max Verstappen
	('2023-09-17', 15, 8, 6, 12, 0), -- Pierre Gasly
	('2023-09-17', 15, 10, 7, 17, 0),-- Oscar Piastri
	('2023-09-17', 15, 2, 8, 13, 0), -- Sergio Pérez
	('2023-09-17', 15, 22, 9, 10, 0),-- Liam Lawson
	('2023-09-17', 15, 13, 10, 6, 0),-- Kevin Magnussen
	('2023-09-17', 15, 15, 11, 14, 0),-- Alexander Albon
	('2023-09-17', 15, 18, 12, 20, 0),-- Guanyu Zhou, No grid position provided, assumed 20 for continuity
	('2023-09-17', 15, 14, 13, 9, 0), -- Nico Hülkenberg
	('2023-09-17', 15, 16, 14, 18, 0),-- Logan Sargeant
	('2023-09-17', 15, 11, 15, 7, 0), -- Fernando Alonso
	('2023-09-17', 15, 5, 16, 2, 0),  -- George Russell, Accident
	('2023-09-17', 15, 17, 17, 16, 0),-- Valtteri Bottas, Technical
	('2023-09-17', 15, 7, 18, 8, 0),  -- Esteban Ocon, Gearbox
	('2023-09-17', 15, 19, 19, 15, 0),-- Yuki Tsunoda, Collision
	('2023-09-17', 15, 12, 20, 20, 0);-- Lance Stroll, Withdrew, assumed grid position for continuity

-- Japanese Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-09-24', 16, 3, 1, 1, 1),  -- Max Verstappen, Fastest Lap
	('2023-09-24', 16, 9, 2, 3, 0),  -- Lando Norris
	('2023-09-24', 16, 10, 3, 2, 0), -- Oscar Piastri
	('2023-09-24', 16, 1, 4, 4, 0),  -- Charles Leclerc
	('2023-09-24', 16, 6, 5, 7, 0),  -- Lewis Hamilton
	('2023-09-24', 16, 4, 6, 6, 0),  -- Carlos Sainz
	('2023-09-24', 16, 5, 7, 8, 0),  -- George Russell
	('2023-09-24', 16, 11, 8, 10, 0),-- Fernando Alonso
	('2023-09-24', 16, 7, 9, 14, 0), -- Esteban Ocon
	('2023-09-24', 16, 8, 10, 12, 0),-- Pierre Gasly
	('2023-09-24', 16, 22, 11, 11, 0),-- Liam Lawson
	('2023-09-24', 16, 19, 12, 9, 0), -- Yuki Tsunoda
	('2023-09-24', 16, 18, 13, 19, 0),-- Guanyu Zhou
	('2023-09-24', 16, 14, 14, 18, 0),-- Nico Hülkenberg
	('2023-09-24', 16, 13, 15, 15, 0),-- Kevin Magnussen
	('2023-09-24', 16, 15, 16, 13, 0),-- Alexander Albon, Collision damage
	('2023-09-24', 16, 16, 17, 20, 0),-- Logan Sargeant, Collision damage
	('2023-09-24', 16, 12, 18, 17, 0), -- Lance Stroll, Rear wing
	('2023-09-24', 16, 2, 19, 5, 0),  -- Sergio Pérez, Collision damage
	('2023-09-24', 16, 17, 20, 16, 0);-- Valtteri Bottas, Collision damage

-- Qatar Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-10-08', 17, 3, 1, 1, 1),  -- Max Verstappen, Fastest Lap
	('2023-10-08', 17, 10, 2, 6, 0), -- Oscar Piastri
	('2023-10-08', 17, 9, 3, 10, 0), -- Lando Norris
	('2023-10-08', 17, 5, 4, 2, 0),  -- George Russell
	('2023-10-08', 17, 1, 5, 5, 0),  -- Charles Leclerc
	('2023-10-08', 17, 11, 6, 4, 0), -- Fernando Alonso
	('2023-10-08', 17, 7, 7, 8, 0),  -- Esteban Ocon
	('2023-10-08', 17, 17, 8, 9, 0), -- Valtteri Bottas
	('2023-10-08', 17, 18, 9, 19, 0),-- Guanyu Zhou
	('2023-10-08', 17, 2, 10, 20, 0),-- Sergio Pérez, assuming grid position 20 for missing value
	('2023-10-08', 17, 12, 11, 16, 0),-- Lance Stroll
	('2023-10-08', 17, 8, 12, 7, 0),  -- Pierre Gasly
	('2023-10-08', 17, 15, 13, 13, 0),-- Alexander Albon
	('2023-10-08', 17, 13, 14, 18, 0),-- Kevin Magnussen
	('2023-10-08', 17, 19, 15, 11, 0),-- Yuki Tsunoda
	('2023-10-08', 17, 14, 16, 14, 0),-- Nico Hülkenberg
	('2023-10-08', 17, 22, 17, 17, 0),-- Liam Lawson
	('2023-10-08', 17, 16, 18, 15, 0),-- Logan Sargeant, Illness
	('2023-10-08', 17, 6, 19, 3, 0),  -- Lewis Hamilton, Collision
	('2023-10-08', 17, 4, 20, 12, 0); -- Carlos Sainz, Fuel leak

-- United States Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-10-22', 18, 3, 1, 6, 0),  -- Max Verstappen
	('2023-10-22', 18, 9, 2, 2, 0),  -- Lando Norris
	('2023-10-22', 18, 4, 3, 4, 0),  -- Carlos Sainz
	('2023-10-22', 18, 2, 4, 9, 0),  -- Sergio Pérez
	('2023-10-22', 18, 5, 5, 5, 0),  -- George Russell
	('2023-10-22', 18, 8, 6, 7, 0),  -- Pierre Gasly
	('2023-10-22', 18, 12, 7, 20, 0), -- Lance Stroll, assuming grid position for missing value
	('2023-10-22', 18, 19, 8, 11, 1), -- Yuki Tsunoda, Fastest Lap
	('2023-10-22', 18, 15, 9, 15, 0), -- Alexander Albon
	('2023-10-22', 18, 16, 10, 16, 0),-- Logan Sargeant
	('2023-10-22', 18, 14, 11, 20, 0),-- Nico Hülkenberg, assuming grid position for missing value
	('2023-10-22', 18, 17, 12, 13, 0),-- Valtteri Bottas
	('2023-10-22', 18, 18, 13, 12, 0),-- Guanyu Zhou
	('2023-10-22', 18, 13, 14, 20, 0),-- Kevin Magnussen, assuming grid position for missing value
	('2023-10-22', 18, 21, 15, 14, 0),-- Daniel Ricciardo
	('2023-10-22', 18, 11, 16, 20, 0),-- Fernando Alonso, assuming grid position for missing value
	('2023-10-22', 18, 10, 17, 10, 0),-- Oscar Piastri
	('2023-10-22', 18, 7, 18, 8, 0),  -- Esteban Ocon
	('2023-10-22', 18, 6, 19, 3, 0),  -- Lewis Hamilton, Disqualified
	('2023-10-22', 18, 1, 20, 1, 0); -- Charles Leclerc, Disqualified

-- Mexico City Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-10-29', 19, 3, 1, 3, 0),  -- Max Verstappen
	('2023-10-29', 19, 6, 2, 6, 1),  -- Lewis Hamilton, Fastest Lap
	('2023-10-29', 19, 1, 3, 1, 0),  -- Charles Leclerc
	('2023-10-29', 19, 4, 4, 2, 0),  -- Carlos Sainz
	('2023-10-29', 19, 9, 5, 17, 0), -- Lando Norris
	('2023-10-29', 19, 5, 6, 8, 0),  -- George Russell
	('2023-10-29', 19, 21, 7, 4, 0), -- Daniel Ricciardo
	('2023-10-29', 19, 10, 8, 7, 0), -- Oscar Piastri
	('2023-10-29', 19, 15, 9, 14, 0),-- Alexander Albon
	('2023-10-29', 19, 7, 10, 15, 0),-- Esteban Ocon
	('2023-10-29', 19, 8, 11, 11, 0), -- Pierre Gasly
	('2023-10-29', 19, 19, 12, 18, 0),-- Yuki Tsunoda
	('2023-10-29', 19, 14, 13, 12, 0),-- Nico Hülkenberg
	('2023-10-29', 19, 18, 14, 10, 0),-- Guanyu Zhou
	('2023-10-29', 19, 17, 15, 9, 0), -- Valtteri Bottas
	('2023-10-29', 19, 16, 16, 19, 0),-- Logan Sargeant, Retired
	('2023-10-29', 19, 12, 17, 20, 0),-- Lance Stroll, assumed grid position for missing value, Collision damage
	('2023-10-29', 19, 11, 18, 13, 0),-- Fernando Alonso, Withdrew
	('2023-10-29', 19, 13, 19, 16, 0),-- Kevin Magnussen, Accident
	('2023-10-29', 19, 2, 20, 5, 0); -- Sergio Pérez, Collision damage

-- São Paulo Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-11-05', 20, 3, 1, 1, 0),  -- Max Verstappen
	('2023-11-05', 20, 9, 2, 6, 1),  -- Lando Norris, Fastest Lap
	('2023-11-05', 20, 11, 3, 4, 0), -- Fernando Alonso
	('2023-11-05', 20, 2, 4, 9, 0),  -- Sergio Pérez
	('2023-11-05', 20, 12, 5, 3, 0), -- Lance Stroll
	('2023-11-05', 20, 4, 6, 7, 0),  -- Carlos Sainz
	('2023-11-05', 20, 8, 7, 15, 0), -- Pierre Gasly
	('2023-11-05', 20, 6, 8, 5, 0),  -- Lewis Hamilton
	('2023-11-05', 20, 19, 9, 16, 0),-- Yuki Tsunoda
	('2023-11-05', 20, 7, 10, 14, 0),-- Esteban Ocon
	('2023-11-05', 20, 16, 11, 19, 0),-- Logan Sargeant
	('2023-11-05', 20, 14, 12, 11, 0),-- Nico Hülkenberg
	('2023-11-05', 20, 21, 13, 17, 0),-- Daniel Ricciardo
	('2023-11-05', 20, 10, 14, 10, 0), -- Oscar Piastri
	('2023-11-05', 20, 5, 15, 8, 0),  -- George Russell
	('2023-11-05', 20, 17, 16, 18, 0),-- Valtteri Bottas
	('2023-11-05', 20, 18, 17, 20, 0),-- Guanyu Zhou
	('2023-11-05', 20, 13, 18, 12, 0),-- Kevin Magnussen
	('2023-11-05', 20, 15, 19, 13, 0),-- Alexander Albon
	('2023-11-05', 20, 1, 20, 20, 0); -- Charles Leclerc, assuming grid position for missing value

-- Las Vegas Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-11-19', 21, 3, 1, 2, 0),   -- Max Verstappen
	('2023-11-19', 21, 1, 2, 1, 0),   -- Charles Leclerc
	('2023-11-19', 21, 2, 3, 11, 0),  -- Sergio Pérez
	('2023-11-19', 21, 7, 4, 16, 0),  -- Esteban Ocon
	('2023-11-19', 21, 12, 5, 19, 0), -- Lance Stroll
	('2023-11-19', 21, 4, 6, 12, 0),  -- Carlos Sainz
	('2023-11-19', 21, 6, 7, 10, 0),  -- Lewis Hamilton
	('2023-11-19', 21, 5, 8, 3, 0),   -- George Russell
	('2023-11-19', 21, 11, 9, 9, 0),  -- Fernando Alonso
	('2023-11-19', 21, 10, 10, 18, 1),-- Oscar Piastri, Fastest Lap
	('2023-11-19', 21, 8, 11, 4, 0),  -- Pierre Gasly
	('2023-11-19', 21, 15, 12, 5, 0), -- Alexander Albon
	('2023-11-19', 21, 13, 13, 8, 0), -- Kevin Magnussen
	('2023-11-19', 21, 21, 14, 14, 0),-- Daniel Ricciardo
	('2023-11-19', 21, 18, 15, 17, 0),-- Guanyu Zhou
	('2023-11-19', 21, 16, 16, 6, 0), -- Logan Sargeant
	('2023-11-19', 21, 17, 17, 7, 0), -- Valtteri Bottas
	('2023-11-19', 21, 19, 18, 20, 0),-- Yuki Tsunoda, Gearbox
	('2023-11-19', 21, 14, 19, 13, 0),-- Nico Hülkenberg, Engine
	('2023-11-19', 21, 9, 20, 15, 0); -- Lando Norris, Accident


-- Abu Dhabi Grand Prix Results
INSERT INTO Races (RaceDate, CircuitID, DriverID, GridPosition, StartedPosition, IsfastestLap)
VALUES
	('2023-11-26', 22, 3, 1, 1, 1),  -- Max Verstappen, Fastest Lap
	('2023-11-26', 22, 1, 2, 2, 0),  -- Charles Leclerc
	('2023-11-26', 22, 5, 3, 4, 0),  -- George Russell
	('2023-11-26', 22, 2, 4, 9, 0),  -- Sergio Pérez
	('2023-11-26', 22, 9, 5, 5, 0),  -- Lando Norris
	('2023-11-26', 22, 10, 6, 3, 0), -- Oscar Piastri
	('2023-11-26', 22, 11, 7, 7, 0), -- Fernando Alonso
	('2023-11-26', 22, 19, 8, 6, 0), -- Yuki Tsunoda
	('2023-11-26', 22, 6, 9, 11, 0), -- Lewis Hamilton
	('2023-11-26', 22, 12, 10, 13, 0),-- Lance Stroll
	('2023-11-26', 22, 21, 11, 15, 0),-- Daniel Ricciardo
	('2023-11-26', 22, 7, 12, 12, 0), -- Esteban Ocon
	('2023-11-26', 22, 8, 13, 10, 0), -- Pierre Gasly
	('2023-11-26', 22, 15, 14, 14, 0),-- Alexander Albon
	('2023-11-26', 22, 14, 15, 8, 0), -- Nico Hülkenberg
	('2023-11-26', 22, 16, 16, 20, 0),-- Logan Sargeant
	('2023-11-26', 22, 18, 17, 19, 0),-- Guanyu Zhou
	('2023-11-26', 22, 4, 18, 16, 0), -- Carlos Sainz, Retired
	('2023-11-26', 22, 17, 19, 18, 0),-- Valtteri Bottas, +1 Lap
	('2023-11-26', 22, 13, 20, 17, 0);-- Kevin Magnussen, +1 Lap
