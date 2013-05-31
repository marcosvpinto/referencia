package br.unigranrio.referencia.model;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadForm {

	private String nome;
	private CommonsMultipartFile arquivo;
	
	public UploadForm() {
		// TODO Auto-generated constructor stub
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
		this.nome= arquivo.getOriginalFilename();
	}

	public CommonsMultipartFile getArquivo() {
		return arquivo;
	}

	public void setArquivo(CommonsMultipartFile arquivo) {
		this.arquivo = arquivo;
	}
	
}
