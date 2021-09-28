CREATE VIEW top_3_artistas AS
SELECT a.artista AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.usuarios_artistas ua
ON a.artista_id = ua.artista_id
GROUP BY ua.artista_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
