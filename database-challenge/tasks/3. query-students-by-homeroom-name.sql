ALTER TABLE student
ADD COLUMN homeroom_id INT,
ADD CONSTRAINT fk_homeroom
    FOREIGN KEY (homeroom_id) 
    REFERENCES homeroom(id);

UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9A') WHERE name IN ('John', 'Adam');
UPDATE student SET homeroom_id = (SELECT id FROM homeroom WHERE name = '9B') WHERE name = 'Lucy';

SELECT student.name, student.email
FROM student
JOIN homeroom ON student.homeroom_id = homeroom.id
WHERE homeroom.name = '9A';
