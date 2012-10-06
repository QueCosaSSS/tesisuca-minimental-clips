/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.logging.Logger;

/**
 *
 * @author santiago
 */
public class cOrientacion {

    public cOrientacion() {
    }
    
    private cOrientacionTemporal OrientacionTemporal;
    private cOrientacionEspacial OrientacionEspacial;

    public cOrientacionTemporal getOrientacionTemporal() {
        return OrientacionTemporal;
    }

    public void setOrientacionTemporal(cOrientacionTemporal OrientacionTemporal) {
        this.OrientacionTemporal = OrientacionTemporal;
    }

    public cOrientacionEspacial getOrientacionEspacial() {
        return OrientacionEspacial;
    }

    public void setOrientacionEspacial(cOrientacionEspacial OrientacionEspacial) {
        this.OrientacionEspacial = OrientacionEspacial;
    }
    
}
