# ../../datas/tuples.csv
csvfile = open("../../datas/tuples.csv");
sqlfile = open("insertBatch.sql","w");

sqlfile.write("INSERT INTO registers(student_id,course_id) VALUES ");

liness = csvfile.readlines()[1:];

lines = liness[0:len(liness)-1];

lastline = liness[len(liness)-1];

for line in lines:
    lin = line.split(",");
    sqlfile.write("('"+lin[0]+"','"+lin[1].strip('\n')+"'),");

lin = lastline.split(",");
sqlfile.write("('"+lin[0]+"','"+lin[1].strip('\n')+"')");

sqlfile.write(";");

sqlfile.close();
csvfile.close();
