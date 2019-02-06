<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.DateFormat" %>

<% Date d = new Date(); 
   DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                  //SimpleDateFormat.getDateInstance();
   String sDate = df.format(d);
   %>
MYLOGO - date = <%=sDate%>
<hr/>