/*
 * Click nbfs:/nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs:/nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.jflexycup;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import umg.compiladores.*;

/**
 *
 * @author miguelcatalan
 */
public class JFlexYCup {

    public static void main(String[] args) {
        try {
            Reader r = new FileReader("C:/Users/Maycol Arevalo/Documents/1 UMG/Septimo semestre/compiladores/JFlexYCup/JFlexYCup/Textos/variables.txt");
            Lexer lex = new Lexer(r);
            parser p = new parser(lex);
            try {
                p.parse();
            } catch (Exception ex) {
                Logger.getLogger(JFlexYCup.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(JFlexYCup.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
