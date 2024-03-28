package tp3ej2;

import java.util.Calendar;

public class Examen {

	private Calendar fecha;
	private Short nota;
	private TipoExamen tipoExamen;
	private Catedra catedra;
	private Alumno alumno;
	
	
	public Examen(Catedra catedra, Alumno alumno, Calendar fecha, Short nota, TipoExamen tipoExamen) {
		super();
		this.fecha = fecha;
		this.nota = nota;
		this.tipoExamen = tipoExamen;
		this.catedra = catedra;
		this.alumno = alumno;
		
		catedra.addExamen(this);
		alumno.addExamen(this);
	}
	
	

}