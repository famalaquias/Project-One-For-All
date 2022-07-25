SELECT
  songs_name AS 'nome_musica',
CASE 
	WHEN songs_name LIKE '%Streets' THEN REPLACE(songs_name, 'Streets', 'Code Review')
	WHEN songs_name LIKE '%Her Own' THEN REPLACE(songs_name, 'Her Own', 'Trybe')
    WHEN songs_name LIKE '%Inner Fire' THEN REPLACE(songs_name, 'Inner Fire', 'Project')
    WHEN songs_name LIKE '%Silly' THEN REPLACE(songs_name, 'Silly', 'Nice')
    WHEN songs_name LIKE '%Circus' THEN REPLACE(songs_name, 'Circus', 'Pull Request')
END AS 'novo_nome'
FROM SpotifyClone.songs
WHERE songs_name LIKE '%Streets'
	OR songs_name LIKE '%Her Own'
    OR songs_name LIKE '%Inner Fire'
    OR songs_name LIKE '%Silly'
    OR songs_name LIKE '%Circus'
ORDER BY songs_name;