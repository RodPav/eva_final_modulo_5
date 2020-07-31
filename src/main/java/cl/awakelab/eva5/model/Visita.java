package cl.awakelab.eva5.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="visita")

public class Visita {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id_visita")
	private int idVisita;
	
	@Column(name="fecha_visita")
	private LocalDate fechaVisita;
	
	@Column(name="hora_visita")
	private LocalTime horaVisita;
	
	
	
	@JoinColumn(name="cliente_id_cliente")
	@OneToOne
	private Cliente cliente;
	
	@JoinColumn(name="profesional_id_profesional")
	@OneToOne
	private Profesional profesional;
	
	
	
	public Visita(int idVisita, LocalDate fechaVisita, LocalTime horaVisita, Cliente cliente, Profesional profesional) {
		super();
		this.idVisita = idVisita;
		this.fechaVisita = fechaVisita;
		this.horaVisita = horaVisita;
		this.cliente = cliente;
		this.profesional = profesional;
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
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Profesional getProfesional() {
		return profesional;
	}
	public void setProfesional(Profesional profesional) {
		this.profesional = profesional;
	}
	
	
	@Override
	public String toString() {
		return "Visita [idVisita=" + idVisita + ", fechaVisita=" + fechaVisita + ", horaVisita=" + horaVisita
				+ ", cliente=" + cliente + ", profesional=" + profesional + "]";
	}
	


	
}
