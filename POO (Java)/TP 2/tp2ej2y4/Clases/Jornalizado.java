package tp2ej2y4;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Vector;

public class Jornalizado extends Trabajador implements Imprimible {


	public Jefe jefe;
    public Vector<Jornada> jornada;
    public Vector<HorasJornal> horasJornal;
    
    public Jornalizado(String nombre, String apellidos, String direccion, int dni, Jefe jefe) {
		super(nombre, apellidos, direccion, dni);
		this.jefe=jefe;
		jornada = new Vector<Jornada>();
		horasJornal = new Vector<HorasJornal>();
		this.jefe.agregarJornalizado(this);
	}
    
    public void agregarJornada(Jornada oJornada) {
    	jornada.add(oJornada);
    }
    
    public void agregarHorasJornal(HorasJornal oHorasJornal) {
    	horasJornal.add(oHorasJornal);
    }

	@Override
	public Float calcularRemuneracion(Calendar periodo) {

		Float sueldo = 0f;
		Integer horasTrabajadas=0;
		
		//Cálculo cantidad de horas
		for (Jornada oJornada : jornada) {
			
			//Comparar mes y año en pertenecePeriodo()
			if (oJornada.pertenecePeriodo(periodo)) {
				horasTrabajadas += oJornada.mostrarHoras();
			}
			
		}
		
		// Busco los valores de las horas para el periodo
		boolean noEncontre=true;
		Iterator<HorasJornal> ihorasJornal = horasJornal.iterator();
		while(ihorasJornal.hasNext() && noEncontre) {
			
			for (HorasJornal oHoras: horasJornal) {
				if ( oHoras.pertenecePeriodo(periodo)) {
					sueldo += oHoras.calcularSueldo(horasTrabajadas);
					noEncontre = false;
				}
				
			}
			
		}
		
		return sueldo;
		
	}

	@Override
	public String imprimir() {
		return this.mostrar() + " // Jornalizado";
	}
    

}

