package tp2ej1;

import java.util.Vector;

public class Empresa {

	private String nombre;
	private Vector<Factura> factura;
	private IVA iVA;
	private Vector<Producto> producto;
	private Vector<Cliente> vClientes;

	public Empresa(String nombre, IVA iVA) {
		this.nombre = nombre;
		this.iVA = iVA;
		this.factura = new Vector<Factura>();
		this.producto = new Vector<Producto>();
		this.vClientes = new Vector<Cliente>();

	}



  public Float calcularTotalFacturas() {
	
	  float stack=0f;
	
	  for(Factura fac : factura) {
		stack+=fac.calcularTotal();
	  }
	
	  return stack;
	  
	  }

	public void agregarFactura(Factura oFactura) { factura.add(oFactura); }
	public void agregarCliente(Cliente oCliente) { vClientes.add(oCliente); }
	public void agregarProducto(Producto oProducto) { producto.add(oProducto); }

}