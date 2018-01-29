INSERT INTO student(student_id,name) VALUES ('2111CS50280','Akshay Kumar');
INSERT INTO student(student_id,name) VALUES ('2333CS50281','Vinay Kumar');

INSERT INTO teacher(teacher_id,name) VALUES ('anshulk','Anshul Kumar');
INSERT INTO teacher(teacher_id,name) VALUES ('subhodhs','Subhodh Sharma');
INSERT INTO teacher(teacher_id,name) VALUES ('sak','S.Arun Kumar');

INSERT INTO course(course_id,name) VALUES ('ELL999','Inro. to Electrical');
INSERT INTO course(course_id,name) VALUES ('COL321','TOC');
INSERT INTO course(course_id,name) VALUES ('COL341','Discrete math');

INSERT INTO section(section_number,course_id) VALUES ('A','ELL999');
INSERT INTO section(section_number,course_id) VALUES ('B','ELL999');
INSERT INTO section(section_number,course_id) VALUES ('A','COL321');
INSERT INTO section(section_number,course_id) VALUES ('B','COL321');
INSERT INTO section(section_number,course_id) VALUES ('C','COL321');

INSERT INTO registers(student_id,course_id) VALUES ('2111CS50280','ELL999');
INSERT INTO registers(student_id,course_id) VALUES ('2111CS50280','COL321');
INSERT INTO registers(student_id,course_id) VALUES ('2111CS50280','COL341');
INSERT INTO registers(student_id,course_id) VALUES ('2333CS50281','ELL999');
INSERT INTO registers(student_id,course_id) VALUES ('2333CS50281','COL341');
INSERT INTO registers(student_id,course_id) VALUES ('2333CS50281','COL341');

INSERT INTO teaches(teacher_id,course_id) VALUES ('anshulk','ELL999');
INSERT INTO teaches(teacher_id,course_id) VALUES ('subhodhs','COL321');
INSERT INTO teaches(teacher_id,course_id) VALUES ('sak','ELL999');
INSERT INTO teaches(teacher_id,course_id) VALUES ('sak','COL341');

DELETE FROM student WHERE student_id = '2111CS50280';

ALTER TABLE section ADD sub_sec char(1);
ALTER TABLE section DROP COLUMN sub_sec;

UPDATE section SET section_number='C' WHERE section.course_id='EEL999' AND section.section_number='A';

SELECT registers.student_id,registers.course_id,student.name FROM student,registers
WHERE registers.student_id = student.student_id ;
