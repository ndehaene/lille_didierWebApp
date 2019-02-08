<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>allCategories</title>
</head>
<body>
<%@ include file="myheader.jsp" %>
<table border="1">
   <tr><th>label</th></tr>
   
   <c:forEach items="${listeCat}" var="categoryName">
    <tr>
         <td>${categoryName}</td>
     </tr>
   </c:forEach>
</table>
<hr/>
<a href="ajoutCategorie.jsp">ajouter encore une autre categorie</a>
<%@ include file="myfooter.jsp" %>
</body>
</html>