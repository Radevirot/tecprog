package tp3ej1;

import java.util.Calendar;
import java.util.Iterator;
import java.util.Vector;

import tp1ej3.Alumno;

public class CarreraOriginal {
private Vector<Alumno> cAlumnos;
/**
* Este método cuenta la cantidad de egresados de la carrera
* y muestra el promedio de cada uno de ellos (Sin desaprobados)
*/
public Short listar_egresados() {
Short cant_egresados = 0;
// Recorro todos los alumnos de la CARRERA
Iterator<Alumno> iAlumnos = cAlumnos.iterator();
while(iAlumnos.hasNext()) {
Alumno oAlumno = iAlumnos.next();
Calendar fEgreso = oAlumno.fecha_egreso;
if ( fEgreso != null ) {
cant_egresados++;
// Recorro todas las NOTAS de los ALUMNOS
Float acumula_notas = 0;
Integer cant_examenes_aprobados = 0;
for(Examen oExamen : oAlumno.examenes) {
if (oExamen.nota >= 6) {
acumula_notas += oExamen.nota;
 cant_examenes_aprobados++;
}
} // Fin while
Float promedio = acumula_notas/cant_notas;
System.out.println( "Egresado " + oAlumno.nombre +
" - Promedio:" + promedio);
} // Fin if
} // Fin while
return cant_egresados;
}
}
