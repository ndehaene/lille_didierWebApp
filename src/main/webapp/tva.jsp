<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tva</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<%@ include file="myheader.jsp" %>
<%
Double tva=null; Double ttc=null;
Double ht=null; Double taux=null;
String sHt = request.getParameter("ht");
String sTaux = request.getParameter("taux");
if(sHt!=null && sTaux !=null){
	ht=Double.parseDouble(sHt);	taux=Double.parseDouble(sTaux);
	tva=ht*taux/100;	ttc=ht+tva;
}
%>
  <form method="GET"> <!-- sans action="" la page se rappelle elle meme -->
       ht : <input name="ht" value="<%=ht%>"/> <br/>
       taux : <input name="taux" value="<%=taux%>"/> <br/>
       <input type="submit" value="calculer tva et ttc" /> <br/>
  </form>
  <hr/>
  tva = <%=tva%> <br/>
  ttc = <%=ttc%> <br/>
<%@ include file="myfooter.jsp" %>
</body>
</html>