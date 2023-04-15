package tp3ej2;

import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		
		Calendar fi = Calendar.getInstance();
		
		Universidad oUniversidad = new Universidad("UNL");
		
		Facultad oFacultad = new Facultad("FICH", oUniversidad);
		
		Carrera oCarrera = new Carrera("Ingeniería Informática", oFacultad);
		
		Catedra oCatedra = new Catedra("Tecnologías de Programación");
		oCarrera.addCatedra(oCatedra);
		
		Persona oPersona1 = new Persona("Juan Rosas");
		Persona oPersona2 = new Persona("Pedro Rosas");
		Persona oPersona3 = new Persona("Hernesto Rosas");
		Persona oPersona4 = new Persona("Docen Te");
		Docente oDocente = new Docente(oPersona4);
		
		Comision oComision1 = new Comision(2022,"A",oDocente);
		Comision oComision2 = new Comision(2021,"A",oDocente);
		
		oCatedra.addComision(oComision1);
		oCatedra.addComision(oComision2);
		
		Alumno oAlumno1 = new Alumno(fi, null, oPersona1, oCarrera);
		Alumno oAlumno2 = new Alumno(fi, null, oPersona2, oCarrera);
		Alumno oAlumno3 = new Alumno(fi, null, oPersona3, oCarrera);
		
		oComision1.addAlumno(oAlumno1);
		oComision1.addAlumno(oAlumno2);
		oComision2.addAlumno(oAlumno3);
		
		oUniversidad.listarAlumnos(oCatedra);
		
		
		
		
	}

}
