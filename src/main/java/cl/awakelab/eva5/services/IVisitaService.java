package cl.awakelab.eva5.services;

import java.util.List;

import cl.awakelab.eva5.model.Visita;

public interface IVisitaService {

	void crearVisita(Visita visita) ;

	List<Visita> listarVisita() ;

	void editarVisita(Visita visita) ;
	
	void eliminarVisita(int id);
	
	Visita obtenerPorId( int id);
}
