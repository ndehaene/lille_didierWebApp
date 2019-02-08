<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>page1</title>
</head>
<body>
<%@ include file="myheader.jsp" %>
    <%String nom = request.getParameter("nom"); 
    if(nom==null)
    	nom="";
    else {
    	session.setAttribute("nom",nom);
    }
    %>
	<form>
	   (nouveau) nom: <input name="nom" value="<%=nom%>"> <br/>
	   <input type="submit" value="enregistrer"> <br/>
	</form>
	nom : <%=nom%>
	<hr/>
	nom enregistré en session = <b><%=session.getAttribute("nom")%></b>  <br/>
	affichage direct (dans jsp) du nom enregistré en session = <b>${sessionScope.nom}</b> <br/>
	affichage direct (dans jsp) du nom enregistré en request ou session = <b>${nom}</b> <br/> 
	<hr/>
	<a href="page2.jsp" > page 2 (suite session)</a>
<%@ include file="myfooter.jsp" %>
</body>
</html>