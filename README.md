# galactic-trader
Backend exercise for the frontend teams


# SQL Workshop Environment

This repository contains a Docker-based PostgreSQL database environment for our SQL workshop. The database comes pre-populated with sample data for our space game scenario.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker Desktop)

## Quick Start

1. Start the database environment
```bash
docker-compose up -d
```

3. Access the pgAdmin interface
   - Open your browser and navigate to [http://localhost:5050](http://localhost:5050)
   - Login with:
     - Email: `admin@example.com`
     - Password: `admin123`

4. Connect to the PostgreSQL database
   - In pgAdmin, add a new server with the following details:
     - Name: `Space Game DB` (or any name you prefer)
     - Host: `postgres` (this is the service name in docker-compose)
     - Port: `5432`
     - Database: `space_game`
     - Username: `gamedev`
     - Password: `password123`

## Database Schema

The database includes the following tables:

- `Players` - Game players and their levels
- `ActivePlayers` - Currently active players
- `PremiumPlayers` - Players with premium subscriptions
- `Planets` - Game planets
- `ResourceTypes` - Categories of resources
- `Resources` - Available resources in the game
- `PlanetResources` - Resources available on each planet
- `PlayerExplorations` - Record of which players have explored which planets
- `PlayerInventory` - Resources owned by players

## Exercise Files

The `exercises` folder contains the SQL exercises we'll be working on during the workshop.

## Shutting Down

When you're done with the workshop, run:

```bash
docker-compose down
```

To completely remove all data and start fresh:

```bash
docker-compose down -v
```

## Troubleshooting

- When prompted for a master password use `gamedev`.
- If you get a "port is already in use" error, modify the port mappings in the `docker-compose.yml` file.
- If pgAdmin can't connect to the database, make sure you're using `postgres` as the hostname, not `localhost`.