package cl.awakelab.eva5.services;

import java.util.List;

import cl.awakelab.eva5.model.Accidente;

public interface IAccidenteService {

	void crearAccidente(Accidente accidente);

	void editarAccidente(Accidente accidente);
	
	List<Accidente> listarAccidentes();

	void eliminarAccidente(int id);

	Accidente obtenerPorId(int id);
}
