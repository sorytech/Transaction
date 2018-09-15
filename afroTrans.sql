/***********creation des différentes tables de la BD ***********/
CREATE TABLE SOCIETE   
(  
    IdSociete char(10) NOT NULL PRIMARY KEY,   
    NomSociete varchar(50) NOT NULL,   
    Logo varchar(100)      
);

CREATE TABLE AGENCE   
(  
    IdAgence char(10) NOT NULL PRIMARY KEY,   
    NomAgence varchar(50) NOT NULL,   
    AdresseAgence varchar(100), 
    FOREIGN KEY (IdSociete) REFERENCES SOCIETE(IdSociete)      
);

CREATE TABLE RESPONSABLE   
(  
    IdResponsable char(10) NOT NULL PRIMARY KEY,   
    NomResponsable varchar(50) NOT NULL,   
    PrenomResponsable varchar(100), 
    TelResponsable varchar(50),   
    EmailResponsable varchar(50), 
    FOREIGN KEY (IdAgence) REFERENCES AGENCE(IdAgence)      
);

CREATE TABLE EXPEDITEUR   
(  
    IdExpediteur char(10) NOT NULL PRIMARY KEY,   
    NomExpediteur varchar(50) NOT NULL,   
    PrenomExpediteur varchar(100), 
    TelExpediteur varchar(50),   
    EmailExpediteur varchar(50),      
);

CREATE TABLE BENEFICIERE  
(  
    IdBeneficiere char(10) NOT NULL PRIMARY KEY,   
    NomBeneficiere varchar(50) NOT NULL,   
    PrenomBeneficiere varchar(100), 
    TelBeneficiere varchar(50),   
    EmailBeneficiere varchar(50),      
);

CREATE TABLE DEPOT  
(  
    MontantDepot int, 
    DateDepot varchar(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (IdAgence) REFERENCES AGENCE(IdAgence),
    FOREIGN KEY (IdExpediteur) REFERENCES EXPEDITEUR(IdExpediteur) 
);

CREATE TABLE RETRAIT  
(  
    MontantRetrait int, 
    DateRetrait varchar(50) NOT NULL PRIMARY KEY,
    FOREIGN KEY (IdAgence) REFERENCES AGENCE(IdAgence),
    FOREIGN KEY (IdBeneficiere) REFERENCES BENEFICIERE(IdBeneficiere)    
);

