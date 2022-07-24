SELECT 
  mu.songs_name AS 'nome',
  COUNT(re.songs_id) AS 'reproducoes'
FROM SpotifyClone.songs AS mu
INNER JOIN SpotifyClone.playback_history AS re
INNER JOIN SpotifyClone.users AS us
ON re.songs_id = mu.songs_id
AND re.user_id = us.user_id
WHERE us.plan_id IN(1, 4)
GROUP BY mu.songs_id
ORDER BY mu.songs_name;