package cl.awakelab.eva5.services;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.eva5.model.Visita;

import cl.awakelab.eva5.repositories.VisitaRepository;

@Service
public class VisitaServiceImpl implements IVisitaService {

	private static final Logger logger = LoggerFactory.getLogger(VisitaServiceImpl.class);
	@Autowired
	VisitaRepository visitaRepo;

	@Override
	public void crearVisita(Visita visita) {
		// TODO Auto-generated method stub

		logger.info("INICIO CREAR");

		logger.info("Datos Visita: " + visita);

		visitaRepo.save(visita);

	}

	@Override
	public List<Visita> listarVisita() {
		logger.info("INICIO LISTAR");

		List<Visita> lista = (List<Visita>) visitaRepo.findAll();
		return lista;
	}

	@Override
	public void editarVisita(Visita visita) {
		logger.info("INICIO EDITAR");

		logger.info("Datos Visita: " + visita);

		visitaRepo.save(visita);

	}

	@Override
	public void eliminarVisita(int id) {
		logger.info("INICIO ELIMINAR");

		logger.info("id Visita: " + id);

		visitaRepo.delete(id);

	}

	@Override
	public Visita obtenerPorId(int id) {
		logger.info("INICIO MOSTRAR");

		logger.info("id Visita: " + id);

		return visitaRepo.findOne(id);
	}

}
