DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id TINYINT)
RETURNS TINYINT READS SQL DATA
BEGIN
DECLARE qtdade_musicas INT;
SELECT COUNT(*) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuarios_musicas
WHERE usuario_id = id
INTO qtdade_musicas;
RETURN qtdade_musicas;
END $$

DELIMITER ;
