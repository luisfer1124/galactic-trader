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
('Clementine', 10),
('LuisFor', 15),
('Johan', 8),
('Graydon', 12),
('LuisiFer', 5),
('Cesar', 7),
('Kim', 20),
('Juan C', 3),
('Joey', 9),
('Olivia', 11),
('Adam', 6),
('Skyler', 14),
('Trish', 4),
('Angelica', 17);

-- Active players
INSERT INTO ActivePlayers (player_id, status, last_login) VALUES
(1, 'online', NOW()),    -- Clementine
(2, 'offline', NOW() - INTERVAL '2 hours'),  -- LuisFor
(3, 'online', NOW()),    -- Johan
(5, 'away', NOW() - INTERVAL '30 minutes'),  -- LuisiFer
(7, 'online', NOW()),    -- Kim
(9, 'offline', NOW() - INTERVAL '1 day'),    -- Joey
(12, 'online', NOW() - INTERVAL '10 minutes'),  -- Skyler
(14, 'away', NOW() - INTERVAL '45 minutes');    -- Angelica

-- Premium players
INSERT INTO PremiumPlayers (player_id, subscription_type, expiry_date) VALUES
(2, 'gold', CURRENT_DATE + INTERVAL '90 days'),  -- LuisFor
(3, 'silver', CURRENT_DATE + INTERVAL '30 days'), -- Johan
(4, 'gold', CURRENT_DATE + INTERVAL '60 days'),   -- Graydon
(7, 'platinum', CURRENT_DATE + INTERVAL '180 days'), -- Kim
(10, 'silver', CURRENT_DATE + INTERVAL '15 days'), -- Olivia
(13, 'gold', CURRENT_DATE + INTERVAL '45 days'),   -- Trish
(14, 'platinum', CURRENT_DATE + INTERVAL '120 days'); -- Angelica

-- Player explorations
INSERT INTO PlayerExplorations (player_id, planet_name, exploration_date) VALUES
(1, 'Earth', NOW() - INTERVAL '10 days'),       -- Clementine
(1, 'Mars', NOW() - INTERVAL '5 days'),         -- Clementine
(2, 'Venus', NOW() - INTERVAL '15 days'),       -- LuisFor
(2, 'Mars', NOW() - INTERVAL '8 days'),         -- LuisFor
(2, 'Jupiter', NOW() - INTERVAL '2 days'),      -- LuisFor
(3, 'Earth', NOW() - INTERVAL '20 days'),       -- Johan
(4, 'Mercury', NOW() - INTERVAL '12 days'),     -- Graydon
(4, 'Venus', NOW() - INTERVAL '9 days'),        -- Graydon
(4, 'Earth', NOW() - INTERVAL '6 days'),        -- Graydon
(5, 'Earth', NOW() - INTERVAL '30 days'),       -- LuisiFer
(6, 'Mars', NOW() - INTERVAL '18 days'),        -- Cesar
(7, 'Mercury', NOW() - INTERVAL '25 days'),     -- Kim
(7, 'Venus', NOW() - INTERVAL '20 days'),       -- Kim
(7, 'Earth', NOW() - INTERVAL '15 days'),       -- Kim
(7, 'Mars', NOW() - INTERVAL '10 days'),        -- Kim
(7, 'Jupiter', NOW() - INTERVAL '5 days'),      -- Kim
(7, 'Europa', NOW() - INTERVAL '2 days'),       -- Kim
(9, 'Earth', NOW() - INTERVAL '8 days'),        -- Joey
(10, 'Mars', NOW() - INTERVAL '14 days'),       -- Olivia
(11, 'Earth', NOW() - INTERVAL '11 days'),      -- Adam
(12, 'Venus', NOW() - INTERVAL '22 days'),      -- Skyler
(13, 'Jupiter', NOW() - INTERVAL '17 days'),    -- Trish
(14, 'Mercury', NOW() - INTERVAL '28 days'),    -- Angelica
(14, 'Earth', NOW() - INTERVAL '21 days'),      -- Angelica
(14, 'Europa', NOW() - INTERVAL '7 days');      -- Angelica

-- Player inventory
INSERT INTO PlayerInventory (player_id, resource_id, quantity) VALUES
(1, 1, 100),   -- Clementine has 100 Iron
(1, 7, 50),    -- Clementine has 50 Oxygen
(1, 10, 30),   -- Clementine has 30 Water
(2, 2, 80),    -- LuisFor has 80 Copper
(2, 3, 20),    -- LuisFor has 20 Gold
(2, 9, 40),    -- LuisFor has 40 Methane
(3, 1, 60),    -- Johan has 60 Iron
(3, 10, 45),   -- Johan has 45 Water
(3, 16, 70),   -- Johan has 70 Wood
(4, 3, 15),    -- Graydon has 15 Gold
(4, 5, 25),    -- Graydon has 25 Titanium
(5, 16, 90),   -- LuisiFer has 90 Wood
(5, 17, 65),   -- LuisiFer has 65 Fiber
(6, 1, 45),    -- Cesar has 45 Iron
(6, 10, 35),   -- Cesar has 35 Water
(7, 1, 200),   -- Kim has 200 Iron
(7, 2, 150),   -- Kim has 150 Copper
(7, 3, 50),    -- Kim has 50 Gold
(7, 5, 75),    -- Kim has 75 Titanium
(7, 7, 100),   -- Kim has 100 Oxygen
(7, 10, 80),   -- Kim has 80 Water
(7, 14, 5),    -- Kim has 5 Diamond
(9, 10, 60),   -- Joey has 60 Water
(10, 1, 90),   -- Olivia has 90 Iron
(11, 16, 110), -- Adam has 110 Wood
(12, 2, 65),   -- Skyler has 65 Copper
(12, 7, 75),   -- Skyler has 75 Oxygen
(13, 3, 25),   -- Trish has 25 Gold
(14, 1, 150),  -- Angelica has 150 Iron
(14, 3, 40),   -- Angelica has 40 Gold
(14, 7, 85),   -- Angelica has 85 Oxygen
(14, 10, 55);  -- Angelica has 55 Water