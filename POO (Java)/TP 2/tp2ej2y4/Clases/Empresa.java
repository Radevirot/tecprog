package tp2ej2y4;

import java.util.Calendar;
import java.util.List;
import java.util.Vector;

public class Empresa {

  private String nombre;
  private String cuit;
  public Vector<Trabajador> trabajador;

  
  
  public Empresa(String nombre, String cuit) {
	this.nombre = nombre;
	this.cuit = cuit;
	this.trabajador = new Vector<Trabajador>();
}

  public void agregarTrabajador(Trabajador oTrabajador) {
	  trabajador.add(oTrabajador);
  }

  public void calcularSueldos(Calendar periodo) {
	
	for (Trabajador oTrabajador : trabajador) {
		System.out.print(oTrabajador.mostrar());
		System.out.print(" - Sueldo: " + oTrabajador.calcularRemuneracion(periodo));
		System.out.println();
	}
	
  }
  
  public void listarEmpleadosPorJefe(Jefe oJefe) {
	  System.out.println("Jefe: "+oJefe.mostrar()); System.out.println("");
	  oJefe.mostrarEmpleadosACargo();
	  
  }

}