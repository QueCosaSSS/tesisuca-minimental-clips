/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package CLIPS_Manager;

import CLIPSJNI.*;
import Clases.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author santiago
 */
public class CLP_Manager {

    Environment clips;

    public CLP_Manager() {

        try {
            this.clips = new Environment();

            this.clips.load(".\\src\\CLP\\Caso3.clp");

            this.clips.reset();

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private cDiagnostico Run() {

        cDiagnostico salida = new cDiagnostico();

        try {
//            this.clips.reset();


            this.clips.eval("(save-facts C:\\Users\\santiago\\Desktop\\hechos1.txt)");

            this.clips.run();

            //Obtengo valores evaluados:
            this.FillDiagnostico(salida);

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return salida;

    }

    private void AddFacts(String objeto, String slots) {
        this.clips.assertString("(" + objeto + " " + slots + " )");
    }

    private String AddSlot(String campo, String valor) {

        String slot = " (" + campo + " \"" + valor + "\")";

        if (this.isInteger(valor)) {
            slot = " (" + campo + " " + valor + ")";
        } else {
            if (this.isBoolean(valor)) {
                slot = " (" + campo + " \"" + (Boolean.parseBoolean(valor) ? "SI" : "NO") + "\")";
            }
        }

        return slot;
    }

    public boolean isInteger(String input) {
        try {
            Integer.parseInt(input);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public Boolean isBoolean(String input) {
        Boolean t = true;
        Boolean f = false;
        return ((input.equals(t.toString())) || (input.equals(f.toString())));
    }

    public void ProcesarEntrevista(cEntrevista Entrevista) {
        String tmp_fact = "";

        tmp_fact += this.AddSlot("Escolaridad", Entrevista.getEscolaridad().toString());
        tmp_fact += this.AddSlot("OrientacionTemporal_Fecha", Entrevista.ContestaFechaCorrecta().toString());
        tmp_fact += this.AddSlot("OrientacionTemporal_Estacion", Entrevista.ContestaEstacionCorrecta().toString());
        tmp_fact += this.AddSlot("EsUnaSemanaAntesCambioEstacion", Entrevista.EsUnaSemanaAntesCambioEstacion().toString());
        tmp_fact += this.AddSlot("EsUnaSemanaDespuesCambioEstacion", Entrevista.EsUnaSemanaDespuesCambioEstacion().toString());
        tmp_fact += this.AddSlot("ContestaEstacionSiguiente", Entrevista.ContestaEstacionSiguiente().toString());
        tmp_fact += this.AddSlot("ContestaEstacionAnterior", Entrevista.ContestaEstacionAnterior().toString());
        tmp_fact += this.AddSlot("OrientacionTemporal_Mes", Entrevista.ContestaMesCorrecto().toString());
        tmp_fact += this.AddSlot("EsUltimoDiaMes", Entrevista.EsUltimoDiaMes().toString());
        tmp_fact += this.AddSlot("EsPrimerOSegundoDiaMes", Entrevista.EsPrimerOSegundoDiaMes().toString());
        tmp_fact += this.AddSlot("ContestaMesAnterior", Entrevista.ContestaMesAnterior().toString());
        tmp_fact += this.AddSlot("ContestaMesSiguiente", Entrevista.ContestaMesSiguiente().toString());
        tmp_fact += this.AddSlot("OrientacionTemporal_DiaSemana", Entrevista.ContestaDiaSemanaCorrecto().toString());
        tmp_fact += this.AddSlot("OrientacionTemporal_Ano", Entrevista.ContestaAnoCorrecto().toString());
        tmp_fact += this.AddSlot("EsPrimerQuincenaAno", Entrevista.EsPrimerQuincenaAno().toString());
        tmp_fact += this.AddSlot("ContestaAnoAnterior", Entrevista.ContestaAnoAnterior().toString());
        tmp_fact += this.AddSlot("OrientacionEspacial_Lugar", Entrevista.getLugar().toString());
        tmp_fact += this.AddSlot("OrientacionEspacial_Ciudad", Entrevista.getCiudad().toString());
        tmp_fact += this.AddSlot("OrientacionEspacial_Pais", Entrevista.getPais().toString());
        tmp_fact += this.AddSlot("OrientacionEspacial_Piso", Entrevista.ContestaPisoCorrecto().toString());
        tmp_fact += this.AddSlot("ConsultorioEnEntrepiso", Entrevista.getConsultorioEnEntrepiso().toString());
        tmp_fact += this.AddSlot("DiferenciaEntrePisoContestadoReal", Entrevista.DiferenciaEntrePisoContestadoReal().toString());
        tmp_fact += this.AddSlot("OrientacionEspacial_Calle", Entrevista.getCalle().toString());
        tmp_fact += this.AddSlot("ConsultorioEnAvenida", Entrevista.getConsultorioEnAvenida().toString());
        tmp_fact += this.AddSlot("TraidoPorTercero", Entrevista.getTraidoPorTercero().toString());
        tmp_fact += this.AddSlot("MemoriaFijacion_PalabrasRepetidas", Entrevista.getPalabrasRepetidas().toString());
        tmp_fact += this.AddSlot("PacienteConProblemasAuditivos", Entrevista.getPacienteConProblemasAuditivo().toString());
        tmp_fact += this.AddSlot("PacienteDeprimido", Entrevista.getPacienteDeprimido().toString());
        tmp_fact += this.AddSlot("MemoriaAtencion_ClasificacionAtencion", Entrevista.getClasificacionAtencion().toString());
        tmp_fact += this.AddSlot("MemoriaRecuerdo_PalabrasRecordadas", Entrevista.getPalabrasRecordadas().toString());
        tmp_fact += this.AddSlot("PacienteAnsioso", Entrevista.getPacienteAnsioso().toString());
        tmp_fact += this.AddSlot("Lenguaje_RepiteFraseCorrectamente", Entrevista.getRepiteFraseCorrectamente().toString());
        tmp_fact += this.AddSlot("Lenguaje_ClasificacionAccion", Entrevista.getClasificacionAccion().toString());
        tmp_fact += this.AddSlot("Lenguaje_CumpleOrdenCorrectamente", Entrevista.getCumpleOrdenCorrectamente().toString());
        tmp_fact += this.AddSlot("Lenguaje_EscribeCorrectamenteFrase", Entrevista.getEscribeCorrectamenteFrase().toString());
        tmp_fact += this.AddSlot("Lenguaje_CosasNombradas", Entrevista.getCosasNombradas().toString());
        tmp_fact += this.AddSlot("Dibujo_CopiaCorrectamenteDibujo", Entrevista.getCopiaCorrectamenteDibujo().toString());
        tmp_fact += this.AddSlot("Olvido_OlvidaHechosRecientes", Entrevista.getOlvidaHechosRecientes().toString());
        tmp_fact += this.AddSlot("Olvido_OlvidoProgresa", Entrevista.getOlvidoProgresa().toString());
        tmp_fact += this.AddSlot("Olvido_QuejaOlvidoPaciente", Entrevista.getQuejaOlvidoPaciente().toString());
        tmp_fact += this.AddSlot("Olvido_QuejaOlvidoFamiliar", Entrevista.getQuejaOlvidoFamiliar().toString());
        tmp_fact += this.AddSlot("Olvido_PacienteMinimizaOlvidos", Entrevista.getPacienteMinimizaOlvidos().toString());
        tmp_fact += this.AddSlot("Olvido_ImpactoFuncional", Entrevista.getHayImpactoFuncional().toString());
        tmp_fact += this.AddSlot("Olvido_ImpactoCaracter", Entrevista.getHayImpactoEnCaracter().toString());

        this.AddFacts("Entrevista", tmp_fact);

        Entrevista.setDiagnostico(Run());
    }

    private void FillDiagnostico(cDiagnostico diagnostico) {
        try {

            //            String evalStr = "((find-all-facts)";
//
//            PrimitiveValue evaluado = this.clips.eval(evalStr);

            String evalStr = "(find-all-facts ((?f Diagnostico)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                diagnostico.setOlvido(GetenumRN(evaluado.get(i).getFactSlot("cOlvido").toString()));
                diagnostico.setQueja(GetenumRN(evaluado.get(i).getFactSlot("cQueja").toString()));
                diagnostico.setFuncional(GetenumRN(evaluado.get(i).getFactSlot("cFuncional").toString()));
                diagnostico.setCaracter(GetenumRN(evaluado.get(i).getFactSlot("cCaracter").toString()));
                diagnostico.setResultado(evaluado.get(i).getFactSlot("Resultado").toString());

                cMiniMental minimental = new cMiniMental();

                minimental.setMinimentalCalculado(evaluado.get(i).getFactSlot("cMiniMental_Calculado").floatValue());

                FillMinimental(minimental);

                FillDetalle(diagnostico);

                diagnostico.setMinimental(minimental);
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void FillMinimental(cMiniMental minimental) {
        try {
            String evalStr = "(find-all-facts ((?f MiniMental_Calculado)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                minimental.setDibujo(evaluado.get(i).getFactSlot("cDibujo").floatValue());

                cOrientacion orientacion = new cOrientacion();

                orientacion.setOrientacionCalculado(evaluado.get(i).getFactSlot("cOrientacion").floatValue());

                FillOrientacion(orientacion);

                minimental.setOrientacion(orientacion);

                cMemoria memoria = new cMemoria();

                memoria.setMemoriaCalculado(evaluado.get(i).getFactSlot("cMemoria").floatValue());

                FillMemoria(memoria);

                minimental.setMemoria(memoria);

                cLenguaje lenguaje = new cLenguaje();

                lenguaje.setLenguajeCalculado(evaluado.get(i).getFactSlot("cLenguaje").floatValue());

                FillLenguaje(lenguaje);

                minimental.setLenguaje(lenguaje);

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }

    private void FillOrientacion(cOrientacion orientacion) {
        try {
            String evalStr = "(find-all-facts ((?f Orientacion)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                cOrientacionTemporal orientacionTemporal = new cOrientacionTemporal();

                orientacionTemporal.setOrientacionTemporalCalculado(evaluado.get(i).getFactSlot("cOrientacionTemporal").floatValue());

                FillOrientacionTemporal(orientacionTemporal);

                orientacion.setOrientacionTemporal(orientacionTemporal);

                cOrientacionEspacial orientacionEspacial = new cOrientacionEspacial();

                orientacionEspacial.setOrientacionEspacialCalculado(evaluado.get(i).getFactSlot("cOrientacionEspacial").floatValue());

                FillOrientacionEspacial(orientacionEspacial);

                orientacion.setOrientacionEspacial(orientacionEspacial);

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void FillMemoria(cMemoria memoria) {
        try {
            String evalStr = "(find-all-facts ((?f Memoria)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                memoria.setAtencion(evaluado.get(i).getFactSlot("cMemoriaAtencion").floatValue());
                memoria.setFijacion(evaluado.get(i).getFactSlot("cMemoriaFijacion").floatValue());
                memoria.setRecuerdo(evaluado.get(i).getFactSlot("cMemoriaRecuerdo").floatValue());

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void FillLenguaje(cLenguaje lenguaje) {
        try {
            String evalStr = "(find-all-facts ((?f Lenguaje)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                lenguaje.setAccion(evaluado.get(i).getFactSlot("cLenguajeAccion").floatValue());
                lenguaje.setEscritura(toBool(evaluado.get(i).getFactSlot("cLenguajeEscritura").stringValue()));
                lenguaje.setFrase(toBool(evaluado.get(i).getFactSlot("cLenguajeFrase").stringValue()));
                lenguaje.setOrden(toBool(evaluado.get(i).getFactSlot("cLenguajeOrden").stringValue()));

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void FillOrientacionTemporal(cOrientacionTemporal orientacionTemporal) {
        try {
            String evalStr = "(find-all-facts ((?f OrientacionTemporal)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                orientacionTemporal.setFecha(evaluado.get(i).getFactSlot("cFecha").floatValue());
                orientacionTemporal.setEstacion(toBool(evaluado.get(i).getFactSlot("cEstacion").stringValue()));
                orientacionTemporal.setMes(evaluado.get(i).getFactSlot("cMes").floatValue());
                orientacionTemporal.setAno(evaluado.get(i).getFactSlot("cAno").floatValue());

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void FillOrientacionEspacial(cOrientacionEspacial orientacionEspacial) {
        try {
            String evalStr = "(find-all-facts ((?f OrientacionEspacial)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {

                orientacionEspacial.setLugar(evaluado.get(i).getFactSlot("cLugar").floatValue());
                orientacionEspacial.setCiudad(evaluado.get(i).getFactSlot("cCiudad").floatValue());
                orientacionEspacial.setPais(evaluado.get(i).getFactSlot("cPais").floatValue());
                orientacionEspacial.setPiso(evaluado.get(i).getFactSlot("cPiso").floatValue());
                orientacionEspacial.setCalle(evaluado.get(i).getFactSlot("cCalle").floatValue());

            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private eNR GetenumRN(String rn) {
        eNR e = eNR.N;
        switch (rn) {
            case "R":
                e = eNR.R;
                break;
            case "N":
                e = eNR.N;
                break;

        }
        return e;
    }

    private Boolean toBool(String texto) {
        return "SI".equals(texto.toUpperCase()) ? true : false;
    }

    private void FillDetalle(cDiagnostico diagnostico) {
        try {
            String evalStr = "(find-all-facts ((?f DiagnosticoDetalle)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            Set<cDiagnosticoDetalle> detalles = new HashSet<cDiagnosticoDetalle>();
            
            for (int i = 0; i < evaluado.size(); i++) {
                cDiagnosticoDetalle dd = new cDiagnosticoDetalle();
                dd.setDetalle(evaluado.get(i).getFactSlot("ResultadoDetalle").stringValue());
                
                detalles.add(dd);

            }

            diagnostico.setDetalles(detalles);

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
