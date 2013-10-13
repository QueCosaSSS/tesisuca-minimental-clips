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
public class cLenguaje implements Serializable{
    
    private Float Accion;
    private Boolean Escritura;
    private Boolean Orden;
    private Boolean Frase;
    private Float LenguajeCalculado;

    /**
     * Get the value of Frase
     *
     * @return the value of Frase
     */
    public Boolean getFrase() {
        return Frase;
    }

    /**
     * Set the value of Frase
     *
     * @param Frase new value of Frase
     */
    public void setFrase(Boolean Frase) {
        this.Frase = Frase;
    }


    /**
     * Get the value of Orden
     *
     * @return the value of Orden
     */
    public Boolean getOrden() {
        return Orden;
    }

    /**
     * Set the value of Orden
     *
     * @param Orden new value of Orden
     */
    public void setOrden(Boolean Orden) {
        this.Orden = Orden;
    }


    /**
     * Get the value of Escritura
     *
     * @return the value of Escritura
     */
    public Boolean getEscritura() {
        return Escritura;
    }

    /**
     * Set the value of Escritura
     *
     * @param Escritura new value of Escritura
     */
    public void setEscritura(Boolean Escritura) {
        this.Escritura = Escritura;
    }


    /**
     * Get the value of Accion
     *
     * @return the value of Accion
     */
    public Float getAccion() {
        return Accion;
    }

    /**
     * Set the value of Accion
     *
     * @param Accion new value of Accion
     */
    public void setAccion(Float Accion) {
        this.Accion = Accion;
    }

    public Float getLenguajeCalculado() {
        return LenguajeCalculado;
    }

    public void setLenguajeCalculado(Float Calculado) {
        this.LenguajeCalculado = Calculado;
    }

    
    
    
    
    
}
