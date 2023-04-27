<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<HTML>
       <HEAD>
       <TITLE>The View Of Database Table </TITLE>
       </HEAD>
       <BODY BGCOLOR="cyan">
       <H1>The View Of Database Table </H1>
       <%
              Connection con = DriverManager.getConnection("jdbc:mysql:10.12.124.82:3306/testdb1",
            "testuser", "root");
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from USER") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>ID</TH>
      <TH>Name</TH>
      <TH>City</TH>
      <TH>State</TH>
      <TH>Country</TH>
      <TH>Email</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
      </TR>
      <% } %>
     </TABLE>
     </BODY>
</HTML>
