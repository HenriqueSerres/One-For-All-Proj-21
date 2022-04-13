SELECT 
  mu.music_title AS 'cancao',
  COUNT(pl.music_id) AS 'reproducoes'
FROM 
  Musics AS mu
JOIN
  Plays AS pl
ON mu.music_id = pl.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;