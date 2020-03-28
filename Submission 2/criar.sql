PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa (
  id             INTEGER PRIMARY KEY,
  nome           VARCHAR(255) NOT NULL,
  dataNascimento DATE NOT NULL,
  codPostal      INTEGER,
  morada         STRING NOT NULL
);

DROP TABLE IF EXISTS Artista;
CREATE TABLE Artista (
  id              INTEGER REFERENCES Pessoa (id) PRIMARY KEY,
  inicioCarreira  INTEGER
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  id             INTEGER REFERENCES Pessoa (id) PRIMARY KEY,
  email          VARCHAR(255) NOT NULL,
  username       VARCHAR(255) NOT NULL,
  password       VARCHAR(255) NOT NULL UNIQUE
);