package tp2ej2y4;

import java.util.Calendar;

public class Mensualizado extends Trabajador implements Imprimible {

	public Jefe jefe;
    public Categoria categoria;
    
    public Mensualizado(String nombre, String apellidos,
    		String direccion, int dni, Jefe jefe, Categoria categoria) {
		super(nombre, apellidos, direccion, dni);
		this.jefe = jefe;
		this.categoria = categoria;
		this.jefe.agregarMensualizado(this);
	}

	@Override
	public Float calcularRemuneracion(Calendar periodo) {
		return this.categoria.calcularSueldo();
	}

	@Override
	public String imprimir() {
		
		return this.mostrar() + " // Mensualizado - " + this.categoria.mostrarTipo();
	}

}