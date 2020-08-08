package cl.awakelab.eva5.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {

		logger.info("Inicio HOME");
		return new ModelAndView("administrador");
	}

	@RequestMapping(value = "/registrarCliente", method = RequestMethod.GET)
	public ModelAndView regCliente() {

		logger.info("Inicio admin");
		return new ModelAndView("registrarCliente");
	}
	
	@RequestMapping(value = "/registrarProfesional", method = RequestMethod.GET)
	public ModelAndView regProfe() {

		logger.info("Inicio admin");
		return new ModelAndView("registrarProfesional");
	}

}
