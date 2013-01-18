/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.Serializable;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author santiago
 */
@Entity
@Table(name = "Entrevistas")
public class cEntrevista implements Serializable{

    private Integer idEntrevista;

    public void setIdEntrevista(Integer idEntrevista) {
        this.idEntrevista = idEntrevista;
    }

    public void setFechaEntrevista(Calendar FechaEntrevista) {
        this.FechaEntrevista = FechaEntrevista;
    }

    public void setFecha(Calendar Fecha) {
        this.Fecha = Fecha;
    }

    public void setClasificacionAccion(Integer ClasificacionAccion) {
        this.ClasificacionAccion = ClasificacionAccion;
    }

    /**
     * Get the value of idEntrevista
     *
     * @return the value of idEntrevista
     */
    @Id
    @TableGenerator(name = "IDS", table = "IDS", pkColumnName = "idkey", pkColumnValue = "idvalue", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "IDS")
    @Column(name = "Id")
    public Integer getIdEntrevista() {
        return idEntrevista;
    }
    // <editor-fold defaultstate="collapsed" desc="Constructores">
//    public cEntrevista() {
//        this.FechaEntrevista = new GregorianCalendar();
//    }
//
//    public cEntrevista(int d, int m, int a) {
//        GregorianCalendar t = new GregorianCalendar();
//        t.clear();
//        t.set(Calendar.YEAR, a);
//        t.set(Calendar.MONTH, m);
//        t.set(Calendar.YEAR, a);
//
//        this.FechaEntrevista = t;
//    }
// </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Atributos">
    private int Escolaridad;
    private Calendar FechaEntrevista;
    private Boolean PacienteConProblemasAuditivo;
    private Boolean PacienteDeprimido;
    private Boolean OlvidaHechosRecientes;
    private Boolean OlvidoProgresa;
    private Boolean QuejaOlvidoPaciente;
    private Boolean QuejaOlvidoFamiliar;
    private Boolean PacienteMinimizaOlvidos;
    private Boolean HayImpactoFuncional;
    private Boolean HayImpactoEnCaracter;
    private Boolean PacienteAnsioso;
    // </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="GetSet">

    public void setFechaEntrevista(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.FechaEntrevista = t;
    }

    @Temporal(TemporalType.DATE)
    public Calendar getFechaEntrevista() {

        return this.FechaEntrevista;
    }

    public void setEscolaridad(int Escolaridad) {
        this.Escolaridad = Escolaridad;
    }

    public Integer getEscolaridad() {
        return Escolaridad;
    }

    public Boolean getPacienteConProblemasAuditivo() {
        return PacienteConProblemasAuditivo;
    }

    public void setPacienteConProblemasAuditivo(Boolean PacienteConProblemasAuditivo) {
        this.PacienteConProblemasAuditivo = PacienteConProblemasAuditivo;
    }

    public Boolean getPacienteDeprimido() {
        return PacienteDeprimido;
    }

    public void setPacienteDeprimido(Boolean PacienteDeprimido) {
        this.PacienteDeprimido = PacienteDeprimido;
    }

    public Boolean getPacienteAnsioso() {
        return PacienteAnsioso;
    }

    public void setPacienteAnsioso(Boolean PacienteAnsioso) {
        this.PacienteAnsioso = PacienteAnsioso;
    }

    public Boolean getOlvidaHechosRecientes() {
        return OlvidaHechosRecientes;
    }

    public void setOlvidaHechosRecientes(Boolean OlvidaHechosRecientes) {
        this.OlvidaHechosRecientes = OlvidaHechosRecientes;
    }

    public Boolean getOlvidoProgresa() {
        return OlvidoProgresa;
    }

    public void setOlvidoProgresa(Boolean OlvidoProgresa) {
        this.OlvidoProgresa = OlvidoProgresa;
    }

    public Boolean getQuejaOlvidoPaciente() {
        return QuejaOlvidoPaciente;
    }

    public void setQuejaOlvidoPaciente(Boolean QuejaOlvidoPaciente) {
        this.QuejaOlvidoPaciente = QuejaOlvidoPaciente;
    }

    public Boolean getQuejaOlvidoFamiliar() {
        return QuejaOlvidoFamiliar;
    }

    public void setQuejaOlvidoFamiliar(Boolean QuejaOlvidoFamiliar) {
        this.QuejaOlvidoFamiliar = QuejaOlvidoFamiliar;
    }

    public Boolean getPacienteMinimizaOlvidos() {
        return PacienteMinimizaOlvidos;
    }

    public void setPacienteMinimizaOlvidos(Boolean PacienteMinimizaOlvidos) {
        this.PacienteMinimizaOlvidos = PacienteMinimizaOlvidos;
    }

    public Boolean getHayImpactoFuncional() {
        return HayImpactoFuncional;
    }

    public void setHayImpactoFuncional(Boolean HayImpactoFuncional) {
        this.HayImpactoFuncional = HayImpactoFuncional;
    }

    public Boolean getHayImpactoEnCaracter() {
        return HayImpactoEnCaracter;
    }

    public void setHayImpactoEnCaracter(Boolean HayImpactoEnCaracter) {
        this.HayImpactoEnCaracter = HayImpactoEnCaracter;
    }
    // </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Metodos">  

    public Boolean EsUltimoDiaMes() {
        return (SameDay(FechaEntrevista, UltimoDiaMes(FechaEntrevista.get(Calendar.MONTH))));
    }

    public Boolean EsPrimerOSegundoDiaMes() {

        GregorianCalendar t_primero = new GregorianCalendar();
        t_primero.clear();
        t_primero.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_primero.set(Calendar.MONTH, FechaEntrevista.get(Calendar.MONTH));
        t_primero.set(Calendar.DAY_OF_MONTH, 1);

        GregorianCalendar t_segundo = new GregorianCalendar();
        t_segundo.clear();
        t_segundo.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_segundo.set(Calendar.MONTH, FechaEntrevista.get(Calendar.MONTH));
        t_segundo.set(Calendar.DAY_OF_MONTH, 2);

        return (SameDay(FechaEntrevista, t_primero) || SameDay(FechaEntrevista, t_segundo));
    }

    private GregorianCalendar UltimoDiaMes(Integer mes) {
        GregorianCalendar c = new GregorianCalendar();
        c.clear();
        c.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        c.set(Calendar.MONTH, mes);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH));
        return c;
    }

    private Boolean SameDay(Calendar cal1, Calendar cal2) {
        return cal1.get(Calendar.YEAR) == cal2.get(Calendar.YEAR) && cal1.get(Calendar.DAY_OF_YEAR) == cal2.get(Calendar.DAY_OF_YEAR);
    }

    public Boolean EsPrimerQuincenaAno() {
        return (FechaEntrevista.get(Calendar.DAY_OF_YEAR) < 16);
    }

    private Boolean EsUnaSemanaAntesDeOtono() {

        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.MARCH);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 14);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.MARCH);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 21);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanDespuesDeOtono() {
        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.JUNE);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 20);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.JUNE);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 28);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanaAntesDeInvierno() {

        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.JUNE);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 14);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.JUNE);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 21);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanDespuesDeInvierno() {
        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 20);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 28);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanaAntesDePrimavera() {

        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 14);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 21);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanDespuesDePrimavera() {
        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.DECEMBER);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 20);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.DECEMBER);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 28);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanaAntesDeVerano() {
        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.DECEMBER);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 14);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.DECEMBER);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 21);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    private Boolean EsUnaSemanDespuesDeVerano() {
        GregorianCalendar t_otono_a = new GregorianCalendar();
        t_otono_a.clear();
        t_otono_a.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_a.set(Calendar.MONTH, Calendar.MARCH);
        t_otono_a.set(Calendar.DAY_OF_MONTH, 20);

        GregorianCalendar t_otono_b = new GregorianCalendar();
        t_otono_b.clear();
        t_otono_b.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_otono_b.set(Calendar.MONTH, Calendar.MARCH);
        t_otono_b.set(Calendar.DAY_OF_MONTH, 28);

        return (FechaEntrevista.before(t_otono_a) && FechaEntrevista.after(t_otono_b));
    }

    public Boolean EsUnaSemanaAntesCambioEstacion() {

        return EsUnaSemanaAntesDeInvierno() || EsUnaSemanaAntesDeOtono() || EsUnaSemanaAntesDePrimavera() || EsUnaSemanaAntesDeVerano();
    }

    public Boolean EsUnaSemanaDespuesCambioEstacion() {

        return EsUnaSemanDespuesDeInvierno() || EsUnaSemanDespuesDeOtono() || EsUnaSemanDespuesDePrimavera() || EsUnaSemanDespuesDeVerano();
    }

    private int EstacionEntrevista() {
        GregorianCalendar t_d = new GregorianCalendar();
        t_d.clear();
        t_d.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_d.set(Calendar.MONTH, Calendar.MARCH);
        t_d.set(Calendar.DAY_OF_MONTH, 20);

        GregorianCalendar t_h = new GregorianCalendar();
        t_h.clear();
        t_h.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_h.set(Calendar.MONTH, Calendar.JUNE);
        t_h.set(Calendar.DAY_OF_MONTH, 21);

        if (FechaEntrevista.before(t_d) && FechaEntrevista.after(t_h)) {
            return cEstacion.Otono;
        }

        t_d.clear();
        t_d.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_d.set(Calendar.MONTH, Calendar.JUNE);
        t_d.set(Calendar.DAY_OF_MONTH, 20);

        t_h.clear();
        t_h.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_h.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_h.set(Calendar.DAY_OF_MONTH, 21);

        if (FechaEntrevista.before(t_d) && FechaEntrevista.after(t_h)) {
            return cEstacion.Invierno;
        }

        t_d.clear();
        t_d.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_d.set(Calendar.MONTH, Calendar.SEPTEMBER);
        t_d.set(Calendar.DAY_OF_MONTH, 20);

        t_h.clear();
        t_h.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
        t_h.set(Calendar.MONTH, Calendar.DECEMBER);
        t_h.set(Calendar.DAY_OF_MONTH, 21);

        if (FechaEntrevista.before(t_d) && FechaEntrevista.after(t_h)) {
            return cEstacion.Primavera;
        }

        return cEstacion.Verano;
    }
// </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Orientacion">
// <editor-fold defaultstate="collapsed" desc="OrientacionTemporal">
    private int DiaDeSemana;
    private Calendar Fecha;
    private int Estacion;
// <editor-fold defaultstate="collapsed" desc="OrientacionTemporal_GetSet">

    public int getDiaDeSemana() {
        return DiaDeSemana;
    }

    @Temporal(TemporalType.DATE)
    public Calendar getFecha() {
        return Fecha;
    }

    public int getEstacion() {
        return Estacion;
    }

    public void setDiaDeSemana(int DiaDeSemana) {
        this.DiaDeSemana = DiaDeSemana;
    }

    public void setFecha(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.Fecha = t;
    }

    public void setEstacion(int Estacion) {
        this.Estacion = Estacion;
    }
// </editor-fold>    

// <editor-fold defaultstate="collapsed" desc="OrientacionTemporal_Propiedades">
    public Boolean ContestaMesSiguiente() {
        if ((this.FechaEntrevista.get(Calendar.MONTH) == 11) && (this.getFecha().get(Calendar.MONTH) == 0)) {
            return true;
        } else {
            if (this.FechaEntrevista.get(Calendar.MONTH) == (this.getFecha().get(Calendar.MONTH) - 1)) {
                return true;
            } else {
                return false;
            }
        }
    }

    public Boolean ContestaMesAnterior() {
        if ((this.FechaEntrevista.get(Calendar.MONTH) == 0) && (this.getFecha().get(Calendar.MONTH) == 11)) {
            return true;
        } else {
            if (this.FechaEntrevista.get(Calendar.MONTH) == (this.getFecha().get(Calendar.MONTH) + 1)) {
                return true;
            } else {
                return false;
            }
        }
    }

    public Boolean ContestaAnoCorrecto() {
        return Fecha.get(Calendar.YEAR) == FechaEntrevista.get(Calendar.YEAR);
    }

    public Boolean ContestaAnoAnterior() {
        return Fecha.get(Calendar.YEAR) == (FechaEntrevista.get(Calendar.YEAR) - 1);
    }

    public Boolean ContestaEstacionSiguiente() {
        if ((this.EstacionEntrevista() == cEstacion.Primavera) && (this.getEstacion() == cEstacion.Verano)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Verano) && (this.getEstacion() == cEstacion.Otono)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Otono) && (this.getEstacion() == cEstacion.Invierno)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Invierno) && (this.getEstacion() == cEstacion.Primavera)) {
            return true;
        }
        return false;
    }

    public Boolean ContestaEstacionAnterior() {
        if ((this.EstacionEntrevista() == cEstacion.Primavera) && (this.getEstacion() == cEstacion.Invierno)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Verano) && (this.getEstacion() == cEstacion.Primavera)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Otono) && (this.getEstacion() == cEstacion.Verano)) {
            return true;
        }
        if ((this.EstacionEntrevista() == cEstacion.Invierno) && (this.getEstacion() == cEstacion.Otono)) {
            return true;
        }
        return false;
    }

    public Boolean ContestaFechaCorrecta() {
        return SameDay(Fecha, FechaEntrevista);
    }

    public Boolean ContestaEstacionCorrecta() {
        return Estacion == EstacionEntrevista();
    }

    public Boolean ContestaMesCorrecto() {
        return Fecha.get(Calendar.MONTH) == FechaEntrevista.get(Calendar.MONTH);
    }

    public Boolean ContestaDiaSemanaCorrecto() {
        return FechaEntrevista.get(Calendar.DAY_OF_WEEK) == DiaDeSemana;
    }
// </editor-fold>    
// </editor-fold>
// <editor-fold defaultstate="collapsed" desc="OrientacionEspacial">
    private Boolean TraidoPorTercero;
    private Boolean ConsultorioEnAvenida;
    private Boolean ConsultorioEnEntrepiso;
    private int PisoDelConsultorio;
    private Boolean Lugar;
    private Boolean Calle;
    private int Piso;
    private Boolean Ciudad;
    private Boolean Pais;

    // <editor-fold defaultstate="collapsed" desc="OrientacionEspacial_GetSet">
    public Boolean getLugar() {
        return Lugar;
    }

    public Boolean getCalle() {
        return Calle;
    }

    public Integer getPiso() {
        return Piso;
    }

    public Boolean getCiudad() {
        return Ciudad;
    }

    public Boolean getPais() {
        return Pais;
    }

    public void setLugar(Boolean Lugar) {
        this.Lugar = Lugar;
    }

    public void setCalle(Boolean Calle) {
        this.Calle = Calle;
    }

    public void setPiso(int Piso) {
        this.Piso = Piso;
    }

    public void setCiudad(Boolean Ciudad) {
        this.Ciudad = Ciudad;
    }

    public void setPais(Boolean Pais) {
        this.Pais = Pais;
    }

    public void setTraidoPorTercero(Boolean TraidoPorTercero) {
        this.TraidoPorTercero = TraidoPorTercero;
    }

    public void setConsultorioEnAvenida(Boolean ConsultorioEnAvenida) {
        this.ConsultorioEnAvenida = ConsultorioEnAvenida;
    }

    public void setConsultorioEnEntrepiso(Boolean ConsultorioEnEntrepiso) {
        this.ConsultorioEnEntrepiso = ConsultorioEnEntrepiso;
    }

    public Boolean getTraidoPorTercero() {
        return TraidoPorTercero;
    }

    public Boolean getConsultorioEnAvenida() {
        return ConsultorioEnAvenida;
    }

    public Boolean getConsultorioEnEntrepiso() {
        return ConsultorioEnEntrepiso;
    }

    public int getPisoDelConsultorio() {
        return PisoDelConsultorio;
    }

    public void setPisoDelConsultorio(int PisoDelConsultorio) {
        this.PisoDelConsultorio = PisoDelConsultorio;
    }

    public Boolean ContestaPisoCorrecto() {
        return this.getPiso() == this.PisoDelConsultorio;
    }

    // </editor-fold>
// <editor-fold defaultstate="collapsed" desc="OrientacionEspacial_Propiedades">
    public Integer DiferenciaEntrePisoContestadoReal() {
        return Math.abs(this.getPiso() - this.PisoDelConsultorio);
    }
    // </editor-fold>
// </editor-fold>
// </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Memoria">    
    // <editor-fold defaultstate="collapsed" desc="Fijacion">    
    private int PalabrasRepetidas;
    // <editor-fold defaultstate="collapsed" desc="Fijacion_GetSet">    

    public Integer getPalabrasRepetidas() {
        return PalabrasRepetidas;
    }

    public void setPalabrasRepetidas(int PalabrasRepetidas) {
        this.PalabrasRepetidas = PalabrasRepetidas;
    }
// </editor-fold>
// </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Atencion"> 
    private int ClasificacionAtencion;
    // <editor-fold defaultstate="collapsed" desc="Atencion_GetSet">   

    public Integer getClasificacionAtencion() {
        return ClasificacionAtencion;
    }

    public void setClasificacionAtencion(int ClasificacionAtencion) {
        this.ClasificacionAtencion = ClasificacionAtencion;
    }
    // </editor-fold>
    // </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Recuerdo">
    private int PalabrasRecordadas;
    // <editor-fold defaultstate="collapsed" desc="Recuerdo_GetSet">

    public Integer getPalabrasRecordadas() {
        return PalabrasRecordadas;
    }

    public void setPalabrasRecordadas(int PalabrasRecordadas) {
        this.PalabrasRecordadas = PalabrasRecordadas;
    }
// </editor-fold>
// </editor-fold>
    // </editor-fold>
    // <editor-fold defaultstate="collapsed" desc="Lenguaje">
    private Boolean RepiteFraseCorrectamente;
    private Boolean CumpleOrdenCorrectamente;
    private Boolean EscribeCorrectamenteFrase;
    private Integer ClasificacionAccion;
    private int CosasNombradas;
    // <editor-fold defaultstate="collapsed" desc="Lenguaje_GetSet">

    public Boolean getRepiteFraseCorrectamente() {
        return RepiteFraseCorrectamente;
    }

    public void setRepiteFraseCorrectamente(Boolean RepiteFraseCorrectamente) {
        this.RepiteFraseCorrectamente = RepiteFraseCorrectamente;
    }

    public Boolean getCumpleOrdenCorrectamente() {
        return CumpleOrdenCorrectamente;
    }

    public void setCumpleOrdenCorrectamente(Boolean CumpleOrdenCorrectamente) {
        this.CumpleOrdenCorrectamente = CumpleOrdenCorrectamente;
    }

    public Boolean getEscribeCorrectamenteFrase() {
        return EscribeCorrectamenteFrase;
    }

    public void setEscribeCorrectamenteFrase(Boolean EscribeCorrectamenteFrase) {
        this.EscribeCorrectamenteFrase = EscribeCorrectamenteFrase;
    }

    public Integer getClasificacionAccion() {
        return ClasificacionAccion;
    }

    public void setClasificacionAccion(int ClasificacionAccion) {
        this.ClasificacionAccion = ClasificacionAccion;
    }

    public Integer getCosasNombradas() {
        return CosasNombradas;
    }

    public void setCosasNombradas(int CosasNombradas) {
        this.CosasNombradas = CosasNombradas;
    }
// </editor-fold>    
// </editor-fold>    
    // <editor-fold defaultstate="collapsed" desc="Dibujo">    
    private Boolean CopiaCorrectamenteDibujo;
    // <editor-fold defaultstate="collapsed" desc="Dibujo_GetSet">    

    public Boolean getCopiaCorrectamenteDibujo() {
        return CopiaCorrectamenteDibujo;
    }

    public void setCopiaCorrectamenteDibujo(Boolean CopiaCorrectamenteDibujo) {
        this.CopiaCorrectamenteDibujo = CopiaCorrectamenteDibujo;
    }
    // </editor-fold>
    // </editor-fold>
    
        private cDiagnostico Diagnostico;

    /**
     * Get the value of Diagnostico
     *
     * @return the value of Diagnostico
     */
    @OneToOne(cascade= CascadeType.ALL, fetch= FetchType.EAGER  )
    public cDiagnostico getDiagnostico() {
        return Diagnostico;
    }

    /**
     * Set the value of Diagnostico
     *
     * @param Diagnostico new value of Diagnostico
     */
    public void setDiagnostico(cDiagnostico Diagnostico) {
        this.Diagnostico = Diagnostico;
    }

    
    
    
}
