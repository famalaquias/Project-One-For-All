SELECT 
  us.user_name AS 'usuario', 
  COUNT(mu.songs_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(mu.duration_seconds / 60.0), 2) AS 'total_minutos'
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.songs AS mu
INNER JOIN SpotifyClone.playback_history AS mi
ON us.user_id = mi.user_id
AND mu.songs_id = mi.songs_id
GROUP BY us.user_name
ORDER BY us.user_name;