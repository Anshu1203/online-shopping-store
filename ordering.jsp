<%@ page import ="java.sql.*" %>
<%
    
    String name = request.getParameter("name");
    String author = request.getParameter("author");
    String price = request.getParameter("price");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe",
            "system", "deshpande");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into books(name, author, price) values ('" + name + "','" + author + "','" + price + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Order Successfull!"+"<a href='browsebooks.jsp'>Go to Books</a>");
    } else {
        response.sendRedirect("browsebooks.jsp");
    }
%>