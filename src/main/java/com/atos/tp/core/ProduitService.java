package com.atos.tp.core;

import java.util.List;

public interface ProduitService {
	public List<Produit> produitsSelonCategorie(String categorie);
	public List<String> getAllCategories();
	public void insertIntoCategory(Categorie cat);
}
