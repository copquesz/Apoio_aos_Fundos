package br.com.apoioaosfundos.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.service.EntidadeService;
import br.com.apoioaosfundos.service.UsuarioService;
import br.com.apoioaosfundos.utility.FileUpload;

@Controller
public class EntidadeController {

	private EntidadeService es;
	private UsuarioService us;

	@Autowired
	public EntidadeController(EntidadeService es, UsuarioService us) {
		this.es = es;
		this.us = us;
	}

	// M�todo respons�vel por fazer o binding da data recebida do formul�rio
	@InitBinder("entidade")
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
		dateFormatter.setLenient(false);

		binder.registerCustomEditor(Date.class, "dataFundacao", new CustomDateEditor(dateFormatter, true));
		binder.registerCustomEditor(Date.class, "dataMandato", new CustomDateEditor(dateFormatter, true));
	}

	@RequestMapping(value = "/painel/entidade/cadastrar", method = RequestMethod.GET)
	public String cadastrarGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "painel-usuario/cadastro-entidade";
	}

	@Transactional
	@RequestMapping(value = "/painel/entidade/cadastrar", method = RequestMethod.POST)
	public String cadastrarPost(Entidade entidade, Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		if (!es.isCadastrado(entidade.getCnpj())) {
			usuario = (Usuario) request.getSession().getAttribute("usuario");
			usuario = us.carregar(usuario.getId());

			entidade = es.adicionar(entidade, usuario);

			String url = "documentos/entidades/" + entidade.getRazaoSocial();

			// Faz upload do Cart�o CNPJ e seta a URL gerada
			entidade.getDocumentosEntidade()
					.setUrlCartaoCnpj(FileUpload.upload(request, entidade.getDocumentosEntidade().getCartaoCnpj(),
							entidade.getDocumentosEntidade().getCartaoCnpj().getOriginalFilename(), url));

			// Faz upload da Ata de Elei��o e seta a URL gerada
			entidade.getDocumentosEntidade()
					.setUrlAtaEleicao(FileUpload.upload(request, entidade.getDocumentosEntidade().getAtaEleicao(),
							entidade.getDocumentosEntidade().getAtaEleicao().getOriginalFilename(), url));

			// Faz upload do Documento do Presidente e seta a URL gerada
			entidade.getDocumentosEntidade()
					.setUrlDocumentoPresidente(FileUpload.upload(request,
							entidade.getDocumentosEntidade().getDocumentoPresidente(),
							entidade.getDocumentosEntidade().getDocumentoPresidente().getOriginalFilename(), url));

			// Faz upload do Estatuto Social e seta a URL gerada
			entidade.getDocumentosEntidade().setUrlEstatutoSocial(
					FileUpload.upload(request, entidade.getDocumentosEntidade().getEstatutoSocial(),
							entidade.getDocumentosEntidade().getEstatutoSocial().getOriginalFilename(), url));

			// Atualiza as URL dos documentos que foram feito upload no Banco de Dados.
			entidade = es.atualizar(entidade);

			model.addAttribute("cnpjCadastrado", false);
			return "sucesso/sucesso-cadastro-entidade";

		} else {
			model.addAttribute("cnpjCadastrado", true);
			return "painel-usuario/cadastro-entidade";
		}
	}

	@RequestMapping(value = "/painel/entidade/visualizar/{id}", method = RequestMethod.GET)
	public String visualizarGet(@PathVariable Long id, Entidade entidade, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		entidade = es.carregar(id);
		model.addAttribute("entidade", entidade);

		return "painel-usuario/visualizar-entidade";
	}

}
