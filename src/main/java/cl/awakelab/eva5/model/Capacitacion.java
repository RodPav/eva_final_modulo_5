package cl.awakelab.eva5.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "capacitacion")
public class Capacitacion {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_capacitacion")
	private int idCapacitacion;
	@Column(name = "fecha_capacitacion")
	private String fechaCapa;
	@Column(name = "hora_capacitacion")
	private String horaCapa;
	@Column(name = "cant_asistentes")
	private String cantAsistentes;
	private String tema;

	public Capacitacion(String fechaCapa, String horaCapa, String cantAsistentes, String temaCapa,
			String nombreClienteCapa, String nombreProfesionalCapa) {
		super();

		this.fechaCapa = fechaCapa;
		this.horaCapa = horaCapa;
		this.cantAsistentes = cantAsistentes;
		this.tema = temaCapa;
	}

	public int getIdCapacitacion() {
		return idCapacitacion;
	}

	public void setIdCapacitacion(int idCapacitacion) {
		this.idCapacitacion = idCapacitacion;
	}

	public String getFechaCapa() {
		return fechaCapa;
	}

	public void setFechaCapa(String fechaCapa) {
		this.fechaCapa = fechaCapa;
	}

	public String getHoraCapa() {
		return horaCapa;
	}

	public void setHoraCapa(String horaCapa) {
		this.horaCapa = horaCapa;
	}

	public String getCantAsistentes() {
		return cantAsistentes;
	}

	public void setCantAsistentes(String cantAsistentes) {
		this.cantAsistentes = cantAsistentes;
	}

	public String getTema() {
		return tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}

	@Override
	public String toString() {
		return "Capacitacion [idCapacitacion=" + idCapacitacion + ", fechaCapa=" + fechaCapa + ", horaCapa=" + horaCapa
				+ ", cantAsistentes=" + cantAsistentes + ", tema=" + tema + "]";
	}

	
}
