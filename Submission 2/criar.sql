PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa (
  id                          INTEGER,
  nome                        VARCHAR(255),
  dataNascimento              VARCHAR(255),
  codPostal                   VARCHAR(255),
  morada                      VARCHAR(255)
  PRIMARY KEY (id)

);

DROP TABLE IF EXISTS Artista;
CREATE TABLE Artista (
  id                          INTEGER REFERENCES Pessoa (id),
  inicioCarreira              VARCHAR(255),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  id                         INTEGER REFERENCES Pessoa (id),
  email                      VARCHAR(255),
  username                   VARCHAR(255),
  password                   VARCHAR(255)
);

DROP TABLE IF EXISTS Papel;
CREATE TABLE Papel (
  idPapel                    INTEGER,
  atividade                  VARCHAR(255)
);

DROP TABLE IF EXISTS EntidadeMusical;
CREATE TABLE EntidadeMusical (
  idEntidadeMusical          INTEGER,
  nomeArtistico              VARCHAR(255),
  imagem                     VARCHAR(255),
  dataFundacao               VARCHAR(255),
  descricao                  VARCHAR(255)
);

DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  idAlbum                    INTEGER,
  nome                       VARCHAR(255),
  capa                       VARCHAR(255),
  anoLancamento              VARCHAR(255)
);

DROP TABLE IF EXISTS Musica;
CREATE TABLE Musica (
  idMusica                   INTEGER,
  album                      REFERENCES Album(idAlbum)
  nome                       VARCHAR(255),
  duracao                    VARCHAR(255)
);

DROP TABLE IF EXISTS EstiloMusical;
CREATE TABLE EstiloMusical (
  idEstiloMusical            INTEGER,
  nome                       VARCHAR(255),
  duracao                    VARCHAR(255)
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
  idPlaylist                 INTEGER,
  criador                    INTEGER REFERENCES  Utilizador(id),
  nome                       VARCHAR(255),
  imagem                     VARCHAR(255),
  dataCriacao                VARCHAR(255),
  descricao                  VARCHAR(255),
  privada                    VARCHAR(255),
);

DROP TABLE IF EXISTS Sessao;
CREATE TABLE Sessao (
  idSessao                   INTEGER,
  dataInicio                 VARCHAR(255)
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
