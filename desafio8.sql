DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.usuarios_musicas
WHERE OLD.usuario_id = usuario_id;
DELETE FROM SpotifyClone.usuarios_artistas
WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER ;
