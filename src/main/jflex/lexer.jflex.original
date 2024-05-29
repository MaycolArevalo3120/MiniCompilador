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
numero          = {digito}+
espacios_blanco = [ \t\r\n]

%%

"+"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.SUMA, yytext()); }
"-"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.RESTA, yytext()); }
"*"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.MULTIPLICACION, yytext()); }
"("                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_ABRE, yytext()); }
")"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_CIERRA, yytext()); }
";"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PUNTO_Y_COMA, yytext()); }
{numero}            { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.NUMERO, yytext()); }
{espacios_blanco}   { System.out.println("Se reconoce lexema: " + yytext()); }