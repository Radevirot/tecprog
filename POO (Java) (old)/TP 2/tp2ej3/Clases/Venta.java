package tp2ej3;

import java.util.Calendar;
import java.util.Vector;

public class Venta {

  private Float monto;
  private Calendar fecha;
  private Comprador comprador;
  private Vector<Detalle> vDetalle;
  
  
  
  public Venta(Float monto, Calendar fecha, Comprador comprador) {
	super();
	this.monto = monto;
	this.fecha = fecha;
	this.comprador = comprador;
	this.vDetalle = new Vector<Detalle>();
}

public void agregarDetalle(Detalle oDetalle) { vDetalle.add(oDetalle); }

public Float obtenerMonto() {
	
	return this.monto;
}

public Boolean tieneANacD() {
	Boolean tieneANacD = false;
	for(Detalle oDetalle : vDetalle) {
		if (oDetalle.esVtaAuto() && oDetalle.tieneDuenio() && oDetalle.esNac()) {
			tieneANacD = true;
			break;
		}
	}
	return tieneANacD;
}


}
