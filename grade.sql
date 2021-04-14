CREATE TABLE course(
    course_number INT PRIMARY KEY,
    course_name VARCHAR(50),
    department_name VARCHAR(50),
    semester VARCHAR(50),
    year INT
);

INSERT INTO course VALUES(123, 'Computer Science 3', 'Computer Science', 'Spring', 2021);
INSERT INTO course VALUES(213, 'Database systems', 'Computer Science', 'Fall', 2021);
INSERT INTO course VALUES(321, 'Discrete Structures', 'Mathematics', 'Summer', 2021);
INSERT INTO course VALUES(312, 'Principles of Speech', 'Communication', 'Spring', 2020);
INSERT INTO course VALUES(231, 'Piano I', 'Music', 'Fall', 2022); 

SELECT * FROM course;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    student_firstname VARCHAR(50),
    student_lastname VARCHAR(50)
);

select * from student;


INSERT INTO student VALUES(456, 'Clement', 'Harding');
INSERT INTO student VALUES(546, 'Addison', 'Rae');
INSERT INTO student VALUES(564, 'Norris', 'Huerta');
INSERT INTO student VALUES(654, 'Manish', 'Basnet');
INSERT INTO student VALUES(645, 'Barbara', 'Morse');
INSERT INTO student VALUES(464, 'Efrat', 'Dor');

UPDATE student
set student_firstname = 'Addisonq'
where student_id = 546;

UPDATE student
set student_lastname = 'Harqding'
where student_id = 456;




CREATE TABLE assessment(
    assessment_id INT PRIMARY KEY,
    assessment_type VARCHAR(50)
);

INSERT INTO assessment VALUES(9, 'Homework');
INSERT INTO assessment VALUES(8, 'Participation');
INSERT INTO assessment VALUES(7, 'Tests');
INSERT INTO assessment VALUES(6, 'Projects');

select * from assessment;

CREATE TABLE grading_policy(
    course_number INT,
    assessment_id INT,
    assessment_weight INT,

    PRIMARY KEY(course_number, assessment_id),
    FOREIGN KEY(course_number) REFERENCES course(course_number) ON DELETE CASCADE,
    FOREIGN KEY(assessment_id) REFERENCES assessment(assessment_id) ON DELETE CASCADE 

);

INSERT INTO grading_policy VALUES(123, 8, 10);
INSERT INTO grading_policy VALUES(213, 8, 10);
INSERT INTO grading_policy VALUES(231, 8, 15);
INSERT INTO grading_policy VALUES(312, 8, 20);
INSERT INTO grading_policy VALUES(321, 8, 25);


INSERT INTO grading_policy VALUES(123, 6, 20);
INSERT INTO grading_policy VALUES(213, 6, 20);
INSERT INTO grading_policy VALUES(231, 6, 15);
INSERT INTO grading_policy VALUES(312, 6, 10);
INSERT INTO grading_policy VALUES(321, 6, 45);


INSERT INTO grading_policy VALUES(123, 7, 50);
INSERT INTO grading_policy VALUES(213, 7, 50);
INSERT INTO grading_policy VALUES(231, 7, 35);
INSERT INTO grading_policy VALUES(312, 7, 45);
INSERT INTO grading_policy VALUES(321, 7, 40);


INSERT INTO grading_policy VALUES(123, 9, 20);
INSERT INTO grading_policy VALUES(213, 9, 20);
INSERT INTO grading_policy VALUES(231, 9, 35);
INSERT INTO grading_policy VALUES(312, 9, 25);
INSERT INTO grading_policy VALUES(321, 9, 20);

SELECT * from grading_policy;

CREATE TABLE display_record(
    student_id INT,
    course_number INT,
    assessment_id INT,
    assessment_number INT,
    assessment_points INT DEFAULT 0,

    PRIMARY KEY(student_id, course_number, assessment_id, assessment_number),
    FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY(course_number) REFERENCES course(course_number) ON DELETE CASCADE,
    FOREIGN KEY(assessment_id) REFERENCES assessment(assessment_id) ON DELETE CASCADE
 );


SELECT * from student; 
SELECT * from course;
SELECT * from assessment;
SELECT * from grading_policy;
SELECT * from display_record;

TRUNCATE table display_record;


#CS3
#student1
INSERT INTO display_record VALUES(456, 123, 6, 1, 100);
INSERT INTO display_record VALUES(456, 123, 8, 1, 100);
INSERT INTO display_record VALUES(456, 123, 7, 1, 60);
INSERT INTO display_record VALUES(456, 123, 7, 2, 90);
INSERT INTO display_record VALUES(456, 123, 9, 1, 100);
INSERT INTO display_record VALUES(456, 123, 9, 2, 70);
INSERT INTO display_record VALUES(456, 123, 9, 3, 80);

#student2
INSERT INTO display_record VALUES(464, 123, 6, 1, 90);
INSERT INTO display_record VALUES(464, 123, 8, 1, 92);
INSERT INTO display_record VALUES(464, 123, 7, 1, 95);
INSERT INTO display_record VALUES(464, 123, 7, 2, 70);
INSERT INTO display_record VALUES(464, 123, 9, 1, 70);
INSERT INTO display_record VALUES(464, 123, 9, 2, 85);
INSERT INTO display_record VALUES(464, 123, 9, 3, 97);

#student3
INSERT INTO display_record VALUES(546, 123, 6, 1, 97);
INSERT INTO display_record VALUES(546, 123, 8, 1, 100);
INSERT INTO display_record VALUES(546, 123, 7, 1, 60);
INSERT INTO display_record VALUES(546, 123, 7, 2, 60);
INSERT INTO display_record VALUES(546, 123, 9, 1, 100);
INSERT INTO display_record VALUES(546, 123, 9, 2, 100);
INSERT INTO display_record VALUES(546, 123, 9, 3, 100);

#Piano

#student1
INSERT INTO display_record VALUES(456, 231, 6, 1, 100);
INSERT INTO display_record VALUES(456, 231, 8, 1, 100);
INSERT INTO display_record VALUES(456, 231, 7, 1, 100);
INSERT INTO display_record VALUES(456, 231, 7, 2, 100);
INSERT INTO display_record VALUES(456, 231, 9, 1, 100);
INSERT INTO display_record VALUES(456, 231, 9, 2, 100);

#student2
INSERT INTO display_record VALUES(564, 231, 6, 1, 100);
INSERT INTO display_record VALUES(564, 231, 8, 1, 50);
INSERT INTO display_record VALUES(564, 231, 7, 1, 100);
INSERT INTO display_record VALUES(564, 231, 7, 2, 67);
INSERT INTO display_record VALUES(564, 231, 9, 1, 81);
INSERT INTO display_record VALUES(564, 231, 9, 2, 90);

#student3
INSERT INTO display_record VALUES(645, 231, 6, 1, 100);
INSERT INTO display_record VALUES(645, 231, 8, 1, 50);
INSERT INTO display_record VALUES(645, 231, 7, 1, 100);
INSERT INTO display_record VALUES(645, 231, 7, 2, 67);
INSERT INTO display_record VALUES(645, 231, 9, 1, 81);
INSERT INTO display_record VALUES(645, 231, 9, 2, 90);

#Discrete Structures

#Student1
INSERT INTO display_record VALUES(464, 321, 6, 1, 89);
INSERT INTO display_record VALUES(464, 321, 6, 2, 99);
INSERT INTO display_record VALUES(464, 321, 8, 1, 75);
INSERT INTO display_record VALUES(464, 321, 7, 1, 95);
INSERT INTO display_record VALUES(464, 321, 7, 2, 89);
INSERT INTO display_record VALUES(464, 321, 7, 3, 100);
INSERT INTO display_record VALUES(464, 321, 9, 1, 100);
INSERT INTO display_record VALUES(464, 321, 9, 2, 90);

#Student2
INSERT INTO display_record VALUES(654, 321, 6, 1, 100);
INSERT INTO display_record VALUES(654, 321, 6, 2, 100);
INSERT INTO display_record VALUES(654, 321, 8, 1, 100);
INSERT INTO display_record VALUES(654, 321, 7, 1, 100);
INSERT INTO display_record VALUES(654, 321, 7, 2, 100);
INSERT INTO display_record VALUES(654, 321, 7, 3, 100);
INSERT INTO display_record VALUES(654, 321, 9, 1, 100);
INSERT INTO display_record VALUES(654, 321, 9, 2, 100);

#Student3
INSERT INTO display_record VALUES(564, 321, 6, 1, 60);
INSERT INTO display_record VALUES(564, 321, 6, 2, 60);
INSERT INTO display_record VALUES(564, 321, 8, 1, 60);
INSERT INTO display_record VALUES(564, 321, 7, 1, 60);
INSERT INTO display_record VALUES(564, 321, 7, 2, 60);
INSERT INTO display_record VALUES(564, 321, 7, 3, 60);
INSERT INTO display_record VALUES(564, 321, 9, 1, 60);
INSERT INTO display_record VALUES(564, 321, 9, 2, 60);

SELECT * from display_record;

#4
SELECT MAX(assessment_points) as max_points, MIN(assessment_points) as min_points, AVG(assessment_points) as average_points 
from display_record 
where course_number = 321 and assessment_id = 9 and assessment_number = 2; 


#5
SELECT student_firstname, student_lastname, student_id
from student
where student_id in (
    SELECT student_id 
    from display_record where course_number = 231
);

#6
SELECT display_record.student_id, student.student_firstname, student.student_lastname, course_number, assessment_id, assessment_number, assessment_points
from display_record
JOIN student
on student.student_id  = display_record.student_id
where course_number = 231;

#7
INSERT INTO display_record VALUES(564, 321, 6, 3, 96);
select * from grading_policy;

#8
UPDATE grading_policy
set assessment_weight = 20
where course_number = 123 and assessment_id = 6;

#9
UPDATE display_record
set assessment_points = assessment_points + 2
where assessment_points < 99 and course_number = 123 and assessment_id = 9 and assessment_number = 1;

select * from display_record where course_number = 123 and assessment_id = 9 and assessment_number = 1;

#10
UPDATE display_record
set assessment_points = assessment_points + 2
where assessment_points < 99 and course_number = 123 and assessment_id = 9 and assessment_number = 1 and student_id in(
    SELECT student_id from student 
    where student_lastname LIKE '%q%' or student_lastname LIKE '%Q%'
);

select * from display_record where course_number = 123 and assessment_id = 9 and assessment_number = 1;
select * from student;

UPDATE display_record
set assessment_points = 96
where student_id = 546 and course_number = 123 and assessment_id = 9 and assessment_number = 1;

UPDATE display_record
set assessment_points = 81
where student_id = 456 and course_number = 123 and assessment_id = 9 and assessment_number = 1;

#11

select * from grading_policy;
select * from display_record where course_number = 231 and student_id = 456;

SELECT SUM(average*assessment_weight/100) as final_grade_after_drop
	FROM (
	SELECT display_record.assessment_id, AVG(display_record.assessment_points) as average
	FROM display_record
	WHERE course_number = 231 AND student_id = 645 GROUP BY assessment_id) assignments
	INNER JOIN 
	(SELECT grading_policy.assessment_id, grading_policy.assessment_weight 
	FROM grading_policy 
	WHERE course_number = 231
	GROUP BY assessment_id, assessment_weight) weights
	
	ON assignments.assessment_id = weights.assessment_id;


#12

delete from display_record 
where assessment_points = (
    select MIN(assessment_points)
    from display_record
    where course_number = 123 and student_id = 456 and assessment_id = 9
);

SELECT SUM(average*assessment_weight/100) as final_grade
	FROM (
	SELECT display_record.assessment_id, AVG(display_record.assessment_points) as average
	FROM display_record
	WHERE course_number = 123 AND student_id = 456 GROUP BY assessment_id) assignments
	INNER JOIN 
	(SELECT grading_policy.assessment_id, grading_policy.assessment_weight 
	FROM grading_policy 
	WHERE course_number = 123
	GROUP BY assessment_id, assessment_weight) weights
	
	ON assignments.assessment_id = weights.assessment_id;

select * from student;
select * from course;
select * from assessment;
select * from grading_policy;
select * from display_record;

