<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<meta charset="ISO-8859-1">
<title>choixCategorie</title>
</head>
<body>
     <%@ include file="myheader.jsp" %>
     ${message} <!-- dollar accolade nomLogiqueDelaChosePreparareeParServlet -->
    <hr/>
    <form method="get" action="./MyMvcServlet">
       <input type="hidden" name="task" value="rechercherProduits" />
       categorie: <input type="text" name="categorie" >(ex: ordinateur ou imprimante)<br/>
       <input type="submit" value="rechercher produits" />
    </form>
 <%@ include file="myfooter.jsp" %>
</body>
</html>