/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author santiago
 */
import javax.swing.JOptionPane;

public class ConfirmationBox{

    public static Boolean ConfirmationBox(String infoMessage, String title)
    {
        int reply = JOptionPane.showConfirmDialog(null, infoMessage,title, JOptionPane.YES_NO_OPTION);
        
        return reply == JOptionPane.YES_OPTION;
    }
}
        