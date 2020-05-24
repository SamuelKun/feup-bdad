.mode	columns
.headers	on
.nullvalue	NULL


-- Número de Músicas que já começou a aouvir
Drop View if exists MusicasOuvidas;
Create View MusicasOuvidas As
Select idUtilizador, count(distinct idMusica) as  nrMusicas
From UtilizadorSessao natural join tempoOuvido
Group by idUtilizador;

-- Número de Albuns dos quais já se ouviu uma música
Drop View if exists AlbunsOuvidos;
Create View AlbunsOuvidos As
Select idUtilizador,count(distinct idAlbum) as nrAlbuns
From UtilizadorSessao natural join tempoOuvido  join Musica using(idMusica)
Group by idUtilizador;


-- Número de Entidades Musicais de que já ouviu uma música
Drop View if exists EMOuvidas;
Create View EMOuvidas As
Select idUtilizador,count(distinct idEntidadeMusical) as nrEntidadesMusicais
From UtilizadorSessao natural join tempoOuvido  join Musica using(idMusica) natural join Compoe 
Group by idUtilizador;

-- Tempo total ouvido de música, em segundos
Drop View if exists MusicaTempoOuvido;
Create View MusicaTempoOuvido As
Select idUtilizador, sum(duracao) as tOuvido
From UtilizadorSessao natural join tempoOuvido
Group by idUtilizador;

-- Número de estilos músicais já ouvidos
Drop View if exists EstilosMusicaisOuvidos;
Create View EstilosMusicaisOuvidos As
Select idUtilizador, count(distinct idEstiloMusical) as nrEstilosMusicais
From UtilizadorSessao natural join tempoOuvido  join Musica using(idMusica) natural join musicaEstilo
group by idUtilizador;

-- Número de Músicas favoritadas
Drop View if exists Musicasfavoritadas;
Create View Musicasfavoritadas As
Select idUtilizador, count(distinct idMusica) as  nrMusicas
From favoritoMusica
Group by idUtilizador;


-- Número de Albuns seguidos
Drop View if exists Albunsfavoritados;
Create View Albunsfavoritados As
Select idUtilizador, count(distinct idAlbum) as nrAlbunsSeguidos
From favoritoAlbum
Group by idUtilizador;


-- Número de Entidades Musicais Seguidas
Drop View if exists EMfavoritadas;
Create View EMfavoritadas As
Select idUtilizador, count(distinct idEntidadeMusical) as nrEMseguidas
From segue
Group By idUtilizador;


-- Query a mostras as estatísticas
Drop view if exists stats;
Create view stats as
Select *
From
MusicasOuvidas natural join
AlbunsOuvidos natural join
EMOuvidas natural join
MusicaTempoOuvido natural left join
EstilosMusicaisOuvidos natural left join
Musicasfavoritadas natural left join
Albunsfavoritados natural left join
EMfavoritadas;


Select idUtilizador,
       nrMusicas,
       nrAlbuns,
       nrEntidadesMusicais,
       tOuvido,nrEstilosMusicais,
       coalesce(nrAlbunsSeguidos,0) as nrAlbunsSeguidos,
       coalesce(nrEMseguidas,0) as nrEMseguidas
From stats;












