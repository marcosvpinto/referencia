package br.com.mvpdev.base.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.mvpdev.base.models.Usuario;
import br.com.mvpdev.base.persistence.IUsuarioDao;

@Controller
public class LoginController {

    List<Usuario> usuarios = new ArrayList<Usuario>();

    @Autowired
    IUsuarioDao usuarioDao;

    private void carregaUsuarios() {
	usuarios = usuarioDao.findAll();
    }

    @RequestMapping("/")
    public String login() {
	return "login";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
	session.invalidate();
	return "redirect:login";
    }

    @RequestMapping("login")
    public String efetuaLogin(Usuario usuario, HttpSession session) {
	carregaUsuarios();
	for (Usuario usuario2 : usuarios) {
	    if (usuario2.getLogin().equals(usuario.getLogin())
		    && usuario2.getSenha().equals(usuario.getSenha())) {
		session.setAttribute("usuarioLogado", usuario);
		return "redirect:home";
	    }
	}
	return "redirect:/";
    }

}
