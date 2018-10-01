package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Entidade;
import br.com.apoioaosfundos.service.EntidadeService;

@Controller
public class EntidadeController {
	
	private EntidadeService es;
	
	@Autowired
	public EntidadeController(EntidadeService es) {
		this.es = es;
	}
	
	@RequestMapping(value = "/painel/entidade/cadastrar", method = RequestMethod.GET)
	public String cadastrarGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "";
	}
	
	@RequestMapping(value = "/painel/entidade/cadastrar", method = RequestMethod.POST)
	public String cadastrarPost(Entidade entidade, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);
		
		entidade = es.adicionar(entidade);

		return "";
	}

}
