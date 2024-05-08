package tp2ej2y4;

import java.util.Calendar;

public abstract class Trabajador {

  private String nombre;
  private String apellidos;
  private String direccion;
  private int dni;

  
  
  public Trabajador(String nombre, String apellidos, String direccion, int dni) {

	this.nombre = nombre;
	this.apellidos = apellidos;
	this.direccion = direccion;
	this.dni = dni;
}



public abstract Float calcularRemuneracion(Calendar periodo);

public String mostrar() {
	return this.nombre + " " + this.apellidos + " - " + this.dni; 
}


}

