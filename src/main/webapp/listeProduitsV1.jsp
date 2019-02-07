<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>listeProduits</title>
</head>
<body>
<%@ page import="java.util.List,com.atos.tp.core.Produit" %>
<%
List<Produit> listeProduits = (List<Produit>)
                   request.getAttribute("listeProd");
%>
<table border="1">
   <tr><th>id</th><th>label</th><th>prix</th></tr>
   <%for(Produit prod : listeProduits){ %>
    <tr><td><%=prod.getId()%></td>
         <td><%=prod.getLabel()%></td>
         <td><%=prod.getPrix()%></td>
     </tr>
   <%} %>
</table>
<hr/>
<a href="choixCategorie.jsp">choisir une autre categorie</a>
<%@ include file="myfooter.jsp" %>
</body>
</html>