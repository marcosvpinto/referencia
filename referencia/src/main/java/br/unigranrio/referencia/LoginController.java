package br.unigranrio.referencia;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.unigranrio.referencia.model.Usuario;


/**
 * 
 * @author Marcos Vinícius Pinto - 5305123
 * 		   Carine Lopes da Silva Fortes - 5304981
 *         Glauco Lima Louzada - 5304987
 *         Giovani Alves Cata Preta - 5305217
 *         Leonardo Peixoto dos Santos - 5305044
 *         
 * @periodo 8°
 * @materia EIN228-20 Sistemas Ditribuidos III
 *
 */

@Controller
public class LoginController {
	
	List<Usuario> usuarios = new ArrayList<Usuario>();
	
	private void carregaUsuarios(){
		Usuario usuario = new Usuario();
		usuario.setNome("admin");
		usuario.setSenha("admin");
		usuarios.add(usuario);
	}

	@RequestMapping("login")
	public String efetuaLogin(Usuario usuario, HttpSession session){
		carregaUsuarios();
		for (Usuario usuario2 : usuarios) {
			if(usuario2.getNome().equals(usuario.getNome()) && usuario2.getSenha().equals(usuario.getSenha())){
				session.setAttribute("usuarioLogado", usuario);
				return "redirect:home";
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping("/")
	public String login(){
		return "login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
	
}
