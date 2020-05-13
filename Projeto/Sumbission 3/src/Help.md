- Obter Utilizadores e Sessões
```sql
Select *
From UtilizadorSessao natural join Utilizador natural join Sessao;
```
- Obter TempoOuvido pelos utilizadores
```sql
Select idUtilizador, sum(duracao) as TempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
Group By idUtilizador;
```

- Obter TempoOuvido pelos utilizadores (com username)
```sql
Select username, sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
Group By idUtilizador;
```
- Músicas favoritas de cada utilizador
```sql
Select username, nome
From FavoritoMusica natural join Utilizador natural join Musica;
```

- Desempenha
```sql

```
- Tempo ouvido de cada musica
```sql
Select
```

### Queries das funções do Esquema Relacional que estabelecem uma relação
- Albuns favoritos de cada utilizador
```sql
Select username, nome as albumFavorito
From FavoritoAlbum natural join album natural join utilizador;
```

- Musicas favoritas de cada utilizador
```sql
Select username, nome as musicaFavorita
From FavoritoMusica natural join musica natural join utilizador;
```

- PLaylist favoritas de cada utilizador
```sql
Select username, nome as PlaylistFavorita
From FavoritoPlaylist natural join playlist natural join utilizador;
```

- Colaboradores de PLaylists
```sql
Select username, nome as playlist
From Colabora natural join utilizador natural join playlist;
```
- Estilos Musicais de cada Música (FALTA ADICIONAR DADOS)
```sql
Select *
From MusicaEstilo natural join EstiloMusical natural join Musica;
```
- Sessões de cada utilizador
```sql
Select username, idSessao, dataInicio
From UtilizadorSessao natural join utilizador natural join Sessao;
```

- Músicas Pertencentes a Determinadas PLaylists (Não dá natural join por parâmetro errado em comum)
```sql
Select PLaylist.nome as playlist, Musica.nome as musica
From Pertence natural join (Musica Join Playlist);
```

- Seguidores de um utilizador
```sql
Select *
From (Seguir s1 natural join utilizador u1) natural join (Seguir s2 natural join utilizador u2);
```
- Álbum com maior numero de músicas
```sql
SELECT idAlbum, nome, capa, anoLancamento, max(nr) AS nr_musicas FROM (SELECT idAlbum, count(*) AS nr FROM Musica GROUP BY idAlbum) NATURAL JOIN Album;
```

- Top 10 Músicas mais favoritadas
```sql
SELECT idMusica, idAlbum, nome, duracao, count(*) AS NrFavoritada FROM FavoritoMusica NATURAL JOIN Musica GROUP BY idMusica ORDER BY NrFavoritada DESC LIMIT 10;
```

- Número de Estilos Musicais favoritados pelo Utilizador
```sql
SELECT idUtilizador, email, username, password, count(Distinct idEstiloMusical) AS NrEstilosFavoritados FROM FavoritoMusica NATURAL JOIN Utilizador NATURAL JOIN MusicaEstilo GROUP BY idUtilizador;
```