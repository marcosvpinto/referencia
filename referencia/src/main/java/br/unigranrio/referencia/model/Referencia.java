package br.unigranrio.referencia.model;


public class Referencia {

	private int id;
	private String titulo;
	private String isbn;
	private String dtPublicacao;
	/*
	 * Aqui deveria ser um List, mas pela falta de um converter para transportar a informação 
	 * do html para cá, deixamos como apenas 1 objeto, para não haver erro. 
	 */
	private Autor autores;
	
	public Referencia() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getDtPublicacao() {
		return dtPublicacao;
	}

	public void setDtPublicacao(String dtPublicacao) {
		this.dtPublicacao = dtPublicacao;
	}

	public Autor getAutores() {
		return autores;
	}

	public void setAutores(Autor autores) {
		this.autores = autores;
	}
	
}
