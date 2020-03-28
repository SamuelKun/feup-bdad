#INSERT INTO EntidadeMusical VALUES(1,'Radiohead','imagem?','1985','Rock');

tablePessoa = [
        [1, "'Hugo'", "'Huguima'", "'password1'","'4490'","'Povoa'"],
        [2, "'Samuel'", "'IAmTheKing'", "'password2'","'4860'","'Cabeceiras De Basto'"],
        [3, "'Paulinho'", "'IAmTheKing'", "'password2'","'4490'","'Povoa'"],
        [4, "'Thomas Yorke'", "'IAmTheKing'", "'password2'","'1234'","'Who knows'"],
        [5, "'Johnny Greenwood'", "'IAmTheKing'", "'password2'","'1234'","''Who knows'"],
        [6, "'Colin Greenwood'", "'IAmTheKing'", "'password2'","'1234'","''Who knows'"],
        [7, "'Ed Obrien'", "'IAmTheKing'", "'password2'","'1234'","''Who knows'"],
        [8, "'Philip Selway'", "'IAmTheKing'", "'password2'","'1234'","''Who knows'"]]

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
        [1,"'Vocalista'"]]

tableEntidadeMusical = [
        [1, "'Radiohead'", "'imagem'", "'1985'","'Rock'"]]

tableAlbum = [
        [1, "'OK Computer'", "'capa'", "'1997'"]]

tableMusica = [
        [1,1, "'Airbag'", "'IAmTheKing'", "'4:48'"],
        [2,1, "'Paranoid Android'", "'IAmTheKing'", "'6:27'"],
        [3,1,"'Subterranean Homesick Alien'","'4:28'"],
        [4,1,"'Exit Music'","'4:27'"],
        [5,1,"'Let Down'","'5:00'"],
        [6,1,"'Karma Police'","'4:24'"],
        [7,1,"'Filler Hapier'","'1:57'"],
        [8,1,"'Electioneering'","'3:51'"],
        [9,1,"'Climbing Up the walls'","'4:45'"],
        [10,1,"'No Suprises","'3:49'"],
        [11,1,"'Lucky'","'4:19'"],
        [12,1,"'The Tourist'","'5:27'"]]

tableEstiloMusical = [
        [1, "'Rock'"]]

tablePlaylist = [
        [1,1, "'Playtest'", "'imagem'", "'2020'","'not bad'","'sim'"]]

tableSessao = [
        [1, "'01/01/2020'"]]

tableAdicionada =  [
        [1]]

tableTempoOuvido = [
        [4,1,"'10:00'"]]

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
           "Adicionada": tableAdicionada,
           "TempoOuvido" : tableTempoOuvido}

def values(listName):
    return ', '.join(str(a) for a in listName)

        
f = open("demo.sql", "w")

for classeName in classes:
    f.write("-- Classe {} \n".format(classeName))
    for i in range(len(classes[classeName])):
        f.write("INSERT INTO {} VALUES({})\n".format(classeName, values(classes[classeName][i])))
    f.write("\n\n")
    
f.close()