PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa (
  id                          INTEGER,
  nome                        VARCHAR(255),
  dataNascimento              INTEGER,
  codPostal                   INTEGER,
  morada                      INTEGER,
  PRIMARY KEY (id)

);

DROP TABLE IF EXISTS Artista;
CREATE TABLE Artista (
  id                          INTEGER REFERENCES Pessoa (id),
  inicioCarreira              INTEGER
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  id                         INTEGER REFERENCES Pessoa (id),
  email                      INTEGER,
  username                   INTEGER,
  password                   INTEGER
);

DROP TABLE IF EXISTS Papel;
CREATE TABLE Papel (
  idPapel                    INTEGER,
  atividade                  INTEGER
);

DROP TABLE IF EXISTS EntidadeMusical;
CREATE TABLE EntidadeMusical (
  idEntidadeMusical          INTEGER,
  nomeArtistico              INTEGER,
  imagem                     INTEGER,
  dataFundacao               INTEGER,
  descricao                  INTEGER
);

DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  idAlbum                    INTEGER,
  nome                       INTEGER,
  capa                       INTEGER,
  anoLancamento              INTEGER
);

DROP TABLE IF EXISTS Musica;
CREATE TABLE Musica (
  idMusica                   INTEGER,
  album                      REFERENCES Album(idAlbum)
  nome                       INTEGER,
  duracao                    INTEGER
);

DROP TABLE IF EXISTS EstiloMusical;
CREATE TABLE EstiloMusical (
  idEstiloMusical            INTEGER,
  nome                       INTEGER,
  duracao                    INTEGER
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
  idPlaylist                 INTEGER,
  criador                    INTEGER REFERENCES  Utilizador(id),
  nome                       INTEGER,
  imagem                     INTEGER,
  dataCriacao                INTEGER,
  descricao                  INTEGER,
  privada                    INTEGER
);

DROP TABLE IF EXISTS Sessao;
CREATE TABLE Sessao (
  idSessao                   INTEGER,
  dataInicio                 INTEGER
);

DROP TABLE IF EXISTS Adicionada;
CREATE TABLE Adicionada (
  utilizador                 INTEGER REFERENCES Utilizador(id)
);

DROP TABLE IF EXISTS TempoOuvido;
CREATE TABLE TempoOuvido (
  musica                     INTEGER REFERENCES Musica(idMusica)
  sessao                     INTEGER REFERENCES Sessao(idSessao)
  duracao                    INTEGER
);

PRAGMA foreign_keys = on;
