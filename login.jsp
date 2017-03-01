<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe","system", "deshpande");
    //Connection con =DriverManager.getConnection("jdbc:oracle:thin:testuser/testpass@localhost");
    //Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","testuser","testpass");
   // Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","damini","damini");
   Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
   
   
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where uname='" + userid + "' and pass='" + pwd + "'");
    //out.println(rs.next());
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>