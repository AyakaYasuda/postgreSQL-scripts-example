-- createdb -U postgres creaturesdb
-- psql -U postgres creaturesdb < creatures.sql

CREATE TABLE wizards(
    name character varying(50),
    power character varying(50)
);

CREATE TABLE elves(
    name character varying(50),
    speed real
);

CREATE TABLE hobbits(
    name character varying(50),
    parsonality character varying(50)
);

CREATE TABLE allies(
    wizard character varying(50),
    elf character varying(50)
);

CREATE TABLE guardians(
    elf character varying(50),
    hobbit character varying(50)
);

INSERT INTO wizards(name, power)
VALUES
('Gandalf', 'fireworks'),
('Sauron', 'rings'),
('Saruman', 'betrayal');

INSERT INTO elves(name, speed)
VALUES
('Legolas', 10),
('Arwen', 9),
('Elrond', 5);

INSERT INTO hobbits(name, parsonality)
VALUES
('Frodo', 'careful'),
('Sam', 'brave'),
('Bilbo', 'greedy');

INSERT INTO allies(wizard, elf)
VALUES
('Gandalf', 'Legolas'),
('Gandalf', 'Arwen'),
('Saruman', 'Elrond'),
('Saruman', 'Legolas');

INSERT INTO guardians(elf, hobbit)
VALUES
('Legolas', 'Frodo'),
('Arwen', 'Sam'),
('Elrond', 'Bilbo');


-- select

SELECT * FROM wizards;
SELECT name, power FROM wizards;
SELECT * FROM wizards, elves;

SELECT * FROM elves ORDER BY speed;
SELECT * FROM elves ORDER BY speed DESC;
SELECT * FROM elves ORDER BY speed ASC;

SELECT * FROM elves LIMIT 2;
SELECT * FROM elves WHERE speed > 9;


-- join

SELECT * FROM allies;
SELECT * FROM allies JOIN elves ON allies.elf = elves.name;
SELECT * FROM guardians JOIN hobbits ON guardians.hobbit = hobbits.name JOIN elves ON guardians.elf = elves.name;