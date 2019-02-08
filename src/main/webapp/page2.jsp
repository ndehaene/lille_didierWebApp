<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>page2</title>
</head>
<body>
<%@ include file="myheader.jsp" %>
    <%
    String nom = null;
    Object deconnexion = request.getParameter("deconnexion");
    if(deconnexion!=null){
    	session.invalidate();
    	//attention : juste apres .invalidate() , l'objet session est inutilisable
    }
    else{
       nom = (String) session.getAttribute("nom");
    }
    %>
	nom (enregistré sur page 1): <%=nom%>
	<hr/>
	<a href="page1.jsp" > revenir sur page 1 (pour changer le nom)</a>
	<hr/>
	<form >
	   <input type="submit" value="deconnexion" name="deconnexion"/>
	</form>
<%@ include file="myfooter.jsp" %>
</body>
</html>