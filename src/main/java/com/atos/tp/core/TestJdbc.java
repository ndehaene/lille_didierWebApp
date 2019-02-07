package com.atos.tp.core;

public class TestJdbc {

	public static void main(String[] args) {
		ProduitService produitService = new ProduitServiceJdbc();
		System.out.println("listeCategories=" + produitService.getAllCategories());
		System.out.println("produits de la categorie ordinateur :" + produitService.produitsSelonCategorie("ordinateur"));

	}

}
