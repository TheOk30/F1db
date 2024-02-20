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
