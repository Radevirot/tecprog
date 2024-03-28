package tp3ej2;

import java.util.Vector;

public class Catedra {

	private String nombre;
	private Vector<Comision> comision;
	private Vector<Examen> examen;
	
	
  
  public Catedra(String nombre) {
		super();
		this.nombre = nombre;
		this.comision = new Vector<Comision>();
		this.examen = new Vector<Examen>();
	}

public void addExamen(Examen oExamen) {examen.add(oExamen);}
public void addComision(Comision oComision) {comision.add(oComision);}

public void listarAlumnos() {
	
	for(Comision c : comision) {
		if (c.esVigente()) {
			c.mostrar();
			c.mostrarAlumnos();
		}
	}
	
  }

public void mostrar() {
	System.out.println("Cátedra: " + this.nombre);
}

}