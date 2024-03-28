package tp2ej3;

public class Auto extends Vehiculo {

  private Float arancel;
  public Pais pais;

  
  public Auto(String marca, int modelo, String patente, float precio, int kilometraje, Dueño dueño,
		Float arancel, Pais pais) {
	super(marca, modelo, patente, precio, kilometraje, dueño);
	this.arancel = arancel;
	this.pais = pais;
}




public Boolean esAutoNacional() {
  
	  Boolean esNac;
	  esNac = this.pais.getPais() == Pais.NACIONAL;
	  return esNac;
	  
  }

}