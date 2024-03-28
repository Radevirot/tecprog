package tp2ej1;

import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		
		// Se creó la factura dada en el ejemplo y una extra para comprobar el correcto
		// funcionamiento de la interacción entre las clases.
		
		IVA oIVA = new IVA("Monotributo");
		
		Empresa oEmpresa = new Empresa("Mayorista S.A.", oIVA);
		
		Cliente oCliente1 = new Cliente("R.I.", "30-12345678-1", oIVA);
		Cliente oCliente2 = new Cliente("R.I.", "30-87654321-5", oIVA);
		
		Producto oProducto1 = new Producto("Porcelanato 45x45", 6f);
		Producto oProducto2 = new Producto("Grifería FV 6 piezas", 400f);
		Producto oProducto3 = new Producto("Barra metálica 15x15", 200f);
		Producto oProducto4 = new Producto("Caja de 250 tornillos", 350f);
		DetalleFactura oDetalle1 = new DetalleFactura(100, oProducto1);
		DetalleFactura oDetalle2 = new DetalleFactura(1, oProducto2);
		DetalleFactura oDetalle3 = new DetalleFactura(25, oProducto3);
		DetalleFactura oDetalle4 = new DetalleFactura(40, oProducto4);
		
		Calendar fecha = Calendar.getInstance();
		
		Factura oFactura1 = new Factura("0001 0100", fecha, oCliente1);
		oFactura1.agregarDetalle(oDetalle1);
		oFactura1.agregarDetalle(oDetalle2);
		
		Factura oFactura2 = new Factura("0110 1001", fecha, oCliente2);
		oFactura2.agregarDetalle(oDetalle3);
		oFactura2.agregarDetalle(oDetalle4);
		
		oEmpresa.agregarCliente(oCliente1);
		oEmpresa.agregarCliente(oCliente2);
		oEmpresa.agregarFactura(oFactura1);
		oEmpresa.agregarFactura(oFactura2);
		oEmpresa.agregarProducto(oProducto1);
		oEmpresa.agregarProducto(oProducto2);
		
		
		System.out.println("La sumatoria total de todas las facturas emitidas por la empresa es de $"
							+ oEmpresa.calcularTotalFacturas());

	}

}
