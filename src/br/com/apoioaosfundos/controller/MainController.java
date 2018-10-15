package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Lucas Copque
 * @category controller
 *
 */
@Controller
public class MainController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model, @ModelAttribute("statusLogin") String statusLogin) {

		// Recebe o contexto da requisi��o.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		// Dispara mensagem de erro na view, caso o usu�rio for incorreto.
		if (statusLogin.equals("true")) {
			model.addAttribute("loginIncorreto", true);
		} else {
			model.addAttribute("loginIncorreto", false);
		}

		return "principal/index";
	}

}
