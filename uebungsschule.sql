/* list of persons with an apple smarthphone */
SELECT s.name, o.name FROM schueler s
    INNER JOIN orte o ON o.id = s.idOrte
    INNER JOIN smartphones sm ON sm.id = s.idSmartphones WHERE sm.marke='apple';
/*all teacher and their students with (Lehrername/Schülername) as title*/
SELECT l.name Lehrername, s.name Schülername FROM lehrer_hat_schueler ls
    INNER JOIN lehrer l ON ls.idLehrer=l.id
    INNER JOIN schueler s ON ls.idSchueler=s.id ORDER BY l.name ASC;
/* all students from Mrs Maier with name and hometown*/
SELECT s.name, o.name FROM lehrer_hat_schueler ls
    INNER JOIN lehrer l ON l.id = ls.idLehrer
    INNER JOIN schueler s ON s.id = ls.idSchueler
    INNER JOIN orte o on o.id = s.idOrte
    WHERE l.name = 'Maier';
/*students who live in Emmendingen with name hometown and smartphonemarke*/
SELECT s.name, o.name, sm.marke FROM schueler s
    INNER JOIN orte o ON o.id=s.idOrte
    INNER JOIN smartphones sm ON sm.id=s.idSmartphones
    WHERE o.name = 'Emmendingen';
/*students who live in Emmendingen and have Mr. Huber as their teacher with name hometown and smartphonemarke*/
SELECT s.name, o.name, l.name FROM schueler s
    INNER JOIN orte o ON o.id=s.idOrte
    INNER JOIN lehrer_hat_schueler ls ON ls.idSchueler = s.id
    INNER JOIN lehrer l ON l.id = ls.idLehrer
    WHERE o.name = 'Emmendingen' AND l.name = 'Huber';



