package tp3ej2;

import java.util.Vector;

public class Carrera {

  private String nombre;
  private Vector<Alumno> alumno;
  private Facultad facultad;
  private Vector<Catedra> catedra;
  
public Carrera(String nombre, Facultad facultad) {
	super();
	this.nombre = nombre;
	this.alumno = new Vector<Alumno>();
	this.facultad = facultad;
	this.catedra = new Vector<Catedra>();
}
  
public void addAlumno(Alumno oAlumno) {alumno.add(oAlumno);}
public void addCatedra(Catedra oCatedra) {catedra.add(oCatedra);}

public String mostrar() {
	return this.nombre;
}
  

}