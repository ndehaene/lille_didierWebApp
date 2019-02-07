package com.atos.tp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atos.tp.core.Produit;
import com.atos.tp.core.ProduitService;
import com.atos.tp.core.ProduitServiceSimu;

/**
 * Servlet implementation class MyMvcServlet
 */
@WebServlet("/MyMvcServlet")
public class MyMvcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyMvcServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//récupérer valeur saisie (ou sélectionnée):
		String categorie = request.getParameter("categorie");
		//on créer une instance de la classe ProduitServiceSimu
		//pour pouvoir appeler dessus la méthode produitsSelonCategorie()
		ProduitService produitService = new ProduitServiceSimu();
		                            // ProduitServiceSimu.getInstance(); //singleton
		                            // new ProduitServiceJdbc();
		//on appelle la méthode sur le service et on stocke le resultat dans une
		//variable/référence locale listeProduits.
		List<Produit> listeProduits = produitService.produitsSelonCategorie(categorie);
		String pageJsp=null;
		if(listeProduits!=null) {
			pageJsp="/listeProduits.jsp";
			//le servlet stocke dans partie "attribute" de l'objet request
			//une association entre le nom logique "listeProd" et les données préparées
			request.setAttribute("listeProd", listeProduits);
		}else {
			pageJsp="/choixCategorie.jsp";
			request.setAttribute("message", "categorie invalide");
		}
		//on construit l'objet de redirection vers la page jsp
		RequestDispatcher rd = 
				this.getServletContext().getRequestDispatcher(pageJsp);
		//le .forward() demande à la page jsp de finir le travail:
		// afficher les valeurs en html
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
