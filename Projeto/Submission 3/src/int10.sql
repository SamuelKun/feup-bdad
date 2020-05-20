.mode	columns
.headers	on
.nullvalue	NULL


Select idEntidadeMusical,idMusica
From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
Order by idMusica


SELECT * FROM
(SELECT idArtista AS idPessoa, idPapel
FROM Desempenha NATURAL JOIN Artista)
NATURAL JOIN Pessoa WHERE idPapel = 1 AND dataNascimento >= 1970-01-01 AND dataNascimento <= 1980-01-01;


SELECT idArtista AS idPessoa, idPapel
FROM Desempenha NATURAL JOIN Artista
Where idPapel = 1;

SELECT *
FROM
(
  SELECT idArtista AS idPessoa, idPapel
  FROM Desempenha NATURAL JOIN Artista
  Where idPapel = 1
)
natural join Pessoa
Where dataNascimento > 1970 and dataNascimento < 1980
