package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
%line
%column
L = [a-zA-Z]+
D = [0-9]
E = [ ,\n,\t,\r,]+
%{
    public String lexema;
    private int cantidadUnaVocal = 0;
    private int cantidadDosVocales = 0;
    private int cantidadTresVocales = 0;
    private int cantidadCuatroVocales = 0;
    private int cantidadCincoVocales = 0;
    public int linea;
    public int columna;
    
    
    private void contarVocales(){
        char[] letras = lexema.toCharArray();
        int totalVocales = 0;
        for(char vocal : letras){
           if('a' == vocal |'e' == vocal | 'i' == vocal | 'o' == vocal | 'u' == vocal){
               totalVocales++;
           }
       }

        if(totalVocales == 1){
            cantidadUnaVocal++;
        }
        if(totalVocales == 2){
            cantidadDosVocales++;
        }
        if(totalVocales == 3){
            cantidadTresVocales++;
        }
        if(totalVocales == 4){
            cantidadCuatroVocales++;
        }
        if(totalVocales == 5){
            cantidadCincoVocales++;
        }
    }

   
    
     public int getUnaVocal(){
        return cantidadUnaVocal;
    }
    public int getDosVocales(){
        return cantidadDosVocales;
    }
    public int getTresVocales(){
        return cantidadTresVocales;
    }
    public int contarCuatroVocales(){
        return cantidadCuatroVocales;
    }
    public int contarCincoVocales(){
        return cantidadCincoVocales;
    }
%}
%%
{E} {/*Ignore*/}
{L}+ {lexema = yytext(); contarVocales(); return Palabra;}
{D} {lexema=yytext(); linea = yyline+1; columna = yycolumn+1; return Numero;}
. {lexema=yytext(); return ERROR;}






