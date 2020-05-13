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
- Estilos Musicais de cada Música (FALTA ADICIONAR DADOS)
```sql
Select *
From MusicaEstilo natural join EstiloMusical natural join Musica;
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
// NÃO CONSIGO FAZER
- **Seguir (idUtilizador->Utilizador, idUtilizadorSeguido->Utilizador)**
- Seguidores de um utilizador
```sql
Select *
From (Seguir s1 natural join utilizador u1) natural join (Seguir s2 natural join utilizador u2);
```
- Álbum com maior numero de músicas
```sql
SELECT idAlbum, nome, capa, anoLancamento, max(nr) AS nr_musicas FROM (SELECT idAlbum, count(*) AS nr FROM Musica GROUP BY idAlbum) NATURAL JOIN Album;
```

- Top 10 Músicas mais favoritadas - FALTA MOSTRAR DADOS DAS MUSICAS
```sql
SELECT idMusica, count(*) AS nr FROM FavoritoMusica GROUP BY idMusica ORDER BY nr DESC LIMIT 10;
```
