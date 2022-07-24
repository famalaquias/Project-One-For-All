SELECT 
  ar.artist_name AS 'artista', 
  al.albums_name AS 'album',
  COUNT(se.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
INNER JOIN SpotifyClone.following_artists AS se
ON ar.artist_id = al.artist_id
AND ar.artist_id = se.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;