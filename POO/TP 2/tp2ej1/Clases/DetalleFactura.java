package tp2ej1;

public class DetalleFactura {

	private int unidades;
	private Float precioUnitario;
	private Producto producto;
  
  
  
  
public DetalleFactura(int unidades, Producto producto) {
	super();
	this.unidades = unidades;
	this.precioUnitario = producto.calcularPrecioVenta();
	this.producto = producto;
}




public Float calcularTotal() {
  
	return this.unidades * this.precioUnitario;
	
  }

}