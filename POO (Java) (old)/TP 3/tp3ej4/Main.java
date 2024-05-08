package tp3ej4;

import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		
		Banco oBanco = new Banco("Nombre");
		
		Titular oTitular1 = new Titular("Nombre1","Apellido1","11-11111111-1");
		Titular oTitular2 = new Titular("Nombre2","Apellido2","11-11111111-2");
		Titular oTitular3 = new Titular("Nombre3","Apellido3","11-11111111-3");
		
		Cuenta oCuenta1 = new Cuenta(111,oTitular1);
		Cuenta oCuenta2 = new Cuenta(121,oTitular2);
		Cuenta oCuenta3 = new Cuenta(113,oTitular3);
		
		Moneda oMoneda1 = new Moneda("Peso Argentino",1f);
		Moneda oMoneda2 = new Moneda("Dólar",210f);
		Moneda oMoneda3 = new Moneda("Real",25f);
		
		Monto oMonto1 = new Monto(3000f,oMoneda1);
		Monto oMonto2 = new Monto(10f,oMoneda2);
		Monto oMonto3 = new Monto(300f,oMoneda3);
		Monto oMonto4 = new Monto(1500f,oMoneda1);
		Monto oMonto5 = new Monto(22.3f,oMoneda2);
		Monto oMonto6 = new Monto(15000f,oMoneda3);
		
		Calendar fecha1 = Calendar.getInstance();
		Calendar fecha2 = Calendar.getInstance();
		fecha2.set(Calendar.MONTH,8);
		
		Extraccion oExtraccion1 = new Extraccion(fecha1,oMonto1);
		Extraccion oExtraccion2 = new Extraccion(fecha1,oMonto2);
		Extraccion oExtraccion3 = new Extraccion(fecha1,oMonto3);
		Deposito oDeposito1 = new Deposito(fecha2,oMonto4);
		Deposito oDeposito2 = new Deposito(fecha2,oMonto5);
		Deposito oDeposito3 = new Deposito(fecha2,oMonto6);
		
		oCuenta1.agregarTransaccion(oDeposito1);
		oCuenta1.agregarTransaccion(oExtraccion1);
		oCuenta2.agregarTransaccion(oDeposito2);
		oCuenta2.agregarTransaccion(oExtraccion2);
		oCuenta3.agregarTransaccion(oDeposito3);
		oCuenta3.agregarTransaccion(oExtraccion3);
		
		oBanco.agregarCuenta(oCuenta1);
		oBanco.agregarCuenta(oCuenta2);
		oBanco.agregarCuenta(oCuenta3);
		
		oBanco.listarCobros(fecha2);
	}

}
