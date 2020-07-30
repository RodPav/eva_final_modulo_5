package cl.awakelab.eva5.services;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.eva5.model.Profesional;
import cl.awakelab.eva5.repositories.ProfesionalRepository;

@Service
public class ProfesionalServiceImpl implements IProfesionalService {
	
	private static final Logger logger = LoggerFactory.getLogger(ProfesionalServiceImpl.class);

	@Autowired
	ProfesionalRepository profRepo;

	@Override
	public void crearProfesional(Profesional nuevoProfesional) {

		logger.info("INICIO CREAR");

		logger.info("Profesional: " + nuevoProfesional);
		
		profRepo.save(nuevoProfesional);

	}

	@Override
	public Profesional obtenerPorId(int id) {

		logger.info("INICIO ObtenerPorid ");

		logger.info("Profesional id: " + id);
		
		return profRepo.findOne(id);
	}

	@Override
	public List<Profesional> listarProfesionales() {

		logger.info("INICIO LISTAR");
		
		List<Profesional> lista = (List<Profesional>) profRepo.findAll();
		return lista;

	}

	

	@Override
	public void editarProfesional(Profesional nuevoProfesional) {
		
		logger.info("INICIO EDITAR");
		
		profRepo.save(nuevoProfesional);

	}

	@Override
	public void eliminarProfesional(int id) {
		
		logger.info("INICIO ELIMINAR");
		
		profRepo.delete(id);
	}
}
