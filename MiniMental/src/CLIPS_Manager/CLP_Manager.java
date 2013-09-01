/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package CLIPS_Manager;

import CLIPSJNI.*;
import Clases.cEntrevista;

/**
 *
 * @author santiago
 */
public class CLP_Manager {

    Environment clips;

    public CLP_Manager() {

        try {
            this.clips = new Environment();

            this.clips.load(".\\src\\CLP\\Caso2.clp");

            this.clips.reset();

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void Run() {
        String salida = "";

        try {
//            this.clips.reset();


            this.clips.eval("(save-facts C:\\Users\\santiago\\Desktop\\hechos1.txt)");

            this.clips.run();
            
            //Obtengo valores evaluados:
            
            String evalStr = "(find-all-facts ((?f OrientacionTemporal)) TRUE)";

            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {
                salida = evaluado.get(i).getFactSlot("cFecha").toString();

            }


        } catch (Exception ex) {
            System.out.println(ex);
        }

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
        return ((input == t.toString()) || (input == f.toString()));
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
        
        this.AddFacts("Entrevista",tmp_fact);
        
        Run();
    }
}
