.mode	columns
.headers	on
.nullvalue	NULL

.read run.sql

.print \nListar o utilizador e os albuns que já ouviram na totalidade

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
        natural join Musica natural join Utilizador join
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