package br.com.apoioaosfundos.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String index(HttpServletRequest request, Model model) {

		// Recebe o contexto da requisição.
		String path = request.getContextPath();
		model.addAttribute("path", path);

		return "principal/index";
	}

}
