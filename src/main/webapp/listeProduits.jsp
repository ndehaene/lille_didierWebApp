<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>listeProduits</title>
</head>
<body>
<%@ include file="myheader.jsp" %>
<table border="1">
   <tr><th>id</th><th>label</th><th>Prix</th></tr>
   <!-- items permet de préciser sur quoi on boucle , ici le nom logique listeProd 
        stocké par le servlet dans le scope request via .setAttribute() 
        var permet de préciser le nom de la variable qui permet d'accéder successivement
        à chaque élément de la liste
        -->
   <c:forEach items="${listeProd}" var="prod">
    <tr> <td>${prod.id}</td>
         <td>${prod.label}</td> <!-- prod.label pour accéder à la sous partie .label
                                     de l'objet prod (classe java Produit) -->
         <td>${prod.prix}</td>
     </tr>
   </c:forEach>
</table>
<hr/>
<a href="choixCategorie.jsp">choisir une autre categorie</a>
<%@ include file="myfooter.jsp" %>
</body>
</html>