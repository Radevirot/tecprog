package tp3ej4;

import java.util.Calendar;

public class Extraccion extends Transaccion {
	
	private Monto monto;
    public Extraccion(Calendar fecha, Monto monto) {
		super(fecha);
		this.monto = monto;
	}


	@Override
	public Float obtenerMontoEnPesos() {

		return monto.obtenerMontoEnPesos();
	}

}