package tp2ej3;

public class Auto extends Vehiculo {

  private Float arancel;
  public Pais pais;

  
  public Auto(String marca, int modelo, String patente, float precio, int kilometraje, Due�o due�o,
		Float arancel, Pais pais) {
	super(marca, modelo, patente, precio, kilometraje, due�o);
	this.arancel = arancel;
	this.pais = pais;
}




public Boolean esAutoNacional() {
  
	  Boolean esNac;
	  esNac = this.pais.getPais() == Pais.NACIONAL;
	  return esNac;
	  
  }

}