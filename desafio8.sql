SELECT 
   ar.name AS 'artista',
   al.album_title AS 'album'
FROM
   Artists AS ar
JOIN
   Albums AS al
ON ar.artist_id = al.artist_id
IN(ar.name = "Walter Phoenix")
GROUP BY album, artista
ORDER BY album;
