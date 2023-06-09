/* Populate database with sample data. */

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', DATE '2020-02-03', '0', 'True', '10.23');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', DATE '2018-11-15', '2', 'True', '8');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', DATE '2021-01-07', '1', 'False', '15.04');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', DATE '2017-05-12', '5', 'True', '11');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Charmander', '2020-02-08', '0', 'False', '-11');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', '2', 'True', '-5.7');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', '3', 'False', '-12.13');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', '1', 'True', '-45');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', '7', 'True', '20.4');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', '3', 'True', '17');

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', '4', 'True', '22');

INSERT INTO owners (full_name, age) VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (species_id, vet_id) 
SELECT id, (SELECT id FROM vets WHERE name = 'William Tatcher') 
FROM species WHERE name = 'Pokemon';

INSERT INTO specializations (species_id, vet_id) 
SELECT id, (SELECT id FROM vets WHERE name = 'Stephanie Mendez') 
FROM species WHERE name IN ('Pokemon', 'Digimon');

INSERT INTO specializations (species_id, vet_id) 
SELECT id, (SELECT id FROM vets WHERE name = 'Jack Harkness') 
FROM species WHERE name = 'Digimon';

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (1, 1, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (1, 3, '2020-07-22');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (2, 4, '2021-02-02');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-01-05');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-03-08');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-05-14');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (4, 3, '2021-05-04');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (5, 4, '2021-02-24');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 1, '2019-12-21');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 1, '2020-08-10');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 2, '2021-04-07');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (7, 3, '2019-09-29');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (8, 4, '2020-10-03');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (8, 4, '2020-11-04');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2019-01-24');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2019-05-15');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2020-02-27');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2020-08-03');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (10, 3, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (10, 1, '2021-01-11');
