CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.usuarios_musicas um
ON m.musica_id = um.musica_id
GROUP BY um.musica_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
