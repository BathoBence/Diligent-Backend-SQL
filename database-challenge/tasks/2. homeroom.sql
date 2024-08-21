CREATE TABLE homeroom (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10) UNIQUE
);

INSERT INTO homeroom(name) VALUES ('9A');
INSERT INTO homeroom(name) VALUES ('9B');