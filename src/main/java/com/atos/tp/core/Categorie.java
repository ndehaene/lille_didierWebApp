package com.atos.tp.core;

public class Categorie {
	private Long id;
	private String label;
	
	
	public Categorie(Long id, String label) {
		super();
		this.id = id;
		this.label = label;
	}
	
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	@Override
	public String toString() {
		return "Categorie [id=" + id + ", label=" + label + "]";
	}

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
	
	
}
