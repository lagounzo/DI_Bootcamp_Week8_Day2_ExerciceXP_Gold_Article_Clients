/*
	EXERCICEXP + CONTINUED"

	SELECT
	For the following questions, you have to fetch the first_names, last_names and birth_dates of the students.
*/

-- 1) Fetch the first four students. You have to order the four students alphabetically by last_name.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
ORDER BY students.last_name ASC
LIMIT 4

-- 2) Fetch the details of the youngest student.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
WHERE students.birth_date = (SELECT MAX(students.birth_date) FROM students)

-- 3) Fetch three students skipping the first two students.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
LIMIT 3 OFFSET 2

--**************************EXERCICE2 GOLD DAY2*****************************
-- DATABASE BOOTCAMP
--EXERCICE2_GOLD DAY2

--*Update
/*1. 'Lea Benichou' et 'Marc Benichou' sont jumeaux, ils doivent avoir les mêmes dates de naissance. 
Mettez à jour leurs dates de naissance au 02/11/1998.*/
SELECT * FROM students
UPDATE students
SET birth_date = '02/11/1998'
WHERE (first_name = 'Lea' AND last_name = 'Benichou' ) OR (first_name = 'Marc' AND last_name = 'Benichou')

-- 2. Changez le nom de famille de David de 'Grez' à 'Guez'.

UPDATE students
SET last_name = 'Guez'
WHERE first_name = 'David'


--**Delete
-- 1. Delete the student named ‘Lea Benichou’ from the table.
DELETE FROM students
WHERE first_name = 'Lea' AND last_name = 'Benichou' ;


--**Count
--1. Count how many students are in the table.

SELECT COUNT(*) FROM student

--2.Count how many students were born after 1/01/2000.

SELECT COUNT (*) FROM students
WHERE birth_date = '1/01/2000';

--***Insérer / Modifier

--1. Ajoutez une colonne à la table des étudiants appelée math_grade .
ALTER TABLE students ADD COLUMN math_grade FLOAT;
SELECT * FROM students

-- Ajoutez 80 à l'étudiant dont l'identifiant est 1

UPDATE students
SET math_grade = 80
WHERE id = 1;

-- Ajoutez 90 aux étudiants qui ont des identifiants de 2 ou 4.
UPDATE students
SET math_grade = 90
WHERE id = 2 or id =4 ;

-- Ajoutez 40 à l'élève dont l'identifiant est 6.
UPDATE students
SET math_grade = 40
WHERE id = 6 ;

-- Comptez combien d'élèves ont une note supérieure à 83

SELECT COUNT (*) FROM students
WHERE math_grade > 83 ;

/*Ajoutez un autre étudiant nommé "Omer Simpson" avec la même date_de_naissance que
celui déjà dans le tableau. Donnez-lui une note de 70.*/

INSERT INTO students (last_name,first_name, birth_date, math_grade)
VALUES ('Omer', 
		'Simpson',
		'2000-01-01',
		70);

-- ou
/*SELECT *  FROM students
INSERT INTO students (last_name,first_name, birth_date,math_grade)
	VALUES ('Omer','Simpson',
			(SELECT * 
			 FROM student 
			 WHERE last_name = 'Omer' AND first_name = 'Simpson'), 70);*/


/*Maintenant, dans le tableau, "Omer Simpson" devrait apparaître deux fois. C'est le même élève, bien 
qu'il ait reçu 2 notes différentes parce qu'il a repris l'examen de mathématiques.*/

-- Bonus : Comptez le nombre de notes de chaque élève.
/* Astuce : Vous devez afficher le prénom, le nom et le nombre de notes de chaque élève. Si vous avez suivi correctement 
les instructions ci-dessus, tous les élèves devraient avoir 1 note en mathématiques, sauf Omer Simpson qui en a 2.*/
-- Astuce : Utilisez un alias appelé total_grade pour récupérer les notes.
-- Astuce : Utilisez GROUP BY.

/* pour afficher*/
SELECT last_name, first_name ,COUNT (*) AS total_grade
FROM students
GROUP BY last_name, first_name ;

/*pour calculer somme de tous les students*/

SELECT SUM(math_grade) AS total_grade FROM students

--SOMME
--Trouver la somme de toutes les notes des élèves.

/*SELECT * FROM students 
DROP TABLE students
TRUNCATE TABLE students ;*/