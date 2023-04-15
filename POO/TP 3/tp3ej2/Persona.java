package tp3ej2;

import java.util.Vector;

public class Persona {

  private String nombre;
  private Vector<Alumno> alumno;

  public Persona(String nombre) {
	super();
	this.nombre = nombre;
	this.alumno = new Vector<Alumno>();
}

public void addAlumno(Alumno oAlumno) {alumno.add(oAlumno);}

public String mostrar() {
	return this.nombre;
  }

}