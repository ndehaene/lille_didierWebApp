<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<title>tp2</title>
</head>
<%@ page import="java.util.Map,java.util.List,java.util.ArrayList,java.util.HashMap" %>
<%!
Map<String,List<String>> mapSaisonListElts = new HashMap<String,List<String>>();
public void jspInit(){
	List<String> listEltsHiver = new ArrayList<String>();
	listEltsHiver.add("neige"); listEltsHiver.add("froid");listEltsHiver.add("ski");
	mapSaisonListElts.put("hiver",listEltsHiver);
	List<String> listEltsPrintemps = new ArrayList<String>();
	listEltsPrintemps.add("fleur"); listEltsPrintemps.add("vert");
	mapSaisonListElts.put("printemps",listEltsPrintemps);
	List<String> listEltsEte = new ArrayList<String>();
	listEltsEte.add("soleil"); listEltsEte.add("plage");
	mapSaisonListElts.put("ete",listEltsEte);
	List<String> listEltsAutomne = new ArrayList<String>();
	listEltsAutomne.add("feuille morte"); listEltsAutomne.add("vendanges");
	mapSaisonListElts.put("automne",listEltsAutomne);
}
%>
<body>
   <%@ include file="myheader.jsp" %>
   <%
   String saison = request.getParameter("saison");
   List<String> listeElts = mapSaisonListElts.get(saison);
   %>
   <form>
      saison: <select name="saison" ><option>????</option>
         <option>hiver</option><option>printemps</option><option>ete</option><option>automne</option>
      </select> <br/>
      <input type="submit">
   </form>
   pour saison <%=saison%> , les choses en correspondances sont : <br/>
   <!-- <%=listeElts %> -->
   <ul>
     <% if(listeElts!=null)
    	 for(String elt : listeElts)
    	 {%>
      	<li><%=elt%></li>
      <% }%>
   </ul>
   <%@ include file="myfooter.jsp" %>
</body>
</html>