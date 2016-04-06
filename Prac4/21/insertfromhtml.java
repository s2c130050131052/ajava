import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class insertfromhtml extends HttpServlet{
  public void doGet(HttpServletRequest request, 
  HttpServletResponse response)throws 
  ServletException, IOException{  
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String url ="jdbc:postgresql://127.0.0.1:5432/s2c130050131052";
   int id = Integer.parseInt(request.getParameter("id"));  
   String name = request.getParameter("name");  
   String branch= request.getParameter("branch"); 
  Connection conn;
  try{
  Class.forName("org.postgresql.Driver");
  conn = DriverManager.getConnection(url,"postgres","1234");
   
  PreparedStatement pst = conn.prepareStatement("insert into student values(?,?,?)");
              pst.setInt(1,id);  
              pst.setString(2,name);
			 pst.setString(3,branch);
 
  int i = pst.executeUpdate();
  if(i!=0){
  out.println("The record has been inserted");
  }
  else{
  out.println("Sorry! Failure");
  }
  pst.close();
  }
  catch (Exception e){
  System.out.println(e);
  }
  }
}