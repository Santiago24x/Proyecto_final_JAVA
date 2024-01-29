package Modelo.Clases;

public class Ninja {

    private int ID_Ninja;
    private String nombre; 
    private int rango; 
    private String aldea; 
    private String habilidad;

    public int getID_Ninja() {
        return ID_Ninja;
    }

    public void setID_Ninja(int ID_Ninja) {
        this.ID_Ninja = ID_Ninja;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getRango() {
        return rango;
    }

    public void setRango(int rango) {
        this.rango = rango;
    }

    public String getAldea() {
        return aldea;
    }

    public void setAldea(String aldea) {
        this.aldea = aldea;
    }

    public String getHabilidad() {
        return habilidad;
    }

    public void setHabilidad(String habilidad) {
        this.habilidad = habilidad;
    }

    @Override
    public String toString() {
        return "Ninja{" + "ID_Ninja=" + ID_Ninja + ", nombre=" + nombre + ", rango=" + rango + ", aldea=" + aldea + ", habilidad=" + habilidad + '}';
    }
    
    
}
