-- Classe Pessoa 
INSERT INTO Pessoa VALUES(1, 'Hugo', 'Junho', '4490', 'Povoa');
INSERT INTO Pessoa VALUES(2, 'Samuel', 'Junho', '4860', 'Cabeceiras De Basto');
INSERT INTO Pessoa VALUES(3, 'Paulinho', 'Junho', '4490', 'Povoa');
INSERT INTO Pessoa VALUES(4, 'Thomas Yorke', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(5, 'Johnny Greenwood', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(6, 'Colin Greenwood', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(7, 'Ed Obrien', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(8, 'Philip Selway', 'Junho', '1234', 'Who knows');


-- Classe Artista 
INSERT INTO Artista VALUES(4, '1985');
INSERT INTO Artista VALUES(5, '1985');
INSERT INTO Artista VALUES(6, '1985');
INSERT INTO Artista VALUES(7, '1985');
INSERT INTO Artista VALUES(8, '1985');


-- Classe Utilizador 
INSERT INTO Utilizador VALUES(1, 'hugomguima@gmail.com', 'Huguima', 'password1');
INSERT INTO Utilizador VALUES(2, 'samue@hotmail.com', 'IAmTheKing', 'password2');
INSERT INTO Utilizador VALUES(3, 'pjbom.best@gmail.com', 'pjbom', 'password3');


-- Classe Papel 
INSERT INTO Papel VALUES(1, 4, 'Vocalista');


-- Classe EntidadeMusical 
INSERT INTO EntidadeMusical VALUES(1, 'Radiohead', 'imagem', '1985', 'Rock');


-- Classe Album 
INSERT INTO Album VALUES(1, 1, 'OK Computer', 'capa', '1997');


-- Classe Musica 
INSERT INTO Musica VALUES(1, 1, 'OK Computer', 'Airbag', '4:48');
INSERT INTO Musica VALUES(2, 1, 'OK Computer', 'Paranoid Android', '6:27');
INSERT INTO Musica VALUES(3, 1, 'OK Computer', 'Subterranean Homesick Alien', '4:28');
INSERT INTO Musica VALUES(4, 1, 'OK Computer', 'Exit Music', '4:27');
INSERT INTO Musica VALUES(5, 1, 'OK Computer', 'Let Down', '5:00');
INSERT INTO Musica VALUES(6, 1, 'OK Computer', 'Karma Police', '4:24');
INSERT INTO Musica VALUES(7, 1, 'OK Computer', 'Filler Hapier', '1:57');
INSERT INTO Musica VALUES(8, 1, 'OK Computer', 'Electioneering', '3:51');
INSERT INTO Musica VALUES(9, 1, 'OK Computer', 'Climbing Up the walls', '4:45');
INSERT INTO Musica VALUES(10, 1, 'OK Computer', 'No Suprises', '3:49');
INSERT INTO Musica VALUES(11, 1, 'OK Computer', 'Lucky', '4:19');
INSERT INTO Musica VALUES(12, 1, 'OK Computer', 'The Tourist', '5:27');


-- Classe EstiloMusical 
INSERT INTO EstiloMusical VALUES(1, 1, 'Rock');
INSERT INTO EstiloMusical VALUES(2, 2, 'Rock');
INSERT INTO EstiloMusical VALUES(3, 3, 'Rock');
INSERT INTO EstiloMusical VALUES(4, 4, 'Rock');
INSERT INTO EstiloMusical VALUES(5, 5, 'Rock');
INSERT INTO EstiloMusical VALUES(6, 6, 'Rock');
INSERT INTO EstiloMusical VALUES(7, 7, 'Rock');
INSERT INTO EstiloMusical VALUES(8, 8, 'Rock');
INSERT INTO EstiloMusical VALUES(9, 9, 'Rock');
INSERT INTO EstiloMusical VALUES(10, 10, 'Rock');
INSERT INTO EstiloMusical VALUES(11, 11, 'Rock');
INSERT INTO EstiloMusical VALUES(12, 12, 'Rock');


-- Classe Playlist 
INSERT INTO Playlist VALUES(1, 1, 'me', 'Playtest', 'imagem', '2020', 'not bad', 'sim');


-- Classe Sessao 
INSERT INTO Sessao VALUES(1, 2, '01/01/2020');


-- Classe Adicionada 
INSERT INTO Adicionada VALUES(1, 10);


-- Classe TempoOuvido 
INSERT INTO TempoOuvido VALUES(1, 4, 1, '10:00');


