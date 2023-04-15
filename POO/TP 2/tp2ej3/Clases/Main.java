package tp2ej3;

import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		
		Calendar fecha = Calendar.getInstance();
		
		Pais oPais1 = new Pais("Argentina");
		Pais oPais2 = new Pais("Alemania");
		Persona oPersona1 = new Persona("María","Suarez");
		Persona oPersona2 = new Persona("Juan","Perez");
		Dueño oDueño = new Dueño("543404516500",oPersona1);
		Comprador oComprador = new Comprador("42926969",oPersona2);
		
		
		Moto oMoto = new Moto("A",2000,"1B3-53A",50000f,0,null);
		Auto oAuto1 = new Auto("B",1999,"454-CBF",1000000f,0,oDueño,200000f,oPais1);
		Auto oAuto2 = new Auto("D",1999,"454-CBF",2000000f,0,null,200000f,oPais1);
		Auto oAuto3 = new Auto("E",1999,"454-CBF",100000f,0,oDueño,200000f,oPais2);
		Camioneta oCamioneta = new Camioneta("C", 2005, "777-AAA", 1250000f, 0, oDueño);
		
		Venta oVenta1 = new Venta(1050000f, fecha, oComprador);
		Venta oVenta2 = new Venta(2000000f, fecha, oComprador);
		Venta oVenta3 = new Venta(1350000f, fecha, oComprador);
		
		Detalle oDetalle1 = new Detalle(50000f, oMoto, oVenta1);
		Detalle oDetalle2 = new Detalle(1000000f, oAuto1, oVenta1);
		Detalle oDetalle3 = new Detalle(2000000f, oAuto2, oVenta2);
		Detalle oDetalle4 = new Detalle(2000000f, oAuto3, oVenta3);
		Detalle oDetalle5 = new Detalle(1250000f, oCamioneta, oVenta3);
		
		Concesionaria oConcesionaria = new Concesionaria("Nombre");
		
		oConcesionaria.addVehiculo(oCamioneta);
		oConcesionaria.addVehiculo(oAuto1);
		oConcesionaria.addVehiculo(oAuto2);
		oConcesionaria.addVehiculo(oAuto3);
		oConcesionaria.addVehiculo(oMoto);
		oConcesionaria.addVenta(oVenta3);
		oConcesionaria.addVenta(oVenta2);
		oConcesionaria.addVenta(oVenta1);
		
		oConcesionaria.calcularANacD();
	}

}
