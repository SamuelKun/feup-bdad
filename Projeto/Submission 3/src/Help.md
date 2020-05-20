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
    asdasd
```
- Tempo ouvido de cada musica
```sql
asdsa
```
### Hugo
- [x] pares de utilizadores que tenham ouvido pelo menos 5 minutos de musicas em conjunto
```sql
Select username,idMusica,tempoTotal
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica
having tempoTotal > 300)
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
- [x] Todas as músicas de uma banda
```sql
Select nomeArtistico, nome
From Musica join (Compoe  natural join entidadeMusical) using (idAlbum)
Order by idMusica;
```
- [x] Utilizadores que se seuguem reciprocamente
```sql
Select idUtilizador,idUtilizadorSeguido,username1,username2
From (
    Select s1.idUtilizador, s1.idUtilizadorSeguido
    From seguir s1, seguir s2
    Where s1.idUtilizador = s2.idUtilizadorSeguido and s1.idUtilizadorSeguido = s2.idUtilizador
) natural join (
    Select u1.idUtilizador as name1, u2.idUtilizador as name2, u1.username as username1,u2.username as username2
    From utilizador u1 join utilizador u2
)
Where name1 = idutilizador and name2 = idUtilizadorSeguido;
```
- [x] Tentativa numero 2 utilizando exists
```sql
Select idUtilizador,idUtilizadorSeguido,username1,username2
From (
    Select s1.idUtilizador, s1.idUtilizadorSeguido
    From seguir s1
) natural join (
    Select u1.idUtilizador as name1, u2.idUtilizador as name2, u1.username as username1,u2.username as username2
    From utilizador u1 join utilizador u2
)
Where name1 = idutilizador and name2 = idUtilizadorSeguido and exists(
    select * from seguir s2 where name1 = s2.idUtilizadorSeguido and name2 = s2.idUtilizador
);
```

### Triggers


- [x] No TempoOuvido, se adicionarmos um tempo ouvido a uma musica de uma sessão que já tenho sido ouvida, incrementa o tempo em vez de adicionar um novo tuplo
```sql
Drop trigger T1;
Create Trigger T1
before insert on TempoOuvido  
when exists (select * from TempoOuvido where (idSessao = new.idSessao and idMusica = new.idMusica))
Begin
  Update TempoOuvido
  set duracao = duracao + new.duracao
  where new.idSessao = idSessao and new.idMusica = idMusica;
  select raise(ignore);
End;
```

- [x] Não deixar adicionar artista favorito se não tiver nenhuma música dele nas músicas favoritas
```sql
Drop trigger T2;
Create Trigger T2
before insert on Segue
when not exists (
  Select *
  From FavoritoMusica natural join Compoe natural join musica
  Where idUtilizador =  new.idutilizador and  idEntidadeMusical = new.idEntidadeMusical
)
Begin
  select raise(abort,"Can't Follow a band if you don't like any of their songs");
End;
```

- [x] Na criação de uma EntidadeMusical, não permitir a adição de uma nova com o mesmo nomeArtistico;
```sql
Drop trigger T3;
Create Trigger T3
before insert on EntidadeMusical
when exists (select * from EntidadeMusical where nomeArtistico = new.nomeArtistico)
Begin
  select raise(ignore)
End;
```

- [x] Quando se apaga uma PLaylist, é necessário apagar todos os tuplos em Pertence que utilizassem essa playlist
```sql
Drop trigger T3;
Create Trigger T3
after delete on PLaylist
when exists (select * from Pertence where idPlaylist = old.idPlaylist)
Begin
  Delete from Pertence
  Where idPlaylist = old.idPlaylist;
End;
```

- [x] Verificar se um album foi criado depois da banda ser fundada
```sql
Drop trigger T3;
Create Trigger T3
after insert on Compoe
when exists (
  Select *
  From Compoe natural join Album natural join entidadeMusical
  where anoLancamento < DataFundacao)
Begin
  Select raise(abort,"Can't be the creator of  an album if the band was not formed on that date");
End;
```


Select username,nomeArtistico
From Segue natural join utilizador natural join entidadeMusical;

### Queries das funções do Esquema Relacional que estabelecem uma relação

- **TempoOuvido (idMusica->Musica, idSessao->Sessao, duracao)**
- Tempo ouvido de cada Musica numa sesssão
```sql
Select TempoOuvido.idSessao,musica.nome, TempoOuvido.duracao
From TempoOuvido join  (Musica natural join Sessao) using(idSessao,idMusica);
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

- **Seguir (idUtilizador->Utilizador, idUtilizadorSeguido->Utilizador)**
- Seguidores de um utilizador
```sql
Select *
From Seguir natural join (
    Select u1.idUtilizador as name1, u2.idUtilizador as name2, u1.username as username1,u2.username as username2
    From utilizador u1 join utilizador u2
)
Where name1 = idutilizador and name2 = idUtilizadorSeguido;

```

# Outras Cenas

- Álbum com maior numero de músicas
```sql
SELECT idAlbum, nome, capa, anoLancamento, max(nr) AS nr_musicas FROM (SELECT idAlbum, count(*) AS nr FROM Musica GROUP BY idAlbum) NATURAL JOIN Album;
```

- Top 10 Músicas mais favoritadas
```sql
SELECT  nome, count(*) AS NrFavoritada FROM FavoritoMusica NATURAL JOIN Musica GROUP BY idMusica ORDER BY NrFavoritada DESC LIMIT 10;
```

- Número de Estilos Musicais favoritados pelo Utilizador
```sql
SELECT email, username,count(Distinct idEstiloMusical) AS NrEstilosFavoritados FROM FavoritoMusica NATURAL JOIN Utilizador NATURAL JOIN MusicaEstilo GROUP BY idUtilizador;
```

```sql
SELECT idEntidadeMusical,idEstiloMusical, nome, count(nome) as occurences
- Estilo Musical mais comum de cada Entidade Musical - FALTA GARANTIR QUE O NOME QUE APARECE É O COM MAIS OCURRÊNCIAS
```
```sql
SELECT nomeArtistico As NomeArtistico, nome AS EstiloMusical FROM
EntidadeMusical NATURAL JOIN
SELECT idEntidadeMusical, nome, count(nome) as occurences
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
group by username, idAlbum;

```
- Estilo Musical predominante em cada EntidadeMusical
```sql
SELECT nomeArtistico As NomeArtistico, occurences, nome AS EstiloMusical FROM
EntidadeMusical NATURAL JOIN
(SELECT idEntidadeMusical, nome, count(nome) as occurences
FROM Compoe NATURAL JOIN
(
SELECT idEstiloMusical, idMusica, nome, idAlbum FROM MusicaEstilo NATURAL JOIN (SELECT * FROM EstiloMusical JOIN Musica)
)
GROUP BY idEntidadeMusical, idEstiloMusical)
GROUP BY idEntidadeMusical;
```

# Duvidas para a professora
- [ ] Queries
  - [ ] Queries existentes contam como várias ou apenas uma?
  - [ ] Estamos a usar operadores suficientes?
  - [ ] Os gatilhos devem ser inicializados em **run.sql**?
  - [ ] As verificações dos gatilhos podem dar `.read run.sql` para garantir que os dados não foram alterados de uma forma inadequada?

- [ ] Triggers
  - [ ] Os triggers que temos estão corretos?
  - [ ] É preciso usar select raise(rollback) ou select raise(abort) chega?



- [ ] Listar o utilizador e os albuns que já ouviram na totalidade.

```sql
Select *
from musica join album using (idAlbum)
Select *
From (Select *, sum(tempoOuvido.duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido join musica using(idMusica))
group by (idUtilizador,idMusica)


Select *, sum(tempoOuvido.duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido join musica using(idMusica)
group by (idUtilizador,idMusica)


Select idUtilizador,idMusica,idAlbum, sum(duracao)
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido natural join album
group by username, idAlbum
order by idUtilizador

Select *, sum(duracao) as TempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
Group By idUtilizador;

Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica
ORDER by (idUtilizador)

```

```sql
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

```
