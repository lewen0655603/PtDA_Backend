<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%
String username = "Lisa";
String age = request.getParameter("age");
String role = request.getParameter("role");
String level = request.getParameter("level");
String diagnostic = request.getParameter("diagnostic");
String email = request.getParameter("email");
String password = request.getParameter("psw");

  try {

Class.forName("com.mysql.jdbc.Driver").newInstance(); 

String url="jdbc:mysql://localhost:3306/mydb";
String user="root";
String pword="root";

Connection conn = DriverManager.getConnection(url, user, pword);

out.println("opened");
Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into users(userName, userPassword, userEmail, informationType, diagnosisType, stageType, userRole)values('"+username+"','"+password+"','"+email+"','"+level+"','"+diagnostic+"','"+diagnostic+"','"+role+"')");
	out.println("data inserted");
  }
  catch(Exception e) {
    out.println(e.getMessage());
  }
%>
