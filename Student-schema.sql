USE mydb;
CREATE TABLE STUDENT (SNO INT(5),SNAME VARCHAR(15), MARKS INT(3));

DESCRIBE STUDENT;

INSERT INTO STUDENT VALUES(101,"navya",70);
INSERT INTO STUDENT(SNAME,SNO,MARKS)VALUES("rAM",102,80);
INSERT INTO STUDENT VALUES(103,"navya",NULL);
SELECT * FROM STUDENT;

SELECT * FROM STUDENT WHERE MARKS IS NULL;

/**** ALTER*/
ALTER TABLE STUDENT ADD(GRADE VARCHAR(2));
DESCRIBE STUDENT;
ALTER TABLE STUDENT DROP column GRADE;
ALTER TABLE STUDENT MODIFY COLUMN SNAME VARCHAR(20);
ALTER TABLE STUDENT RENAME COLUMN SNAME TO NAME;
SET AUTOCOMMIT=0;
/********DELETE*******/
SET SQL_SAFE_UPDATES=0;
DELETE FROM STUDENT;
SELECT * FROM STUDENT;
ROLLBACK;

/***********TRUNCATE*****/
INSERT INTO STUDENT VALUES(105,"VED",50);
COMMIT;
truncate table STUDENT;

/********DROP*******/
DROP TABLE STUDENT;

/****RENAME TABLE*****/
RENAME TABLE STUDENT TO CUSTOMER;