package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoFundo;
import br.com.apoioaosfundos.service.ConselhoService;
import br.com.apoioaosfundos.service.UsuarioService;
import br.com.apoioaosfundos.utility.FileUpload;

@Controller
public class ConselhoController {

	private ConselhoService cs;
	private UsuarioService us;

	@Autowired
	public ConselhoController(ConselhoService cs, UsuarioService us) {
		this.cs = cs;
		this.us = us;
	}

	@RequestMapping(value = "/painel/conselho/cadastrar", method = RequestMethod.GET)
	public String cadastrarGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		TipoFundo[] listaTipoFundo = TipoFundo.values();
		model.addAttribute("listaTipoFundo", listaTipoFundo);

		return "painel-usuario/cadastro-conselho";
	}

	@Transactional
	@RequestMapping(value = "/painel/conselho/cadastrar", method = RequestMethod.POST)
	public String cadastrarPost(Conselho conselho, Usuario usuario, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		usuario = (Usuario) request.getSession().getAttribute("usuario");
		usuario = us.carregar(usuario.getId());
		conselho = cs.adicionar(conselho, usuario);

		String url = "documentos/conselhos/" + conselho.getTipoFundo().getDescricao() + "/" + conselho.getRazaoSocial();
		
		// Faz upload do Cartão CNPJ e seta a URL gerada
		conselho.getDocumentosConselho().setUrlCartaoCnpj(FileUpload.upload(request, conselho.getDocumentosConselho().getCartaoCnpj(),
				conselho.getDocumentosConselho().getCartaoCnpj().getOriginalFilename(), url));
		
		// Faz upload da Declaração Bancária e seta a URL gerada
		conselho.getDocumentosConselho().setUrlDeclaracaoBancaria(FileUpload.upload(request, conselho.getDocumentosConselho().getDeclaracaoBancaria(),
				conselho.getDocumentosConselho().getDeclaracaoBancaria().getOriginalFilename(), url));
		
		// Faz upload do Diagnóstico Social e seta a URL gerada
		conselho.getDocumentosConselho().setUrlDiagnosticoSocial(FileUpload.upload(request, conselho.getDocumentosConselho().getDiagnosticoSocial(),
				conselho.getDocumentosConselho().getDiagnosticoSocial().getOriginalFilename(), url));
		
		// Atualiza as URL dos documentos que foram feito upload no Banco de Dados.
		conselho = cs.atualizar(conselho);

		return "sucesso/sucesso-cadastro-conselho";
	}

	@RequestMapping(value = "/painel/conselho/visualizar/{id}", method = RequestMethod.GET)
	public String visualizarGet(@PathVariable Long id, Conselho conselho, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		conselho = cs.carregar(id);
		model.addAttribute("conselho", conselho);

		return "painel-usuario/visualizar-conselho";
	}

}
