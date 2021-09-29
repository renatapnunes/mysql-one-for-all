CREATE VIEW cancoes_premium AS
SELECT m.musica AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.usuarios_musicas um
ON m.musica_id = um.musica_id
INNER JOIN SpotifyClone.usuarios u
ON um.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos p
ON u.plano_id = p.plano_id
WHERE p.plano IN ('familiar', 'universitário')
GROUP BY m.musica
ORDER BY `nome`;
