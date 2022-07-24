SELECT 
  COUNT(user_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.playback_history AS hi
WHERE hi.user_id = 3;