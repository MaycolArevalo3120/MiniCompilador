package umg.compiladores;

import java_cup.runtime.*;

%%

%public
%class Lexer
%char
%line
%column
%cup

%{
    private Symbol symbol(int tipo, Object valor) {
        return new Symbol(tipo, yyline, yycolumn, valor);
    }
%}

digito          = [0-9]
letra           = [a-zA-Z]
identificador   = {letra}({letra}|{digito})*

%%

"entero"        { return new Symbol(sym.ENTERO); }
"flotante"      { return new Symbol(sym.FLOTANTE); }
"caracter"      { return new Symbol(sym.CARACTER); }
{identificador} { return new Symbol(sym.IDENTIFICADOR, yytext()); }
{digito}+       { return new Symbol(sym.NUMERO_ENTERO, Integer.parseInt(yytext())); }
{digito}+"."{digito}+  { return new Symbol(sym.NUMERO_FLOTANTE, Float.parseFloat(yytext())); }
"+"             { return new Symbol(sym.SUMA); } // Agregar token para la suma
"="             { return new Symbol(sym.IGUAL); }
";"             { return new Symbol(sym.PUNTOYCOMA); }
[ \t\n\r\f]     { /* Ignorar espacios en blanco */ }
.               { String errLex = "Error léxico, caracter irreconocido: '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+yycolumn;
                    System.err.println(errLex); }