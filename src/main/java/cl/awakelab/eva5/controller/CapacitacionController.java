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

import cl.awakelab.eva5.model.Capacitacion;
import cl.awakelab.eva5.services.ICapacitacionService;

/**
 * @author Rodrigo Pavez
 *
 */
@Controller
public class CapacitacionController {

	private static final Logger logger = LoggerFactory.getLogger(CapacitacionController.class);

	@Autowired
	ICapacitacionService capacitacionDAO;

	@GetMapping("/listarCapa")
	public ModelAndView listarCapacitacion() {

		logger.info("INICIO LISTAR CAPA");

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());

		List<Capacitacion> lista = capacitacionDAO.listarCapacitacion();

		return new ModelAndView("listadoCapacitaciones", "lista_capacitacion", lista);
	}

	@GetMapping("/mostrarCapa/{id}")
	public ModelAndView mostrarCapa(@PathVariable int id) {

		logger.info("INICIO MOSTRAR CAPA");

		logger.info("id Capa: " + id);

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
		Capacitacion capacitacion = capacitacionDAO.obtenerPorId(id);
		return new ModelAndView("mostrarCapa", "capacitacion", capacitacion);

	}

	@PutMapping("/editarCapa/{id}")
	public ModelAndView editarEmpleado(Capacitacion capacitacion) {

		logger.info("INICIO EDITAR CAPA");

		logger.info("Capacitacion: " + capacitacion);

		capacitacionDAO.editarCapacitacion(capacitacion);
		return new ModelAndView("redirect:/listarCapa");
	}

	@PostMapping(value = "/crearCapa")
	public ModelAndView guardarCapa(Capacitacion capacitacion) {

		logger.info("INICIO CREAR CAPA");

		logger.info("Datos Capacitacion: " + capacitacion);

		capacitacionDAO.crearCapacitacion(capacitacion);
		return new ModelAndView("redirect:/listarCapa");
	}

	@DeleteMapping("/eliminarCapa")
	public ModelAndView eliminarCapa(int id) {

		logger.info("INICIO EDITAR CAPA");

		logger.info("id Capa: " + id);

		capacitacionDAO.eliminarCapacitacion(id);
		return new ModelAndView("redirect:/listarCapa");

	}

}
