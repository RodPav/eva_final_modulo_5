package cl.awakelab.eva5.services;

import java.util.List;

import cl.awakelab.eva5.model.Capacitacion;

public interface ICapacitacionService {

	void crearCapacitacion(Capacitacion capacitacion) ;

	List<Capacitacion> listarCapacitacion() ;

	void editarCapacitacion(Capacitacion capacitacion) ;

	Capacitacion obtenerPorId(int id) ;

	void eliminarCapacitacion(int id);

	}