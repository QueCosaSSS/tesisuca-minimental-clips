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
    private Float OrientacionTemporalCalculado;

    public Float getFecha() {
        return Fecha;
    }

    public void setFecha(Float Fecha) {
        this.Fecha = Fecha;
    }
    public void setFecha(Integer Fecha) {
        this.Fecha = Fecha.floatValue();
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
public void setMes(Integer Mes) {
        this.Mes = Mes.floatValue();
    }
    public Float getAno() {
        return Ano;
    }

    public void setAno(Float Ano) {
        this.Ano = Ano;
    }

        public void setAno(Integer Ano) {
        this.Ano = Ano.floatValue();
    }
        
    public Float getOrientacionTemporalCalculado() {
        return OrientacionTemporalCalculado;
    }

    public void setOrientacionTemporalCalculado(Float Calculado) {
        this.OrientacionTemporalCalculado = Calculado;
    }

        public void setOrientacionTemporalCalculado(Integer Calculado) {
        this.OrientacionTemporalCalculado = Calculado.floatValue();
    }
}
