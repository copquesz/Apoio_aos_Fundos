package br.com.apoioaosfundos.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Projeto;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoFundo;
import br.com.apoioaosfundos.service.ConselhoService;
import br.com.apoioaosfundos.service.EntidadeService;
import br.com.apoioaosfundos.service.ProjetoService;
import br.com.apoioaosfundos.service.UsuarioService;
import br.com.apoioaosfundos.utility.FileUpload;

@Controller
public class ProjetoController {

	private ProjetoService ps;
	private ConselhoService cs;
	private EntidadeService es;
	private UsuarioService us;

	@Autowired
	public ProjetoController(ProjetoService ps, ConselhoService cs, EntidadeService es, UsuarioService us) {
		this.ps = ps;
		this.cs = cs;
		this.es = es;
		this.us = us;
	}

	@RequestMapping(value = "/painel/projeto/cadastrar", method = RequestMethod.GET)
	public String cadastarProjetoGet(@RequestParam Long param, Usuario usuario, Conselho conselho,
			HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Carrega o usuario logado na sessão
		usuario = (Usuario) request.getSession().getAttribute("usuario");
		usuario = us.carregar(usuario.getId());

		conselho = cs.carregar(param);
		model.addAttribute("conselho", conselho);

		// Carrega a lista de conselhos cadastrados pelo usuário
		List<Entidade> entidadesUsuario = new ArrayList<Entidade>();
		entidadesUsuario = es.listar(usuario);
		model.addAttribute("entidadesUsuario", entidadesUsuario);

		if (conselho.getTipoFundo() == TipoFundo.FUNDO_ESTADUAL_DA_CRIANÇA_E_DO_ADOLESCENTE
				|| conselho.getTipoFundo() == TipoFundo.FUNDO_MUNICIPAL_DA_CRIANÇA_E_DO_ADOLESCENTE) {
			return "painel-usuario/cadastro-projeto/cadastro-projeto-crianca-adolescente";
		}

		else {
			return "painel-usuario/cadastro-projeto/cadastro-projeto-idoso";
		}
	}

	@Transactional
	@RequestMapping(value = "/painel/projeto/cadastrar", method = RequestMethod.POST)
	public String cadastrarProjetoPost(Projeto projeto, Entidade entidade, Conselho conselho, Usuario usuario,
			HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		usuario = (Usuario) request.getSession().getAttribute("usuario");
		usuario = us.carregar(usuario.getId());

		entidade = es.carregar(projeto.getEntidade().getId());
		projeto.setEntidade(entidade);

		conselho = cs.carregar(projeto.getConselho().getId());
		projeto.setConselho(conselho);

		projeto = ps.adicionar(projeto, entidade, conselho, usuario);

		String url = "documentos/entidades/" + entidade.getRazaoSocial() + "/" + projeto.getNomeProjeto();

		projeto.getDocumentosProjeto()
				.setUrlImage(FileUpload.upload(request, projeto.getDocumentosProjeto().getImagem(),
						projeto.getDocumentosProjeto().getImagem().getOriginalFilename(), url));
		projeto.getDocumentosProjeto()
				.setUrlProposta(FileUpload.upload(request, projeto.getDocumentosProjeto().getProposta(),
						projeto.getDocumentosProjeto().getProposta().getOriginalFilename(), url));
		projeto.getDocumentosProjeto()
				.setUrlCertificado(FileUpload.upload(request, projeto.getDocumentosProjeto().getCertificado(),
						projeto.getDocumentosProjeto().getCertificado().getOriginalFilename(), url));

		return "sucesso/sucesso-cadastro-projeto";
	}

	@RequestMapping(value = "/painel/projeto/visualizar/{id}", method = RequestMethod.GET)
	public String visualizarProjetoGet(@PathVariable Long id, Projeto projeto, HttpServletRequest request,
			Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);
		
		projeto = ps.carregar(id);
		model.addAttribute("projeto", projeto);

		return "painel-usuario/visualizar-projeto";
	}

}
