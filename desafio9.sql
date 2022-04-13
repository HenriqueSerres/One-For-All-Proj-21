SELECT
   COUNT(music_id) AS 'quantidade_musicas_no_historico'
FROM
   Plays 
WHERE
   user_id = 3;