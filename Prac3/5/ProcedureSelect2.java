//STEP 1. Import required packages
import java.sql.*;

public class ProcedureSelect2 {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "org.postgresql.Driver";  
   static final String DB_URL = "jdbc:postgresql://127.0.0.1:5432/s2c130050131052";

   //  Database credentials
   static final String USER = "postgres";
   static final String PASS = "zalakuu";
   
   public static void main(String[] args) {
   Connection conn = null;
   CallableStatement cStmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName(JDBC_DRIVER);

      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
     
      //STEP 4: Execute a query
        System.out.println("Enrollno: 130050131052");
                  cStmt = conn.prepareCall("{call student()}");
              cStmt.execute();
              
              System.out.println("Selected Data is:");
              System.out.println();
              
              ResultSet rs = cStmt.getResultSet();
              System.out.print("ID:");
              System.out.print("Name:");
             
           
              while (rs.next())
              {
                System.out.println();
                System.out.print(rs.getInt(1)+"\t");
                System.out.print(rs.getString(2)+"\t");
                
                System.out.println();
              } 
           cStmt.close();
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
     
      try{
         if(cStmt!=null)
            conn.close();
             cStmt.close();
             
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
}//end main
}//end JDBCExample
