(a)
  Open terminal and login into postgres database.

  $ \copy registers(student_id,course_id) from '<global_path>/tuples.csv' DELIMITER ',' CSV HEADER;

(b)
  Set csv file(containing 500000 tuples with header row) path at csvfile variable in generateSQL.py file.
  $ python generateSQL.py
  It generated the insertBatch.sql containing 500,000 tuples in single INSERT statement.

  Then login into postgresql database on terminal
  $ \i insertBatch.sql;


(c)
  Set csv file(containing 500000 tuples with header row) path to fileName,
  postgresql database url to DB_URL,
  and username to USER variable in jdbc.java file.

  $ ./script.sh <db_password>
