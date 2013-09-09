/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author santiago
 */
public enum eTipoDocumento {

    DNI(0), CEDULA(1), LC(2), LE(3), PASAPORTE(4);
    private int value;

    private eTipoDocumento(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
    
    public static eTipoDocumento getTipoDocumentoFromIndex(int index) {
	switch (index) {
	case 0:
		return eTipoDocumento.DNI;
	case 1:
		return eTipoDocumento.CEDULA;
	case 2:
		return eTipoDocumento.LC;
	case 3:
		return eTipoDocumento.LE;
	case 4:
		return eTipoDocumento.PASAPORTE;         
	default:
		throw new RuntimeException("Unknown index:" + index);
	}
}
    
}
