INSERT INTO student(name) VALUES ('Akshay Kumar');
INSERT INTO teacher(name) VALUES ('Anshul Kumar');
INSERT INTO course(name) VALUES ('Inro. to Electrical');
INSERT INTO section(section_number,course_id) VALUES ('A',1);
INSERT INTO registers(student_id,course_id) VALUES (1,1);
-- INSERT INTO registers(student_id,course_id) VALUES (1,1);
INSERT INTO teaches(teacher_id,course_id) VALUES (1,1);
DELETE FROM student WHERE student_id = 1;
