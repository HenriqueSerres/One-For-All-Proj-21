SELECT 
  us.user AS 'usuario', 
  COUNT(pl.user_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(mu.time)/ 60, 2) AS 'total_minutos' 
FROM 
  Users AS us
JOIN
  Plays AS pl
ON us.user_id = pl.user_id
JOIN 
  Musics AS mu
ON mu.music_id = pl.music_id
GROUP BY us.user
ORDER BY us.user;