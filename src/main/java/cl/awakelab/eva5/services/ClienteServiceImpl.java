package cl.awakelab.eva5.services;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.eva5.model.Cliente;
import cl.awakelab.eva5.repositories.ClienteRepository;

@Service
public class ClienteServiceImpl implements IClienteService {
	
	private static final Logger logger = LoggerFactory.getLogger(ClienteServiceImpl.class);

	@Autowired
	ClienteRepository clienteRepo;

	@Override
	public void crearCliente(Cliente nuevoCliente) {

		logger.info("INICIO CREAR");

		logger.info("Cliente: " + nuevoCliente);
		
		clienteRepo.save(nuevoCliente);

	}

	@Override
	public Cliente obtenerPorId(int id) {

		logger.info("INICIO ObtenerPorid ");

		logger.info("Cliente id: " + id);
		
		return clienteRepo.findOne(id);
	}

	@Override
	public List<Cliente> listarClientes() {

		logger.info("INICIO LISTAR");
		
		List<Cliente> lista = (List<Cliente>) clienteRepo.findAll();
		return lista;

	}

	

	@Override
	public void editarCliente(Cliente nuevoCliente) {
		
		logger.info("INICIO EDITAR");
		
		clienteRepo.save(nuevoCliente);

	}

	@Override
	public void eliminarCliente(int id) {
		
		logger.info("INICIO ELIMINAR");
		
		clienteRepo.delete(id);
	}
}
