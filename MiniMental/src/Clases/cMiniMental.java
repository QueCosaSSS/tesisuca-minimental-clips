/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import javax.persistence.Column;
import javax.persistence.Embedded;
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
@Table(name = "Minimentals")
public class cMiniMental {

    private int idMinimental;

    /**
     * Get the value of idMinimental
     *
     * @return the value of idMinimental
     */
    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public int getIdMinimental() {
        return idMinimental;
    }

    /**
     * Set the value of idMinimental
     *
     * @param idMinimental new value of idMinimental
     */
    public void setIdMinimental(int idMinimental) {
        this.idMinimental = idMinimental;
    }

    public cMiniMental() {
    }
    private cOrientacion Orientacion;

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
}
