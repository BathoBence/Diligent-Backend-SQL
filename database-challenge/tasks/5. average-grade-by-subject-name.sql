INSERT INTO student_subject (student_id, subject_id, grade) VALUES 
(1, 1, 3),
(1, 2, 2),
(1, 3, 5),
(2, 1, 4),
(2, 2, 3),
(2, 3, 2),
(3, 1, 5),
(3, 2, 4),
(3, 3, 3);

SELECT s.name AS subject_name, AVG(ss.grade) AS average_grade
FROM subject s
JOIN student_subject ss ON s.id = ss.subject_id
WHERE s.name = 'Algebra'
GROUP BY s.name;