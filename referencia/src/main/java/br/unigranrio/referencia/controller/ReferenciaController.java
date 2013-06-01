package br.unigranrio.referencia.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.unigranrio.referencia.model.Autor;
import br.unigranrio.referencia.model.Referencia;

@Controller
@RequestMapping("/referencia")
public class ReferenciaController {

	int id = 0;
	List<Referencia> referencias = new ArrayList<Referencia>();
	
	@RequestMapping("adiciona")
	public String adiciona(Referencia referencia){
		referencia.setId(id);
		referencias.add(referencia);
		id++;
		return "forward:lista";
	}
	
	@RequestMapping("novo")
	public ModelAndView novo(){
		List<Autor> autores = AutorController.autores;
		ModelAndView mv = new ModelAndView("referencia/adiciona");
		mv.addObject("autores", autores);
		return mv;
	}

	@RequestMapping("lista")
	public ModelAndView lista(){
		ModelAndView mv = new ModelAndView("referencia/lista");
		mv.addObject("referencias", referencias);
		return mv;
	}
	
	@RequestMapping("remove")
	public String remove(Referencia referencia){
		referencias.remove(referencia.getId());
		return "forward:lista";
	}
	
	@RequestMapping("visualiza")
	public String visualiza(int id, Model model){
		model.addAttribute("referencia", referencias.get(id));
		return "referencia/altera";
	}
	
	@RequestMapping("altera")
	public String altera(Referencia referencia){
		referencias.set(referencia.getId(), referencia);
		return "forward:lista";
	}
	
}
