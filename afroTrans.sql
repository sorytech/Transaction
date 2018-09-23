--############################## DROP TABLE IN DATABASE #####################################
DROP TABLE PERSONNE;
DROP TABLE RESPONSABLE;
DROP TABLE CLIENT;
DROP TABLE AGENCE;
DROP TABLE OPERATION;


--############################## CREAT TABLE IN DATABASE ####################################
--################################ CREATE TABLE PERSONNE ####################################

CREATE TABLE PERSONNE  
(  
    IdPersonne INT NOT NULL,   
    NomPersonne varchar(50) NOT NULL,   
    PrenomPersonne varchar(100), 
    TelPersonne varchar(50),   
    EmailPersonne varchar(50),
    CONSTRAINT PK_PERSONNE PRIMARY KEY(IdPersonne)    
);

--################################ CREATE TABLE RESPONSABLE #################################

CREATE TABLE RESPONSABLE   
(  
    IdResponsable INT NOT NULL,   
    AdresseResponsable varchar(50), 
    CONSTRAINT PK_RESPONSABLE PRIMARY KEY(IdResponsable),
    CONSTRAINT FK_RESPONSABLE FOREIGN KEY (IdResponsable) REFERENCES PERSONNE(IdPersonne)      
);

--################################ CREATE TABLE CLIENT ######################################

CREATE TABLE CLIENT   
(   
    IdClient INT NOT NULL,  
    CONSTRAINT PK_CLIENT PRIMARY KEY(IdClient),
    CONSTRAINT FK_CLIENT FOREIGN KEY(IdClient) REFERENCES PERSONNE(IdPersonne),
);

--################################ CREATE TABLE AGENCE ######################################

CREATE TABLE AGENCE   
(  
    IdAgence INT NOT NULL,   
    NomAgence varchar(50) NOT NULL,   
    AdresseAgence varchar(100),
    IdResponsable INT,
    CONSTRAINT PK_AGENCE PRIMARY KEY(IdAgence),
    CONSTRAINT FK_AGENCE FOREIGN KEY(IdResponsable) REFERENCES RESPONSABLE(IdResponsable)      
);

--################################ CREATE TABLE OPERATION ######################################

CREATE TABLE OPERATION  
(  
    IdExpediteur INT NOT NULL,  
    IdDestinataire INT NOT NULL,  
    DateOperation varchar(50) NOT NULL,
    Montant INT NOT NULL, 
    TypeOperation varchar(10) CHECK TypeOperation in ('DEPOT','RETRAIT'),
    IdAgence INT,
    CONSTRAINT PK_OPERATION PRIMARY KEY(IdExpediteur,IdDestinataire,DateOperation),
    CONSTRAINT FK_EXP_OPERATION FOREIGN KEY(IdExpediteur) REFERENCES PERSONNE(IdPersonne),
    CONSTRAINT FK_DEST_OPERATION FOREIGN KEY(IdDestinataire) REFERENCES PERSONNE(IdPersonne)
    CONSTRAINT FK_AGENCE_OPERATION FOREIGN KEY (IdAgence) REFERENCES AGENCE(IdAgence),
    
);

