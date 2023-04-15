package tp3ej4;

import java.util.Calendar;

public abstract class Transaccion {

  private Calendar fecha;

public Transaccion(Calendar fecha) {
	super();
	this.fecha = fecha;
}

public Boolean pertenecePeriodo(Calendar periodo) {
	Boolean pertenece;
	pertenece = (this.fecha.get(Calendar.MONTH) == periodo.get(Calendar.MONTH)) &&
			(this.fecha.get(Calendar.YEAR) == periodo.get(Calendar.YEAR));
	return pertenece;
	
}
  
 public abstract Float obtenerMontoEnPesos();
  
}