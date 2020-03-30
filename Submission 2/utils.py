#INSERT INTO EntidadeMusical VALUES(1,'Radiohead','imagem?','1985','Rock');

tablePessoa = [
        [1, "'Hugo'", "'Junho'","'4490'","'Povoa'"],
        [2, "'Samuel'", "'Junho'","'4860'","'Cabeceiras De Basto'"],
        [3, "'Paulinho'", "'Junho'","'4490'","'Povoa'"],
        [4, "'Thomas Yorke'", "'Junho'","'1234'","'Who knows'"],
        [5, "'Johnny Greenwood'", "'Junho'","'1234'","'Who knows'"],
        [6, "'Colin Greenwood'", "'Junho'","'1234'","'Who knows'"],
        [7, "'Ed Obrien'", "'Junho'","'1234'","'Who knows'"],
        [8, "'Philip Selway'", "'Junho'","'1234'","'Who knows'"]]

tableArtista = [
        [4, "'1985'"],
        [5, "'1985'"],
        [6, "'1985'"],
        [7, "'1985'"],
        [8, "'1985'"]]

tableUtilizador = [
        [1, "'hugomguima@gmail.com'", "'Huguima'", "'password1'"],
        [2, "'samue@hotmail.com'", "'IAmTheKing'", "'password2'"],
        [3,"'pjbom.best@gmail.com'","'pjbom'","'password3'"]]

tablePapel = [
        [1, "'Vocalista'"],
        [2, "'Guitarrista'"]]

tableEntidadeMusical = [
        [1, "'Radiohead'", "'imagem'", "'1985'","'Rock'"],
        ]

tableAlbum = [
        [1, 1, "'OK Computer'", "'capa'", "'1997'"]]

tableMusica = [
        [1,1,"'OK Computer'", "'Airbag'", "'4:48'"],
        [2,1,"'OK Computer'", "'Paranoid Android'", "'6:27'"],
        [3,1,"'OK Computer'","'Subterranean Homesick Alien'","'4:28'"],
        [4,1,"'OK Computer'","'Exit Music'","'4:27'"],
        [5,1,"'OK Computer'","'Let Down'","'5:00'"],
        [6,1,"'OK Computer'","'Karma Police'","'4:24'"],
        [7,1,"'OK Computer'","'Filler Hapier'","'1:57'"],
        [8,1,"'OK Computer'","'Electioneering'","'3:51'"],
        [9,1,"'OK Computer'","'Climbing Up the walls'","'4:45'"],
        [10,1,"'OK Computer'","'No Suprises'","'3:49'"],
        [11,1,"'OK Computer'","'Lucky'","'4:19'"],
        [12,1,"'OK Computer'","'The Tourist'","'5:27'"]]

tableEstiloMusical = [
        [1, "'Rock'"],
        ]

tablePlaylist = [
        [1, 1, "'me'", "'Playtest'", "'imagem'", "'2020'","'not bad'","'sim'"]]

tableSessao = [
        [1, "'01/01/2020'"]]

tableTempoOuvido = [
        [1, 1, "'10:00'"]
        ]

tableDesempenha = [
        [4, 1],
        [5, 1],
        [6, 1],
        [7, 2],
        [8, 2]]

tablePossui = [
        [1, 1],
        [2, 1]]

tableMembro = [
        [4,1], 
        [5,1],
        [6,1],
        [7,1],
        [8,1]
        ]

tableCompoe = [
        [1,1]
        ]

tableFavoritoAlbum = [
        [1, 1],
        [2, 1],
        [3, 1]
        ]

tableFavoritoMusica =  [
        [1, 10, "'10-04-2019'"]
        ]

tableFavoritoPlaylist = [
        [3, 1]
        ]

tableColabora = [
        [3, 1]
        ]

tableEstiloMusica = [
        [1, 1],
        [1, 2],
        [1, 3],
        [1, 4],
        [1, 5]
        ]

tableUtilizadorSessao = [
        [1, 1]
        ]

tablePertence = [
        [3, 1]
        ]

tableSegue = [
        [3, 1]
        ]


classes = {"Pessoa" : tablePessoa,
           "Artista" : tableArtista,
           "Utilizador" : tableUtilizador,
           "Papel" : tablePapel,
           "EntidadeMusical" : tableEntidadeMusical,
           "Album" : tableAlbum,
           "Musica" : tableMusica,
           "EstiloMusical" : tableEstiloMusical,
           "Playlist" : tablePlaylist,
           "Sessao" : tableSessao,
           "TempoOuvido" : tableTempoOuvido,
           "Desempenha" : tableDesempenha,
           "Possui" : tablePossui,
           "Membro" : tableMembro,
           "Compoe" : tableCompoe,
           "FavoritoAlbum" : tableFavoritoAlbum,
           "FavoritoMusica" : tableFavoritoMusica,
           "FavoritoPlaylist" : tableFavoritoPlaylist,
           "Colabora" : tableColabora,
           "EstiloMusica" : tableEstiloMusica,
           "UtilizadorSessao" : tableUtilizadorSessao,
           "Pertence" : tablePertence,
           "Segue" : tableSegue,
           }
           

def values(listName):
    return ', '.join(str(a) for a in listName)

def addMusica():
    return 0
        
f = open("povoar.sql", "w")

for classeName in classes:
    f.write("-- Classe {} \n".format(classeName))
    for i in range(len(classes[classeName])):
        f.write("INSERT INTO {} VALUES({});\n".format(classeName, values(classes[classeName][i])))
    f.write("\n\n")
    
f.close()