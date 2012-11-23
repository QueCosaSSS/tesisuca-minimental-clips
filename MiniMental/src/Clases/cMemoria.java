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
public class cMemoria implements Serializable{
    
    private float Fijacion;
    private float Atencion;
    private float Recuerdo;

    /**
     * Get the value of Recuerdo
     *
     * @return the value of Recuerdo
     */
    public float getRecuerdo() {
        return Recuerdo;
    }

    /**
     * Set the value of Recuerdo
     *
     * @param Recuerdo new value of Recuerdo
     */
    public void setRecuerdo(float Recuerdo) {
        this.Recuerdo = Recuerdo;
    }


    /**
     * Get the value of Atencion
     *
     * @return the value of Atencion
     */
    public float getAtencion() {
        return Atencion;
    }

    /**
     * Set the value of Atencion
     *
     * @param Atencion new value of Atencion
     */
    public void setAtencion(float Atencion) {
        this.Atencion = Atencion;
    }


    /**
     * Get the value of Fijacion
     *
     * @return the value of Fijacion
     */
    public float getFijacion() {
        return Fijacion;
    }

    /**
     * Set the value of Fijacion
     *
     * @param Fijacion new value of Fijacion
     */
    public void setFijacion(float cFijacion) {
        this.Fijacion = cFijacion;
    }

}
