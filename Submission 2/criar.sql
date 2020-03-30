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
  idArtista                   INTEGER                 PRIMARY KEY REFERENCES Pessoa(idPessoa),
  inicioCarreira              VARCHAR(255)
);

DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  idUtilizador               INTEGER                 PRIMARY KEY REFERENCES Pessoa(idPessoa),
  email                      VARCHAR(255)            NOT NULL,
  username                   VARCHAR(255),
  password                   VARCHAR(255)            NOT NULL
);

DROP TABLE IF EXISTS Papel;
CREATE TABLE Papel (
  idPapel                    INTEGER                 PRIMARY KEY,
  atividade                  VARCHAR(255)            NOT NULL
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
  idEntidadeMusical          INTEGER                 REFERENCES EntidadeMusical(idEntidadeMusical),
  nome                       VARCHAR(255)            NOT NULL,
  capa                       VARCHAR(255),
  anoLancamento              VARCHAR(255)
);

DROP TABLE IF EXISTS Musica;
CREATE TABLE Musica (
  idMusica                   INTEGER                 PRIMARY KEY,
  idAlbum                    INTEGER                 REFERENCES Album(idAlbum),
  album                      INTEGER,
  nome                       VARCHAR(255)            NOT NULL,
  duracao                    VARCHAR(255)            NOT NULL
);

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
  idPlaylist                 INTEGER                 PRIMARY KEY,
  idUtilizador               INTEGER                 REFERENCES Utilizador(idUtilizador),
  criador                    VARCHAR(255), --REFERENCES Utilizador(username)
  nome                       VARCHAR(255),
  imagem                     VARCHAR(255),
  dataCriacao                VARCHAR(255),
  descricao                  VARCHAR(255),
  privada                    VARCHAR(255)
);

DROP TABLE IF EXISTS EstiloMusical;
CREATE TABLE EstiloMusical (
  idEstiloMusical            INTEGER                 PRIMARY KEY,
  nome                       VARCHAR(255)            NOT NULL
);

DROP TABLE IF EXISTS Sessao;
CREATE TABLE Sessao (
  idSessao                   INTEGER                 PRIMARY KEY,
  dataInicio                 VARCHAR(255)
);

DROP TABLE IF EXISTS TempoOuvido;
CREATE TABLE TempoOuvido (
  idMusica                   INTEGER                 REFERENCES Musica(idMusica),
  idSessao                   INTEGER                 REFERENCES Sessao(idSessao),
  duracao                    INTEGER
);

DROP TABLE IF EXISTS Desempenha;
CREATE TABLE Desempenha (
  idArtista  INTEGER REFERENCES Artista(idArtista),
  idPapel    INTEGER REFERENCES Papel(idPapel),
  PRIMARY KEY(idArtista, idPapel)
);

DROP TABLE IF EXISTS Possui;
CREATE TABLE Possui (
  idPapel    INTEGER REFERENCES Papel(idPapel),
  idEntidadeMusical  INTEGER REFERENCES EntidadeMusical(idEntidadeMusical),
  PRIMARY KEY(idPapel, idEntidadeMusical)
);

DROP TABLE IF EXISTS Membro;
CREATE TABLE Membro (
  idArtista          INTEGER REFERENCES Artista(idArtista),
  idEntidadeMusical  INTEGER REFERENCES EntidadeMusical(idEntidadeMusical),
  PRIMARY KEY(idArtista, idEntidadeMusical)
);

DROP TABLE IF EXISTS Compoe;
CREATE TABLE Compoe (
  idEntidadeMusical INTEGER REFERENCES EntidadeMusical(idEntidadeMusical),
  idAlbum INTEGER REFERENCES Album(idAlbum),
  PRIMARY KEY(idEntidadeMusical, idAlbum)
);

DROP TABLE IF EXISTS FavoritoAlbum;
CREATE TABLE FavoritoAlbum (
  idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
  idAlbum INTEGER REFERENCES Album(idAlbum),
  PRIMARY KEY(idUtilizador, idAlbum)
);

DROP TABLE IF EXISTS FavoritoMusica;
CREATE TABLE FavoritoMusica (
  idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
  idMusica INTEGER REFERENCES Musica(idMusica),
  data                       INTEGER,
  PRIMARY KEY(idUtilizador, idMusica)
);

DROP TABLE IF EXISTS FavoritoPlaylist;
CREATE TABLE FavoritoPlaylist (
  idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
  idPlaylist INTEGER REFERENCES Playlist(idPlaylist),
  PRIMARY KEY(idUtilizador, idPlaylist)
);

DROP TABLE IF EXISTS Colabora;
CREATE TABLE Colabora (
  idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
  idPlaylist INTEGER REFERENCES Playlist(idPlaylist),
  PRIMARY KEY(idUtilizador, idPlaylist)
);

DROP TABLE IF EXISTS EstiloMusica;
CREATE TABLE EstiloMusica (
  idEstiloMusical INTEGER NOT NULL REFERENCES EstiloMusical(idEstiloMusical),
  idMusica INTEGER NOT NULL REFERENCES Musica(idMusica),
  PRIMARY KEY(idEstiloMusical, idMusica)
);

DROP TABLE IF EXISTS UtilizadorSessao;
CREATE TABLE UtilizadorSessao (
  idUtilizador INTEGER REFERENCES Utilizador(idUtilizador),
  idMusica INTEGER REFERENCES Musica(idMusica),
  PRIMARY KEY(idUtilizador, idMusica)
);

DROP TABLE IF EXISTS Pertence;
CREATE TABLE Pertence (
  idMusica INTEGER REFERENCES Musica(idMusica),
  idPlaylist INTEGER REFERENCES Playlist(idPlaylist),
  PRIMARY KEY(idMusica, idPlaylist)
);

DROP TABLE IF EXISTS Segue;
CREATE TABLE Segue (
  idUtilizador        INTEGER PRIMARY KEY REFERENCES Utilizador(idUtilizador),
  idUtilizadorSeguido INTEGER REFERENCES Utilizador(idUtilizador)
);
