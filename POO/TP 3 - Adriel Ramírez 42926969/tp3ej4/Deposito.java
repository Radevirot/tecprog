package tp3ej4;

import java.util.Calendar;

public class Deposito extends Transaccion {

    private Monto monto;

	public Deposito(Calendar fecha, Monto monto) {
		super(fecha);
		this.monto = monto;
	}

	@Override
	public Float obtenerMontoEnPesos() {
		return this.monto.obtenerMontoEnPesos();
	}

    
    
}