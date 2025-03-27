-- SET THEORY EXERCISES
-- These exercises build on the set theory concepts and apply them to SQL

----------------------------------------------
-- Exercise 1: Basic Set Operations (Easy)
----------------------------------------------

-- 1.1: Find all players (union of regular and active players)
-- Implement this query using UNION
-- Expected output: All players from both tables without duplicates




-- 1.2: Find players who are both active AND premium
-- Implement this query using INTERSECT
-- Expected output: Players who appear in both ActivePlayers and PremiumPlayers




-- 1.3: Find active players who aren't premium
-- Implement this query using EXCEPT
-- Expected output: Players who are in ActivePlayers but not in PremiumPlayers




-- 1.4: Find premium players who aren't active
-- Implement this query using EXCEPT
-- Expected output: Players who are in PremiumPlayers but not in ActivePlayers




----------------------------------------------
-- Exercise 2: Set Operations with Game Elements (Medium)
----------------------------------------------

-- 2.1: Find planets with both water AND atmosphere (intersection)
-- Implement this using INTERSECT or a JOIN
-- Expected output: Planets that have both water and atmosphere




-- 2.2: Find planets with water OR atmosphere (union)
-- Implement this using UNION
-- Expected output: Planets that have either water or atmosphere or both




-- 2.3: Find planets with atmosphere but NO water (difference)
-- Implement this using EXCEPT
-- Expected output: Planets with atmosphere but no water




-- 2.4: Find all known celestial bodies (union of all sets)
-- Implement this using UNION
-- Expected output: All planets in any table




----------------------------------------------
-- Exercise 3: Complex Set Relationships (Hard)
----------------------------------------------

-- 3.1: Find resources available on both Earth and Mars, but not on Venus
-- Hint: This is (Earth ∩ Mars) - Venus
-- Expected output: Resources meeting these complex criteria




-- 3.2: Find metals not available on Earth
-- Implement this using a combination of joins and EXCEPT
-- Expected output: Metals that aren't found on Earth




-- 3.3: For each planet, find resources that are unique to that planet
-- (not found on any other planet)
-- This is more complex and may require subqueries
-- Expected output: List of planets and their unique resources




-- 3.4: Find players who have explored all planets that have water
-- This requires universal quantification (for all...)
-- Expected output: Players who have explored all water-containing planets





-- BONUS: Find pairs of players who have explored exactly the same set of planets
-- This is an advanced query using self joins and group operations
-- Expected output: Pairs of players who have explored identical planet sets