.mode	columns
.headers	on
.nullvalue	NULL
SELECT * FROM
(SELECT idArtista AS idPessoa, idPapel FROM Desempenha NATURAL JOIN Artista WHERE idPapel = 1)
NATURAL JOIN Pessoa
WHERE dataNascimento >= "1970-01-01" AND dataNascimento <= "1980-01-01"
ORDER BY dataNascimento;
