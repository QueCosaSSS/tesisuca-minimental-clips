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

        public void setLugar(Integer Lugar) {
        this.Lugar = Lugar.floatValue();
    }
        
    public Float getCiudad() {
        return Ciudad;
    }

    public void setCiudad(Float Ciudad) {
        this.Ciudad = Ciudad;
    }
    public void setCiudad(Integer Ciudad) {
        this.Ciudad = Ciudad.floatValue();
    }
    public Float getPais() {
        return Pais;
    }

    public void setPais(Float Pais) {
        this.Pais = Pais;
    }
    public void setPais(Integer Pais) {
        this.Pais = Pais.floatValue();
    }
    public Float getPiso() {
        return Piso;
    }

    public void setPiso(Float Piso) {
        this.Piso = Piso;
    }
    public void setPiso(Integer Piso) {
        this.Piso = Piso.floatValue();
    }
    public Float getCalle() {
        return Calle;
    }

    public void setCalle(Float Calle) {
        this.Calle = Calle;
    }
    public void setCalle(Integer Calle) {
        this.Calle = Calle.floatValue();
    }
    public Float getOrientacionEspacialCalculado() {
        return OrientacionEspacialCalculado;
    }

    public void setOrientacionEspacialCalculado(Float Calculado) {
        this.OrientacionEspacialCalculado = Calculado;
    }
    public void setOrientacionEspacialCalculado(Integer Calculado) {
        this.OrientacionEspacialCalculado = Calculado.floatValue();
    }
}
