package tp3ej4;

public class Monto {

  private Float monto;
  private Float montoEnPesos;
  private Moneda moneda;
    
  public Monto(Float monto, Moneda moneda) {
	super();
	this.monto = monto;
	this.moneda = moneda;
	this.montoEnPesos = convertiraPesos();
	
}

private Float convertiraPesos() {
  return this.moneda.convertiraPesos(this.monto);
  }

public Float obtenerMontoEnPesos() {
	return this.montoEnPesos;
}

}