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

     <%
     //dans une page JSP les variables (ou objets) session et application
     //sont créés d'office ; il suffit de les utiliser
     //Dans une méthode doGet() d'un servlet 
     //il faut ecrire 
     //HttpSession session=request.getSession();
     //ServletContext application = this.getServletContext();
     Integer cptA = (Integer)application.getAttribute("cptA");
     if(cptA==null){ cptA = new Integer(1);
     }else{    	 cptA = new Integer(cptA+1);     }
     application.setAttribute("cptA",cptA);
     
     Integer cptU = (Integer)session.getAttribute("cptU");
     if(cptU==null){ cptU = new Integer(1);
     }else{  cptU = new Integer(cptU+1);   }
     session.setAttribute("cptU",cptU);
     %>

     compteur (en scope=application) = <%=cptA%>
     compteur (en scope=session utilisateur) = <%=cptU%>

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