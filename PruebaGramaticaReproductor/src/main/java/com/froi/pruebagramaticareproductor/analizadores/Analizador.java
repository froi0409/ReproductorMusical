/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.froi.pruebagramaticareproductor.analizadores;

import com.froi.pruebagramaticareproductor.gramatica.ServerLexer;
import com.froi.pruebagramaticareproductor.gramatica.ServerParser;
import java.io.StringReader;

/**
 *
 * @author froi-pc
 */
public class Analizador {
    public void analizar(String entrada) {
        StringReader reader = new StringReader(entrada);
        ServerLexer lexer = new ServerLexer(reader);
        ServerParser parser = new ServerParser(lexer);
        try {
            parser.parse();
        } catch (Exception e) {
            System.err.println("Error al analizar gramática");
        }
    }
}
