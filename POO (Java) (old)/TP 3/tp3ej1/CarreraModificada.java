package tp3ej1;

import java.util.Calendar;
import java.util.Iterator;
import java.util.Vector;

import tp1ej3.Alumno;

public class CarreraModificada {
	private Vector<Alumno> cAlumnos;

	//Para respetar el principio de responsabilidad única (y que tenga un único punto de salida), se
	//dividirá el método en dos, una parte se encargará de mostrar en pantalla los promedios de los 
	//egresados, mientras que la otra retornará la cantidad total de egresados.
	
	public void listar_egresados() {
			// Recorro todos los alumnos de la CARRERA
			Iterator<Alumno> iAlumnos = cAlumnos.iterator();
			while(iAlumnos.hasNext()) {
				Alumno oAlumno = iAlumnos.next();
				
				// En vez de pedir la fecha de egreso y revisar dentro de este método
				// si es nula, se le pregunta directamente al alumno si es egresado o no.
				// La razón de este cambio es porque no respetaba TDA, estaba solicitando
				// un atributo de alumno para decidir por él.
				
				Boolean esEgresado = oAlumno.esEgresado();

				if (esEgresado) {
					// Nuevamente por TDA, el cálculo de los promedios de los alumnos
					// se realiza dentro de un método de la clase Alumno y no en este.
					Float promedio = oAlumno.obtenerPromedio();
					System.out.println( "Egresado " + oAlumno.nombre +
							" - Promedio:" + promedio);
				} // Fin if
			} // Fin while
	}
	
	public Short obtenerTotalEgresados() {
		Short cant_egresados = 0;
		// Recorro todos los alumnos de la CARRERA
		Iterator<Alumno> iAlumnos = cAlumnos.iterator();
		while(iAlumnos.hasNext()) {
			Alumno oAlumno = iAlumnos.next();
			Boolean esEgresado = oAlumno.esEgresado();
			if (esEgresado) cant_egresados++;
		} // Fin while
		return cant_egresados;
}
	
}

