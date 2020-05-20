.mode	columns
.headers	on
.nullvalue	NULL

Select nomeArtistico as EntidadeMusical, nome as Musica
From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
Order by idMusica;
