<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
<style>
h2{color:bottlegreen;font:700 20pt arial}
h4 {color:brwon;font:700 11pt verdana}
td {font:10pt verdana}
a {font:10pt verdana;color:navy}

</style>
    <body bgcolor="yellow">
        <form method="post" action="ordering.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Select Item Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Category</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Brand</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>