/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;

/**
 *
 * @author santiago
 */
public class cDiagmosticoDetalle {
    
    private String Detalle;
    
    private Integer IdDiagmosticoDetalle;


    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public Integer getIdDiagmosticoDetalle() {
        return IdDiagmosticoDetalle;
    }

    public void setIdDiagmosticoDetalle(Integer IdDiagmosticoDetalle) {
        this.IdDiagmosticoDetalle = IdDiagmosticoDetalle;
    }

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public String getDetalle() {
        return Detalle;
    }

    public void setDetalle(String Detalle) {
        this.Detalle = Detalle;
    }
    
}
