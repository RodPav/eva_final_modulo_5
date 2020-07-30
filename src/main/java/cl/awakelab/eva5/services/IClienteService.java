package cl.awakelab.eva5.services;

import java.util.List;

import cl.awakelab.eva5.model.Cliente;

public interface IClienteService {

	void crearCliente(Cliente cliente);

	void editarCliente(Cliente cliente);
	
	List<Cliente> listarClientes();

	void eliminarCliente(int id);

	Cliente obtenerPorId(int id);
}
