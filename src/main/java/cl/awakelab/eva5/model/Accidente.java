package cl.awakelab.eva5.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "accidente")
public class Accidente {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_accidente")
	private int idAccidente;

	@Column(name = "fecha_accidente")
	private LocalDate fechaAccidente;
	@Column(name = "hora_accidente")
	private LocalTime horaAccidente;

	private String gravedad;

	private String descripcion;

	@Column(name = "fecha_ingreso")
	private LocalDate fechaIngreso;
	@Column(name = "hora_ingreso")
	private LocalTime horaIngreso;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cliente_id_cliente")
	private Cliente cliente;

	public Accidente(int idAccidente, LocalDate fechaAccidente, LocalTime horaAccidente, String gravedad,
			String descripcion, LocalDate fechaIngreso, LocalTime horaIngreso, Cliente cliente) {
		super();
		this.idAccidente = idAccidente;
		this.fechaAccidente = fechaAccidente;
		this.horaAccidente = horaAccidente;
		this.gravedad = gravedad;
		this.descripcion = descripcion;
		this.fechaIngreso = fechaIngreso;
		this.horaIngreso = horaIngreso;
		this.cliente = cliente;
	}

	public int getIdAccidente() {
		return idAccidente;
	}

	public void setIdAccidente(int idAccidente) {
		this.idAccidente = idAccidente;
	}

	public LocalDate getFechaAccidente() {
		return fechaAccidente;
	}

	public void setFechaAccidente(LocalDate fechaAccidente) {
		this.fechaAccidente = fechaAccidente;
	}

	public LocalTime getHoraAccidente() {
		return horaAccidente;
	}

	public void setHoraAccidente(LocalTime horaAccidente) {
		this.horaAccidente = horaAccidente;
	}

	public String getGravedad() {
		return gravedad;
	}

	public void setGravedad(String gravedad) {
		this.gravedad = gravedad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public LocalDate getFechaIngreso() {
		return fechaIngreso;
	}

	public void setFechaIngreso(LocalDate fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}

	public LocalTime getHoraIngreso() {
		return horaIngreso;
	}

	public void setHoraIngreso(LocalTime horaIngreso) {
		this.horaIngreso = horaIngreso;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	@Override
	public String toString() {
		return "Accidente [idAccidente=" + idAccidente + ", fechaAccidente=" + fechaAccidente + ", horaAccidente="
				+ horaAccidente + ", gravedad=" + gravedad + ", descripcion=" + descripcion + ", fechaIngreso="
				+ fechaIngreso + ", horaIngreso=" + horaIngreso + ", cliente=" + cliente + "]";
	}

}