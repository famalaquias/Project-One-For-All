SELECT
  us.user_name AS 'usuario', 
CASE 
	WHEN MAX(YEAR(hi.play_date)) = 2021
    THEN 'Usuário ativo'
	ELSE 'Usuário inativo'
END AS 'condicao_usuario'
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.playback_history AS hi
ON us.user_id = hi.user_id
GROUP BY us.user_name
ORDER BY us.user_name;