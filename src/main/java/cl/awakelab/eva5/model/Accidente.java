package cl.awakelab.eva5.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "accidente")
public class Accidente {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_accidente")
	private int idAccidente;
	
	@Column
	private LocalDate fechaAccidente;
	@Column
	private LocalTime horaAccidente;
	@Column
	private String tipoAccidente;
	@Column
	private String descripcion;
	@Column(name = "fecha_ingreso")
	private LocalDate fechaIngreso;
	@Column(name = "hora_ingreso")
	private LocalTime horaIngreso;
	
	public Accidente( LocalDate fechaAccidente, LocalTime horaAccidente, String tipoAccidente,
			String descripcion, LocalDate fechaIngreso, LocalTime horaIngreso) {
		super();

		this.fechaAccidente = fechaAccidente;
		this.horaAccidente = horaAccidente;
		this.tipoAccidente = tipoAccidente;
		this.descripcion = descripcion;
		this.fechaIngreso = fechaIngreso;
		this.horaIngreso = horaIngreso;
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

	public String getTipoAccidente() {
		return tipoAccidente;
	}

	public void setTipoAccidente(String tipoAccidente) {
		this.tipoAccidente = tipoAccidente;
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

	@Override
	public String toString() {
		return "Accidente [idAccidente=" + idAccidente + ", fechaAccidente=" + fechaAccidente + ", horaAccidente="
				+ horaAccidente + ", tipoAccidente=" + tipoAccidente + ", descripcion=" + descripcion
				+ ", fechaIngreso=" + fechaIngreso + ", horaIngreso=" + horaIngreso + "]";
	}
	
	

	
	
}
