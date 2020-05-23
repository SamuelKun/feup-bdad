.mode	columns
.headers	on
.nullvalue	NULL

.read run.sql

.print \nListar o utilizador e os albuns que já ouviram na totalidade
.print \nForam adicionados tuplos a várias tabelas porque não tinhamos dados lol\n
Insert into album
Values (14,'short','https://fakeLink',2020);

Insert into Musica
Values(150,14,'Preço Certo',30);

Insert into Musica
Values(151,14,'Quim das remisturas',45);

Insert into entidadeMusical
Values (12,'Hugo Boss','https://eauDeParfum',2020,'Melhor artista de sempre');

Insert into compoe
Values (12,14);

Insert into tempoOuvido
Values (1,150,60);

Insert into tempoOuvido
Values (1,151,67);

Select username, nAlbum
From
(
    Select *, count(idMusica) as nrMusicas
    From
    (
        Select idMusica,idAlbum,album.nome as nALbum,duracao,idUtilizador,tOuvido,username
        From Musica natural join
        (
            Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
            From UtilizadorSessao natural join tempoOuvido
            Group by idUtilizador,idMusica
        )
        natural join Utilizador join
        album using (idAlbum)
        where tOuvido > duracao
    )
    group by idUtilizador,idAlbum
)
join
(
    Select nomeArtistico,album.nome as nAlbum, idAlbum , count(idMusica) as nrMusicas
    From Musica natural join Compoe  natural join entidadeMusical
    join Album using (idAlbum)
    group by nomeArtistico, idAlbum
)
using(idAlbum,nrMusicas,nAlbum)
