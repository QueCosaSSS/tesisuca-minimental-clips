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
public class cOrientacionTemporal implements Serializable{
    
    private Float Fecha;
    private Boolean Estacion;
    private Float Mes;
    private Float Ano;
    private Float Calculado;

    public Float getFecha() {
        return Fecha;
    }

    public void setFecha(Float Fecha) {
        this.Fecha = Fecha;
    }

    public Boolean getEstacion() {
        return Estacion;
    }

    public void setEstacion(Boolean Estacion) {
        this.Estacion = Estacion;
    }

    public Float getMes() {
        return Mes;
    }

    public void setMes(Float Mes) {
        this.Mes = Mes;
    }

    public Float getAno() {
        return Ano;
    }

    public void setAno(Float Ano) {
        this.Ano = Ano;
    }

    public Float getCalculado() {
        return Calculado;
    }

    public void setCalculado(Float Calculado) {
        this.Calculado = Calculado;
    }
    
}
