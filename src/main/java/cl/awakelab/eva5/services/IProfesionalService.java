package cl.awakelab.eva5.services;

import java.util.List;

import cl.awakelab.eva5.model.Profesional;

public interface IProfesionalService {

	void crearProfesional(Profesional profesional);

	void editarProfesional(Profesional profesional);
	
	List<Profesional> listarProfesionales();

	void eliminarProfesional(int id);

	Profesional obtenerPorId(int id);
}
