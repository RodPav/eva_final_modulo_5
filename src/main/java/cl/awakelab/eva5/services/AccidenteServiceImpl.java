package cl.awakelab.eva5.services;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.eva5.model.Accidente;
import cl.awakelab.eva5.repositories.AccidenteRepository;

@Service
public class AccidenteServiceImpl implements IAccidenteService {

	private static final Logger logger = LoggerFactory.getLogger(AccidenteServiceImpl.class);
	@Autowired
	AccidenteRepository accRepo;

	@Override
	public void crearAccidente(Accidente nuevoAcc) {

		logger.info("INICIO CREAR");

		logger.info("Datos Capa: " + nuevoAcc);

		accRepo.save(nuevoAcc);
	}

	@Override
	public Accidente obtenerPorId(int id) {

		logger.info("INICIO MOSTRAR");

		logger.info("id Capa: " + id);

		return accRepo.findOne(id);
	}

	@Override
	public List<Accidente> listarAccidentes() {

		logger.info("INICIO LISTAR");

		List<Accidente> lista = (List<Accidente>) accRepo.findAll();
		return lista;
	}

	@Override
	public void editarAccidente(Accidente accidente) {
		
		logger.info("INICIO EDITAR");
		
		logger.info("Datos Capa: " + accidente);
		
		accRepo.save(accidente);

	}

	@Override
	public void eliminarAccidente(int id) {
		
		logger.info("INICIO ELIMINAR");

		logger.info("id Capa: " + id);
		
		accRepo.delete(id);
	}

}
