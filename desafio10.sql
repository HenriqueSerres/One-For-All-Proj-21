SELECT
   mu.music_title AS 'nome',
   COUNT(pl.music_id) AS 'reproducoes'
FROM
   Musics AS mu 
JOIN
   Plays AS pl
ON mu.music_id = pl.music_id
JOIN
   Users AS us
ON us.user_id = pl.user_id
WHERE
   plan_id IN(1, 4)
GROUP BY nome
ORDER BY nome;
