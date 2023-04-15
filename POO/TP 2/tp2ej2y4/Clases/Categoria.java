package tp2ej2y4;

public class Categoria {

  private String tipo;
  private Float sueldo;
  
public Categoria(String tipo, Float sueldo) {
	super();
	this.tipo = tipo;
	this.sueldo = sueldo;
}

public String mostrarTipo() {
	return this.tipo;
}
  
public Float calcularSueldo() {
	return this.sueldo;
}


}