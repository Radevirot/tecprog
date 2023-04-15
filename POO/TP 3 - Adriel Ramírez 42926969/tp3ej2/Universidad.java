package tp3ej2;

import java.util.Vector;

public class Universidad {

  private String nombre;
  private Vector<Facultad> facultad;
  
  

  public Universidad(String nombre) {
	super();
	this.nombre = nombre;
	this.facultad = new Vector<Facultad>();
}



public void listarAlumnos(Catedra catedra) {
	  
	  catedra.mostrar();
	  catedra.listarAlumnos();
	  
  }

}