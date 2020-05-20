.mode	columns
.headers	on
.nullvalue	NULL

Select username,nome as entidadeMusical, sum(duracao) as tempoOuvido
From UtilizadorSessao natural join Utilizador natural join Sessao natural join TempoOuvido natural join album
group by username, idAlbum;
