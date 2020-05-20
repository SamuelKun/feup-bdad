.mode	columns
.headers	on
.nullvalue	NULL

SELECT  nomeArtistico as entidadeMusical,nome as album,anoLancamento, max(nr) AS nr_musicas
FROM (SELECT idAlbum, count(*) AS nr FROM Musica GROUP BY idAlbum) NATURAL JOIN
Album natural join Compoe natural join entidadeMusical;
