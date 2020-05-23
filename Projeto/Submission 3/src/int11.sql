.mode	columns
.headers	on
.nullvalue	NULL

 - [x] Listar o utilizador e os albuns 
 que já ouviram na totalidade.

Select *
From Musica


Select *
From UtilizadorSessao natural join Sessao
natural join Utilizador natural join tempoOuvido


select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
From UtilizadorSessao natural join tempoOuvido
Group by idUtilizador,idMusica

Select *
From Musica natural join
(
    Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
    From UtilizadorSessao natural join tempoOuvido
    Group by idUtilizador,idMusica 
)
natural join Musica natural join Utilizador
where tOuvido > duracao
order by idUtilizador,idMusica


Select *, count(idMusica)
From(
    Select *
    From Musica natural join
    (
        Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
        From UtilizadorSessao natural join tempoOuvido
        Group by idUtilizador,idMusica 
    )
    natural join Musica natural join Utilizador
    where tOuvido > duracao
    order by idUtilizador,idMusica
)
group by idUtilizador,idAlbum

Select *, musica.idAlbum as id
From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
Order by idMusica;


Select nomeArtistico,album.nome as nAlbum, idAlbum , count(idMusica)
From (Musica natural join Compoe  natural join entidadeMusical)
join Album using (idAlbum)
group by nomeArtistico, idAlbum


Select username, idAlbum
From 
(
    Select *, count(idMusica) as nrMusicas
    From(
        Select *
        From Musica natural join
        (
            Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
            From UtilizadorSessao natural join tempoOuvido
            Group by idUtilizador,idMusica 
        )
        natural join Musica natural join Utilizador
        where tOuvido > duracao
        order by idUtilizador,idMusica
    )
    group by idUtilizador,idAlbum
)
join 
(
    Select nomeArtistico,album.nome as nAlbum, idAlbum , count(idMusica) as nrMusicas
    From (Musica natural join Compoe  natural join entidadeMusical)
    join Album using (idAlbum)
    group by nomeArtistico, idAlbum
)
using(idAlbum,nrMusicas)


Criação de dados para permitir a query:

insert into album
values (14,'short','https://fakeLink',2020);

insert into Musica
values(150,14,'Preço Certo',30);

insert into Musica
values(151,14,'Quim das remisturas',45);

insert into entidadeMusical
values (12,'Hugo Boss','https://eauDeParfum',2020,'Melhor artista de sempre');

insert into compoe
values (12,14);

insert into tempoOuvido
values (1,150,60);

insert into tempoOuvido
values (1,151,67);


