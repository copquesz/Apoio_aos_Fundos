package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.apoioaosfundos.entity.Conselho;
import br.com.apoioaosfundos.service.ConselhoService;

@Controller
public class ConselhosController {

	private ConselhoService cs;

	@Autowired
	public ConselhosController(ConselhoService cs) {
		this.cs = cs;
	}

	@RequestMapping(value = "/painel/conselho/cadastrar", method = RequestMethod.GET)
	public String cadastrarGet(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "";
	}

	@RequestMapping(value = "/painel/conselho/cadastrar", method = RequestMethod.POST)
	public String cadastrarPost(Conselho conselho, HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		conselho = cs.adicionar(conselho);

		return "";
	}

}
