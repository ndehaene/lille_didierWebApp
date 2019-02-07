<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>choixCategorie</title>
</head>
<body>
    <%
    String message = (String) request.getAttribute("message");
    if(message==null) message="";
    %>
    <%=message%>
    <hr/>
    <form method="get" action="./MyMvcServlet">
       categorie: <input type="text" name="categorie" ><br/>
       <input type="submit" value="rechercher produits" />
    </form>
 <%@ include file="myfooter.jsp" %>
</body>
</html>