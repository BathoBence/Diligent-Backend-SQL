CREATE TABLE subject (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO subject (name) VALUES 
('Algebra'),
('Biology'),
('World History');

CREATE TABLE student_subject (
    student_id INT,
    subject_id INT,
    grade DECIMAL(4, 0),
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);
