SELECT 
  us.user AS 'usuario',
  IF(MAX(pl.date_play) LIKE '2021%', 'Usuário ativo','Usuário inativo') 
  AS 'condicao_usuario'    
FROM 
  Users AS us
JOIN
  Plays AS pl
ON us.user_id = pl.user_id
GROUP BY us.user
ORDER BY us.user;