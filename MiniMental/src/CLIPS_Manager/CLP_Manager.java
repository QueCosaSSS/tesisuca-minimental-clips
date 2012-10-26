/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package CLIPS_Manager;

import CLIPSJNI.Environment;
import CLIPSJNI.PrimitiveValue;
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

            this.clips.load(".\\src\\CLP\\Caso1.clp");

            this.clips.reset();

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public String Run() {
        String salida = "";

        try {
//            this.clips.reset();



            this.clips.run();

            String evalStr = "(find-all-facts ((?f PONDERACION)) TRUE)";
            PrimitiveValue evaluado = this.clips.eval(evalStr);

            for (int i = 0; i < evaluado.size(); i++) {
                salida = Float.toString(evaluado.get(i).getFactSlot("pOrientacionTemporalFecha").floatValue());


            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        return salida;

    }

    private void AddFacts(String objeto, String campo, String valor) {
        if (this.isInteger(valor)) {
            this.clips.assertString("(" + objeto + " (" + campo + " " + valor + "))");
        } else {
            if (this.isBoolean(valor)) {
                this.clips.assertString("(" + objeto + " (" + campo + "\"" + (Boolean.parseBoolean(valor) ? "SI" : "NO") + "\"))");
            } else {
                this.clips.assertString("(" + objeto + " (" + campo + "\"" + valor + "\"))");
            }

        }
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

    public String ProcesarEntrevista(cEntrevista Entrevista) {
        
        this.AddFacts("Entrevista", "Escolaridad", Entrevista.getEscolaridad().toString());
        this.AddFacts("Entrevista", "OrientacionTemporal_Fecha", Entrevista.ContestaFechaCorrecta().toString());
        this.AddFacts("Entrevista", "OrientacionTemporal_Estacion", Entrevista.ContestaEstacionCorrecta().toString());
        this.AddFacts("Entrevista", "EsUnaSemanaAntesCambioEstacion", Entrevista.EsUnaSemanaAntesCambioEstacion().toString());
        this.AddFacts("Entrevista", "EsUnaSemanaDespuesCambioEstacion", Entrevista.EsUnaSemanaDespuesCambioEstacion().toString());
        this.AddFacts("Entrevista", "ContestaEstacionSiguiente", Entrevista.ContestaEstacionSiguiente().toString());
        this.AddFacts("Entrevista", "ContestaEstacionAnterior", Entrevista.ContestaEstacionAnterior().toString());
        this.AddFacts("Entrevista", "OrientacionTemporal_Mes", Entrevista.ContestaMesCorrecto().toString());
        this.AddFacts("Entrevista", "EsUltimoDiaMes", Entrevista.EsUltimoDiaMes().toString());
        this.AddFacts("Entrevista", "EsPrimerOSegundoDiaMes", Entrevista.EsPrimerOSegundoDiaMes().toString());        
        this.AddFacts("Entrevista", "ContestaMesAnterior", Entrevista.ContestaMesAnterior().toString());        
        this.AddFacts("Entrevista", "ContestaMesSiguiente", Entrevista.ContestaMesSiguiente().toString());
        this.AddFacts("Entrevista", "OrientacionTemporal_DiaSemana", Entrevista.ContestaDiaSemanaCorrecto().toString());        
        this.AddFacts("Entrevista", "OrientacionTemporal_DiaSemana", Entrevista.ContestaAnoCorrecto().toString());
        this.AddFacts("Entrevista", "EsPrimerQuincenaAno", Entrevista.EsPrimerQuincenaAno().toString());
        this.AddFacts("Entrevista", "ContestaAnoAnterior", Entrevista.ContestaAnoAnterior().toString());
        this.AddFacts("Entrevista", "OrientacionEspacial_Lugar", Entrevista.getLugar().toString());
        this.AddFacts("Entrevista", "OrientacionEspacial_Ciudad", Entrevista.getCiudad().toString());
        this.AddFacts("Entrevista", "OrientacionEspacial_Pais", Entrevista.getPais().toString());
        this.AddFacts("Entrevista", "OrientacionEspacial_Piso", Entrevista.getPiso().toString());
        this.AddFacts("Entrevista", "ConsultorioEnEntrepiso", Entrevista.getConsultorioEnEntrepiso().toString());        
        this.AddFacts("Entrevista", "DiferenciaEntrePisoContestadoReal", Entrevista.DiferenciaEntrePisoContestadoReal().toString());          
        this.AddFacts("Entrevista", "OrientacionEspacial_Calle", Entrevista.getCalle().toString());          
        this.AddFacts("Entrevista", "ConsultorioEnAvenida", Entrevista.getConsultorioEnAvenida().toString());          
        this.AddFacts("Entrevista", "TraidoPorTercero", Entrevista.getTraidoPorTercero().toString());                  
        this.AddFacts("Entrevista", "MemoriaFijacion_PalabrasRepetidas", Entrevista.getPalabrasRepetidas().toString());                  
        this.AddFacts("Entrevista", "PacienteConProblemasAuditivos", Entrevista.getPacienteConProblemasAuditivo().toString());                          
        this.AddFacts("Entrevista", "PacienteDeprimido", Entrevista.getPacienteDeprimido().toString());                          
        this.AddFacts("Entrevista", "MemoriaAtencion_ClasificacionAtencion", Entrevista.getClasificacionAtencion().toString());                                  
        this.AddFacts("Entrevista", "MemoriaRecuerdo_PalabrasRecordadas", Entrevista.getPalabrasRecordadas().toString());                                  
        
        return "";
    }
}
