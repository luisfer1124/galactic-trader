-- Populate data for the space game database

-- Resource types
INSERT INTO ResourceTypes (name) VALUES
('Metal'),
('Gas'),
('Liquid'),
('Crystal'),
('Organic');

-- Resources
INSERT INTO Resources (resource_name, type_id, rarity) VALUES
('Iron', 1, 1),
('Copper', 1, 2),
('Gold', 1, 4),
('Silver', 1, 3),
('Titanium', 1, 3),
('Hydrogen', 2, 1),
('Oxygen', 2, 2),
('Nitrogen', 2, 2),
('Methane', 2, 3),
('Water', 3, 2),
('Acid', 3, 4),
('Oil', 3, 3),
('Quartz', 4, 2),
('Diamond', 4, 5),
('Ruby', 4, 4),
('Wood', 5, 1),
('Fiber', 5, 2),
('Fruit', 5, 3);

-- Planets
INSERT INTO Planets (name, size, position, habitable) VALUES
('Mercury', 100, 1, FALSE),
('Venus', 200, 2, FALSE),
('Earth', 200, 3, TRUE),
('Mars', 150, 4, FALSE),
('Jupiter', 500, 5, FALSE),
('Europa', 50, 6, TRUE),
('Titan', 75, 7, FALSE);

-- Resources on planets
-- Mercury
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Mercury', 1, 5000),  -- Iron
('Mercury', 5, 2000);  -- Titanium

-- Venus
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Venus', 2, 3000),   -- Copper
('Venus', 3, 800),    -- Gold
('Venus', 8, 6000),   -- Nitrogen
('Venus', 9, 4000);   -- Methane

-- Earth
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Earth', 1, 4000),   -- Iron
('Earth', 2, 3500),   -- Copper
('Earth', 3, 500),    -- Gold
('Earth', 7, 8000),   -- Oxygen
('Earth', 8, 7000),   -- Nitrogen
('Earth', 10, 9000),  -- Water
('Earth', 16, 6000),  -- Wood
('Earth', 17, 5000),  -- Fiber
('Earth', 18, 4000);  -- Fruit

-- Mars
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Mars', 1, 3000),    -- Iron
('Mars', 2, 2500),    -- Copper
('Mars', 7, 2000),    -- Oxygen
('Mars', 10, 1000);   -- Water

-- Jupiter
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Jupiter', 6, 10000),  -- Hydrogen
('Jupiter', 9, 8000);   -- Methane

-- Europa
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Europa', 10, 8000),   -- Water
('Europa', 13, 2000);   -- Quartz

-- Titan
INSERT INTO PlanetResources (planet_name, resource_id, quantity) VALUES
('Titan', 7, 3000),     -- Oxygen
('Titan', 8, 4000),     -- Nitrogen
('Titan', 9, 5000),     -- Methane
('Titan', 12, 2000);    -- Oil

-- Players
INSERT INTO Players (name, level) VALUES
('Alice', 10),
('Bob', 15),
('Charlie', 8),
('Diana', 12),
('Elena', 5),
('Frank', 7),
('Grace', 20),
('Henry', 3),
('Ivy', 9),
('Jack', 11);

-- Active players
INSERT INTO ActivePlayers (player_id, status, last_login) VALUES
(1, 'online', NOW()),    -- Alice
(2, 'offline', NOW() - INTERVAL '2 hours'),  -- Bob
(3, 'online', NOW()),    -- Charlie
(5, 'away', NOW() - INTERVAL '30 minutes'),  -- Elena
(7, 'online', NOW()),    -- Grace
(9, 'offline', NOW() - INTERVAL '1 day');    -- Ivy

-- Premium players
INSERT INTO PremiumPlayers (player_id, subscription_type, expiry_date) VALUES
(2, 'gold', CURRENT_DATE + INTERVAL '90 days'),  -- Bob
(3, 'silver', CURRENT_DATE + INTERVAL '30 days'), -- Charlie
(4, 'gold', CURRENT_DATE + INTERVAL '60 days'),   -- Diana
(7, 'platinum', CURRENT_DATE + INTERVAL '180 days'), -- Grace
(10, 'silver', CURRENT_DATE + INTERVAL '15 days'); -- Jack

-- Player explorations
INSERT INTO PlayerExplorations (player_id, planet_name, exploration_date) VALUES
(1, 'Earth', NOW() - INTERVAL '10 days'),
(1, 'Mars', NOW() - INTERVAL '5 days'),
(2, 'Venus', NOW() - INTERVAL '15 days'),
(2, 'Mars', NOW() - INTERVAL '8 days'),
(2, 'Jupiter', NOW() - INTERVAL '2 days'),
(3, 'Earth', NOW() - INTERVAL '20 days'),
(4, 'Mercury', NOW() - INTERVAL '12 days'),
(4, 'Venus', NOW() - INTERVAL '9 days'),
(4, 'Earth', NOW() - INTERVAL '6 days'),
(5, 'Earth', NOW() - INTERVAL '30 days'),
(7, 'Mercury', NOW() - INTERVAL '25 days'),
(7, 'Venus', NOW() - INTERVAL '20 days'),
(7, 'Earth', NOW() - INTERVAL '15 days'),
(7, 'Mars', NOW() - INTERVAL '10 days'),
(7, 'Jupiter', NOW() - INTERVAL '5 days'),
(7, 'Europa', NOW() - INTERVAL '2 days'),
(9, 'Earth', NOW() - INTERVAL '8 days'),
(10, 'Mars', NOW() - INTERVAL '14 days');

-- Player inventory
INSERT INTO PlayerInventory (player_id, resource_id, quantity) VALUES
(1, 1, 100),   -- Alice has 100 Iron
(1, 7, 50),    -- Alice has 50 Oxygen
(1, 10, 30),   -- Alice has 30 Water
(2, 2, 80),    -- Bob has 80 Copper
(2, 3, 20),    -- Bob has 20 Gold
(2, 9, 40),    -- Bob has 40 Methane
(3, 1, 60),    -- Charlie has 60 Iron
(3, 10, 45),   -- Charlie has 45 Water
(3, 16, 70),   -- Charlie has 70 Wood
(4, 3, 15),    -- Diana has 15 Gold
(4, 5, 25),    -- Diana has 25 Titanium
(5, 16, 90),   -- Elena has 90 Wood
(5, 17, 65),   -- Elena has 65 Fiber
(7, 1, 200),   -- Grace has 200 Iron
(7, 2, 150),   -- Grace has 150 Copper
(7, 3, 50),    -- Grace has 50 Gold
(7, 5, 75),    -- Grace has 75 Titanium
(7, 7, 100),   -- Grace has 100 Oxygen
(7, 10, 80),   -- Grace has 80 Water
(7, 14, 5),    -- Grace has 5 Diamond
(9, 10, 60),   -- Ivy has 60 Water
(10, 1, 90);   -- Jack has 90 Iron