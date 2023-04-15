package tp2ej1;

public class Producto {

  public String nombre;
  public Float precio;
  
  public Producto(String nombre, Float precio) {
	  this.nombre = nombre;
	  this.precio = precio;
  }

public Float calcularPrecioVenta() { return this.precio; }
  
}