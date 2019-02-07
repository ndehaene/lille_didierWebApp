package com.atos.tp.core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProduitServiceJdbc implements ProduitService {
	
	private Connection etablishConnection() {
		Connection cn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//Class.forName("com.mysql.cj.jdbc.Driver");//pour V8 de MySql
			String dbUrl="jdbc:mysql://localhost:3306/produitdb?serverTimezone=UTC";
			cn=DriverManager.getConnection(dbUrl, "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cn;
	}

	@Override
	public List<Produit> produitsSelonCategorie(String categorie) {
		List<Produit> listeProduits = new ArrayList<Produit>();
		Connection cn = etablishConnection();
		ResultSet rs = null;
		try {  PreparedStatement pst = cn.prepareStatement(
				"SELECT * FROM produit p INNER JOIN Categorie c ON p.cat = c.id "
				+ " WHERE c.label = ?");
			 pst.setString(1 /* numero du ? à remplacer */, categorie);
			 rs = pst.executeQuery();
			while(rs.next()) {
				Produit produit = new Produit();
				produit.setId(rs.getLong("id"));
				produit.setLabel(rs.getString("label"));
				produit.setPrix(rs.getDouble("prix"));
				listeProduits.add(produit);
			}
			rs.close();	pst.close();//fermetures dans l'ordre inverse des ouvertures
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeCn(cn);
		}
		return listeProduits;
	}

	@Override
	public List<String> getAllCategories() {
		List<String> listeCategories = new ArrayList<String>();
		Connection cn = etablishConnection();
		ResultSet rs = null;
		try {  Statement st = cn.createStatement();
			 rs = st.executeQuery("SELECT * FROM Categorie c");
			while(rs.next()) {
				listeCategories.add(rs.getString("label"));
			}
			rs.close();	st.close();//fermetures dans l'ordre inverse des ouvertures
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeCn(cn);
		}
		return listeCategories;
	}
	
	//fonction utilitaire/réutilisable de fermeture cachant le try/catch obligatoire
	public static void closeCn(Connection cn) {
			try {
				cn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

}
