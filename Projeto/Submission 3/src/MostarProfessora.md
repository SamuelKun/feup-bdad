# Ultima entrega

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

##### Estes Restantes triggers foram excluidos, porque só precisavamos de 3

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

- [x] Quando se apaga uma Playlist, é necessário apagar todos os tuplos em Pertence que utilizassem essa playlist
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

### Queries

### Hugo
- [x] pares de utilizadores que tenham ouvido pelo menos 5 minutos de musicas em conjunto
```sql
Select idUtilizador,idMusica,tempoTotal
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 300)
ORDER by (idMusica);
//
Select idUtilizador,idMusica
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 300)
ORDER by (idMusica);
//
```
```sql
Select *
From ( Select idMusica,idSessao, u1.idUtilizador as id1, u2.idUtilizador as id2, u1.username as nome1, u2.username as nome2, sum(duracao)
From UtilizadorSessao natural join Utilizador u1 join Utilizador u2 natural join Sessao natural join TempoOuvido
where nome1 < nome2
group by id1,id2,idMusica )
ORDER by (idMusica);
```

```sql
select u1.idUtilizador as id1, u2.idUtilizador as id2, u1.username as nome1, u2.username as nome2
From utilizador u1 join utilizador u2
Where id1 < id2
Order by id1;
```

```sql

Select idUtilizador,idMusica
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 300);
//
select u1.idUtilizador as id1, u2.idUtilizador as id2
From utilizador u1 join utilizador u2
Where id1 < id2 and id1 in (Select idUtilizador,idMusica
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 300));
//
//
Select idmusica,id1,id2
From(
  Select idUtilizador as id1,idMusica
  From (Select *,sum(duracao) as tempoTotal
  From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
  group by idUtilizador,idMusica)
  Where (duracao > 300))
    join 
  (Select idUtilizador as id2,idMusica
  From (Select *,sum(duracao) as tempoTotal
  From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
  group by idUtilizador,idMusica)
  Where (duracao > 300)) using (idMusica)
where id1 < id2
order by idMusica;
 

```


- MESMA QUERY USANDO HAVING
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

- [x] Seguidores recíprocos
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

### Paulinho

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

- Estilo Musical predominante em cada EntidadeMusical
```sql
SELECT nomeArtistico As NomeArtistico, max(occurences) as predominant, nome AS EstiloMusical
FROM EntidadeMusical NATURAL JOIN
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

- [ ] Triggers
  - [ ] Os triggers que temos estão corretos?
  - [ ] É preciso usar select raise(rollback) ou select raise(abort) chega?
  - [ ] Os gatilhos devem ser inicializados em **run.sql**?
  - [ ] As verificações dos gatilhos podem dar `.read run.sql` para garantir que os dados não foram alterados de uma forma inadequada?


 - Listar o utilizador e os albuns que já ouviram na totalidade.
 -
