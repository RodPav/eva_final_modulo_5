package cl.awakelab.eva5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;


import cl.awakelab.eva5.model.Visita;
import cl.awakelab.eva5.services.IVisitaService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

@Controller
public class VisitaController {

		private static final Logger logger = LoggerFactory.getLogger(VisitaController.class);
	
		@Autowired
		IVisitaService visitaDAO;
		
		@GetMapping("/listarVisita")
		public ModelAndView listarVisita() {
			
			logger.info("INICIO LSTAR VISITA");
			
			System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
			
			List<Visita> lista = visitaDAO.listarVisita();
			
			return new ModelAndView("listadoVisita", "lista_visita", lista);
			
		}
		
		@GetMapping("/mostrarVisita/{id}")
		public ModelAndView mostrarVisita(@PathVariable int id) {
			
			logger.info("Inicio mostrar Visita");
			
			logger.info("id visita: " + id);
			
			System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
			Visita visita = visitaDAO.obtenerPorId(id);
			
			return new ModelAndView("mostrarVisita", "visita", visita);
		}
		
		
}
