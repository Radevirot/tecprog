package tp2ej2y4;
import java.util.Calendar;

public class Jornada {

  private Calendar fecha;
  private int horas;
  
public Jornada(Calendar fecha, int horas) {
	super();
	this.fecha = fecha;
	this.horas = horas;
}

public boolean pertenecePeriodo(Calendar periodo) {
	boolean sonIguales = (fecha.get(Calendar.MONTH) == periodo.get(Calendar.MONTH))
						&& (fecha.get(Calendar.YEAR) == periodo.get(Calendar.YEAR));
	return sonIguales;
}

public Integer mostrarHoras() {
	return horas;
}

  

}