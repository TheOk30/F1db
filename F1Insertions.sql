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

