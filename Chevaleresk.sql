DROP TABLE IF EXISTS `Joueurs`;
CREATE TABLE IF NOT EXISTS `Joueurs` 
(
    `IdJoueurs` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Alias` VARCHAR(45) NOT NULL,
    `Email` VARCHAR(128) NOT NULL,
    `Suite_Info` VARCHAR(45) NOT NULL,
    `Password` VARCHAR(61) NOT NULL,
    `AvatarGUID` VARCHAR(39) NOT NULL,
    `Admin` tinyint(1) NOT NULL,

)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Joueurs` VALUES(1, 'admin', 'admin@gmail.com', "compte de l'administrateur", '$2y$10$kIGLpL37eViCrkmxXoexQuDAsjW9MPiJldms50VLJc9INqvJwMgvG', '{1BBE0560-7A1C-4540-AA2B-54C85D577F15}', 1);

DROP TABLE IF EXISTS `Inventaire`;
CREATE TABLE IF NOT EXISTS `Inventaire`
(
    `IdJoueurs` INT NOT NULL,
    `IdItems` INT NOT NULL,
    `Quantite` INT NOT NULL,
     
    FOREIGN KEY (`IdJoueurs`)
)
