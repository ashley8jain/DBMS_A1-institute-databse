import java.io.*;
import java.sql.*;
import java.util.*;

public class jdbc {
  public static void main(String[] args) throws Exception {

    String DB_URL = "jdbc:postgresql://localhost:5432/assign1";

    String USER = "postgres";
    String PASS = args[0];
    Connection conn = null;
    try{
      //Register JDBC driver
      Class.forName("org.postgresql.Driver");

      //Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);

      //Create query statement
      System.out.println("Creating statement...");
      String query = "INSERT INTO registers(student_id,course_id) VALUES (?,?)";
      PreparedStatement ps = conn.prepareStatement(query);

      //Read csv file
      String fileName= "../../datas/tuples.csv";
      File file= new File(fileName);
      List<List<String>> tuples = new ArrayList<>();
      Scanner inputStream;

      inputStream = new Scanner(file);
      inputStream.next();
      while(inputStream.hasNext()){
          String tuple = inputStream.next();
          String[] values = tuple.split(",");
          // this adds the currently parsed line to the 2-dimensional string array
          tuples.add(Arrays.asList(values));
      }
      inputStream.close();
      // System.out.println("here: "+tuples.get(0).get(0));

      //Execute Batch Insert
      for(List<String> tuple: tuples){
        ps.setString(1, tuple.get(0));
      	ps.setString(2, tuple.get(1));
      	ps.addBatch();
      }

      //Execute a query
      ps.executeBatch();
      ps.close();

      conn.close();

    }
    catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
    }
    catch(Exception e){
      e.printStackTrace();
    }

    System.out.println("END!!");
  }
}
