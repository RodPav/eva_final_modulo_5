package cl.awakelab.eva5.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import org.springframework.web.servlet.ModelAndView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import java.util.List;
import cl.awakelab.eva5.controller.AccidenteController;
import cl.awakelab.eva5.model.Accidente;
import cl.awakelab.eva5.services.IAccidenteService;




@Controller 
public class AccidenteController {
	
       
	private static final Logger logger = LoggerFactory.getLogger(AccidenteController.class);
	
	@Autowired
	IAccidenteService accidenteDAO;
	
	@GetMapping("/listarAccidente")
	public ModelAndView listarAccidente() {

		logger.info("INICIO LISTAR ACCIDENTE");

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());

		List<Accidente> lista = accidenteDAO.listarAccidentes();

		return new ModelAndView("listadoAccidentes", "lista_accidente", lista);
	}
	
	@GetMapping("/mostrarAccidente/{id}")
	public ModelAndView mostrarAccidente(@PathVariable int id) {

		logger.info("INICIO MOSTRAR ACCIDENTE");

		logger.info("id Accidente: " + id);

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
		Accidente accidente = accidenteDAO.obtenerPorId(id);
		return new ModelAndView("mostrarAccidente", "accidente", accidente);

	}
	
	
	@PutMapping("/editarAccidente/{id}")
	public ModelAndView editarAccidente(Accidente accidente) {

		logger.info("INICIO EDITAR ACCIDENTE");

		logger.info("Accidente: " + accidente);

		accidenteDAO.editarAccidente(accidente);
		return new ModelAndView("redirect:/listarAccidente");
	}
	
	@PostMapping(value = "/crearAccidente")
	public ModelAndView guardarAccidente(Accidente accidente) {

		logger.info("INICIO CREAR ACCIDENTE");

		logger.info("Datos Accidente: " + accidente);

		accidenteDAO.crearAccidente(accidente);
		return new ModelAndView("redirect:/listarAccidente");
	}
	
	@DeleteMapping("/eliminarAccidente")
	public ModelAndView eliminarAccidente(int id) {

		logger.info("INICIO EDITAR ACCIDENTE");

		logger.info("id Accidente: " + id);

		accidenteDAO.eliminarAccidente(id);
		return new ModelAndView("redirect:/listarAccidente");

	}
	
}


