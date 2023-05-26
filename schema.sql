/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL
);

ALTER TABLE animals
ADD species varchar(50);

CREATE TABLE owners (
    id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE species (
    id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50)
);

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
ADD species_id INT
ADD FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals
ADD owner_id INT
ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  id SERIAL PRIMARY KEY,
  vet_id INTEGER REFERENCES vets(id),
  species_id INTEGER REFERENCES species(id)
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  animal_id INTEGER REFERENCES animals(id),
  vet_id INTEGER REFERENCES vets(id),
  visit_date DATE NOT NULL
);
