<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.DateFormat" %>
<div class="header">
<% Date d = new Date(); 
   DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                  //SimpleDateFormat.getDateInstance();
   String sDate = df.format(d);
   %>
<img src="images/Atos_logo.svg.png" width="200px" height="50px" /> - MYLOGO - date = <%=sDate%>
<hr/>
</div>
