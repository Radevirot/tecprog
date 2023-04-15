package tp3ej4;

import java.util.Calendar;
import java.util.Vector;

public class Banco {

  private String nombre;
  public Vector<Cuenta> cuenta;

  public Banco(String nombre) {
	super();
	this.nombre = nombre;
	this.cuenta = new Vector<Cuenta>();
}

public void agregarCuenta(Cuenta oCuenta) {
	cuenta.add(oCuenta);
}


public void listarCobros(Calendar periodo) {
	  
	  for(Cuenta oCuenta: cuenta) {
		 oCuenta.mostrar();
		 System.out.print(": $" + oCuenta.cobrarComision(periodo));
		 System.out.println();
	  }
	  
  }

}