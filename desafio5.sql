SELECT 
  ca.songs_name AS 'cancao', 
  COUNT(re.songs_id) AS 'reproducoes'
FROM SpotifyClone.songs AS ca
INNER JOIN SpotifyClone.playback_history AS re
ON ca.songs_id = re.songs_id
GROUP BY ca.songs_name
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;