package codigo;

import java.io.File;

/**
 *
 * @author HP
 */
public class Principal {
    
    public static void main(String[] args) {
        String ruta = "C:/Users/HP/Desktop/Universidad/1r semestre 2022/Compi 1/Ejercicio2/ejercicio2/src/codigo/lexer.flex";
        generarLexer(ruta);
        
        
    }
    
    public static void generarLexer(String ruta) {
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
        
    }
    
    public void letras(){
    String nombre = "Diego";
    char[] letras = nombre.toCharArray();
    
    
    }
}
