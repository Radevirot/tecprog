package tp2ej2y4;
import java.util.Calendar;

public class HorasJornal {

  private int menor40;
  private int mayor40;
  private Calendar fechaDesde;
  private Calendar fechaHasta;
  
  
  
public HorasJornal(int menor40, int mayor40, Calendar fechaDesde, Calendar fechaHasta) {
	super();
	this.menor40 = menor40;
	this.mayor40 = mayor40;
	this.fechaDesde = fechaDesde;
	this.fechaHasta = fechaHasta;
}

public boolean pertenecePeriodo(Calendar periodo) {
	
	boolean pertenece=false;
	boolean mayorADesde = (fechaDesde.get(Calendar.MONTH) <= periodo.get(Calendar.MONTH))
			&& (fechaDesde.get(Calendar.YEAR) <= periodo.get(Calendar.YEAR));
	
	if (fechaHasta == null) {
		pertenece = mayorADesde;
	} else {
		boolean menorAHasta = (fechaHasta.get(Calendar.MONTH) >= periodo.get(Calendar.MONTH))
				&& (fechaHasta.get(Calendar.YEAR) >= periodo.get(Calendar.YEAR));
		pertenece = mayorADesde && menorAHasta;
	}
	
	return pertenece;
}

public Float calcularSueldo(Integer horasTrabajadas) {
	
	float sueldo;
	
	if(horasTrabajadas<=40) sueldo = this.menor40*horasTrabajadas;
	else sueldo = this.menor40*40 + this.mayor40*(horasTrabajadas-40);
	
	
	return sueldo;
}

  
}