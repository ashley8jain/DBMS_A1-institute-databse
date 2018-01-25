CREATE TABLE student (
  student_id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);
CREATE TABLE teacher (
  teacher_id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);
CREATE TABLE course (
  course_id serial PRIMARY KEY,
  name varchar(150) NOT NULL
);
CREATE TABLE section (
  section_number char(1),
  course_id int REFERENCES course,
  CONSTRAINT valid_section CHECK (section_number in ('A','B','C','D'))
);
CREATE TABLE registers (
  student_id int REFERENCES student ON DELETE CASCADE,
  course_id int REFERENCES course ON DELETE CASCADE,
  CONSTRAINT registers_pk PRIMARY KEY(student_id,course_id)
);
CREATE TABLE teaches (
  teacher_id int REFERENCES teacher ON DELETE CASCADE,
  course_id int REFERENCES course ON DELETE CASCADE,
  CONSTRAINT teaches_pk PRIMARY KEY(teacher_id,course_id)
);
