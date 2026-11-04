INSERT INTO GestionEntreprise.dbo.Departement(Num_S, Label, Nom_du_manager)
VALUES
        (1, 'IT',        'Alice Johnson'),
        (2, 'HR',        'Bob Smith'),
        (3, 'Marketing', 'Clara Bennett');

INSERT INTO GestionEntreprise.dbo.Employe (Num_E, Nom, Position, Salaire, Department_Num_S)
VALUES
    (101, 'John Doe',      'Développeur',     60000.00, 1),
    (102, 'Jane Smith',    'Analyste',        55000.00, 2),
    (103, 'Mike Brown',    'Concepteur',      50000.00, 3),
    (104, 'Sarah Johnson', 'Data Scientist',  70000.00, 1),
    (105, 'Emma Wilson',   'HR Specialist',   52000.00, 2);

INSERT INTO GestionEntreprise.dbo.Projet(Num_P, Titre, Date_de_debut, Date_fin, Department_Num_S)
VALUES
    (201, 'Refonte du site web',       '2024-01-15', '2024-06-30', 1),
    (202, 'Onboarding des employés',   '2024-03-01', '2024-09-01', 2),
    (203, 'Market Research',           '2024-02-01', '2024-07-31', 3),
    (204, 'IT Infrastructure Setup',  '2024-04-01', '2024-12-31', 1);

INSERT INTO GestionEntreprise.dbo.Employe_Projet
    (Employe_Num_E, Projet_Num_P, [Role])
VALUES
    (101, 201, 'Développeur Frontend'),
    (104, 201, 'Développeur Backend'),
    (102, 202, 'Formateur'),
    (105, 202, 'Coordinateur'),
    (103, 203, 'Responsable de la recherche'),
    (101, 204, 'Spécialiste réseau');

SELECT * FROM GestionEntreprise.dbo.Employe_Projet;

UPDATE GestionEntreprise.dbo.Employe_Projet
SET Role = 'Full Stack Developer'
WHERE Projet_Num_P = 201; 

DELETE FROM GestionEntreprise.dbo.Employe_Projet
WHERE Employe_Num_E = 103;

DELETE FROM GestionEntreprise.dbo.Employe
WHERE Num_E = 103;
