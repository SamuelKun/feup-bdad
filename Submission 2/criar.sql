PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa (
  idPessoa                    INTEGER                 PRIMARY KEY,
  nome                        VARCHAR(255)            NOT NULL,
  dataNascimento              VARCHAR(255),
  codPostal                   VARCHAR(255),
  morada                      VARCHAR(255)
);

DROP TABLE IF EXISTS Artista;
CREATE TABLE Artista (
  idArtista                   INTEGER                 PRIMARY KEY,
  inicioCarreira              VARCHAR(255)
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  idUtilizador               INTEGER                 PRIMARY KEY,
  email                      VARCHAR(255)            NOT NULL,
  username                   VARCHAR(255),
  password                   VARCHAR(255)            NOT NULL,
);

DROP TABLE IF EXISTS Papel;
CREATE TABLE Papel (
  idPapel                    INTEGER                 PRIMARY KEY,
  atividade                  VARCHAR(255)            NOT NULL,
);

DROP TABLE IF EXISTS EntidadeMusical;
CREATE TABLE EntidadeMusical (
  idEntidadeMusical          INTEGER                 PRIMARY KEY,
  nomeArtistico              VARCHAR(255)            NOT NULL,
  imagem                     VARCHAR(255),
  dataFundacao               VARCHAR(255),
  descricao                  VARCHAR(255)
);

DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  idAlbum                    INTEGER                 PRIMARY KEY,
  nome                       VARCHAR(255)            NOT NULL,
  capa                       VARCHAR(255),
  anoLancamento              VARCHAR(255)
);

DROP TABLE IF EXISTS Musica;
CREATE TABLE Musica (
  idMusica                   INTEGER                 PRIMARY KEY,
  album                      INTEGER                 REFERENCES Album,
  nome                       VARCHAR(255)            NOT NULL,
  duracao                    VARCHAR(255)
);

DROP TABLE IF EXISTS EstiloMusical;
CREATE TABLE EstiloMusical (
  idEstiloMusical            INTEGER                 PRIMARY KEY,
  nome                       VARCHAR(255)            NOT NULL
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
  idPlaylist                 INTEGER                 PRIMARY KEY,
  criador                    INTEGER                 REFERENCES Utilizador,
  nome                       VARCHAR(255),
  imagem                     VARCHAR(255),
  dataCriacao                VARCHAR(255),
  descricao                  VARCHAR(255),
  privada                    VARCHAR(255)
);

DROP TABLE IF EXISTS Sessao;
CREATE TABLE Sessao (
  idSessao                   INTEGER                 PRIMARY KEY,
  dataInicio                 VARCHAR(255)
);

DROP TABLE IF EXISTS Adicionada;
CREATE TABLE Adicionada (
  utilizador                 INTEGER                 REFERENCES Utilizador
);

DROP TABLE IF EXISTS TempoOuvido;
CREATE TABLE TempoOuvido (
  musica                     INTEGER                 REFERENCES Musica,
  sessao                     INTEGER                 REFERENCES Sessao,
  duracao                    INTEGER
);

PRAGMA foreign_keys = on;
