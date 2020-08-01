package cl.awakelab.eva5.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.eva5.model.Profesional;
import cl.awakelab.eva5.services.IProfesionalService;

@Controller
public class ProfesionalController {

	private static final Logger logger = LoggerFactory.getLogger(ProfesionalController.class);

	@Autowired
	IProfesionalService profesionalDAO;

	@GetMapping("/listarProfesionales")
	public ModelAndView listarProfesionales() {

		logger.info("INICIO LISTAR PROFESIONAL");

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());

		List<Profesional> lista = profesionalDAO.listarProfesionales();

		return new ModelAndView("listadoProfesionals", "lista_profesional", lista);
	}

	@GetMapping("/mostrarProfesional/{id}")
	public ModelAndView mostrarProfesional(@PathVariable int id) {

		logger.info("INICIO MOSTRAR PROFESIONAL");

		logger.info("id Profesional: " + id);

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
		Profesional profesional = profesionalDAO.obtenerPorId(id);
		return new ModelAndView("mostrarProfesional", "profesional", profesional);

	}

	@PutMapping("/editarProfesional/{id}")
	public ModelAndView editarProfesional(Profesional profesional) {

		logger.info("INICIO EDITAR PROFESIONAL");

		logger.info("Datos Profesional: " + profesional);

		profesionalDAO.editarProfesional(profesional);
		return new ModelAndView("redirect:/listarProfesionales");

	}

	@PostMapping(value = "/crearProfesional")
	public ModelAndView guardarProfesional(Profesional profesional) {

		logger.info("INICIO CREAR PROFESIONAL");

		logger.info("Datos Profesional: " + profesional);

		profesionalDAO.crearProfesional(profesional);
		return new ModelAndView("redirect:/listarProfesionales");
	}

	@DeleteMapping("/eliminarProfesional")
	public ModelAndView eliminarProfesional(int id) {

		logger.info("INICIO EDITAR PROFESIONAL");

		logger.info("id Profesional: " + id);

		profesionalDAO.eliminarProfesional(id);
		return new ModelAndView("redirect:/listarProfesionales");

	}

}
