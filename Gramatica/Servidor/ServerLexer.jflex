package com.froi.pruebagramaticareproductor.gramatica;

import java_cup.runtime.*;
import static com.froi.pruebagramaticareproductor.gramatica.ServerParserSym.*;

%%
%public
%class ServerLexer
%cup
%unicode
%line
%column


%{
    /*CODIGO AÑADIDO*/
    int nivelIndentacion = 0;

    public int verificarIndentacion(String tabulaciones) {
        
        String tab = tabulaciones + ".";
        String tabArray[] = tab.split("\t");
        System.out.println("\n\nnivel actual: " + nivelIndentacion + "\nIndentacion Nueva: " + (tabArray.length-1) + "\n\n");
        return tabArray.length - 1;
    }

%}

%eof{
    /*CODIGO EJECUTADO AL FINAL DEL ANALISIS*/
%eof}

/*-----INICIO DE EXPRESIONES REGULARES-----*/

//CARACTERES ESPECIALES//
SALTO = \n
TABULACION = ([\t] | [\t\f])+
WS = [ \t\f]
Ignore = {WS}

//Palabras reservadas//
PR_PISTA = "Pista" | "pista"
PR_EXTIENDE = "Extiende" | "extiende"
PR_ENTERO = "entero" | "Entero"
PR_DOBLE = "doble" | "Doble"
PR_BOOLEAN = "boolean" | "Boolean"
PR_CARACTER = "caracter" | "Caracter"
PR_CADENA = "cadena" | "Cadena"
PR_VAR = "var" | "Var"
PR_KEEP = "Keep" | "keep"
PR_SI = "si" | "Si"
PR_SINO = "sino" | "Sino"
PR_SWITCH = "switch" | "Switch"
PR_CASO = "caso" | "Caso"
PR_DEFAULT = "default" | "Default"
PR_PARA = "para" | "Para"
PR_MIENTRAS = "mientras" | "Mientras"
PR_HACER = "hacer" | "Hacer"
PR_RETORNA = "retorna" | "Retorna"
PR_CONTINUAR = "continuar" | "Continuar"

//Funciones y procedimientos nativos del lenguaje//
PR_REPRODUCIR = "Reproducir" | "reproducir"
PR_ESPERAR = "Esperar" | "esperar"
PR_ORDENAR = "Ordenar" | "ordenar"
PR_SUMARIZAR = "Sumarizar" | "sumarizar"
PR_LONGITUD = "Longitud" | "longitud"
PR_MENSAJE = "Mensaje" | "mensaje"
PR_PRINCIPAL = "Principal" | "principal"

//Lenguaje de definición de listas de reproducción//
PR_LISTA = "lista" | "Lista"
PR_RANDOM = "random" | "Random"
PR_CIRCULAR = "circular" | "Circular"
PR_PISTAS = "pistas" | "Pistas"

//Simbolos//
CORA = "["
CORC = "]"
PARA = "("
PARC = ")"
COMA = ","
PUNTO_COMA = ";"

//Operadores Relacionales//
IGUAL = "="
IGUALACION = "=="
DIFERENCIACION = "!="
MAYOR_QUE = ">"
MENOR_QUE = "<"
MAYOR_IGUAL = ">="
MENOR_IGUAL = "<="
NULO = "!!"

//Operadores Lógicos//
AND = "&&"
NAND = "!&&"
NOR = "!||"
XOR = "&|"
NOT = "!"

//Operadores Aritmeticos//
SUMA = "+"
RESTA = "-"
MULTIPLICACION = "*"
DIVISION = "/"
MODULO = "%"
POTENCIA = "^"

//Operadores de Incremento-Decremento//
SUMA_SIMPLIFICADA = "+="
SUMA_EN_UNO = "++"
RESTA_EN_UNO = "--"

//Asignación de Valores//
TRUE = "True"  | "true"
FALSE = "False" | "false"

//Valores de Apoyo//
ALFANUMERICO = ([a-zA-Z] | [0-9])+
NUMERO = [0-9]+
VARIABLE = (([a-zA-Z]) | [0-9] | "_" | "$" | "-")+

//Comentarios//
COMENTARIO_LINEA = ">>" [^\r\n]* "\n"
COMENTARIO_BLOQUE = "<-" [^-] ~"->" | "<-" "-"+ ">"
COMENTARIO = {COMENTARIO_LINEA} | {COMENTARIO_BLOQUE}

/*-----FINAL DE EXPRESIONES REGULARES------*/


%%

<YYINITIAL> {

    //PALABRAS RESERVADAS//
    {PR_PISTA}                  {System.out.println("PISTA"); return new Symbol(PR_PISTA, yyline+1, yycolumn+1, yytext());}
    {PR_EXTIENDE}               {System.out.println("EXTIENDE"); return new Symbol(PR_EXTIENDE, yyline+1, yycolumn+1, yytext());}
    {PR_ENTERO}                 {System.out.println("ENTERO"); return new Symbol(PR_ENTERO, yyline+1, yycolumn+1, yytext());}
    {PR_DOBLE}                  {System.out.println("DOBLE"); return new Symbol(PR_DOBLE, yyline+1, yycolumn+1, yytext());}
    {PR_BOOLEAN}                {System.out.println("BOOLEAN"); return new Symbol(PR_BOOLEAN, yyline+1, yycolumn+1, yytext());}
    {PR_CARACTER}               {System.out.println("CARACTER"); return new Symbol(PR_CARACTER, yyline+1, yycolumn+1, yytext());}
    {PR_CADENA}                 {System.out.println("CADENA"); return new Symbol(PR_CADENA, yyline+1, yycolumn+1, yytext());}
    {PR_VAR}                    {System.out.println("VAR"); return new Symbol(PR_VAR, yyline+1, yycolumn+1, yytext());}
    {PR_KEEP}                   {System.out.println("KEEP"); return new Symbol(PR_KEEP, yyline+1, yycolumn+1, yytext());}
    {PR_SI}                     {System.out.println("SI"); return new Symbol(PR_SI, yyline+1, yycolumn+1, yytext());}
    {PR_SINO}                   {System.out.println("SINO"); return new Symbol(PR_SINO, yyline+1, yycolumn+1, yytext());}
    {PR_SWITCH}                 {System.out.println("SWITCH"); return new Symbol(PR_SWITCH, yyline+1, yycolumn+1, yytext());}
    {PR_CASO}                   {System.out.println("CASO"); return new Symbol(PR_CASO, yyline+1, yycolumn+1, yytext());}
    {PR_DEFAULT}                {System.out.println("DEFAULT"); return new Symbol(PR_DEFAULT, yyline+1, yycolumn+1, yytext());} 
    {PR_PARA}                   {System.out.println("PARA"); return new Symbol(PR_PARA, yyline+1, yycolumn+1, yytext());}
    {PR_MIENTRAS}               {System.out.println("MIENTRAS"); return new Symbol(PR_MIENTRAS, yyline+1, yycolumn+1, yytext());}
    {PR_HACER}                  {System.out.println("HACER"); return new Symbol(PR_HACER, yyline+1, yycolumn+1, yytext());}
    {PR_RETORNA}                {System.out.println("RETORNA"); return new Symbol(PR_RETORNA, yyline+1, yycolumn+1, yytext());}
    {PR_CONTINUAR}              {System.out.println("CONTINUAR"); return new Symbol(PR_CONTINUAR, yyline+1, yycolumn+1, yytext());}

    //FUNCIONES Y PROCEDIMIENTOS NATIVOS DEL LENGUAJE//
    {PR_REPRODUCIR}             {System.out.println("REPRODUCIR"); return new Symbol(PR_REPRODUCIR, yyline+1, yycolumn+1, yytext());}
    {PR_ESPERAR}                {System.out.println("ESPERAR"); return new Symbol(PR_ESPERAR, yyline+1, yycolumn+1, yytext());}
    {PR_ORDENAR}                {System.out.println("ORDENAR"); return new Symbol(PR_ORDENAR, yyline+1, yycolumn+1, yytext());}
    {PR_SUMARIZAR}              {System.out.println("SUMARIZAR"); return new Symbol(PR_SUMARIZAR, yyline+1, yycolumn+1, yytext());}
    {PR_LONGITUD}               {System.out.println("LONGITUD"); return new Symbol(PR_LONGITUD, yyline+1, yycolumn+1, yytext());}
    {PR_MENSAJE}                {System.out.println("MENSAJE"); return new Symbol(PR_MENSAJE, yyline+1, yycolumn+1, yytext());}
    {PR_PRINCIPAL}              {System.out.println("PRINCIPAL"); return new Symbol(PR_PRINCIPAL, yyline+1, yycolumn+1, yytext());}

    //LENGUAJE DE DEFINICIÓN DE LISTAS DE REPRODUCCIÓN//
    {PR_LISTA}                  {System.out.println("LISTA"); return new Symbol(PR_LISTA, yyline+1, yycolumn+1, yytext());}
    {PR_RANDOM}                 {System.out.println("RANDOM"); return new Symbol(PR_RANDOM, yyline+1, yycolumn+1, yytext());}
    {PR_CIRCULAR}               {System.out.println("CIRCULAR"); return new Symbol(PR_CIRCULAR, yyline+1, yycolumn+1, yytext());}
    {PR_PISTAS}                 {System.out.println("PISTAS"); return new Symbol(PR_PISTAS, yyline+1, yycolumn+1, yytext());}

    //SIMBOLOS//
    {CORA}                      {System.out.println("CORA"); return new Symbol(CORA, yyline+1, yycolumn+1, yytext());}
    {CORC}                      {System.out.println("CORC"); return new Symbol(CORC, yyline+1, yycolumn+1, yytext());}
    {PARA}                      {System.out.println("PARA"); return new Symbol(PARA, yyline+1, yycolumn+1, yytext());}
    {PARC}                      {System.out.println("PARC"); return new Symbol(PARC, yyline+1, yycolumn+1, yytext());}
    {COMA}                      {System.out.println("COMA"); return new Symbol(COMA, yyline+1, yycolumn+1, yytext());}
    {PUNTO_COMA}                {System.out.println("PUNTO_COMA"); return new Symbol(PUNTO_COMA, yyline+1, yycolumn+1, yytext());}
    {TABULACION}                {
                                    int indentacionActual = verificarIndentacion(yytext());
                                    if(indentacionActual == nivelIndentacion) {
                                        /*Ignore*/
                                    } else if(indentacionActual > nivelIndentacion) {
                                        nivelIndentacion = indentacionActual;
                                        System.out.println("INDENTACION"); 
                                        return new Symbol(INDENTACION, yyline+1, yycolumn+1, yytext());
                                    } else if (indentacionActual < nivelIndentacion) {
                                        nivelIndentacion = indentacionActual;
                                        System.out.println("DENDENTACION"); 
                                        return new Symbol(DENDENTACION, yyline+1, yycolumn+1, yytext());
                                    }
                                
                                }

    //OPERADORES RELACIONALES//
    {IGUAL}                     {System.out.println("IGUAL"); return new Symbol(IGUAL, yyline+1, yycolumn+1, yytext());}
    {IGUALACION}                {System.out.println("IGUALACION"); return new Symbol(IGUALACION, yyline+1, yycolumn+1, yytext());}
    {DIFERENCIACION}            {System.out.println("DIFERENCIACION"); return new Symbol(DIFERENCIACION, yyline+1, yycolumn+1, yytext());}
    {MAYOR_QUE}                 {System.out.println("MAYOR_QUE"); return new Symbol(MAYOR_QUE, yyline+1, yycolumn+1, yytext());}
    {MENOR_QUE}                 {System.out.println("MENOR_QUE"); return new Symbol(MENOR_QUE, yyline+1, yycolumn+1, yytext());}
    {MAYOR_IGUAL}               {System.out.println("MAYOR_IGUAL"); return new Symbol(MAYOR_IGUAL, yyline+1, yycolumn+1, yytext());}
    {MENOR_IGUAL}               {System.out.println("MENOR_IGUAL"); return new Symbol(MENOR_IGUAL, yyline+1, yycolumn+1, yytext());}
    {NULO}                      {System.out.println("NULO"); return new Symbol(NULO, yyline+1, yycolumn+1, yytext());}

    //OPERADORES LOGICOS//
    {AND}                       {System.out.println("AND"); return new Symbol(AND, yyline+1, yycolumn+1, yytext());}
    {NAND}                      {System.out.println("NAND"); return new Symbol(NAND, yyline+1, yycolumn+1, yytext());}
    {NOR}                       {System.out.println("NOR"); return new Symbol(NOR, yyline+1, yycolumn+1, yytext());}
    {XOR}                       {System.out.println("XOR"); return new Symbol(XOR, yyline+1, yycolumn+1, yytext());}
    {NOT}                       {System.out.println("NOT"); return new Symbol(NOT, yyline+1, yycolumn+1, yytext());}

    //OPERADORES ARITMETICOS//
    {SUMA}                      {System.out.println("SUMA"); return new Symbol(SUMA, yyline+1, yycolumn+1, yytext());}
    {RESTA}                     {System.out.println("RESTA"); return new Symbol(RESTA, yyline+1, yycolumn+1, yytext());}
    {MULTIPLICACION}            {System.out.println("MULTIPLICACION"); return new Symbol(MULTIPLICACION, yyline+1, yycolumn+1, yytext());}
    {DIVISION}                  {System.out.println("DIVISION"); return new Symbol(DIVISION, yyline+1, yycolumn+1, yytext());}
    {MODULO}                    {System.out.println("MODULO"); return new Symbol(MODULO, yyline+1, yycolumn+1, yytext());}
    {POTENCIA}                  {System.out.println("POTENCIA"); return new Symbol(POTENCIA, yyline+1, yycolumn+1, yytext());}

    //OPERADORES DE INCREMNTO-DECREMENTO//
    {SUMA_SIMPLIFICADA}         {System.out.println("SUMA_SIMPLIFICADA"); return new Symbol(SUMA_SIMPLIFICADA, yyline+1, yycolumn+1, yytext());}
    {SUMA_EN_UNO}               {System.out.println("SUMA_EN_UNO"); return new Symbol(SUMA_EN_UNO, yyline+1, yycolumn+1, yytext());}
    {RESTA_EN_UNO}              {System.out.println("RESTA_EN_UNO"); return new Symbol(RESTA_EN_UNO, yyline+1, yycolumn+1, yytext());}

    //ASIGNACION DE VALORES//
    {TRUE}                      {System.out.println("TRUE"); return new Symbol(TRUE, yyline+1, yycolumn+1, yytext());}
    {FALSE}                     {System.out.println("FALSE"); return new Symbol(FALSE, yyline+1, yycolumn+1, yytext());}

    //Valores de Apoyo
    {NUMERO}                    {System.out.println("NUMERO"); return new Symbol(NUMERO, yyline+1, yycolumn+1, yytext());}
    {ALFANUMERICO}              {System.out.println("ALFANUMERICO"); return new Symbol(ALFANUMERICO, yyline+1, yycolumn+1, yytext());}

    //SALTOS DE LINEA//
    {SALTO}                      {System.out.println("SALTO"); return new Symbol(SALTO, yyline+1, yycolumn+1, yytext());}

    //COMENTARIOS//
    {COMENTARIO}                {/*IGNORE*/}

    //IGNORE//
    {Ignore}                    {/*IGNORE*/}

}


[^] {
    /*Se ejecuta al encontrar un error léxico*/
}