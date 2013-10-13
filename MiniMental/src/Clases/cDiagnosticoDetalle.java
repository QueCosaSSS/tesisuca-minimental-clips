/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

/**
 *
 * @author santiago
 */
@Entity
@Table(name = "DiagnosticoDetalles")
public class cDiagnosticoDetalle implements Serializable  {

    public cDiagnosticoDetalle() {
    }
    
    private String Detalle;
    
    private Integer IdDiagnosticoDetalle;


    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public Integer getIdDiagnosticoDetalle() {
        return IdDiagnosticoDetalle;
    }

    public void setIdDiagnosticoDetalle(Integer IdDiagmosticoDetalle) {
        this.IdDiagnosticoDetalle = IdDiagmosticoDetalle;
    }
    
    public String getDetalle() {
        return Detalle;
    }

    public void setDetalle(String Detalle) {
        this.Detalle = Detalle;
    }
    
}
