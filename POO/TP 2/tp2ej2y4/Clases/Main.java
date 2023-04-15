package tp2ej2y4;

import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		
		Empresa oEmpresa = new Empresa("MetalMasters","30-12345678-1");
		Jefe oJefe = new Jefe("Juana", "Perez", "Pinedo 564", 12345678, 120000f);
		
		Categoria oCategoriaA = new Categoria("A", 40000f);
		Categoria oCategoriaB = new Categoria("B", 30000f);
		Categoria oCategoriaC = new Categoria("C", 25000f);
		
		Mensualizado oMensualizado1 = new Mensualizado("Ernesto", "Rodriguez",
														"San Martín 777", 11111111, oJefe, oCategoriaA);
		Mensualizado oMensualizado2 = new Mensualizado("Adrián", "Hernandez",
														"San Martín 777", 22222222, oJefe, oCategoriaB);
		Mensualizado oMensualizado3 = new Mensualizado("Armando Esteban", "Quito",
														"Blas Parera 420", 33333333, oJefe, oCategoriaC);
		
		Jornalizado oJornalizado1 = new Jornalizado("Susana", "Oria", "Blas Parera 144", 12121212, oJefe);
		Jornalizado oJornalizado2 = new Jornalizado("Rochus", "Eide", "Fiddler 94", 21212121, oJefe);
		
		Calendar cJornada1 = Calendar.getInstance(); cJornada1.set(2022, 0, 30);
		Calendar cJornada2 = Calendar.getInstance();
		Jornada oJornada1 = new Jornada(cJornada1, 70);
		Jornada oJornada2 = new Jornada(cJornada2, 50);
		
		HorasJornal oHorasJornal = new HorasJornal(200, 400, cJornada1, null);
		
		oJornalizado1.agregarJornada(oJornada1);
		oJornalizado1.agregarHorasJornal(oHorasJornal);
		oJornalizado2.agregarJornada(oJornada2);
		oJornalizado2.agregarHorasJornal(oHorasJornal);
		
		oEmpresa.agregarTrabajador(oJornalizado1);
		oEmpresa.agregarTrabajador(oJornalizado2);
		oEmpresa.agregarTrabajador(oMensualizado1);
		oEmpresa.agregarTrabajador(oMensualizado2);
		oEmpresa.agregarTrabajador(oMensualizado3);
		oEmpresa.agregarTrabajador(oJefe);
		
		oEmpresa.calcularSueldos(cJornada1); // En caso de utilizar cJornada1, será Susana Oria la que
		// tenga sueldo, y en caso de utilizar cJornada2, será Rochus Eide el que tenga sueldo.
		
		System.out.println();
		System.out.println();
		
		oEmpresa.listarEmpleadosPorJefe(oJefe);
		
		

	}

}
