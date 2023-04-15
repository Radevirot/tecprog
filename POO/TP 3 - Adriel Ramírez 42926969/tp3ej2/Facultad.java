package tp3ej2;

import java.util.Vector;

public class Facultad {

  private String nombre;
  private Universidad universidad;
  private Vector<Carrera> carrera;
  
public Facultad(String nombre, Universidad universidad) {
	super();
	this.nombre = nombre;
	this.universidad = universidad;
	this.carrera = new Vector<Carrera>();
}
  
  

}