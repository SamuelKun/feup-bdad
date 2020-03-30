import requests
from bs4 import BeautifulSoup

# idPessoa, Nome, DataNascimento, CodigoPostal, Morada
tablePessoa = [
        [1, "'Hugo'", "'Junho'","'4490'","'Povoa'"],
        [2, "'Samuel'", "'Junho'","'4860'","'Cabeceiras De Basto'"],
        [3, "'Paulinho'", "'Junho'","'4490'","'Povoa'"],
        [4, "'Thomas Yorke'", "'Junho'","'1234'","'Who knows'"],
        [5, "'Johnny Greenwood'", "'Junho'","'1234'","'Who knows'"],
        [6, "'Colin Greenwood'", "'Junho'","'1234'","'Who knows'"],
        [7, "'Ed Obrien'", "'Junho'","'1234'","'Who knows'"],
        [8, "'Philip Selway'", "'Junho'","'1234'","'Who knows'"],
        [9, "'Billie Eilish'", "'Junho'", "'1234'", "'Who knows'"],
        [10,"'Hayley Williams'", "'Junho'", "'1234'", "'Who knows'"],
        [11,"'Taylor York'", "'Junho'", "'1234'", "'Who knows'"],
        [12,"'Zac Farro'", "'Junho'", "'1234'", "'Who knows'"],]

# idPessoa, anoInicio carreira
tableArtista = [
        [4, "'1985'"],
        [5, "'1985'"],
        [6, "'1985'"],
        [7, "'1985'"],
        [8, "'1985'"],
        [9, "'2015'"],
        [10, "'2003'"],
        [11, "'2001'"],
        [12, "'2004'"],]

#idPessoa, email, username, password
tableUtilizador = [
        [1, "'hugomguima@gmail.com'", "'Huguima'", "'password1'"],
        [2, "'samue@hotmail.com'", "'IAmTheKing'", "'password2'"],
        [3,"'pjbom.best@gmail.com'","'pjbom'","'password3'"]]

#idPapel, Nome
tablePapel = [
        [1, "'Vocal'"],
        [2, "'Guitarra'"],
        [3, "'Piano'"],
        [4, "'Bateria'"]]

# idEntidadeMusical, nome, imagem, ano fundacao, descricao
tableEntidadeMusical = [
        [1, "'Radiohead'", "'imagem'", "'1985'", "'descricao'"],
        [2, "'Billie Eilish'", "'imagem'", "NULL", "'descricao'"],
        [3, "'Paramore'", "'imagem'", "2004", "'WE ARE PARAMORE!'"],
        ]

# id album, nome, capa, ano
tableAlbum = [
        [1, "'OK Computer'", "'capa'", "'1997'"],
        [2, "'When We All Fall Asleep, Where Do We Go?'", "'capa'", "'YEAR'"],
        [3, "'Brand New Eyes'", "'capa'", "'YEAR'"],
        [4, "'All We Know Is Falling'", "'capa'", "'YEAR'"],
]

#idmusica, idalbum, nomeal
tableMusica = [
        [1,1,"'Airbag'", "'4:48'"],
        [2,1, "'Paranoid Android'", "'6:27'"],
        [3,1,"'Subterranean Homesick Alien'","'4:28'"],
        [4,1,"'Exit Music'","'4:27'"],
        [5,1,"'Let Down'","'5:00'"],
        [6,1,"'Karma Police'","'4:24'"],
        [7,1,"'Filler Hapier'","'1:57'"],
        [8,1,"'Electioneering'","'3:51'"],
        [9,1,"'Climbing Up the walls'","'4:45'"],
        [10,1,"'No Suprises'","'3:49'"],
        [11,1,"'Lucky'","'4:19'"],
        [12,1,"'The Tourist'","'5:27'"],
        [13, 2, "'!!!!!!!'", "'DURACAO'"],
        [14, 2, "'Bad Guy'", "'DURACAO'"],
        [15, 2, "'Xanny'", "'DURACAO'"],
        [16, 2, "'You Should See Me In a Crown'", "'DURACAO'"],
        [17, 2, "'All The Good Girls Go To Hell'",  "'DURACAO'"],
        [18, 2, "'Wish You Were Gay'", "'DURACAO'"],
        [19, 2, "'When the Party is Over'",  "'DURACAO'"],
        [20, 2, "'8'",  "'DURACAO'"],
        [21, 2, "'My Strange Addiction'",  "'DURACAO'"],
        [22, 2, "'Bury a Friend'",  "'DURACAO'"],
        [23, 2, "'Ilomilo'",  "'DURACAO'"],
        [24, 2, "'Listen Before I Go'",  "'DURACAO'"],
        [25, 2, "'I Love You'", "'DURACAO'"],
        [26, 2, "'Goodbye'","'DURACAO'"],
        [27, 3, "'Careful'", "'DURACAO'"],
        [28, 3, "'Ignorance'", "'DURACAO'"],
        [29, 3, "'Playing God'", "'DURACAO'"],
        [30, 3, "'Brick By Boring Brick'", "'DURACAO'"],
        [31, 3, "'Turn It Off'", "'DURACAO'"],
        [32, 3, "'The Only Exception'", "'DURACAO'"],
        [33, 3, "'Feeling Sorry'", "'DURACAO'"],
        [34, 3, "'Looking Up'", "'DURACAO'"],
        [35, 3, "'Where The Lines Overlap'", "'DURACAO'"],
        [36, 3, "'Misguided Ghosts'", "'DURACAO'"],
        [37, 3, "'All I Wanted'", "'DURACAO'"],
        [38, 4, "'All We Know'", "'DURACAO'"],
        [39, 4, "'Pressure'", "'DURACAO'"],
        [40, 4, "'Emergency'", "'DURACAO'"],
        [41, 4, "'Brighter'", "'DURACAO'"],
        [42, 4, "'Here We Go Again'", "'DURACAO'"],
        [43, 4, "'Never Let This Go'", "'DURACAO'"],
        [44, 4, "'Whoa'", "'DURACAO'"],
        [45, 4, "'Conspiracy'", "'DURACAO'"],
        [46, 4, "'Franklin'", "'DURACAO'"],
        [47, 4, "'My Heart'", "'DURACAO'"],
]

# idEstiloMusical, NomeEstilo
tableEstiloMusical = [
        [1, "'Rock'"],
        [2, "'Indie'"],
        [3, "'Pop'"],
        [4, "'Grunge'"],
        ]

# idPlaylsit, idutilizador, nome, imagem, datacriacao, descriçao, privada
tablePlaylist = [
        [1, 1, "'Playtest'", "'imagem'", "'2020'","'not bad'", 0],
        [1, 1, "'Playtest'", "'imagem'", "'2020'","'not bad'", 0],
        ]

# idSessao, dia
tableSessao = [
        [1, "'01/01/2020'"]]

# idMusica, idSessao, duracao
tableTempoOuvido = [
        [1, 1, "'10:00'"]
        ]

# Papel que o artista desempenha
# idArtista, idPapel
tableDesempenha = [
        [4, 1],
        [5, 1],
        [6, 1],
        [7, 2],
        [8, 2],
        [9, 1],
        [9, 2],
        [10, 1],
        [10, 3],
        [11, 2],
        [12, 4],]

# Papeis que a banda possui
# idEntidadeMusical, idPapel
tablePossui = [
        [1, 1],
        [1, 2],
        [2, 1],
        [3, 1],
        [3, 2],
        [3, 3],
        [3, 4]]

# idArtista, idEntidadeMusical
tableMembro = [
        [4,1], 
        [5,1],
        [6,1],
        [7,1],
        [8,1],
        [9, 2],
        [10, 3],
        [11, 3],
        [12, 3]
        ]

# idEntidadeMusical compoe idAlbum
tableCompoe = [
        [1, 1],
        [2, 2],
        [3, 3],
        [3, 4],
        ]

# idUtilizador, idMusica
tableFavoritoAlbum = [
        [1, 1],
        [2, 1],
        [3, 1]
        ]

# idUtilizador, idMusica, data
tableFavoritoMusica =  [
        [1, 10, "'10-04-2019'"]
        ]

#idUtilizador, idPlaylist
tableFavoritoPlaylist = [
        [3, 1]
        ]

# idUtilizador, idPlaylist
tableColabora = [
        [3, 1]
        ]

# idEstiloMusica, idMusica
tableEstiloMusica = [
        [1, 1],
        [1, 2],
        [1, 3],
        [1, 4],
        [1, 5],
        [1, 6],
        [1, 7],
        [1, 8],
        [1, 9],
        [1, 10],
        [1, 11],
        [1, 12],
        [2, 13],
        [2, 14],
        [2, 15],
        [2, 16],
        [2, 17],
        [2, 18],
        [2, 19],
        [2, 20],
        [2, 21],
        [2, 22],
        [2, 23],
        [2, 24],
        [2, 25],
        [2, 26],
        [3, 27],
        [1, 28],
        [1, 29],
        [3, 30],
        [1, 31],
        [1, 32],
        [3, 33],
        [1, 34],
        [1, 35],
        [3, 36],
        [1, 37],
        [4, 38],
        [4, 39],
        [4, 40],
        [4, 41],
        [4, 42],
        [4, 43],
        [4, 44],
        [4, 45],
        [4, 46],
        [4, 47],
        ]

# idUtilizador, idSessao
tableUtilizadorSessao = [
        [1, 1]
        ]

# idPlaylist, idMusica
tablePertence = [
        [1, 1],
        [1, 2],
        ]

# idUtilizador, idUtilizadorSeguido
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

def addAlbum(idEntidadeMusical, idEstiloMusical, url): 
    idAlbum = len(tableAlbum) + 1
    listaMusica = []
    listaEstiloMusical = []
        
    url_content = requests.get(url)
    url_data = BeautifulSoup(url_content.content, "html.parser")
    
    idMusica = len(tableMusica) + 1   
    album = "'" + url_data.title.string[:-31] + "'"
    
    paragraphs = url_data.find_all('a')
    for para in paragraphs:
        if para.has_key('class'):
            if para['class'][0] == "nameMusic":
                for j in para['class']:
                    title = "'" + para.get_text() + "'"
                    listaMusica.append([idMusica, idAlbum, title, "'DURACAO'"])
                    listaEstiloMusical.append([idEstiloMusical, idMusica])
                    idMusica += 1
    
    print("\n\n\ntableMusica =")
    for i in listaMusica:
        print(i, end = ",\n")
        
    print("\n\n\ntableAlbum =")
    
    print([idAlbum, album, "'capa'", "'YEAR'"],)
    
    print("\n\n\ntableCompoe =")
    print([idEntidadeMusical, idAlbum],)
    
    print("\n\n\ntableEstiloMusica =")
    for i in listaEstiloMusical:
        print(i, end = ",\n")
        
    return 0

def povoar():
    f = open("povoar.sql", "w")
    
    for classeName in classes:
        f.write("-- Classe {} \n".format(classeName))
        for i in range(len(classes[classeName])):
            f.write("INSERT INTO {} VALUES({});\n".format(classeName, values(classes[classeName][i])))
        f.write("\n\n")
        
    f.close()
    return 0

def main():
    value = input("1. Povoar\n2. Add Artist Album\n Option: ")
    if value == '1':
        povoar()
    elif value == '2':
        idEntidadeMusical = int(input("idEntidadeMusical: "))
        idEstiloMusical = int(input("idEstiloMusical: "))
        url = input("url: ")
        addAlbum(idEntidadeMusical, idEstiloMusical, url)
    return 0

main()