-- Table: Individu
CREATE TABLE Individu (
    idNasabah INT (10)    PRIMARY KEY
                          REFERENCES Nasabah (id_Nasabah) ON DELETE RESTRICT
                                                          ON UPDATE CASCADE,
    nik       BIGINT (16),
    npwp      BIGINT (15) 
);


-- Table: Nasabah
CREATE TABLE Nasabah (
    idNasabah INT (10)      PRIMARY KEY,
    nama      VARCHAR (50),
    alamat    VARCHAR (100) 
);


-- Table: Perusahaan
CREATE TABLE Perusahaan (
    idNasabah INT (10)     PRIMARY KEY
                           REFERENCES Nasabah (id_Nasabah) ON DELETE RESTRICT
                                                           ON UPDATE CASCADE,
    nib       VARCHAR (13) 
);


-- Table: Rekening
CREATE TABLE Rekening (
    noRekening INT (10)       PRIMARY KEY,
    saldo      DOUBLE (16, 2),
    idNasabah  INT (10)       REFERENCES Nasabah (idNasabah) ON DELETE RESTRICT
                                                             ON UPDATE CASCADE
);
