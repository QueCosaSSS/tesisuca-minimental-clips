/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import javax.persistence.Embeddable;

/**
 *
 * @author santiago
 */
@Embeddable
public class cOrientacionEspacial implements Serializable{

    private Float Lugar;
    private Float Ciudad;
    private Float Pais;
    private Float Piso;
    private Float Calle;
    private Float OrientacionEspacialCalculado;

    public Float getLugar() {
        return Lugar;
    }

    public void setLugar(Float Lugar) {
        this.Lugar = Lugar;
    }

    public Float getCiudad() {
        return Ciudad;
    }

    public void setCiudad(Float Ciudad) {
        this.Ciudad = Ciudad;
    }

    public Float getPais() {
        return Pais;
    }

    public void setPais(Float Pais) {
        this.Pais = Pais;
    }

    public Float getPiso() {
        return Piso;
    }

    public void setPiso(Float Piso) {
        this.Piso = Piso;
    }

    public Float getCalle() {
        return Calle;
    }

    public void setCalle(Float Calle) {
        this.Calle = Calle;
    }

    public Float getOrientacionEspacialCalculado() {
        return OrientacionEspacialCalculado;
    }

    public void setOrientacionEspacialCalculado(Float Calculado) {
        this.OrientacionEspacialCalculado = Calculado;
    }
}
