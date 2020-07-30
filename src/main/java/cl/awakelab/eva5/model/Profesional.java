package cl.awakelab.eva5.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Profesional {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_profesional")
	private int idProfesional;
	@Column(name = "rut_profesional")
	private String rutProfesional;
	@Column(name = "nombre_profesional")
	private String nombreProfesional;
	@Column(name = "direccion_profesional")
	private String dirProfesional;
	@Column(name = "fono_profesional")
	private String fonoProfesional;
	@Column(name = "mail_profesional")
	private String mailProfesional;
	@Column(name = "estado_profesional")
	private int estadoProfesional;

	public Profesional(String rutProfesional, String nombreProfesional, String dirProfesional, String fonoProfesional,
			String mailProfesional) {
		super();

		this.rutProfesional = rutProfesional;
		this.nombreProfesional = nombreProfesional;
		this.dirProfesional = dirProfesional;
		this.fonoProfesional = fonoProfesional;
		this.mailProfesional = mailProfesional;

	}

	public String getRutProfesional() {
		return rutProfesional;
	}

	public void setRutProfesional(String rutProfesional) {
		this.rutProfesional = rutProfesional;
	}

	public String getNombreProfesional() {
		return nombreProfesional;
	}

	public void setNombreProfesional(String nombreProfesional) {
		this.nombreProfesional = nombreProfesional;
	}

	public String getDirProfesional() {
		return dirProfesional;
	}

	public void setDirProfesional(String dirProfesional) {
		this.dirProfesional = dirProfesional;
	}

	public String getFonoProfesional() {
		return fonoProfesional;
	}

	public void setFonoProfesional(String fonoProfesional) {
		this.fonoProfesional = fonoProfesional;
	}

	public String getMailProfesional() {
		return mailProfesional;
	}

	public void setMailProfesional(String mailProfesional) {
		this.mailProfesional = mailProfesional;
	}

	public int getEstadoProfesional() {
		return estadoProfesional;
	}

	public void setEstadoProfesional(int estadoProfesional) {
		this.estadoProfesional = estadoProfesional;
	}

	

}
