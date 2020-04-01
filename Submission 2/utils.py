import requests
from bs4 import BeautifulSoup

# idPessoa, Nome, DataNascimento, CodigoPostal, Morada
tablePessoa = [
        [1, "'Hugo'",               "'Julho'",    "'4490'", "'Praca dos Combatentes'"],
        [2, "'Samuel'",             "'Junho'",    "'4860'", "'Rua Doutor Franscico Botelho'"],
        [3, "'Paulinho'",           "'Agosto'",   "'4490'", "'Povoa - Portugal'"],
        [4, "'Thomas Yorke'",       "'Junho'",    "NULL",   "NULL"],
        [5, "'Johnny Greenwood'",   "'Junho'",    "NULL",   "NULL"],
        [6, "'Colin Greenwood'",    "'Junho'",    "NULL",   "NULL"],
        [7, "'Ed Obrien'",          "'Junho'",    "NULL",   "NULL"],
        [8, "'Philip Selway'",      "'Junho'",    "NULL",   "NULL"],
        [9, "'Billie Eilish'",      "'Junho'",    "NULL",   "NULL"],
        [10,"'Hayley Williams'",    "'Junho'",    "NULL",   "NULL"],
        [11,"'Taylor York'",        "'Junho'",    "NULL",   "NULL"],
        [12,"'Zac Farro'",          "'Junho'",    "NULL",   "NULL"],
        [13, "'Pedro Castro'",      "'Maio'",     "'4860'", "'Chacim'"],
        [14, "'Bernardo Vaz'",      "'Maio'" ,    "'4860'", "'Rua de Outeirinho'"],
        [15, "'Marta Sofia'",       "'Novembro'", "'3020'", "'Avenida Sá da Bandeira'"],
        [16, "'Ines Machado'",      "'Janeiro'", "'3020'", "'Rua das Azeiteiras'"],
        [17, "'Olena Shelvytska'",  "'Marco'",    "'79007'","'Lviv Snow Stree'"],]

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
        [1,  "'hugomguima@gmail.com'",  "'Huguima'",    "'password1'"],
        [2,  "'samue@hotmail.com'",     "'Samuh'",      "'password2'"],
        [3,  "'pjbom.best@gmail.com'",  "'pjbom'",      "'password3'"],
        [13, "'hugomguima@gmail.com'",  "'Huguima'",    "'password1'"],
        [14, "'teste1@hotmail.com'",    "'teste1'",     "'password2'"],
        [15, "'teste2@hotmail.com'",    "'teste2'",     "'password3'"],
        [16, "'teste3@hotmail.com'",    "'teste3'",     "'password3'"],
        [17, "'teste4@hotmail.com'",    "'teste4'",     "'password3'"],
        ]

#idPapel, Nome
tablePapel = [
        [1, "'Vocal'"],
        [2, "'Guitarra'"],
        [3, "'Piano'"],
        [4, "'Bateria'"]]

# idEntidadeMusical, nome, imagem, ano fundacao, descricao
tableEntidadeMusical = [
        [1, "'Radiohead'",      "'imagem'", "'1985'",   "'descricao'"],
        [2, "'Billie Eilish'",  "'imagem'", "NULL",     "'descricao'"],
        [3, "'Paramore'",       "'imagem'", "2004",     "'WE ARE PARAMORE!'"],
        ]

# id album, nome, capa, ano
tableAlbum = [
        [1, "'OK Computer'",                                "'capa'", "'1997'"],
        [2, "'When We All Fall Asleep, Where Do We Go?'",   "'capa'", "'2019'"],
        [3, "'Brand New Eyes'",                             "'capa'", "'2009'"],
        [4, "'All We Know Is Falling'",                     "'capa'", "'2005'"],
]

#idmusica, idalbum, nomeal
tableMusica = [
        [ 1, 1,"'Airbag'",                          "'270'"],
        [ 2, 1, "'Paranoid Android'",               "'340'"],
        [ 3, 1,"'Subterranean Homesick Alien'",     "'273'"],
        [ 4, 1,"'Exit Music'",                      "'267'"],
        [ 5, 1,"'Let Down'",                        "'300'"],
        [ 6, 1,"'Karma Police'",                    "'264'"],
        [ 7, 1,"'Filler Hapier'",                   "'118'"],
        [ 8, 1,"'Electioneering'",                  "'240'"],
        [ 9, 1,"'Climbing Up the walls'",           "'300'"],
        [10, 1,"'No Suprises'",                     "'220'"],
        [11, 1,"'Lucky'",                           "'241'"],
        [12, 1,"'The Tourist'",                     "'274'"],
        [13, 2, "'Bad Guy'",                        "'213'"],
        [14, 2, "'You Should See Me In a Crown'",   "'231'"],
        [15, 2, "'All The Good Girls Go To Hell'",  "'198'"],
        [16, 2, "'When the Party is Over'",         "'234'"],
        [17, 2, "'My Strange Addiction'",           "'190'"],
        [18, 2, "'Bury a Friend'",                  "'130'"],
        [19, 2, "'Ilomilo'",                        "'140'"],
        [20, 2, "'Listen Before I Go'",             "'165'"],
        [21, 2, "'I Love You'",                     "'254'"],
        [22, 3, "'Careful'",                        "'298'"],
        [23, 3, "'Ignorance'",                      "'234'"],
        [24, 3, "'Playing God'",                    "'324'"],
        [25, 3, "'Brick By Boring Brick'",          "'290'"],
        [26, 3, "'Turn It Off'",                    "'293'"],
        [27, 3, "'The Only Exception'",             "'354'"],
        [28, 3, "'Where The Lines Overlap'",        "'231'"],
        [29, 3, "'Misguided Ghosts'",               "'132'"],
        [30, 3, "'All I Wanted'",                   "'231'"],
        [31, 4, "'All We Know'",                    "'324'"],
        [32, 4, "'Pressure'",                       "'239'"],
        [33, 4, "'Emergency'",                      "'197'"],
        [34, 4, "'Brighter'",                       "'210'"],
        [35, 4, "'Here We Go Again'",               "'207'"],
        [36, 4, "'Never Let This Go'",              "'224'"],
        [37, 4, "'Conspiracy'",                     "'240'"],
        [38, 4, "'My Heart'",                       "'420'"],
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
        [1, 1, "'I Love 90'",           "'imagem'", "'2020'",   "'Best songs of 90's",              0],
        [2, 13, "'Indie'",              "'imagem'", "'2020'",   "'New Indie Trend'",                0],
        [3, 2, "'Me and my Friends'",   "'imagem'", "'2020'",   "'Put your favorite songs here!'",  1],
        ]

# idSessao, dia
tableSessao = [
        [ 1, "'16/03/2020'"],
        [ 2, "'16/03/2020'"],
        [ 3, "'16/03/2020'"],
        [ 4, "'17/03/2020'"],
        [ 5, "'17/03/2020'"],
        ]

# idSessao, idMusica, duracao
tableTempoOuvido = [
        [1,  1, "'270'"],
        [1,  2, "'340'"],
        [2 , 3, ""],
        [2, 20, ""],
        [2, 21, ""],
        [2, 22, ""],
        [2, 23, ""],
        [2, 24, ""],
        [2, 25, ""],
        [2, 26, ""],
        [2, 27, ""],
        [2, 28, ""],
        [2, 29, ""],
        [2, 30, ""],
        [2, 31, ""],
        [2, 32, ""],
        [2, 33, ""],
        [2, 34, ""],
        [2, 35, ""],
        [2, 36, ""],
        [2, 37, ""],
        [3, 1,  ""],
        [3, 2,  ""],
        [3, 3,  ""],
        [3, 4,  ""],
        [3, 5,  ""],
        [3, 6,  ""],
        [3, 7,  ""],
        [3, 8,  ""],
        [3, 9,  ""],
        [3, 10, ""],
        [3, 11, ""],
        [4, 13, ""],
        [4, 14, ""],
        [4, 15, ""],
        [4, 16, ""],
        [4, 17, ""],
        [4, 18, ""],
        [4, 19, ""],
        [4, 20, ""],
        [5, 13, ""],
        ]

# Papel que o artista desempenha
# idArtista, idPapel
tableDesempenha = [
        # 1 e 2 -> Radiohead
        [4, 1],
        [5, 1],
        [6, 1],
        [7, 2],
        [8, 2],
        # 1 e 2 -> Billie
        [9, 1],
        [9, 2],
        # 1, 2, 3 e 4 -> Paramore
        [10, 1],
        [10, 3],
        [11, 2],
        [12, 4],]

# Papeis que a banda possui
# idEntidadeMusical, idPapel
tablePossui = [
        # 1 e 2 -> Radiohead
        [1, 1],
        [1, 2],
        # 1 e 2 -> Billie no enquanto ela só canta
        [2, 1],
        # 1, 2, 3 e 4 -> Paramore
        [3, 1],
        [3, 2],
        [3, 3],
        [3, 4]]

# idArtista, idEntidadeMusical
tableMembro = [
        # Radiohead
        [4, 1], 
        [5, 1],
        [6, 1],
        [7, 1],
        [8, 1],
        #Billie
        [9, 2],
        #Paramore
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
        [2, 2],
        [2, 3],
        [2, 4],
        [3, 1],
        [14,1],
        [17,3],
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
        [1, 3],
        [3, 3],
        [13, 3],
        [15,3],
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
        [3, 1],
        [1, 3],
        [2, 1],
        [2, 3],
        [15, 2],
        [13, 15],
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