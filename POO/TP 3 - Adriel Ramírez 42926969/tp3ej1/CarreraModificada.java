package tp3ej1;

import java.util.Calendar;
import java.util.Iterator;
import java.util.Vector;

import tp1ej3.Alumno;

public class CarreraModificada {
	private Vector<Alumno> cAlumnos;

	//Para respetar el principio de responsabilidad �nica (y que tenga un �nico punto de salida), se
	//dividir� el m�todo en dos, una parte se encargar� de mostrar en pantalla los promedios de los 
	//egresados, mientras que la otra retornar� la cantidad total de egresados.
	
	public void listar_egresados() {
			// Recorro todos los alumnos de la CARRERA
			Iterator<Alumno> iAlumnos = cAlumnos.iterator();
			while(iAlumnos.hasNext()) {
				Alumno oAlumno = iAlumnos.next();
				
				// En vez de pedir la fecha de egreso y revisar dentro de este m�todo
				// si es nula, se le pregunta directamente al alumno si es egresado o no.
				// La raz�n de este cambio es porque no respetaba TDA, estaba solicitando
				// un atributo de alumno para decidir por �l.
				
				Boolean esEgresado = oAlumno.esEgresado();

				if (esEgresado) {
					// Nuevamente por TDA, el c�lculo de los promedios de los alumnos
					// se realiza dentro de un m�todo de la clase Alumno y no en este.
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

