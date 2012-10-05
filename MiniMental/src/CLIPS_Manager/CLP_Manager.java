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
                salida = Float.toString( evaluado.get(i).getFactSlot("pOrientacionTemporalFecha").floatValue() );
                

            }

        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        return salida;

    }

    private void AddFacts() {
        this.clips.assertString("(MiniMental (OrientacionTemporalFecha \"SI\"))");
    }
    
    public String ProcesarEntrevista(cEntrevista Entrevista)
    {
        return "";
    }
}
