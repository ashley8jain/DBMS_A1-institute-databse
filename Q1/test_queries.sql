INSERT INTO student(student_id,name) VALUES ('2014CS50280','Akshay Kumar');
INSERT INTO student(student_id,name) VALUES ('2015CS50281','Vinay Kumar');

INSERT INTO teacher(teacher_id,name) VALUES ('anshulk','Anshul Kumar');
INSERT INTO teacher(teacher_id,name) VALUES ('subhodhs','Subhodh Sharma');
INSERT INTO teacher(teacher_id,name) VALUES ('sak','S.Arun Kumar');

INSERT INTO course(course_id,name) VALUES ('EEL100','Inro. to Electrical');
INSERT INTO course(course_id,name) VALUES ('COL321','TOC');
INSERT INTO course(course_id,name) VALUES ('COL341','Discrete math');

INSERT INTO section(section_number,course_id) VALUES ('A','EEL100');
INSERT INTO section(section_number,course_id) VALUES ('B','EEL100');
INSERT INTO section(section_number,course_id) VALUES ('A','COL321');
INSERT INTO section(section_number,course_id) VALUES ('B','COL321');
INSERT INTO section(section_number,course_id) VALUES ('C','COL321');

INSERT INTO registers(student_id,course_id) VALUES ('2014CS50280','EEL100');
INSERT INTO registers(student_id,course_id) VALUES ('2014CS50280','COL321');
INSERT INTO registers(student_id,course_id) VALUES ('2014CS50280','COL341');
INSERT INTO registers(student_id,course_id) VALUES ('2015CS50281','EEL100');
INSERT INTO registers(student_id,course_id) VALUES ('2015CS50281','COL341');
-- INSERT INTO registers(student_id,course_id) VALUES (1,1);

INSERT INTO teaches(teacher_id,course_id) VALUES ('anshulk','EEL100');
INSERT INTO teaches(teacher_id,course_id) VALUES ('subhodhs','COL321');
INSERT INTO teaches(teacher_id,course_id) VALUES ('sak','EEL100');
INSERT INTO teaches(teacher_id,course_id) VALUES ('sak','COL341');

SELECT registers.student_id,registers.course_id,student.name FROM student,registers
WHERE registers.student_id = student.student_id ;

-- DELETE FROM student WHERE student_id = 1;
-- DELETE FROM registers WHERE student_id = 2 AND course_id = 1;
