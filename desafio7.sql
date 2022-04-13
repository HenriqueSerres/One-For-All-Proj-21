SELECT 
   ar.name AS 'artista',
   al.album_title AS 'album',
   COUNT(fo.user_id) AS 'seguidores'
FROM
   Artists AS ar
JOIN
   Albums AS al
ON ar.artist_id = al.artist_id
JOIN
   Following AS fo
ON fo.artist_id = ar.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
