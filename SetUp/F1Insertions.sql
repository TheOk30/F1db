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
('2023-03-19', 2, 2, 1, 1, 0), -- Sergio Pérez
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




