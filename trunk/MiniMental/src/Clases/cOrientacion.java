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
public class cOrientacion implements Serializable{

    public cOrientacion() {
    }
    
    private cOrientacionTemporal OrientacionTemporal;
    private cOrientacionEspacial OrientacionEspacial;
    private Float Calculado;

    @Embedded
    public cOrientacionTemporal getOrientacionTemporal() {
        return OrientacionTemporal;
    }

    public void setOrientacionTemporal(cOrientacionTemporal OrientacionTemporal) {
        this.OrientacionTemporal = OrientacionTemporal;
    }

    @Embedded
    public cOrientacionEspacial getOrientacionEspacial() {
        return OrientacionEspacial;
    }
    public void setOrientacionEspacial(cOrientacionEspacial OrientacionEspacial) {
        this.OrientacionEspacial = OrientacionEspacial;
    }

    public Float getCalculado() {
        return Calculado;
    }

    public void setCalculado(Float Calculado) {
        this.Calculado = Calculado;
    }
    
}
