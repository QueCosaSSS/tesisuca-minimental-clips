/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author santiago
 */
public class cMiniMental {

    public cMiniMental() {
    }

    private int DiaDeSemana;
    private Calendar Fecha;
    private int Estacion;
    private Boolean Lugar;
    private Boolean Calle;
    private int Piso;
    private Boolean Ciudad;
    private Boolean Pais;

    public int getDiaDeSemana() {
        return DiaDeSemana;
    }

    public Calendar getFecha() {
        return Fecha;
    }

    public int getEstacion() {
        return Estacion;
    }

    public Boolean getLugar() {
        return Lugar;
    }

    public Boolean getCalle() {
        return Calle;
    }

    public int getPiso() {
        return Piso;
    }

    public Boolean getCiudad() {
        return Ciudad;
    }

    public Boolean getPais() {
        return Pais;
    }

    public void setDiaDeSemana(int DiaDeSemana) {
        this.DiaDeSemana = DiaDeSemana;
    }

    public void setFecha(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.Fecha = t;
    }

    public void setEstacion(int Estacion) {
        this.Estacion = Estacion;
    }

    public void setLugar(Boolean Lugar) {
        this.Lugar = Lugar;
    }

    public void setCalle(Boolean Calle) {
        this.Calle = Calle;
    }

    public void setPiso(int Piso) {
        this.Piso = Piso;
    }

    public void setCiudad(Boolean Ciudad) {
        this.Ciudad = Ciudad;
    }

    public void setPais(Boolean Pais) {
        this.Pais = Pais;
    }
}
