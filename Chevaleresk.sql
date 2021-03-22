DROP TABLE IF EXISTS `Joueurs`;
CREATE TABLE IF NOT EXISTS `Joueurs` 
(
    `IdJoueur` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Alias` VARCHAR(45) NOT NULL,
    `Email` VARCHAR(128) NOT NULL,
    `Suite_Info` VARCHAR(45) NOT NULL,
    `Password` VARCHAR(61) NOT NULL,
    `AvatarGUID` VARCHAR(39) NOT NULL,
    `Admin` TINYINT(1) NOT NULL,

)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Joueurs` VALUES(1, 'admin', 'admin@gmail.com', "compte de l'administrateur", '$2y$10$kIGLpL37eViCrkmxXoexQuDAsjW9MPiJldms50VLJc9INqvJwMgvG', '{1BBE0560-7A1C-4540-AA2B-54C85D577F15}', 1);

DROP TABLE IF EXISTS `Inventaire`;
CREATE TABLE IF NOT EXISTS `Inventaire`
(
    `IdJoueur` INT NOT NULL,
    `IdItem` INT NOT NULL,
    `Quantite` INT NOT NULL,
     
    FOREIGN KEY (`IdJoueur`) REFERENCES `Joueurs`(`IdJoueur`),
    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`),
    PRIMARY KEY (`IdJoueur`, `IdItem`)
    
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `Items`;
CREATE TABLE IF NOT EXISTS `Items`
(
    `IdItem` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `NomItem` VARCHAR(45) NOT NULL,
    `PrixItem` DECIMAL NOT NULL,
    `QuantiteStock` VARCHAR(45) NOT NULL,
    `TypeItem` CHAR(1) NOT NULL

)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `Ressources`
CREATE TABLE IF NOT EXISTS `Ressources`
(
    `IdItem` INT NOT NULL,
    `Description` VARCHAR(45) NOT NULL,

    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `Armes`
CREATE TABLE IF NOT EXISTS `Armes`
(
    `IdItem` INT NOT NULL, 
    `Nom` VARCHAR(45) NOT NULL, 
    `Genre` VARCHAR(45) NOT NULL,
    `Efficacite` VARCHAR(45) NOT NULL,

    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `Potions`
CREATE TABLE IF NOT EXISTS `Potions`
(
    `IdItem` INT NOT NULL,
    `Effet` VARCHAR(30) NOT NULL,
    `Duree`INT NOT NULL,

    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `Armures`
CREATE TABLE IF NOT EXISTS `Armures`
(
    `IdItem` INT NOT NULL,
    `Poids` INT NOT NULL,
    `Matiere` VARCHAR(45) NOT NULL,
    `Tale` VARCHAR(45)  NOT NULL,

    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `ItemsCommentaires`
CREATE TABLE IF NOT EXISTS `ItemCommentaires`
(
    `IdJoueur` INT NOT NULL,
    `IdItem` INT NOT NULL,
    `NbEtoiles` INT NOT NULL,
    `LeCommentare` VARCHAR(45),
     
    FOREIGN KEY (`IdJoueur`) REFERENCES `Joueurs`(`IdJoueur`),
    FOREIGN KEY (`IdItem`) REFERENCES `Items`(`IdItem`),
    PRIMARY KEY (`IdJoueur`, `IdItem`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
