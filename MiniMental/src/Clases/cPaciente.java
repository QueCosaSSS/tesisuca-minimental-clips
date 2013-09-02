/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.*;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author santiago
 */
@Entity
@Table(name = "Pacientes")
public class cPaciente {
    
    private String Documento;
    private eTipoDocumento TipoDocumento;
    private String Apellido;
    private String Nombre;
    private Calendar FechaNacimiento;
    private Integer IdPaciente;    
    private Set<cEntrevista> Entrevistas;

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }

    public eTipoDocumento getTipoDocumento() {
        return TipoDocumento;
    }

    public void setTipoDocumento(eTipoDocumento TipoDocumento) {
        this.TipoDocumento = TipoDocumento;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    @Temporal(TemporalType.DATE)
    public Calendar getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(Calendar FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }
    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public Integer getIdPaciente() {
        return IdPaciente;
    }

    public void setIdPaciente(Integer IdPaciente) {
        this.IdPaciente = IdPaciente;
    }

    
    @OneToMany (cascade= CascadeType.ALL, fetch= FetchType.EAGER)
    public Set<cEntrevista> getEntrevistas() {
        return Entrevistas;
    }

    public void setEntrevistas(Set<cEntrevista> Entrevistas) {
        this.Entrevistas = Entrevistas;
    }
    

    
    
    
}
