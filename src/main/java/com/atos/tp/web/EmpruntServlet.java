package com.atos.tp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpruntServlet
 */
@WebServlet("/EmpruntServlet") //ou bien config dans WEB-INF/web.xml
public class EmpruntServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpruntServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sMontant= request.getParameter("montant"); //montant ou C=capital emprunté
		Double montant = Double.parseDouble(sMontant);
		String sDuree= request.getParameter("duree"); //nb mois (duree ou n)
		Integer duree = Integer.parseInt(sDuree);
		String sTauxInteret= request.getParameter("tauxInteret");
		Double tauxInteret = Double.parseDouble(sTauxInteret);
		Double tauxMensuel = (tauxInteret / 12) / 100 ; //car en %
		Double mensualite = (montant * tauxMensuel ) / (1 - Math.pow(1+tauxMensuel, -duree));
		
		response.setContentType("text/html");         
		PrintWriter out = response.getWriter(); // encodage Unicode  cible (Html). 
		out.println("<html><body>");
		out.println("<p>montant: "+montant+"</p>");
		out.println("<p>duree: "+duree +"</p>");
		out.println("<p>tauxInteret: "+tauxInteret +"</p>");
		out.println("<p>mensualite=<b>"+mensualite+"</b></p>");
		out.println("</body></html>");
		//run as / maven install pour générer le fichier .war dans target
		//recopier ...WebApp.war de target vers c:/prog/tomcat.../webapps
		//démarrer le serveur tomcat via c:/prog/tomcat.../bin/startup.bat
		//url de test : http://localhost:8080/...WebApp
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
