package tp3ej4;

public class Moneda {

  private String tipo;
  private Float cotizacion;

  
  
  public Moneda(String tipo, Float cotizacion) {
	super();
	this.tipo = tipo;
	this.cotizacion = cotizacion;
}



public Float convertiraPesos(Float monto) {
  
	return monto*this.cotizacion;
  }

public void setCotizacion(Float cotizacion) {
	this.cotizacion = cotizacion;
}

}