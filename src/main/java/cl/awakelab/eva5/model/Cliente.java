package cl.awakelab.eva5.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_cliente")
	private int idCliente;
	@Column(name = "rut_cliente")
	private String rutCliente;
	@Column(name = "nombre_cliente")
	private String nombreCliente;
	@Column(name = "razon_cliente")
	private String razonSocial;
	@Column(name = "giro")
	private String giro;
	@Column(name = "direccion_cliente")
	private String dirCliente;
	@Column(name = "fono_cliente")
	private String fonoCliente;
	@Column(name = "mail_cliente")
	private String mailCliente;
	@Column(name = "rubro")
	private String rubro;
	@Column(name = "estado_cliente")
	private int estadoCliente;
	

	public Cliente(String rutCliente, String nombreCliente, String razonSocial, String giro, String dirCliente,
			String fonoCliente, String mailCliente, String rubro) {
		super();
		this.rutCliente = rutCliente;
		this.nombreCliente = nombreCliente;
		this.razonSocial = razonSocial;
		this.giro = giro;
		this.dirCliente = dirCliente;
		this.fonoCliente = fonoCliente;
		this.mailCliente = mailCliente;
		this.rubro = rubro;
		this.estadoCliente = 1;
	}

	public int getId_cliente() {
		return idCliente;
	}

	public void setId_cliente(int id_cliente) {
		idCliente = id_cliente;
	}

	public String getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(String rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getNombreCliente() {
		return nombreCliente;
	}

	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}

	public String getRazonSocial() {
		return razonSocial;
	}

	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}

	public String getGiro() {
		return giro;
	}

	public void setGiro(String giro) {
		this.giro = giro;
	}

	public String getDirCliente() {
		return dirCliente;
	}

	public void setDirCliente(String dirCliente) {
		this.dirCliente = dirCliente;
	}

	public String getFonoCliente() {
		return fonoCliente;
	}

	public void setFonoCliente(String fonoCliente) {
		this.fonoCliente = fonoCliente;
	}

	public String getMailCliente() {
		return mailCliente;
	}

	public void setMailCliente(String mailCliente) {
		this.mailCliente = mailCliente;
	}

	public String getRubro() {
		return rubro;
	}

	public void setRubro(String rubro) {
		this.rubro = rubro;
	}

	public int getEstadoCliente() {
		return estadoCliente;
	}

	public void setEstadoCliente(int estadoCliente) {
		this.estadoCliente = estadoCliente;
	}

	@Override
	public String toString() {
		return "Cliente [Id_cliente=" + idCliente + ", rutCliente=" + rutCliente + ", nombreCliente=" + nombreCliente
				+ ", razonSocial=" + razonSocial + ", giro=" + giro + ", dirCliente=" + dirCliente + ", fonoCliente="
				+ fonoCliente + ", mailCliente=" + mailCliente + ", rubro=" + rubro + ", estadoCliente=" + estadoCliente
				+ "]";
	}

}
