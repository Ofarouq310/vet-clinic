/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name FROM animals WHERE neutered= 'True' AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE (name IN ('Agumon') OR name IN ('Pikachu'));

SELECT name, escape_attempts FROM animals WHERE weight_kg > '10.5';

SELECT * FROM animals WHERE neutered = 'True';

SELECT * FROM animals WHERE name NOT IN ('Gabumon');

SELECT * FROM animals WHERE weight_kg BETWEEN '10.4' AND '17.3';

BEGIN;
UPDATE animals
SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';
COMMIT;

BEGIN;
UPDATE animals
ET species = 'pokemon'
WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals
WHERE date_of_birth > DATE '2022-01-01';
SAVEPOINT SP1;
UPDATE animals
SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;

BEGIN;
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;
COMMIT;
