CREATE VIEW perfil_artistas AS
SELECT ar.artista AS 'artista',
al.album AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.usuarios_artistas ua
ON ar.artista_id = ua.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
