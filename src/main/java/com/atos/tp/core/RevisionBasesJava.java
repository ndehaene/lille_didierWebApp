package com.atos.tp.core;

import java.util.ArrayList;
import java.util.List;

public class RevisionBasesJava {

	public static void main(String[] args) {
		//créer une liste de produits (vide au debut)
		List<Produit> listeProduits = new ArrayList<Produit>();
		//ajouter 3 produits:
		Produit p1=new Produit(1L,"prod1", 56.7);
		listeProduits.add(p1);
		Produit p2=new Produit(2L,"prod2", 26.7);
		listeProduits.add(p2);
		listeProduits.add(new Produit(3L,"prod3", 16.7));
		//afficher les produits:
		System.out.println("avant promo:");
		for(Produit p : listeProduits) {
			System.out.println(p.toString());
		}
		//changer les prix:
		for(Produit p : listeProduits) {
			p.setPrix(p.getPrix()*0.95);
		}
		System.out.println("apres promo:");
		//ré-afficher les produits:
		for(Produit p : listeProduits) {
			System.out.println(p.toString());
		}
		//supprimer les produits dont le prix est inférieur à 30:
		int nbProdAvantSuppression=listeProduits.size();
		/* for(int i=0;i<nbProdAvantSuppression;i++) {
		   ne fonctionne pas bien car les suppressions des premiers éléments 
		   décalent les indices de ceux qui restent et changent la nouvelle taille de la liste
		 */
		for(int i=nbProdAvantSuppression-1; i>=0 ; i--) {
			Produit prod = listeProduits.get(i);
			if(prod.getPrix()<30) {
				listeProduits.remove(i);
			}
		}
		System.out.println("apres suppression des produits de prix < 30 :");
		//ré-afficher les produits:
		for(Produit p : listeProduits) {
			System.out.println(p.toString());
		}
	}

}
