package br.com.apoioaosfundos.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.entity.Usuario;
import br.com.apoioaosfundos.enumerated.TipoFundo;
import br.com.apoioaosfundos.service.ConselhoService;
import br.com.apoioaosfundos.utility.FileUpload;

@Controller
public class ConselhoController {

	private ConselhoService cs;

	@Autowired
	public ConselhoController(ConselhoService cs) {
		this.cs = cs;
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
		conselho = cs.adicionar(conselho, usuario);

		String url = "documentos/conselhos/" + conselho.getTipoFundo().getDescricao() + "/" + conselho.getRazaoSocial();
		FileUpload.upload(request, conselho.getDocumentosConselho().getCartaoCnpj(),
				conselho.getDocumentosConselho().getCartaoCnpj().getOriginalFilename(), url);
		FileUpload.upload(request, conselho.getDocumentosConselho().getDeclaracaoBancaria(),
				conselho.getDocumentosConselho().getDeclaracaoBancaria().getOriginalFilename(), url);

		return "sucesso/sucesso-cadastro-conselho";
	}

}
