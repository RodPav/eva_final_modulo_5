package cl.awakelab.eva5.services;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.eva5.model.Capacitacion;
import cl.awakelab.eva5.repositories.CapacitacionRepository;

@Service
public class AccidenteServiceImpl implements ICapacitacionService {

	private static final Logger logger = LoggerFactory.getLogger(ClienteServiceImpl.class);
	@Autowired
	CapacitacionRepository capaRepo;

	@Override
	public void crearCapacitacion(Capacitacion nuevoCapa) {

		logger.info("INICIO CREAR");

		logger.info("Datos Capa: " + nuevoCapa);

		capaRepo.save(nuevoCapa);
	}

	@Override
	public Capacitacion obtenerPorId(int id) {

		logger.info("INICIO MOSTRAR");

		logger.info("id Capa: " + id);

		return capaRepo.findOne(id);
	}

	@Override
	public List<Capacitacion> listarCapacitacion() {

		logger.info("INICIO LISTAR");

		List<Capacitacion> lista = (List<Capacitacion>) capaRepo.findAll();
		return lista;
	}

	@Override
	public void editarCapacitacion(Capacitacion nuevoCapa) {
		
		logger.info("INICIO EDITAR");
		
		logger.info("Datos Capa: " + nuevoCapa);
		
		capaRepo.save(nuevoCapa);

	}

	@Override
	public void eliminarCapacitacion(int id) {
		
		logger.info("INICIO ELIMINAR");

		logger.info("id Capa: " + id);
		
		capaRepo.delete(id);
	}

}
