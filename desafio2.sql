SELECT 
  COUNT(DISTINCT mu.music_title) AS 'cancoes', 
  COUNT(DISTINCT ar.name) AS 'artistas',
  COUNT(DISTINCT al.album_title) AS 'albuns' 
FROM 
  Musics AS mu,
  Artists AS ar,
  Albums AS al;