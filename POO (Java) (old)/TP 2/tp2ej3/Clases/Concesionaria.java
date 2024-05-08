package tp2ej3;

import java.util.Vector;

public class Concesionaria {

  private String nombre;
  private Vector<Vehiculo> vehiculo;
  private Vector<Venta> venta;
  
  
  public Concesionaria(String nombre) {
	super();
	this.nombre = nombre;
	this.vehiculo = new Vector<Vehiculo>();
	this.venta = new Vector<Venta>();
}

public void addVehiculo(Vehiculo oVehiculo) { this.vehiculo.add(oVehiculo); }
public void addVenta(Venta oVenta) { this.venta.add(oVenta); }


public void calcularANacD() {
	
	float stack = 0f;
	
	for(Venta oVenta : venta) {
		if (oVenta.tieneANacD()) stack += oVenta.obtenerMonto();
	}
	
	System.out.println("Sumatoria de ventas que involucran");
	System.out.println("autos nacionales con dueño: $" + stack);
	
  }

  
  
}