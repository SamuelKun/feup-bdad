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
### Hugo
- [x] pares de utilizadores que tenham ouvido pelo menos 60 minutos de musicas em conjunto
```sql
Select username,idMusica,tempoTotal
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 60)
ORDER by (idMusica);
```
- [x] listar utilizador e álbum, desde que o utilizador tenha ouvido uma musica desse álbum
```sql
Select username,nome, sum(duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido natural join album
group by username, idAlbum;
```
- [x] Listar o Tempo Total de Música ouvida por cada utilizador (em segundos)
```sql
Select username, sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
Group By idUtilizador;
```
### Queries das funções do Esquema Relacional que estabelecem uma relação

- **TempoOuvido (idMusica->Musica, idSessao->Sessao, duracao)**
- Tempo ouvido de cada Musica numa sesssão
```sql
Select *
From TempoOuvido natural join (Musica join Sessao);
```

- **Desempenha (idArtista->Artista, idPapel->Papel)**
- Papel Desempenhado por um artista  
```sql
Select nome, atividade
From Desempenha natural join Artista natural join Papel natural join Pessoa
Where idArtista = idPessoa;
```
- **Membro (idArtista->Artista, idEntidadeMusical->EntidadeMusical)**
```sql
Select nomeArtistico,nome
From Membro natural join Artista natural join EntidadeMusical natural join Pessoa
Where idArtista = idPessoa;
```
- **Possui (idPapel->Papel, idEntidadeMusical->EntidadeMusical)**
```sql
Select nomeArtistico, atividade
From Possui natural join Papel natural join entidadeMusical;
```
- **Compoe (idAlbum->Album, idEntidadeMusical->EntidadeMusical)**
- Entidades Musicais seguidas pelo utilizador
```sql
Select nomeArtistico,nome
From Compoe natural join Album natural join entidadeMusical;
```
- **Segue (idUtilizador->Utilizador, idEntidadeMusical->EntidadeMusical)**
- Entidades Musicais seguidas pelo utilizador
```sql
Select username,nomeArtistico
From Segue natural join utilizador natural join entidadeMusical;
```
- **FavoritoAlbum (idUtilizador->Utilizador, idAlbum->Album)**
- Albuns favoritos de cada utilizador
```sql
Select username, nome as albumFavorito
From FavoritoAlbum natural join album natural join utilizador;
```
- **FavoritoMusica (idUtilizador->Utilizador, idMusica->Musica, data)**
- Musicas favoritas de cada utilizador
```sql
Select username, nome as musicaFavorita
From FavoritoMusica natural join musica natural join utilizador;
```
- **FavoritoPlaylist (idUtilizador->Utilizador, idPlaylist->Playlist)**
- Playlist favoritas de cada utilizador
```sql
Select username, nome as PlaylistFavorita
From FavoritoPlaylist natural join playlist natural join utilizador;
```
- **Colabora (idUtilizador->Utilizador, idPlaylist->Playlist)**
- Colaboradores de PLaylists
```sql
Select username, nome as playlist
From Colabora natural join utilizador natural join playlist;
```
- **MusicaEstilo (idEstiloMusical->EstiloMusical, idMusica->Musica)**
- Estilos Musicais de cada Música (FALTA MELHORAR O SELECT N DÁ PARA DAR RENAME)
```sql
Select *
From MusicaEstilo natural join ( Select *
from EstiloMusical join musica);
```
- **UtilizadorSessao (idUtilizador->Utilizador, idSessao->Sessao)**
- Sessões de cada utilizador
```sql
Select username, idSessao, dataInicio
From UtilizadorSessao natural join utilizador natural join Sessao;
```
- **Pertence (idMusica->Musica, idPlaylist->Playlist)**
- Músicas Pertencentes a Determinadas PLaylists (Não dá natural join por parâmetro errado em comum)
```sql
Select PLaylist.nome as playlist, Musica.nome as musica
From Pertence natural join (Musica Join Playlist);
```
// NÃO CONSIGO FAZER (não quero só os Distinct)
- **Seguir (idUtilizador->Utilizador, idUtilizadorSeguido->Utilizador)**
- Seguidores de um utilizador
```sql
Select Distinct idUtilizador,idUtilizadorSeguido
From  Seguir natural join  (Select * FROM
  utilizador u1 join utilizador u2);
```

# Outras Cenas

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

```sql
SELECT idEntidadeMusical,idEstiloMusical, nome, count(nome) as occurences
FROM Compoe NATURAL JOIN
(
SELECT idEstiloMusical, idMusica, nome, idAlbum FROM MusicaEstilo NATURAL JOIN (SELECT * FROM EstiloMusical JOIN Musica)
)
Group by idEntidadeMusical,idEstiloMusical;

```

```sql
Select *
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
Where (duracao > 60)
ORDER by (idMusica)


Select *,sum(duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica


Select username,idMusica,tempoTotal
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 60)
ORDER by (idMusica);


Select *
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido natural join album


Select username,nome, sum(duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido natural join album
group by username, idAlbum

```
