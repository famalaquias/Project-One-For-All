SELECT 
  COUNT(ca.songs_id) AS 'cancoes', 
  COUNT(DISTINCT(ar.artist_id)) AS 'artistas',
  COUNT(DISTINCT(al.albums_id)) AS 'albuns'
FROM SpotifyClone.songs AS ca
INNER JOIN SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
ON ca.albums_id = al.albums_id
AND ar.artist_id = al.artist_id ;