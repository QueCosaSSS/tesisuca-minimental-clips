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
        this.MiniMental = new cMiniMental();
    }
    private Boolean TraidoTercero;
    private Boolean ConsultorioEnAvenida;
    private Boolean ConsultorioEnEntrepiso;
    private int Escolaridad;
    private int PisoDelConsultorio;

    public cEntrevista(int d, int m, int a) {
        GregorianCalendar t = new GregorianCalendar();
        t.clear();
        t.set(Calendar.YEAR, a);
        t.set(Calendar.MONTH, m);
        t.set(Calendar.YEAR, a);

        this.FechaEntrevista = t;
    }
    private Calendar FechaEntrevista;

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
    private cMiniMental MiniMental;

    public cMiniMental getMinimental() {
        return this.MiniMental;
    }

    public void setMiniMental(cMiniMental minimental) {
        this.MiniMental = minimental;
    }

    public void setEscolaridad(int Escolaridad) {
        this.Escolaridad = Escolaridad;
    }

    public int getEscolaridad() {
        return Escolaridad;
    }
//    public Boolean ConsideraCorrectoMes() {
//
//        GregorianCalendar t_primero = new GregorianCalendar();
//        t_primero.clear();
//        t_primero.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
//        t_primero.set(Calendar.MONTH, FechaEntrevista.get(Calendar.MONTH));
//        t_primero.set(Calendar.DAY_OF_MONTH, 1);
//
//        GregorianCalendar t_segundo = new GregorianCalendar();
//        t_segundo.clear();
//        t_segundo.set(Calendar.YEAR, FechaEntrevista.get(Calendar.YEAR));
//        t_segundo.set(Calendar.MONTH, FechaEntrevista.get(Calendar.MONTH));
//        t_segundo.set(Calendar.DAY_OF_MONTH, 2);
//
//        if (getMes() == FechaEntrevista.get(Calendar.MONTH)) {
//            return true;
//        } else {
//            if ((SameDay(FechaEntrevista, UltimoDiaMes(internal_Mes - 1))) && ((FechaEntrevista.get(Calendar.MONTH) + 1) == internal_Mes)) {
//                return true;
//            } else {
//                if ((SameDay(FechaEntrevista, t_primero) || SameDay(FechaEntrevista, t_segundo)) && ((FechaEntrevista.get(Calendar.MONTH) - 1) == internal_Mes)) {
//                    return true;
//                }
//            }
//            return false;
//        }
//    }

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

//21 de marzo hasta 20 de junio :es el otoño.
//21 de junio hasta20 de septiembre :es el invierno.
//21 de septiembre hasta el 20 de diciembre : es la primavera
//21 de diciembre hasta el 20 de marzo : es el verano.
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

    public void setTraidoTercero(Boolean TraidoTercero) {
        this.TraidoTercero = TraidoTercero;
    }

    public void setConsultorioEnAvenida(Boolean ConsultorioEnAvenida) {
        this.ConsultorioEnAvenida = ConsultorioEnAvenida;
    }

    public void setConsultorioEnEntrepiso(Boolean ConsultorioEnEntrepiso) {
        this.ConsultorioEnEntrepiso = ConsultorioEnEntrepiso;
    }

    public Boolean getTraidoTercero() {
        return TraidoTercero;
    }

    public Boolean getConsultorioEnAvenida() {
        return ConsultorioEnAvenida;
    }

    public Boolean getConsultorioEnEntrepiso() {
        return ConsultorioEnEntrepiso;
    }

    private int Estacion() {
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
        if ((this.Estacion() == cEstacion.Primavera) && (this.MiniMental.getEstacion() == cEstacion.Verano)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Verano) && (this.MiniMental.getEstacion() == cEstacion.Otono)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Otono) && (this.MiniMental.getEstacion() == cEstacion.Invierno)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Invierno) && (this.MiniMental.getEstacion() == cEstacion.Primavera)) {
            return true;
        }
        return false;
    }

    public Boolean ContestaEstacionAnterior() {
        if ((this.Estacion() == cEstacion.Primavera) && (this.MiniMental.getEstacion() == cEstacion.Invierno)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Verano) && (this.MiniMental.getEstacion() == cEstacion.Primavera)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Otono) && (this.MiniMental.getEstacion() == cEstacion.Verano)) {
            return true;
        }
        if ((this.Estacion() == cEstacion.Invierno) && (this.MiniMental.getEstacion() == cEstacion.Otono)) {
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
        if ((this.FechaEntrevista.get(Calendar.MONTH) == 11) && (this.MiniMental.getFecha().get(Calendar.MONTH) == 0)) {
            return true;
        } else {
            if (this.FechaEntrevista.get(Calendar.MONTH) == (this.MiniMental.getFecha().get(Calendar.MONTH) - 1)) {
                return true;
            } else {
                return false;
            }
        }
    }

    public Boolean ContestaMesAnterior() {
        if ((this.FechaEntrevista.get(Calendar.MONTH) == 0) && (this.MiniMental.getFecha().get(Calendar.MONTH) == 11)) {
            return true;
        } else {
            if (this.FechaEntrevista.get(Calendar.MONTH) == (this.MiniMental.getFecha().get(Calendar.MONTH) + 1)) {
                return true;
            } else {
                return false;
            }
        }
    }
}
