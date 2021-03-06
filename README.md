# Programming a collaborative system

 AFROTRANS est outil collaboratif de gestion de transfert d'argent.

## Requirements Engineering

L'application AFROTRANS est un système qui permet à une entreprise de gerer ses opérations de dépôt et de retrait d'argent, la gestion de personnel, la gestion des paiements, la comptabilité ainsi que la GED (Gestion electronique des documents).

 - Expéditeur : Personne qui déposer de l'argent dans l'une des agence de l'entreprise.
 - Bénéficière : Personne qui effectue le retrait du montant déposé.
 
 ### Different services of the collaborative system

1. Dépôt : Cette opération consiste à enregistrer les informations de l'expéditeur (nom et prénom, numéro de téléphone, éventuellement son email), le montant de la transaction, les informations du bénéficière (nom et prénom, numéro de téléphone et éventuellement son email).

2. Retrait : Cette opération permet au permet au bénéficier de récupérer l'argent en présentant sa pièce d'identité et en donnant les informations concernant la trasaction à savoir la le montant de la transaction, les informations de l'expéditeur.

3. Gestion du personnel : ce service permet d'enregistrer les information de l'ensemble des employés, d'effetuer la gestion des présence sur le lieux de travail ( en cas d'abscence enregistrer les motifs de cette abscence avec pièce justificatif à l'appui).

4. Gestion des paiement Paiement : ce service permet d'effectuer le paiement des salaires des employés en fonction du nombre effectué.

5. Comptabilité : Ce dernier permet de calculer les dépenses courantes de l'entreprise, le montant total annuel des transaction ( dépôt, retrait), calculé le résultat de l'activité au cours de l'année pour ainsi determiner le chiffre d'affaire de l'entreprise.

6. GED : ce module permet de faire des traitement sur des documents online (ajout de fichier, modification, edition, suppression).

## Specification

Les différents module de ce système collaboratif:

- Service Dépôt
- Service Retrait
- Service Gestion de personnel
- Service Comptable
- Service Gestion electronique de document

## Design

L'architecture d'AFROTRANS est subdivisée en deux principales parties :

### Le Front-End

 Pour une première phase le front-end du système collaboratif sera implementé avec le **Framework Angular 6**. Le choix de cette technologie est motivé par le fait qu'il soit orienté composant donc les différents modules de l'application seront complètement indépendant. De ce fait il sera possible de les réutiliser dans un autre projet. C'est une technologie prometeuse à l'avenir mais également il nous permet d'avancer plus rapidement dans le codage des fonctionnalité. Pour avoir une belle mise forme avec une interface ergonomique ce framework sera couplé ave **Material Design** de Google.
 
### Le Back-End

Le Back-End du système collaboratif est une **WEB API**, un web service de type **REST** avec une base de données **SQL SERVER** couplé avec l'ORM **Entity FrameWork**. On utilise aussi le server **IIS** de windows pour le test.

- Visual studio 2017
- Entity Framework 6.2 
- IIS7

## Coding

## Testing

### Unitary tests

### Integration tests


