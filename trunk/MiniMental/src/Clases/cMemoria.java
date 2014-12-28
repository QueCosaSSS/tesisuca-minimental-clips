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
    
    private Float Fijacion;
    private Float Atencion;
    private Float Recuerdo;
    private Float MemoriaCalculado;

    /**
     * Get the value of Recuerdo
     *
     * @return the value of Recuerdo
     */
    public Float getRecuerdo() {
        return Recuerdo;
    }

    /**
     * Set the value of Recuerdo
     *
     * @param Recuerdo new value of Recuerdo
     */
    public void setRecuerdo(Float Recuerdo) {
        this.Recuerdo = Recuerdo;
    }
    public void setRecuerdo(Integer Recuerdo) {
        this.Recuerdo = Recuerdo.floatValue();
    }

    /**
     * Get the value of Atencion
     *
     * @return the value of Atencion
     */
    public Float getAtencion() {
        return Atencion;
    }

    /**
     * Set the value of Atencion
     *
     * @param Atencion new value of Atencion
     */
    public void setAtencion(Float Atencion) {
        this.Atencion = Atencion;
    }
    public void setAtencion(Integer Atencion) {
        this.Atencion = Atencion.floatValue();
    }

    /**
     * Get the value of Fijacion
     *
     * @return the value of Fijacion
     */
    public Float getFijacion() {
        return Fijacion;
    }

    /**
     * Set the value of Fijacion
     *
     * @param Fijacion new value of Fijacion
     */
    public void setFijacion(Float cFijacion) {
        this.Fijacion = cFijacion;
    }
    public void setFijacion(Integer cFijacion) {
        this.Fijacion = cFijacion.floatValue();
    }
    public Float getMemoriaCalculado() {
        return MemoriaCalculado;
    }

    public void setMemoriaCalculado(Float Calculado) {
        this.MemoriaCalculado = Calculado;
    }
    public void setMemoriaCalculado(Integer Calculado) {
        this.MemoriaCalculado = Calculado.floatValue();
    }
}
