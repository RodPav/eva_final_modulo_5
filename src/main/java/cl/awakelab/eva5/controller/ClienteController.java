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

import cl.awakelab.eva5.model.Cliente;
import cl.awakelab.eva5.services.IClienteService;

@Controller
public class ClienteController {

	private static final Logger logger = LoggerFactory.getLogger(ClienteController.class);

	@Autowired
	IClienteService clienteDAO;

	@GetMapping("/listarClientes")
	public ModelAndView listarClientes() {

		logger.info("INICIO LISTAR CLIENTE");

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());

		List<Cliente> lista = clienteDAO.listarClientes();

		return new ModelAndView("listadoClientes", "lista_cliente", lista);
	}

	@GetMapping("/mostrarCliente/{id}")
	public ModelAndView mostrarCliente(@PathVariable int id) {

		logger.info("INICIO MOSTRAR CLIENTE");

		logger.info("id Cliente: " + id);

		System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
		Cliente cliente = clienteDAO.obtenerPorId(id);
		return new ModelAndView("mostrarCliente", "cliente", cliente);

	}

	@PutMapping("/editarCliente")
	public ModelAndView editarCliente(Cliente cliente) {

		logger.info("INICIO EDITAR CLIENTE");

		logger.info("Cliente: " + cliente);

		clienteDAO.editarCliente(cliente);
		
		return new ModelAndView("redirect:/listarClientes");

	}

	@PostMapping("/crearCliente")
	public ModelAndView guardarCliente(Cliente cliente) {

		logger.info("INICIO CREAR CLIENTE");

		logger.info("Datos Cliente: " + cliente);

		clienteDAO.crearCliente(cliente);
		
		return new ModelAndView("redirect:/listarClientes");
	}

	@DeleteMapping("/eliminarCliente")
	public ModelAndView eliminarCliente(int id) {

		logger.info("INICIO EDITAR CLIENTE");

		logger.info("id Cliente: " + id);

		clienteDAO.eliminarCliente(id);
		
		return new ModelAndView("redirect:/listarClientes");

	}

}
