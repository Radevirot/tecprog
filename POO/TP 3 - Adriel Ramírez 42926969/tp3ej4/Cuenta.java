package tp3ej4;

import java.util.Calendar;
import java.util.Vector;

public class Cuenta {

  private Integer numero;
  private Titular titular;
  private Vector<Transaccion> transaccion;
  
  public Cuenta(Integer numero, Titular titular) {
	super();
	this.numero = numero;
	this.titular = titular;
	this.transaccion = new Vector<Transaccion>();
}
  
public void agregarTransaccion(Transaccion oTransaccion) {
	transaccion.add(oTransaccion);
}

public Float cobrarComision(Calendar periodo) {
  

	  Float sumatoria = sumatoriaTransacciones(periodo);
	  Integer cantidad = cantidadTransacciones(periodo);
	  
	  float comision = 30 - ((sumatoria/cantidad) * 0.005f);
	  if (comision<0) comision=0f;
	  
	  return comision;
	  
  }

  public Float sumatoriaTransacciones(Calendar periodo) {
	
	  Float sumatoria=0f;
	  
	  for(Transaccion oTransaccion: transaccion) {
		  if (oTransaccion.pertenecePeriodo(periodo))
		  sumatoria += oTransaccion.obtenerMontoEnPesos();
	  }
	  
	  return sumatoria;
	  
  }
  
  public Integer cantidadTransacciones(Calendar periodo) {
	  
	  Integer cantidad=0;
	  
	  for(Transaccion oTransaccion: transaccion) {
		  if (oTransaccion.pertenecePeriodo(periodo))
		  cantidad += 1;
	  }
	  
	  return cantidad;
	  
  }
  
  public void mostrar() {
	  System.out.print("Cuenta Nº" + numero);
  }
  
}

