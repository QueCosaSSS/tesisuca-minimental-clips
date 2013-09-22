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

    public static void infoBox(String infoMessage, String title)
    {
        JOptionPane.showMessageDialog(null, infoMessage,title, JOptionPane.INFORMATION_MESSAGE);
    }
}
