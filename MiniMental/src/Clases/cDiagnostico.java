/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Embeddable;
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
@Table(name = "Diagnosticos")
public class cDiagnostico implements Serializable{
    
    private Integer idDiagnostico;

    public void setIdDiagnostico(Integer idDiagnostico) {
        this.idDiagnostico = idDiagnostico;
    }

    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public Integer getIdDiagnostico() {
        return idDiagnostico;
    }
    
    private Boolean Olvido;

    /**
     * Get the value of Olvido
     *
     * @return the value of Olvido
     */
    public Boolean getOlvido() {
        return Olvido;
    }

    /**
     * Set the value of Olvido
     *
     * @param Olvido new value of Olvido
     */
    public void setOlvido(Boolean Olvido) {
        this.Olvido = Olvido;
    }

    private Boolean Queja;

    /**
     * Get the value of Queja
     *
     * @return the value of Queja
     */
    public Boolean getQueja() {
        return Queja;
    }

    /**
     * Set the value of Queja
     *
     * @param Queja new value of Queja
     */
    public void setQueja(Boolean Queja) {
        this.Queja = Queja;
    }

        private Boolean Funcional;

    /**
     * Get the value of Funcional
     *
     * @return the value of Funcional
     */
    public Boolean getFuncional() {
        return Funcional;
    }

    /**
     * Set the value of Funcional
     *
     * @param Funcional new value of Funcional
     */
    public void setFuncional(Boolean Funcional) {
        this.Funcional = Funcional;
    }
    private Boolean Caracter;

    /**
     * Get the value of Caracter
     *
     * @return the value of Caracter
     */
    public Boolean getCaracter() {
        return Caracter;
    }

    /**
     * Set the value of Caracter
     *
     * @param Caracter new value of Caracter
     */
    public void setCaracter(Boolean Caracter) {
        this.Caracter = Caracter;
    }

    private cMiniMental Minimental;
    /**
     * Get the value of Minimental
     *
     * @return the value of Minimental
     */
    @Embedded
    public cMiniMental getMinimental() {
        return Minimental;
    }

    /**
     * Set the value of Minimental
     *
     * @param Minimental new value of Minimental
     */
    public void setMinimental(cMiniMental Minimental) {
        this.Minimental = Minimental;
    }
    
    private String Resultado;

    /**
     * Get the value of Resultado
     *
     * @return the value of Resultado
     */
    public String getResultado() {
        return Resultado;
    }

    /**
     * Set the value of Resultado
     *
     * @param Resultado new value of Resultado
     */
    public void setResultado(String Resultado) {
        this.Resultado = Resultado;
    }

}
