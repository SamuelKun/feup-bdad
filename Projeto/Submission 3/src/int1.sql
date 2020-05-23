.mode	columns
.headers	on
.nullvalue	NULL


Create view v1 as
Select idUtilizador as id1,idMusica,username as utilizador1
From
(
  Select *,sum(duracao) as tempoTotal
  From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
  group by idUtilizador,idMusica
)
Where (duracao > 300);

Create view v2 as
Select idUtilizador as id2,idMusica,username as utilizador2
From (Select *,sum(duracao) as tempoTotal
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
group by idUtilizador,idMusica)
Where (duracao > 300);



Select nome as Musica,utilizador1,utilizador2
From
(
  Select idUtilizador as id1,idMusica,username as utilizador1
  From (Select *,sum(duracao) as tempoTotal
  From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
  group by idUtilizador,idMusica)
  Where (duracao > 300)
)
join
(
  Select idUtilizador as id2,idMusica,username as utilizador2
  From (Select *,sum(duracao) as tempoTotal
  From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido
  group by idUtilizador,idMusica)
  Where (duracao > 300)
)
using (idMusica) join Musica using (idMusica)
where id1 < id2
order by nome;


Select nome as Musica,utilizador1,utilizador2
From
(
  Select *
  From v1
)
join
(
  Select *
  From v2
)
using (idMusica) join Musica using (idMusica)
where id1 < id2
order by nome;
