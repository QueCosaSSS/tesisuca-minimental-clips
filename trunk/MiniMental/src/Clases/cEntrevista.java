/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author santiago
 */
public class cEntrevista {

    public cEntrevista() {
        this.FechaEntrevista = new GregorianCalendar();
    }
    
    private Boolean TraidoPorTercero;
    private Boolean ConsultorioEnAvenida;
    private Boolean ConsultorioEnEntrepiso;
    private int Escolaridad;
    private int PisoDelConsultorio;
    private Calendar FechaEntrevista;
    private int DiaDeSemana;
    private Calendar Fecha;
    private int Estacion;
    private Boolean Lugar;
    private Boolean Calle;
    private int Piso;
    private Boolean Ciudad;
    private Boolean Pais;
    private int PalabrasRepetidas;
    private Boolean PacienteConProblemasAuditivo;
    private Boolean PacienteDeprimido;
    private int ClasificacionAtencion;
    private int PalabrasRecordadas;
    private Boolean RepitaFraseCorrectamente;
    private Boolean CumpleOrdenCorrectamente;
    private Boolean PacienteAnsioso;
    private Boolean EscribeCorrectamenteFrase;
    private int ClasificacionAccion;
    private int CosasNombradas;
    private Boolean CopiaCorrectamenteDibujo;
    private Boolean OlvidaHechosRecientes;
    private Boolean OlvidoProgresa;
    private Boolean QuejaOlvidoPaciente;
    private Boolean QuejaOlvidoFamiliar;
    private Boolean PacienteMinimizaOlvidos;
    private Boolean HayImpactoFuncional;
    private Boolean HayImpactoEnCaracter;
    
    

    public int getDiaDeSemana() {
        return DiaDeSemana;
    }

    public Calendar getFecha() {
        return Fecha;
    }

    public int getEstacion() {
        return Estacion;
    }

    public Boolean getLugar() {
        return Lugar;
    }

    public Boolean getCalle() {
        return Calle;
    }

    public int getPiso() {
        return Piso;
    }

    public Boolean getCiudad() {
        return Ciudad;
    }

    public Boolean getPais() {
        return Pais;
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

    public cEntrevista(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.FechaEntrevista = t;
    }

    public void setFechaEntrevista(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.FechaEntrevista = t;
    }

    public Calendar getFechaEntrevista() {

        return this.FechaEntrevista;
    }

    public void setEscolaridad(int Escolaridad) {
        this.Escolaridad = Escolaridad;
    }

    public int getEscolaridad() {
        return Escolaridad;
    }

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

    public int getPisoDelConsultorio() {
        return PisoDelConsultorio;
    }

    public void setPisoDelConsultorio(int PisoDelConsultorio) {
        this.PisoDelConsultorio = PisoDelConsultorio;
    }

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
    
    public Boolean ContestaAnoCorrecto()
    {
        return Fecha.get(Calendar.YEAR) == FechaEntrevista.get(Calendar.YEAR);
    }
    
    public Boolean ContestaAnoAnterior()
    {
        return Fecha.get(Calendar.YEAR) == (FechaEntrevista.get(Calendar.YEAR)-1);
    }
    
    public Boolean ContestaPisoCorrecto()
    {
        return this.getPiso() == this.PisoDelConsultorio;
    }
    
    public int DiferenciaEntrePisoContestadoReal()
    {
        return Math.abs(this.getPiso() - this.PisoDelConsultorio);
    }

    public int getPalabrasRepetidas() {
        return PalabrasRepetidas;
    }

    public void setPalabrasRepetidas(int PalabrasRepetidas) {
        this.PalabrasRepetidas = PalabrasRepetidas;
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

    public int getClasificacionAtencion() {
        return ClasificacionAtencion;
    }

    public void setClasificacionAtencion(int ClasificacionAtencion) {
        this.ClasificacionAtencion = ClasificacionAtencion;
    }

    public int getPalabrasRecordadas() {
        return PalabrasRecordadas;
    }

    public void setPalabrasRecordadas(int PalabrasRecordadas) {
        this.PalabrasRecordadas = PalabrasRecordadas;
    }

    public Boolean getRepitaFraseCorrectamente() {
        return RepitaFraseCorrectamente;
    }

    public void setRepitaFraseCorrectamente(Boolean RepitaFraseCorrectamente) {
        this.RepitaFraseCorrectamente = RepitaFraseCorrectamente;
    }

    public Boolean getCumpleOrdenCorrectamente() {
        return CumpleOrdenCorrectamente;
    }

    public void setCumpleOrdenCorrectamente(Boolean CumpleOrdenCorrectamente) {
        this.CumpleOrdenCorrectamente = CumpleOrdenCorrectamente;
    }

    public Boolean getPacienteAnsioso() {
        return PacienteAnsioso;
    }

    public void setPacienteAnsioso(Boolean PacienteAnsioso) {
        this.PacienteAnsioso = PacienteAnsioso;
    }

    public Boolean getEscribeCorrectamenteFrase() {
        return EscribeCorrectamenteFrase;
    }

    public void setEscribeCorrectamenteFrase(Boolean EscribeCorrectamenteFrase) {
        this.EscribeCorrectamenteFrase = EscribeCorrectamenteFrase;
    }

    public int getClasificacionAccion() {
        return ClasificacionAccion;
    }

    public void setClasificacionAccion(int ClasificacionAccion) {
        this.ClasificacionAccion = ClasificacionAccion;
    }

    public int getCosasNombradas() {
        return CosasNombradas;
    }

    public void setCosasNombradas(int CosasNombradas) {
        this.CosasNombradas = CosasNombradas;
    }

    public Boolean getCopiaCorrectamenteDibujo() {
        return CopiaCorrectamenteDibujo;
    }

    public void setCopiaCorrectamenteDibujo(Boolean CopiaCorrectamenteDibujo) {
        this.CopiaCorrectamenteDibujo = CopiaCorrectamenteDibujo;
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
            
}
