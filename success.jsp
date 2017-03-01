<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>


<a href='logout.jsp'>Log out</a>
</br>

Welcome, <%=session.getAttribute("userid")%>


<%
    }
%>
<html>
<h4>Click Here to browse through available items : </h4>
<a href="browseitem.jsp">Item</a>
<a href="ord.jsp"> Order </a>
<a href="remove.jsp">Remove </a>

</html>