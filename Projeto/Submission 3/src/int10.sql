.mode	columns
.headers	on
.nullvalue	NULL

-- numero de musicas de cada banda
Select nomeArtistico as EntidadeMusical, count(nome) as number
From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
group by entidadeMusical

Select *
From
(
  Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
  From UtilizadorSessao natural join tempoOuvido
  Group by idUtilizador,idMusica
)
natural join Compoe




Select *, count(idMusica) as nrMusicas
From
(
    Select idMusica,idAlbum,duracao,idUtilizador,tOuvido,username,idEntidadeMusical,nomeArtistico
    From Musica natural join
    (
        Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
        From UtilizadorSessao natural join tempoOuvido
        Group by idUtilizador,idMusica
    )
    natural join Utilizador join
    album using (idAlbum)
    natural join compoe natural join entidadeMusical
    where tOuvido >= duracao
)
group by idUtilizador,idAlbum


Select username,nomeArtistico
From
(
  Select *, count(idMusica) as number
  From
  (
      Select idEntidadeMusical,idUtilizador,idMusica,username,nomeArtistico
      From Musica natural join
      (
          Select idUtilizador,idMusica,idSessao, max(duracao) as tOuvido
          From UtilizadorSessao natural join tempoOuvido
          Group by idUtilizador,idMusica
      )
      natural join Utilizador join
      album using (idAlbum)
      natural join compoe natural join entidadeMusical natural join segue
      where tOuvido >= duracao
  )
  group by idUtilizador,idEntidadeMusical
)
natural join
(
  Select nomeArtistico, count(nome) as number
  From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
  group by nomeArtistico
)
order by username
