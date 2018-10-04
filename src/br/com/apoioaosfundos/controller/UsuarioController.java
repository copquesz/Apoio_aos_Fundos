package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

		// Verifica se ja possui cadastro com o cpf passado como parâmetro
		if (!us.isCadastrado(usuario.getCpf())) {
			// Caso exista exibe uma mensagem de erro para o usuario
			model.addAttribute("cpfCadastrado", false);
			us.adicionar(usuario);
		} else {
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
	public String loginPost(HttpSession session, Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Verifica se o usuário existe no Banco de Dados
		if (us.login(usuario.getCpf(), usuario.getSenha())) {
			// Carrega o usuário informado no formulário
			usuario = us.carregar(usuario.getCpf());
			// Atribui o objeto para a sessão
			session.setAttribute("usuario", usuario);

			// Verifica qual o tipo de usuário e direciona para o seu respectivo painel
			if (usuario.getTipoUsuario().equals(TipoUsuario.NORMAL)) {
				return "painel-usuario/painel-usuario";
			} else if (usuario.getTipoUsuario().equals(TipoUsuario.EMPRESA)
					|| usuario.getTipoUsuario().equals(TipoUsuario.TECNICO)) {
				return "painel-restrito/painel-restrito";
			}
		}

		return "erro/login";
	}

	@RequestMapping(value = "/logoff", method = RequestMethod.GET)
	public String logoffPost(HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Invalida a sessão atual
		session.invalidate();

		return "sucesso/sessao-finalizada";
	}
	
	@RequestMapping(value = "/painel", method = RequestMethod.GET)
	public String painelGet(HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usuário que está na sessão
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		return "painel-usuario/painel-usuario";
	}

	@RequestMapping(value = "/painel/meus-dados", method = RequestMethod.GET)
	public String meusDadosGet(HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usuário que está na sessão
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		model.addAttribute("usuario", usuario);

		return "painel-usuario/meus-dados";
	}

}
