DROP TABLE IF EXISTS medical;
DROP TABLE IF EXISTS animale;
DROP TABLE IF EXISTS propietari;

CREATE TABLE propietari (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nume VARCHAR(100) NOT NULL,
    telefon VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
   
);

CREATE TABLE animale (
    id INT AUTO_INCREMENT PRIMARY KEY,
    propietar_id INT NOT NULL,
    nume_animal VARCHAR(50) NOT NULL,
    specie VARCHAR(50) NOT NULL,
    rasa VARCHAR(50),
    varsta INT,
    FOREIGN KEY (propietar_id) REFERENCES propietari(id) ON DELETE CASCADE
);

CREATE TABLE medical(
id INT AUTO_INCREMENT PRIMARY KEY,
animal_id INT NOT NULL,
tip VARCHAR(50) NOT NULL,
data_ev DATE NOT NULL,
diagnostic VARCHAR(200),
observatii TEXT,
FOREIGN TEXT (animal_id) REFERENCES animale(id) ON DELETE CASCADE

);