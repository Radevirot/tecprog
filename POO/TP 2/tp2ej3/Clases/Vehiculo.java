package tp2ej3;

import java.util.Vector;

public class Vehiculo {

  private String marca;
  private int modelo;
  private String patente;
  private float precio;
  private int kilometraje;
  private Due�o due�o;
  private Detalle detalle;
  
  
  public Vehiculo(String marca, int modelo, String patente, float precio, int kilometraje, Due�o due�o) {
	super();
	this.marca = marca;
	this.modelo = modelo;
	this.patente = patente;
	this.precio = precio;
	this.kilometraje = kilometraje;
	this.due�o = due�o;
}

public void setDetalle(Detalle oDetalle) { this.detalle = oDetalle; }
  
public Boolean esAuto() {
  
	Boolean esAuto;
	esAuto = this instanceof Auto;
	return esAuto;
	
  }

public Boolean esAutoNacional() { return false; }

public Boolean tieneDuenio() {
	Boolean tiene = this.due�o != null;
	return tiene;
}

}
