package br.com.apoioaosfundos.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Projeto;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoUsuario;
import br.com.apoioaosfundos.service.ConselhoService;
import br.com.apoioaosfundos.service.EntidadeService;
import br.com.apoioaosfundos.service.ProjetoService;
import br.com.apoioaosfundos.service.UsuarioService;

@Controller
public class UsuarioController {

	private UsuarioService us;
	private ConselhoService cs;
	private EntidadeService es;
	private ProjetoService ps;

	@Autowired
	public UsuarioController(UsuarioService us, ConselhoService cs, EntidadeService es, ProjetoService ps) {
		this.us = us;
		this.cs = cs;
		this.es = es;
		this.ps = ps;
	}

	// M�todo respons�vel por fazer o binding da data recebida do formul�rio
	@InitBinder("usuario")
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
		dateFormatter.setLenient(false);

		binder.registerCustomEditor(Date.class, "dataCadastro", new CustomDateEditor(dateFormatter, true));
		binder.registerCustomEditor(Date.class, "ultimoAcesso", new CustomDateEditor(dateFormatter, true));
	}

	@RequestMapping(value = "/usuario/cadastro", method = RequestMethod.GET)
	public String cadastroUsuarioGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "principal/cadastro-usuario";

	}

	@Transactional
	@RequestMapping(value = "/usuario/cadastro", method = RequestMethod.POST)
	public String cadastroUsuarioPost(Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Verifica se ja possui cadastro com o cpf passado como par�metro
		if (!us.isCadastrado(usuario.getCpf())) {

			// Caso exista exibe uma mensagem de erro para o usuario
			model.addAttribute("cpfCadastrado", false);
			us.adicionar(usuario);
			return "sucesso/sucesso-usuario-cadastrado";

		} else {

			model.addAttribute("cpfCadastrado", true);
			return "principal/cadastro-usuario";
		}

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "principal/login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(HttpSession session, Usuario usuario, HttpServletRequest request, Model model,
			RedirectAttributes redirectAttributes) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Verifica se o usu�rio existe no Banco de Dados
		if (us.login(usuario.getCpf(), usuario.getSenha())) {

			// Carrega o usu�rio informado no formul�rio
			usuario = us.carregar(usuario.getCpf());
			// Atribui o objeto para a sess�o
			session.setAttribute("usuario", usuario);

			// Verifica qual o tipo de usu�rio e direciona para o seu respectivo painel
			if (usuario.getTipoUsuario().equals(TipoUsuario.NORMAL)) {

				List listaFundos = new ArrayList();
				listaFundos = cs.listarFundos();
				model.addAttribute("listaFundos", listaFundos);

				// Carrega a lista de conselhos cadastrados pelo usu�rio
				List<Conselho> conselhosUsuario = new ArrayList<Conselho>();
				conselhosUsuario = cs.listar(usuario);
				model.addAttribute("conselhosUsuario", conselhosUsuario);

				// Carrega a lista de entidades cadastrados pelo usu�rio
				List<Entidade> entidadesUsuario = new ArrayList<Entidade>();
				entidadesUsuario = es.listar(usuario);
				model.addAttribute("entidadesUsuario", entidadesUsuario);

				// Carrega a lista de projetos cadastrados pelo usu�rio
				List<Projeto> projetosUsuario = new ArrayList<Projeto>();
				projetosUsuario = ps.listar(usuario);
				model.addAttribute("projetosUsuario", projetosUsuario);

				return "painel-usuario/painel-usuario";

			} else if (usuario.getTipoUsuario().equals(TipoUsuario.EMPRESA)
					|| usuario.getTipoUsuario().equals(TipoUsuario.TECNICO)) {

				return "painel-restrito/painel-restrito";

			}
		}

		// Salva o status true para o erro de login e redireciona para o m�todo que
		// chama a index.
		redirectAttributes.addFlashAttribute("statusLogin", "true");
		return "redirect:index";
	}

	@RequestMapping(value = "/logoff", method = RequestMethod.GET)
	public String logoffPost(HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Invalida a sess�o atual
		session.invalidate();

		return "sucesso/sessao-finalizada";
	}

	@RequestMapping(value = "/painel", method = RequestMethod.GET)
	public String painelGet(HttpSession session, HttpServletRequest request, Model model) {

		// P�gina de Retorno
		String url = null;

		// Recebe o contexto da requisi��o
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usu�rio que est� na sess�o
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		// Verifica qual o tipo de usu�rio e direciona para o seu respectivo painel
		if (usuario.getTipoUsuario().equals(TipoUsuario.NORMAL)) {

			List listaFundos = new ArrayList();
			listaFundos = cs.listarFundos();
			model.addAttribute("listaFundos", listaFundos);

			// Carrega a lista de conselhos cadastrados pelo usu�rio
			List<Conselho> conselhosUsuario = new ArrayList<Conselho>();
			conselhosUsuario = cs.listar(usuario);
			model.addAttribute("conselhosUsuario", conselhosUsuario);

			// Carrega a lista de conselhos cadastrados pelo usu�rio
			List<Entidade> entidadesUsuario = new ArrayList<Entidade>();
			entidadesUsuario = es.listar(usuario);
			model.addAttribute("entidadesUsuario", entidadesUsuario);

			// Carrega a lista de projetos cadastrados pelo usu�rio
			List<Projeto> projetosUsuario = new ArrayList<Projeto>();
			projetosUsuario = ps.listar(usuario);
			model.addAttribute("projetosUsuario", projetosUsuario);

			url = "painel-usuario/painel-usuario";

		} else if (usuario.getTipoUsuario().equals(TipoUsuario.EMPRESA)
				|| usuario.getTipoUsuario().equals(TipoUsuario.TECNICO)) {

			url = "painel-restrito/painel-restrito";

		}

		return url;

	}

	@RequestMapping(value = "/painel/meus-dados", method = RequestMethod.GET)
	public String meusDadosGet(HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usu�rio que est� na sess�o
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		model.addAttribute("usuario", usuario);

		return "painel-usuario/meus-dados/visualizar-meus-dados";
	}

	@RequestMapping(value = "/painel/meus-dados/editar", method = RequestMethod.GET)
	public String editarUsuarioGet(Usuario usuario, HttpSession session, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usu�rio que est� na sess�o
		usuario = (Usuario) request.getSession().getAttribute("usuario");
		usuario = us.carregar(usuario.getId());
		model.addAttribute("usuario", usuario);

		return "painel-usuario/meus-dados/editar-meus-dados";

	}

	@Transactional
	@RequestMapping(value = "/painel/meus-dados/editar", method = RequestMethod.POST)
	public String editarUsuarioPost(HttpSession session, Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Atualiza o usuario com os dados vindos da request
		usuario = us.atualizar(usuario);

		// Atribui os novos dados do usu�rio para a session
		session.setAttribute("usuario", usuario);

		return "sucesso/sucesso-meus-dados-editado";

	}

}
