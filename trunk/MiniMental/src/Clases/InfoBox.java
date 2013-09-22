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

public class InfoBox{

public static void infoBox(String infoMessage, String location)
    {
        JOptionPane.showMessageDialog(null, infoMessage,location, JOptionPane.INFORMATION_MESSAGE);
    }
}
