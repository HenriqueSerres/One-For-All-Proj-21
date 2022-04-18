SELECT
   mu.music_title AS 'nome_musica',
CASE
   WHEN mu.music_title LIKE '%Streets' THEN REPLACE(mu.music_title, 'Streets', 'Code Review')
   WHEN mu.music_title LIKE '%Her Own' THEN REPLACE(mu.music_title, 'Her Own', 'Trybe')
   WHEN mu.music_title LIKE '%Inner Fire' THEN REPLACE(mu.music_title, 'Inner Fire', 'Project')
   WHEN mu.music_title LIKE '%Silly' THEN REPLACE(mu.music_title, 'Silly', 'Nice')
   WHEN mu.music_title LIKE '%Circus' THEN REPLACE(mu.music_title, 'Circus', 'Pull Request')
END  AS 'novo_nome'
FROM
   Musics AS mu 
WHERE mu.music_title IN('Without My Streets', 'Dance With Her Own', 'Troubles Of My Inner Fire', "Let's Be Silly", 'Magic Circus')
ORDER BY mu.music_title;
