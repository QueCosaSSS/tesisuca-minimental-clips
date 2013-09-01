/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import javax.persistence.Embeddable;
import javax.persistence.Embedded;

/**
 *
 * @author santiago
 */
@Embeddable
public class cMiniMental implements Serializable{

    private cOrientacion Orientacion;
    private cMemoria Memoria;
    private cLenguaje Lenguaje;
    private Float Dibujo;
    private Float Calculado;

    /**
     * Get the value of Dibujo
     *
     * @return the value of Dibujo
     */
    public Float getDibujo() {
        return Dibujo;
    }

    /**
     * Set the value of Dibujo
     *
     * @param Dibujo new value of Dibujo
     */
    public void setDibujo(Float Dibujo) {
        this.Dibujo = Dibujo;
    }


    /**
     * Get the value of Lenguaje
     *
     * @return the value of Lenguaje
     */
    @Embedded    
    public cLenguaje getLenguaje() {
        return Lenguaje;
    }

    /**
     * Set the value of Lenguaje
     *
     * @param Lenguaje new value of Lenguaje
     */
    public void setLenguaje(cLenguaje Lenguaje) {
        this.Lenguaje = Lenguaje;
    }


    /**
     * Get the value of Memoria
     *
     * @return the value of Memoria
     */
    @Embedded
    public cMemoria getMemoria() {
        return Memoria;
    }

    /**
     * Set the value of Memoria
     *
     * @param Memoria new value of Memoria
     */
    public void setMemoria(cMemoria Memoria) {
        this.Memoria = Memoria;
    }


    /**
     *
     * @return
     */
    @Embedded
    public cOrientacion getOrientacion() {
        return Orientacion;
    }

    public void setOrientacion(cOrientacion Orientacion) {
        this.Orientacion = Orientacion;
    }

    public Float getCalculado() {
        return Calculado;
    }

    public void setCalculado(Float Calculado) {
        this.Calculado = Calculado;
    }
    
    
}
