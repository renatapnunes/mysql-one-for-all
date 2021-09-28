CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario',
m.musica AS 'nome'
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.usuarios_musicas um
ON u.usuario_id = um.usuario_id
INNER JOIN SpotifyClone.musicas m
ON um.musica_id = m.musica_id
ORDER BY `usuario`, `nome`;
