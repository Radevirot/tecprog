package tp3ej2;

import java.util.Calendar;
import java.util.Vector;

public class Alumno {

  private Calendar fecha_ingreso;
  private Calendar fecha_egreso;
  private Persona persona;
  private Carrera carrera;
  private Vector<Examen> examen;

  
  
  
  public Alumno(Calendar fecha_ingreso, Calendar fecha_egreso, Persona persona, Carrera carrera) {
	super();
	this.fecha_ingreso = fecha_ingreso;
	this.fecha_egreso = fecha_egreso;
	this.persona = persona;
	this.carrera = carrera;
	this.examen = new Vector<Examen>();
	
	persona.addAlumno(this);
	carrera.addAlumno(this);
	
}

public void addExamen(Examen oExamen) {examen.add(oExamen);}


public void mostrar() {
	int anio = fecha_ingreso.get(Calendar.YEAR), mes = fecha_ingreso.get(Calendar.MONTH)+1, dia = fecha_ingreso.get(Calendar.DATE);
	System.out.println("Alumno: " + this.persona.mostrar() + " - Ingreso: " + dia + "/" + mes + "/" + anio + ". Carrera: " + this.carrera.mostrar()); 
  }

}