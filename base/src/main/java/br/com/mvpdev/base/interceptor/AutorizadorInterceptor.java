package br.com.mvpdev.base.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request,
	    HttpServletResponse response, Object handler) throws Exception {
	String uri = request.getRequestURI();
	if (uri.endsWith("login")
		|| uri.endsWith("/")
		|| (uri.contains("resources") || (uri.contains("usuario/novo") || (uri
			.contains("usuario/adicionaUsuario"))))) {
	    return true;
	}
	if (request.getSession().getAttribute("usuarioLogado") != null) {
	    return true;
	}
	response.sendRedirect("login");
	return false;
    }

}
