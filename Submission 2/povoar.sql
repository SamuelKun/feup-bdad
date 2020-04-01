-- Classe Pessoa 
INSERT INTO Pessoa VALUES(1, 'Hugo', 'Julho', '4490', 'Praca dos Combatentes');
INSERT INTO Pessoa VALUES(2, 'Samuel', 'Junho', '4860', 'Rua Doutor Franscico Botelho');
INSERT INTO Pessoa VALUES(3, 'Paulinho', 'Agosto', '4490', 'Povoa - Portugal');
INSERT INTO Pessoa VALUES(4, 'Thomas Yorke', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(5, 'Johnny Greenwood', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(6, 'Colin Greenwood', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(7, 'Ed Obrien', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(8, 'Philip Selway', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(9, 'Billie Eilish', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(10, 'Hayley Williams', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(11, 'Taylor York', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(12, 'Zac Farro', 'Junho', NULL, NULL);
INSERT INTO Pessoa VALUES(13, 'Pedro Castro', 'Maio', '4860', 'Chacim');
INSERT INTO Pessoa VALUES(14, 'Bernardo Vaz', 'Maio', '4860', 'Rua de Outeirinho');
INSERT INTO Pessoa VALUES(15, 'Marta Sofia', 'Novembro', '3020', 'Avenida Sá da Bandeira');
INSERT INTO Pessoa VALUES(16, 'Ines Machado', 'Janeiro', '3020', 'Rua das Azeiteiras');
INSERT INTO Pessoa VALUES(17, 'Olena Shelvytska', 'Marco', '79007', 'Lviv Snow Stree');
INSERT INTO Pessoa VALUES(18, 'Beatriz Mendes', 'Junho', '4850', 'Centro da Maia');


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
INSERT INTO Utilizador VALUES(2, 'samue@hotmail.com', 'Samuh', 'password2');
INSERT INTO Utilizador VALUES(3, 'pjbom.best@gmail.com', 'pjbom', 'password3');
INSERT INTO Utilizador VALUES(13, 'hugomguima@gmail.com', 'Huguima', 'password1');
INSERT INTO Utilizador VALUES(14, 'teste1@hotmail.com', 'teste1', 'password2');
INSERT INTO Utilizador VALUES(15, 'teste2@hotmail.com', 'teste2', 'password3');
INSERT INTO Utilizador VALUES(16, 'teste3@hotmail.com', 'teste3', 'password3');
INSERT INTO Utilizador VALUES(17, 'teste4@hotmail.com', 'teste4', 'password3');
INSERT INTO Utilizador VALUES(18, 'ziniii@outlook.com', 'ZiniWhini', 'egirl1234');


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
INSERT INTO Album VALUES(1, 'OK Computer', 'https://i.imgur.com/7Prc1JI.jpg', '1997');
INSERT INTO Album VALUES(2, 'When We All Fall Asleep, Where Do We Go?', 'https://i.imgur.com/181OJ2a.png', '2019');
INSERT INTO Album VALUES(3, 'Brand New Eyes', 'https://i.imgur.com/2zUv7QL.jpg', '2009');
INSERT INTO Album VALUES(4, 'All We Know Is Falling', 'https://i.imgur.com/Gh2Y21E.jpg', '2005');


-- Classe Musica 
INSERT INTO Musica VALUES(1, 1, 'Airbag', '270');
INSERT INTO Musica VALUES(2, 1, 'Paranoid Android', '340');
INSERT INTO Musica VALUES(3, 1, 'Subterranean Homesick Alien', '273');
INSERT INTO Musica VALUES(4, 1, 'Exit Music', '267');
INSERT INTO Musica VALUES(5, 1, 'Let Down', '300');
INSERT INTO Musica VALUES(6, 1, 'Karma Police', '264');
INSERT INTO Musica VALUES(7, 1, 'Filler Hapier', '118');
INSERT INTO Musica VALUES(8, 1, 'Electioneering', '240');
INSERT INTO Musica VALUES(9, 1, 'Climbing Up the walls', '300');
INSERT INTO Musica VALUES(10, 1, 'No Suprises', '220');
INSERT INTO Musica VALUES(11, 1, 'Lucky', '241');
INSERT INTO Musica VALUES(12, 1, 'The Tourist', '274');
INSERT INTO Musica VALUES(13, 2, 'Bad Guy', '213');
INSERT INTO Musica VALUES(14, 2, 'You Should See Me In a Crown', '231');
INSERT INTO Musica VALUES(15, 2, 'All The Good Girls Go To Hell', '198');
INSERT INTO Musica VALUES(16, 2, 'When the Party is Over', '234');
INSERT INTO Musica VALUES(17, 2, 'My Strange Addiction', '190');
INSERT INTO Musica VALUES(18, 2, 'Bury a Friend', '130');
INSERT INTO Musica VALUES(19, 2, 'Ilomilo', '140');
INSERT INTO Musica VALUES(20, 2, 'Listen Before I Go', '165');
INSERT INTO Musica VALUES(21, 2, 'I Love You', '254');
INSERT INTO Musica VALUES(22, 3, 'Careful', '298');
INSERT INTO Musica VALUES(23, 3, 'Ignorance', '234');
INSERT INTO Musica VALUES(24, 3, 'Playing God', '324');
INSERT INTO Musica VALUES(25, 3, 'Brick By Boring Brick', '290');
INSERT INTO Musica VALUES(26, 3, 'Turn It Off', '293');
INSERT INTO Musica VALUES(27, 3, 'The Only Exception', '354');
INSERT INTO Musica VALUES(28, 3, 'Where The Lines Overlap', '231');
INSERT INTO Musica VALUES(29, 3, 'Misguided Ghosts', '132');
INSERT INTO Musica VALUES(30, 3, 'All I Wanted', '231');
INSERT INTO Musica VALUES(31, 4, 'All We Know', '324');
INSERT INTO Musica VALUES(32, 4, 'Pressure', '239');
INSERT INTO Musica VALUES(33, 4, 'Emergency', '197');
INSERT INTO Musica VALUES(34, 4, 'Brighter', '210');
INSERT INTO Musica VALUES(35, 4, 'Here We Go Again', '207');
INSERT INTO Musica VALUES(36, 4, 'Never Let This Go', '224');
INSERT INTO Musica VALUES(37, 4, 'Conspiracy', '240');
INSERT INTO Musica VALUES(38, 4, 'My Heart', '420');


-- Classe EstiloMusical 
INSERT INTO EstiloMusical VALUES(1, 'Rock');
INSERT INTO EstiloMusical VALUES(2, 'Indie');
INSERT INTO EstiloMusical VALUES(3, 'Pop');
INSERT INTO EstiloMusical VALUES(4, 'Grunge');


-- Classe Playlist 
INSERT INTO Playlist VALUES(1, 1, 'I Love 90', 'imagem', '2020', 'Best songs of 90s', 0);
INSERT INTO Playlist VALUES(2, 13, 'Indie', 'imagem', '2020', 'New Indie Trend', 0);
INSERT INTO Playlist VALUES(3, 2, 'Me and my Friends', 'imagem', '2020', 'Put your favorite songs here!', 1);


-- Classe Sessao 
INSERT INTO Sessao VALUES(1, '16/03/2020');
INSERT INTO Sessao VALUES(2, '16/03/2020');
INSERT INTO Sessao VALUES(3, '16/03/2020');
INSERT INTO Sessao VALUES(4, '17/03/2020');
INSERT INTO Sessao VALUES(5, '17/03/2020');


-- Classe TempoOuvido 
INSERT INTO TempoOuvido VALUES(1, 1, '270');
INSERT INTO TempoOuvido VALUES(1, 2, '340');
INSERT INTO TempoOuvido VALUES(2, 3, '');
INSERT INTO TempoOuvido VALUES(2, 20, '');
INSERT INTO TempoOuvido VALUES(2, 21, '');
INSERT INTO TempoOuvido VALUES(2, 22, '');
INSERT INTO TempoOuvido VALUES(2, 23, '');
INSERT INTO TempoOuvido VALUES(2, 24, '');
INSERT INTO TempoOuvido VALUES(2, 25, '');
INSERT INTO TempoOuvido VALUES(2, 26, '');
INSERT INTO TempoOuvido VALUES(2, 27, '');
INSERT INTO TempoOuvido VALUES(2, 28, '');
INSERT INTO TempoOuvido VALUES(2, 29, '');
INSERT INTO TempoOuvido VALUES(2, 30, '');
INSERT INTO TempoOuvido VALUES(2, 31, '');
INSERT INTO TempoOuvido VALUES(2, 32, '');
INSERT INTO TempoOuvido VALUES(2, 33, '');
INSERT INTO TempoOuvido VALUES(2, 34, '');
INSERT INTO TempoOuvido VALUES(2, 35, '');
INSERT INTO TempoOuvido VALUES(2, 36, '');
INSERT INTO TempoOuvido VALUES(2, 37, '');
INSERT INTO TempoOuvido VALUES(3, 1, '');
INSERT INTO TempoOuvido VALUES(3, 2, '');
INSERT INTO TempoOuvido VALUES(3, 3, '');
INSERT INTO TempoOuvido VALUES(3, 4, '');
INSERT INTO TempoOuvido VALUES(3, 5, '');
INSERT INTO TempoOuvido VALUES(3, 6, '');
INSERT INTO TempoOuvido VALUES(3, 7, '');
INSERT INTO TempoOuvido VALUES(3, 8, '');
INSERT INTO TempoOuvido VALUES(3, 9, '');
INSERT INTO TempoOuvido VALUES(3, 10, '');
INSERT INTO TempoOuvido VALUES(3, 11, '');
INSERT INTO TempoOuvido VALUES(4, 13, '');
INSERT INTO TempoOuvido VALUES(4, 14, '');
INSERT INTO TempoOuvido VALUES(4, 15, '');
INSERT INTO TempoOuvido VALUES(4, 16, '');
INSERT INTO TempoOuvido VALUES(4, 17, '');
INSERT INTO TempoOuvido VALUES(4, 18, '');
INSERT INTO TempoOuvido VALUES(4, 19, '');
INSERT INTO TempoOuvido VALUES(4, 20, '');
INSERT INTO TempoOuvido VALUES(5, 13, '');


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
INSERT INTO FavoritoAlbum VALUES(2, 2);
INSERT INTO FavoritoAlbum VALUES(2, 3);
INSERT INTO FavoritoAlbum VALUES(2, 4);
INSERT INTO FavoritoAlbum VALUES(3, 1);
INSERT INTO FavoritoAlbum VALUES(14, 1);
INSERT INTO FavoritoAlbum VALUES(17, 3);


-- Classe FavoritoMusica 
INSERT INTO FavoritoMusica VALUES(2, 10, '15/03/2020');
INSERT INTO FavoritoMusica VALUES(14, 5, '17/03/2020');
INSERT INTO FavoritoMusica VALUES(18, 5, '17/03/2020');


-- Classe FavoritoPlaylist 
INSERT INTO FavoritoPlaylist VALUES(3, 1);
INSERT INTO FavoritoPlaylist VALUES(2, 3);


-- Classe Colabora 
INSERT INTO Colabora VALUES(1, 3);
INSERT INTO Colabora VALUES(3, 3);
INSERT INTO Colabora VALUES(13, 3);
INSERT INTO Colabora VALUES(15, 3);


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
INSERT INTO EstiloMusica VALUES(4, 23);
INSERT INTO EstiloMusica VALUES(2, 24);
INSERT INTO EstiloMusica VALUES(4, 25);
INSERT INTO EstiloMusica VALUES(2, 26);
INSERT INTO EstiloMusica VALUES(3, 27);
INSERT INTO EstiloMusica VALUES(1, 28);
INSERT INTO EstiloMusica VALUES(1, 29);
INSERT INTO EstiloMusica VALUES(3, 30);
INSERT INTO EstiloMusica VALUES(1, 31);
INSERT INTO EstiloMusica VALUES(4, 32);
INSERT INTO EstiloMusica VALUES(4, 33);
INSERT INTO EstiloMusica VALUES(1, 34);
INSERT INTO EstiloMusica VALUES(4, 35);
INSERT INTO EstiloMusica VALUES(3, 36);
INSERT INTO EstiloMusica VALUES(1, 37);
INSERT INTO EstiloMusica VALUES(4, 38);


-- Classe UtilizadorSessao 
INSERT INTO UtilizadorSessao VALUES(1, 1);
INSERT INTO UtilizadorSessao VALUES(2, 2);
INSERT INTO UtilizadorSessao VALUES(2, 4);
INSERT INTO UtilizadorSessao VALUES(3, 3);
INSERT INTO UtilizadorSessao VALUES(13, 4);
INSERT INTO UtilizadorSessao VALUES(14, 5);
INSERT INTO UtilizadorSessao VALUES(15, 4);
INSERT INTO UtilizadorSessao VALUES(16, 4);
INSERT INTO UtilizadorSessao VALUES(17, 3);
INSERT INTO UtilizadorSessao VALUES(18, 5);


-- Classe Pertence 
INSERT INTO Pertence VALUES(1, 1);
INSERT INTO Pertence VALUES(1, 2);


-- Classe Segue 
INSERT INTO Segue VALUES(3, 1);
INSERT INTO Segue VALUES(1, 3);
INSERT INTO Segue VALUES(2, 1);
INSERT INTO Segue VALUES(2, 3);
INSERT INTO Segue VALUES(15, 2);
INSERT INTO Segue VALUES(13, 15);


