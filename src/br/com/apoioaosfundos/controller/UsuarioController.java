package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoUsuario;
import br.com.apoioaosfundos.service.UsuarioService;

@Controller
public class UsuarioController {

	private UsuarioService us;

	@Autowired
	public UsuarioController(UsuarioService us) {
		this.us = us;
	}

	@RequestMapping(value = "/usuario/cadastro", method = RequestMethod.GET)
	public String cadastroUsuarioGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "principal/cadastro-usuario";

	}
	
	@Transactional
	@RequestMapping(value = "/usuario/cadastro", method = RequestMethod.POST)
	public String cadastroUsuarioPost(Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);
		
		if(!us.isCadastrado(usuario.getCpf())) {
			model.addAttribute("cpfCadastrado", false);
			us.adicionar(usuario);
		}
		else {
			model.addAttribute("cpfCadastrado", true);
		}

		return "principal/cadastro-usuario";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "principal/login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		if (us.login(usuario.getCpf(), usuario.getSenha())) {
			usuario = us.carregar(usuario.getCpf());

			if (usuario.getTipoUsuario().equals(TipoUsuario.NORMAL)) {
				return "painel-usuario/index";
			} else if (usuario.getTipoUsuario().equals(TipoUsuario.EMPRESA)
					|| usuario.getTipoUsuario().equals(TipoUsuario.TECNICO)) {
				return "painel-restrito/index";
			}
		}

		return "erro/login";
	}

}
