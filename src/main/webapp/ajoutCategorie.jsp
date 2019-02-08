<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>ajoutCategorie</title>
</head>
<body>
     <%@ include file="myheader.jsp" %>
    <hr/>
    <form method="get" action="./MyMvcServlet">
       <input type="hidden" name="task" value="ajouterCategorie" />
       nouvelle categorie: <input type="text" name="categorie" ><br/>
       <input type="submit" value="ajouter categorie" />
    </form>
 <%@ include file="myfooter.jsp" %>
</body>
</html>