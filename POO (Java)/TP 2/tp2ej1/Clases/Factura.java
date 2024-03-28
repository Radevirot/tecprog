package tp2ej1;

import java.util.Calendar;
import java.util.Vector;

public class Factura {

  private String numero;
  private Calendar fecha;
  private Cliente cliente;
  private Vector<DetalleFactura> detalleFactura;
  
  

  public Factura(String numero, Calendar fecha, Cliente cliente) {
	this.numero = numero;
	this.fecha = fecha;
	this.cliente = cliente;
	this.detalleFactura = new Vector<DetalleFactura>();
	
}



  public Float calcularTotal() {
	  
	  float stack = 0f;
	  
	  for(DetalleFactura oDetalle : detalleFactura) {
		  stack+=oDetalle.calcularTotal();
	  }
	  
	  return stack;
	  
  }

public void agregarDetalle(DetalleFactura oDetalleFactura) { detalleFactura.add(oDetalleFactura); }
  
}