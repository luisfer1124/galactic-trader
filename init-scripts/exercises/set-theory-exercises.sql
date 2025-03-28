-- SET THEORY EXERCISES
-- These exercises build on the set theory concepts and apply them to SQL


----------------------------------------------
-- Exercise 1: Basic Set Operations (Easy)
----------------------------------------------

-- Scenario: Your game wants to award different badges based on player activity.
-- Players can qualify for rewards in multiple ways:
-- a. High-level players (level > 10)
-- b. Premium subscribers
-- c. Players who have explored more than 3 planets


-- 1.1: Players who qualify for ANY reward


-- 1.2: Resources that appear on ALL three celestial bodies: Earth, Mars, and Europa.


-- 1.3: Find active players who aren't premium
-- Implement this query using EXCEPT


-- 1.4: Find premium players who aren't active
-- Implement this query using EXCEPT



----------------------------------------------
-- Exercise 2: Set Operations with Game Elements (Medium)
----------------------------------------------

-- 2.1: Find planets with both water AND atmosphere


-- 2.2: Find planets with water OR atmosphere


-- 2.3: Find planets with atmosphere but NO water


----------------------------------------------
-- Exercise 3: Complex Set Relationships (Hard)
----------------------------------------------

-- 3.1: Find resources available on both Earth and Mars, but not on Venus


-- 3.2: Find metals not available on Earth


-- 3.3: For each planet, find resources that are unique to that planet
-- (not found on any other planet)


-- 3.4: Find players who have explored all planets that have water


-- BONUS: Find pairs of players who have explored exactly the same set of planets
