/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM animals WHERE name LIKE '%mon%';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Pikachu' OR name = 'Agumon';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered = true;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Write queries to answer the following questions:
-- How many animals are there?
SELECT COUNT(*) FROM animals;

-- How many animals have never tried to escape?
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

-- What is the average weight of animals?
SELECT AVG(weight_kg) FROM animals;

-- Who escapes the most, neutered or not neutered animals?
SELECT SUM(escape_attempts) FROM animals WHERE neutered = true;
SELECT SUM(escape_attempts) FROM animals WHERE neutered = false;

-- What is the minimum and maximum weight of each type of animal?
SELECT MIN(weight_kg) FROM animals WHERE species = 'Digimon';
SELECT MAX(weight_kg) FROM animals WHERE species = 'Digimon';
SELECT MIN(weight_kg) FROM animals WHERE species = 'Pokemon';
SELECT MAX(weight_kg) FROM animals WHERE species = 'Pokemon';

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
