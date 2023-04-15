package tp3ej2;

import java.util.Calendar;
import java.util.Vector;

public class Comision {

  private Integer fechain_academico;
  private String identificacion;
  private Vector<Alumno> alumno;
  private Docente docente;

  public Comision(Integer fechain_academico, String identificacion, Docente docente) {
	super();
	this.fechain_academico = fechain_academico;
	this.identificacion = identificacion;
	this.alumno = new Vector<Alumno>();
	this.docente = docente;
}
  
 public void addAlumno(Alumno oAlumno) {alumno.add(oAlumno);}
  
public Boolean esVigente() {
	Calendar actual = Calendar.getInstance();
  return this.fechain_academico.equals(actual.get(Calendar.YEAR));
  }

  public void mostrarAlumnos() {
	  for(Alumno a : alumno) {
		  a.mostrar();
	  }
  }

  public void mostrar() {
	  System.out.println("Comision: " + this.identificacion);
  }

}