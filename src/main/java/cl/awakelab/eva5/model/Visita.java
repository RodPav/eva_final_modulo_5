package cl.awakelab.eva5.model;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;

public class Visita {

	private int idVisita;
	private LocalDate fechaVisita;
	private LocalTime horaVisita;
	private String dirVisita;
	private ArrayList<Visita> listaChequeo;
	
	public Visita( LocalDate fechaVisita, LocalTime horaVisita, String dirVisita,
			ArrayList<Visita> listaChequeo) {
		super();

		this.fechaVisita = fechaVisita;
		this.horaVisita = horaVisita;
		this.dirVisita = dirVisita;
		this.listaChequeo = listaChequeo;
	}

	public int getIdVisita() {
		return idVisita;
	}

	public void setIdVisita(int idVisita) {
		this.idVisita = idVisita;
	}

	public LocalDate getFechaVisita() {
		return fechaVisita;
	}

	public void setFechaVisita(LocalDate fechaVisita) {
		this.fechaVisita = fechaVisita;
	}

	public LocalTime getHoraVisita() {
		return horaVisita;
	}

	public void setHoraVisita(LocalTime horaVisita) {
		this.horaVisita = horaVisita;
	}

	public String getDirVisita() {
		return dirVisita;
	}

	public void setDirVisita(String dirVisita) {
		this.dirVisita = dirVisita;
	}

	public ArrayList<Visita> getListaChequeo() {
		return listaChequeo;
	}

	public void setListaChequeo(ArrayList<Visita> listaChequeo) {
		this.listaChequeo = listaChequeo;
	}

	@Override
	public String toString() {
		return "Visita [idVisita=" + idVisita + ", fechaVisita=" + fechaVisita + ", horaVisita=" + horaVisita
				+ ", dirVisita=" + dirVisita + ", listaChequeo=" + listaChequeo + "]";
	}
	
	

	
	
	
}
