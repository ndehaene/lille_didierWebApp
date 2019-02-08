package com.atos.tp.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProduitServiceSimu implements ProduitService {
	private Map<String,List<Produit>> mapCatListProd = 
			                 new HashMap<String,List<Produit>>();
	public ProduitServiceSimu() {
		List<Produit> listeOrdinateurs = new ArrayList<Produit>();
		listeOrdinateurs.add(new Produit(1L, "ordinateur1" , 868.78));
		listeOrdinateurs.add(new Produit(2L, "ordinateur2" , 567.78));
		mapCatListProd.put("ordinateur",listeOrdinateurs);
		List<Produit> listeImprimantes = new ArrayList<Produit>();
		listeImprimantes.add(new Produit(11L, "imprimante 1" , 200.78));
		listeImprimantes.add(new Produit(12L, "imprimante 2" , 150.78));
		mapCatListProd.put("imprimante",listeImprimantes);
	}
	@Override
	public List<Produit> produitsSelonCategorie(String categorie) {
		return mapCatListProd.get(categorie);
	}

	@Override
	public List<String> getAllCategories() {
		List<String> listeCat = new ArrayList<String>();
		listeCat.add("ordinateur");listeCat.add("imprimante");
		return listeCat;
	}
	@Override
	public void insertIntoCategory(Categorie cat) {
		//sera codé la semaine des 4 jeudis
		
	}

}
