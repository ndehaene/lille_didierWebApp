package com.atos.tp.core;
//javaBean de données
public class Produit /* extends Object */{
	private Long id;
	private String label;
	private Double prix;
	//+constructeur(s)
	public Produit() {
		super();
	}
	public Produit(Long id, String label, Double prix) {
		super();
		this.id = id;
		this.label = label;
		this.prix = prix;
	}
	//+toString()
	@Override
	public String toString() {
		return "Produit [id=" + id + ", label=" + label + ", prix=" + prix + "]";
	}
	//+get/set
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Double getPrix() {
		return prix;
	}
	public void setPrix(Double prix) {
		this.prix = prix;
	}
	
}
