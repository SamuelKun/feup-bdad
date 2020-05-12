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
Select *
From FavoritoMusica natural join Utilizador natural join Musica;
```
