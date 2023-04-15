package tp2ej2y4;
import java.util.Calendar;
import java.util.Vector;

public class Jefe extends Trabajador {

	  private Float sueldo;
	  private Vector<Mensualizado> mensualizado;
	  private Vector<Jornalizado> jornalizado;
	
  public Jefe(String nombre, String apellidos, String direccion, int dni, Float sueldo) {
		super(nombre, apellidos, direccion, dni);
		this.sueldo = sueldo;
		this.mensualizado = new Vector<Mensualizado>();
		this.jornalizado = new Vector<Jornalizado>();
	}

@Override
public Float calcularRemuneracion(Calendar periodo) {
	return this.sueldo;
}

public void agregarMensualizado(Mensualizado oMensualizado) {
	mensualizado.add(oMensualizado);
}

public void agregarJornalizado(Jornalizado oJornalizado) {
	jornalizado.add(oJornalizado);
}

private String imprimir(Imprimible oImp) {
	return oImp.imprimir();
}

public void mostrarEmpleadosACargo() {
	
	for(Mensualizado oMen : mensualizado) System.out.println(imprimir(oMen));
	for(Jornalizado oJor : jornalizado) System.out.println(imprimir(oJor));
	
}

}