-- Create tables for the space game database

-- Players table
CREATE TABLE Players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    level INTEGER DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Active players tracking
CREATE TABLE ActivePlayers (
    player_id INTEGER REFERENCES Players(id) ON DELETE CASCADE,
    status VARCHAR(50) DEFAULT 'online',
    last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (player_id)
);

-- Premium players with subscription info
CREATE TABLE PremiumPlayers (
    player_id INTEGER REFERENCES Players(id) ON DELETE CASCADE,
    subscription_type VARCHAR(50) DEFAULT 'basic',
    expiry_date DATE,
    PRIMARY KEY (player_id)
);

-- Planets in the game
CREATE TABLE Planets (
    name VARCHAR(100) PRIMARY KEY,
    size INTEGER,
    position INTEGER,
    habitable BOOLEAN DEFAULT FALSE
);

-- Resource categories
CREATE TABLE ResourceTypes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

-- Available resources
CREATE TABLE Resources (
    id SERIAL PRIMARY KEY,
    resource_name VARCHAR(100) UNIQUE NOT NULL,
    type_id INTEGER REFERENCES ResourceTypes(id) ON DELETE CASCADE,
    rarity INTEGER DEFAULT 1
);

-- Resources available on each planet
CREATE TABLE PlanetResources (
    planet_name VARCHAR(100) REFERENCES Planets(name) ON DELETE CASCADE,
    resource_id INTEGER REFERENCES Resources(id) ON DELETE CASCADE,
    quantity INTEGER DEFAULT 1000,
    PRIMARY KEY (planet_name, resource_id)
);

-- Track player planet explorations
CREATE TABLE PlayerExplorations (
    player_id INTEGER REFERENCES Players(id) ON DELETE CASCADE,
    planet_name VARCHAR(100) REFERENCES Planets(name) ON DELETE CASCADE,
    exploration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (player_id, planet_name)
);

-- Player inventory
CREATE TABLE PlayerInventory (
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES Players(id) ON DELETE CASCADE,
    resource_id INTEGER REFERENCES Resources(id) ON DELETE CASCADE,
    quantity INTEGER DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (player_id, resource_id)
);

-- Convenience views
CREATE VIEW PlanetsWithWater AS
SELECT DISTINCT p.name as planet_name
FROM Planets p
JOIN PlanetResources pr ON p.name = pr.planet_name
JOIN Resources r ON pr.resource_id = r.id
WHERE r.resource_name = 'Water';

CREATE VIEW PlanetsWithAtmosphere AS
SELECT DISTINCT p.name as planet_name
FROM Planets p
JOIN PlanetResources pr ON p.name = pr.planet_name
JOIN Resources r ON pr.resource_id = r.id
WHERE r.resource_name = 'Oxygen' OR r.resource_name = 'Nitrogen';

-- Create indexes for better performance
CREATE INDEX idx_resources_type ON Resources(type_id);
CREATE INDEX idx_planet_resources ON PlanetResources(planet_name, resource_id);
CREATE INDEX idx_player_inventory ON PlayerInventory(player_id, resource_id);