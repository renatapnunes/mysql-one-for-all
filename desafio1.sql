DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;	
USE SpotifyClone;

CREATE TABLE planos(
plano_id TINYINT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id TINYINT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id TINYINT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
artista_id TINYINT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios_artistas(
usuario_id TINYINT NOT NULL,
artista_id TINYINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
PRIMARY KEY (usuario_id, artista_id)
) ENGINE = InnoDB;

CREATE TABLE albuns(
album_id TINYINT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id TINYINT NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
musica_id TINYINT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(50),
album_id TINYINT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE usuarios_musicas(
usuario_id TINYINT NOT NULL,
musica_id TINYINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id),
PRIMARY KEY (usuario_id, musica_id)
) ENGINE = InnoDB;

INSERT INTO planos(plano, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artistas(artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO usuarios_artistas
VALUES
(1, 1),
(1, 3),
(1, 4), 
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO albuns (album, artista_id)	
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas (musica, album_id)
VALUES
("Soul For Us", 1),
("Reflections Of Magic", 1),
("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration Of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

INSERT INTO usuarios_musicas
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
