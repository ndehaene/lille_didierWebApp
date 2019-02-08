package com.atos.tp.core;

public class TestJdbc {

	public static void main(String[] args) {
		ProduitService produitService = new ProduitServiceJdbc();
		Categorie c = new Categorie(null,"nouvelle categorie");
		produitService.insertIntoCategory(c);
		System.out.println("id nouvelle categorie = " + c.getId());
		System.out.println("listeCategories=" + produitService.getAllCategories());
		System.out.println("produits de la categorie ordinateur :" + produitService.produitsSelonCategorie("ordinateur"));

	}

}
