<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
   // Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe", "system", "deshpande");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe",
            "system", "tiger");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into users(first_name, last_name, email, uname, pass) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>