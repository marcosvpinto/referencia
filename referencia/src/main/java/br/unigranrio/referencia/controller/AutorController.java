package br.unigranrio.referencia.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.unigranrio.referencia.model.Autor;

@Controller
@RequestMapping("/autor")
public class AutorController {

	int id = 0;
	static List<Autor> autores = new ArrayList<Autor>();
	
	@RequestMapping("adiciona")
	public String adiciona(Autor autor){
		autor.setId(id);
		autores.add(autor);
		id++;
		return "forward:lista";
	}
	
	@RequestMapping("novo")
	public String novo(){
		return "autor/adiciona";
	}

	@RequestMapping("lista")
	public ModelAndView lista(){
		ModelAndView mv = new ModelAndView("autor/lista");
		mv.addObject("autores", autores);
		return mv;
	}
	
	@RequestMapping("remove")
	public String remove(Autor autor){
		autores.remove(autor.getId());
		return "forward:lista";
	}
	
	@RequestMapping("visualiza")
	public String visualiza(int id, Model model){
		model.addAttribute("autor", autores.get(id));
		return "autor/altera";
	}
	
	@RequestMapping("altera")
	public String altera(Autor autor){
		autores.set(autor.getId(), autor);
		return "forward:lista";
	}
	
}
