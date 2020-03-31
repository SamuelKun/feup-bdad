-- Classe Pessoa 
INSERT INTO Pessoa VALUES(1, 'Hugo', 'Junho', '4490', 'Povoa de Varzim');
INSERT INTO Pessoa VALUES(2, 'Samuel', 'Junho', '4860', 'Cabeceiras De Basto');
INSERT INTO Pessoa VALUES(3, 'Paulinho', 'Outubro', '4490', 'Povoa de Varzim');
INSERT INTO Pessoa VALUES(4, 'Thomas Yorke', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(5, 'Johnny Greenwood', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(6, 'Colin Greenwood', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(7, 'Ed Obrien', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(8, 'Philip Selway', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(9, 'Billie Eilish', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(10, 'Hayley Williams', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(11, 'Taylor York', 'Junho', '1234', 'Who knows');
INSERT INTO Pessoa VALUES(12, 'Zac Farro', 'Junho', '1234', 'Who knows');


-- Classe Artista 
INSERT INTO Artista VALUES(4, '1985');
INSERT INTO Artista VALUES(5, '1985');
INSERT INTO Artista VALUES(6, '1985');
INSERT INTO Artista VALUES(7, '1985');
INSERT INTO Artista VALUES(8, '1985');
INSERT INTO Artista VALUES(9, '2015');
INSERT INTO Artista VALUES(10, '2003');
INSERT INTO Artista VALUES(11, '2001');
INSERT INTO Artista VALUES(12, '2004');


-- Classe Utilizador 
INSERT INTO Utilizador VALUES(1, 'hugomguima@gmail.com', 'Huguima', 'password1');
INSERT INTO Utilizador VALUES(2, 'samue@hotmail.com', 'IAmTheKing', 'password2');
INSERT INTO Utilizador VALUES(3, 'pjbom.best@gmail.com', 'PJbomXD', 'paulinho123');


-- Classe Papel 
INSERT INTO Papel VALUES(1, 'Vocal');
INSERT INTO Papel VALUES(2, 'Guitarra');
INSERT INTO Papel VALUES(3, 'Piano');
INSERT INTO Papel VALUES(4, 'Bateria');


-- Classe EntidadeMusical 
INSERT INTO EntidadeMusical VALUES(1, 'Radiohead', 'imagem', '1985', 'descricao');
INSERT INTO EntidadeMusical VALUES(2, 'Billie Eilish', 'imagem', NULL, 'descricao');
INSERT INTO EntidadeMusical VALUES(3, 'Paramore', 'imagem', 2004, 'WE ARE PARAMORE!');


-- Classe Album 
INSERT INTO Album VALUES(1, 'OK Computer', 'capa', '1997');
INSERT INTO Album VALUES(2, 'When We All Fall Asleep, Where Do We Go?', 'capa', 'YEAR');
INSERT INTO Album VALUES(3, 'Brand New Eyes', 'capa', 'YEAR');
INSERT INTO Album VALUES(4, 'All We Know Is Falling', 'capa', 'YEAR');


-- Classe Musica 
INSERT INTO Musica VALUES(1, 1, 'Airbag', 120);
INSERT INTO Musica VALUES(2, 1, 'Paranoid Android', 120);
INSERT INTO Musica VALUES(3, 1, 'Subterranean Homesick Alien', 120);
INSERT INTO Musica VALUES(4, 1, 'Exit Music', 120);
INSERT INTO Musica VALUES(5, 1, 'Let Down', 120);
INSERT INTO Musica VALUES(6, 1, 'Karma Police', 120);
INSERT INTO Musica VALUES(7, 1, 'Filler Hapier', 120);
INSERT INTO Musica VALUES(8, 1, 'Electioneering', 120);
INSERT INTO Musica VALUES(9, 1, 'Climbing Up the walls', 120);
INSERT INTO Musica VALUES(10, 1, 'No Suprises', 120);
INSERT INTO Musica VALUES(11, 1, 'Lucky', 120);
INSERT INTO Musica VALUES(12, 1, 'The Tourist', 120);
INSERT INTO Musica VALUES(13, 2, '!!!!!!!', 120);
INSERT INTO Musica VALUES(14, 2, 'Bad Guy', 120);
INSERT INTO Musica VALUES(15, 2, 'Xanny', 120);
INSERT INTO Musica VALUES(16, 2, 'You Should See Me In a Crown', 120);
INSERT INTO Musica VALUES(17, 2, 'All The Good Girls Go To Hell', 120);
INSERT INTO Musica VALUES(18, 2, 'Wish You Were Gay', 120);
INSERT INTO Musica VALUES(19, 2, 'When the Party is Over', 120);
INSERT INTO Musica VALUES(20, 2, '8', 120);
INSERT INTO Musica VALUES(21, 2, 'My Strange Addiction', 120);
INSERT INTO Musica VALUES(22, 2, 'Bury a Friend', 120);
INSERT INTO Musica VALUES(23, 2, 'Ilomilo', 120);
INSERT INTO Musica VALUES(24, 2, 'Listen Before I Go', 120);
INSERT INTO Musica VALUES(25, 2, 'I Love You', 120);
INSERT INTO Musica VALUES(26, 2, 'Goodbye', 120);
INSERT INTO Musica VALUES(27, 3, 'Careful', 120);
INSERT INTO Musica VALUES(28, 3, 'Ignorance', 120);
INSERT INTO Musica VALUES(29, 3, 'Playing God', 120);
INSERT INTO Musica VALUES(30, 3, 'Brick By Boring Brick', 120);
INSERT INTO Musica VALUES(31, 3, 'Turn It Off', 120);
INSERT INTO Musica VALUES(32, 3, 'The Only Exception', 120);
INSERT INTO Musica VALUES(33, 3, 'Feeling Sorry', 120);
INSERT INTO Musica VALUES(34, 3, 'Looking Up', 120);
INSERT INTO Musica VALUES(35, 3, 'Where The Lines Overlap', 120);
INSERT INTO Musica VALUES(36, 3, 'Misguided Ghosts', 120);
INSERT INTO Musica VALUES(37, 3, 'All I Wanted', 120);
INSERT INTO Musica VALUES(38, 4, 'All We Know', 120);
INSERT INTO Musica VALUES(39, 4, 'Pressure', 120);
INSERT INTO Musica VALUES(40, 4, 'Emergency', 120);
INSERT INTO Musica VALUES(41, 4, 'Brighter', 120);
INSERT INTO Musica VALUES(42, 4, 'Here We Go Again', 120);
INSERT INTO Musica VALUES(43, 4, 'Never Let This Go', 120);
INSERT INTO Musica VALUES(44, 4, 'Whoa', 120);
INSERT INTO Musica VALUES(45, 4, 'Conspiracy', 120);
INSERT INTO Musica VALUES(46, 4, 'Franklin', 120);
INSERT INTO Musica VALUES(47, 4, 'My Heart', 120);


-- Classe EstiloMusical 
INSERT INTO EstiloMusical VALUES(1, 'Rock');
INSERT INTO EstiloMusical VALUES(2, 'Indie');
INSERT INTO EstiloMusical VALUES(3, 'Pop');
INSERT INTO EstiloMusical VALUES(4, 'Grunge');


-- Classe Playlist 
INSERT INTO Playlist VALUES(1, 1, 'Playtest', 'imagem', '2020', 'not bad', 0);


-- Classe Sessao 
INSERT INTO Sessao VALUES(1, '01/01/2020');


-- Classe TempoOuvido 
INSERT INTO TempoOuvido VALUES(1, 1, 520);


-- Classe Desempenha 
INSERT INTO Desempenha VALUES(4, 1);
INSERT INTO Desempenha VALUES(5, 1);
INSERT INTO Desempenha VALUES(6, 1);
INSERT INTO Desempenha VALUES(7, 2);
INSERT INTO Desempenha VALUES(8, 2);
INSERT INTO Desempenha VALUES(9, 1);
INSERT INTO Desempenha VALUES(9, 2);
INSERT INTO Desempenha VALUES(10, 1);
INSERT INTO Desempenha VALUES(10, 3);
INSERT INTO Desempenha VALUES(11, 2);
INSERT INTO Desempenha VALUES(12, 4);


-- Classe Possui 
INSERT INTO Possui VALUES(1, 1);
INSERT INTO Possui VALUES(1, 2);
INSERT INTO Possui VALUES(2, 1);
INSERT INTO Possui VALUES(3, 1);
INSERT INTO Possui VALUES(3, 2);
INSERT INTO Possui VALUES(3, 3);
INSERT INTO Possui VALUES(3, 4);


-- Classe Membro 
INSERT INTO Membro VALUES(4, 1);
INSERT INTO Membro VALUES(5, 1);
INSERT INTO Membro VALUES(6, 1);
INSERT INTO Membro VALUES(7, 1);
INSERT INTO Membro VALUES(8, 1);
INSERT INTO Membro VALUES(9, 2);
INSERT INTO Membro VALUES(10, 3);
INSERT INTO Membro VALUES(11, 3);
INSERT INTO Membro VALUES(12, 3);


-- Classe Compoe 
INSERT INTO Compoe VALUES(1, 1);
INSERT INTO Compoe VALUES(2, 2);
INSERT INTO Compoe VALUES(3, 3);
INSERT INTO Compoe VALUES(3, 4);


-- Classe FavoritoAlbum 
INSERT INTO FavoritoAlbum VALUES(1, 1);
INSERT INTO FavoritoAlbum VALUES(2, 1);
INSERT INTO FavoritoAlbum VALUES(3, 1);


-- Classe FavoritoMusica 
INSERT INTO FavoritoMusica VALUES(1, 10, '10-04-2019');


-- Classe FavoritoPlaylist 
INSERT INTO FavoritoPlaylist VALUES(3, 1);


-- Classe Colabora 
INSERT INTO Colabora VALUES(3, 1);


-- Classe EstiloMusica 
INSERT INTO EstiloMusica VALUES(1, 1);
INSERT INTO EstiloMusica VALUES(1, 2);
INSERT INTO EstiloMusica VALUES(1, 3);
INSERT INTO EstiloMusica VALUES(1, 4);
INSERT INTO EstiloMusica VALUES(1, 5);
INSERT INTO EstiloMusica VALUES(1, 6);
INSERT INTO EstiloMusica VALUES(1, 7);
INSERT INTO EstiloMusica VALUES(1, 8);
INSERT INTO EstiloMusica VALUES(1, 9);
INSERT INTO EstiloMusica VALUES(1, 10);
INSERT INTO EstiloMusica VALUES(1, 11);
INSERT INTO EstiloMusica VALUES(1, 12);
INSERT INTO EstiloMusica VALUES(2, 13);
INSERT INTO EstiloMusica VALUES(2, 14);
INSERT INTO EstiloMusica VALUES(2, 15);
INSERT INTO EstiloMusica VALUES(2, 16);
INSERT INTO EstiloMusica VALUES(2, 17);
INSERT INTO EstiloMusica VALUES(2, 18);
INSERT INTO EstiloMusica VALUES(2, 19);
INSERT INTO EstiloMusica VALUES(2, 20);
INSERT INTO EstiloMusica VALUES(2, 21);
INSERT INTO EstiloMusica VALUES(2, 22);
INSERT INTO EstiloMusica VALUES(2, 23);
INSERT INTO EstiloMusica VALUES(2, 24);
INSERT INTO EstiloMusica VALUES(2, 25);
INSERT INTO EstiloMusica VALUES(2, 26);
INSERT INTO EstiloMusica VALUES(3, 27);
INSERT INTO EstiloMusica VALUES(1, 28);
INSERT INTO EstiloMusica VALUES(1, 29);
INSERT INTO EstiloMusica VALUES(3, 30);
INSERT INTO EstiloMusica VALUES(1, 31);
INSERT INTO EstiloMusica VALUES(1, 32);
INSERT INTO EstiloMusica VALUES(3, 33);
INSERT INTO EstiloMusica VALUES(1, 34);
INSERT INTO EstiloMusica VALUES(1, 35);
INSERT INTO EstiloMusica VALUES(3, 36);
INSERT INTO EstiloMusica VALUES(1, 37);
INSERT INTO EstiloMusica VALUES(4, 38);
INSERT INTO EstiloMusica VALUES(4, 39);
INSERT INTO EstiloMusica VALUES(4, 40);
INSERT INTO EstiloMusica VALUES(4, 41);
INSERT INTO EstiloMusica VALUES(4, 42);
INSERT INTO EstiloMusica VALUES(4, 43);
INSERT INTO EstiloMusica VALUES(4, 44);
INSERT INTO EstiloMusica VALUES(4, 45);
INSERT INTO EstiloMusica VALUES(4, 46);
INSERT INTO EstiloMusica VALUES(4, 47);


-- Classe UtilizadorSessao 
INSERT INTO UtilizadorSessao VALUES(1, 1);


-- Classe Pertence 
INSERT INTO Pertence VALUES(1, 1);
INSERT INTO Pertence VALUES(1, 2);


-- Classe Segue 
INSERT INTO Segue VALUES(3, 1);


