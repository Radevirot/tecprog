package tp2ej3;

public class Detalle {

  private Float precio;
  private Vehiculo oVehiculo;
  private Venta oVenta;

public Detalle(Float precio, Vehiculo oVehiculo, Venta oVenta) {
	super();
	this.precio = precio;
	this.oVehiculo = oVehiculo;
	this.oVenta = oVenta;
	oVehiculo.setDetalle(this);
	oVenta.agregarDetalle(this);
}

public Boolean esVtaAuto() {
	return oVehiculo.esAuto();
	}

public Boolean esNac() {
	return oVehiculo.esAutoNacional();
	}

public Boolean tieneDuenio() {
	return oVehiculo.tieneDuenio();
	}



  
}