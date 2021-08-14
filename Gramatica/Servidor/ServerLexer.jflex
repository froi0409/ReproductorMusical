
%%
%public
%class ServerLexer
%cup
%unicode
%line
%column


%{
    /*CODIGO AÑADIDO*/
%}

%eof{
    /*CODIGO EJECUTADO AL FINAL DEL ANALISIS*/
%eof}

/*-----INICIO DE EXPRESIONES REGULARES-----*/

//CARACTERES ESPECIALES//
TerminacionLinea = [\r|\n|\r\n]
WS = [ \t\f]
Ignore = {WS}

//Palabras reservadas//
PR_PISTA = "Pista"
PR_ENTERO = "entero"
PR_DOBLE = "doble"
PR_BOOLEAN = "boolean"
PR_CARACTER = "caracter"
PR_CADENA = "cadena"
PR_VAR = "var"
PR_KEEP = "Keep"
PR_SI = "si"
PR_SINO = "sino"
PR_SWITCH = "switch"
PR_CASO = "caso"
PR_DEFAULT = "default"
PR_PARA = "para"
PR_MIENTRAS = "mientras"
PR_HACER = "hacer"
PR_RETORNA = "retorna"

//Funciones y procedimientos nativos del lenguaje//
PR_REPRODUCIR = "Reproducir"
PR_ESPERAR = "Esperar"
PR_ORDENAR = "Ordenar"
PR_SUMARIZAR = "Sumarizar"
PR_LONGITUD = "Longitud"
PR_MENSAJE = "Mensaje"
PR_PRINCIPAL = "Principal"

//Lenguaje de definición de listas de reproducción//
PR_LISTA = "lista"
PR_RANDOM = "random"
PR_CIRCULAR = "circular"
PR_PISTAS = "pistas"

//Simbolos//
CORA = "["
CORC = "]"
PARA = "("
PARC = ")"
COMA = ","
PUNTO_COMA = ";"

//Operadores Relacionales//
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


//Comentarios//
COMENTARIO_LINEA = ">>" [^\r\n]*
COMENTARIO_BLOQUE = "<-" [^-] ~"->" | "<-" "-"+ ">"
COMENTARIO = {COMENTARIO_LINEA} | {COMENTARIO_BLOQUE}

/*-----FINAL DE EXPRESIONES REGULARES------*/


%%

<YYINITIAL> {

    //PALABRAS RESERVADAS//
    {PR_PISTA}                  {return new Symbol(PR_PISTA, yyline+1, yycolumn+1, yytext());}
    {PR_ENTERO}                 {return new Symbol(PR_ENTERO, yyline+1, yycolumn+1, yytext());}
    {PR_DOBLE}                  {return new Symbol(PR_DOBLE, yyline+1, yycolumn+1, yytext());}
    {PR_BOOLEAN}                {return new Symbol(PR_BOOLEAN, yyline+1, yycolumn+1, yytext());}
    {PR_CARACTER}               {return new Symbol(PR_CARACTER, yyline+1, yycolumn+1, yytext());}
    {PR_CADENA}                 {return new Symbol(PR_CADENA, yyline+1, yycolumn+1, yytext());}
    {PR_VAR}                    {return new Symbol(PR_VAR, yyline+1, yycolumn+1, yytext());}
    {PR_KEEP}                   {return new Symbol(PR_KEEP, yyline+1, yycolumn+1, yytext());}
    {PR_SI}                     {return new Symbol(PR_SI, yyline+1, yycolumn+1, yytext());}
    {PR_SINO}                   {return new Symbol(PR_SINO, yyline+1, yycolumn+1, yytext());}
    {PR_SWITCH}                 {return new Symbol(PR_SWITCH, yyline+1, yycolumn+1, yytext());}
    {PR_CASO}                   {return new Symbol(PR_CASO, yyline+1, yycolumn+1, yytext());}
    {PR_DEFAULT}                {return new Symbol(PR_DEFAULT, yyline+1, yycolumn+1, yytext());} 
    {PR_PARA}                   {return new Symbol(PR_PARA, yyline+1, yycolumn+1, yytext());}
    {PR_MIENTRAS}               {return new Symbol(PR_MIENTRAS, yyline+1, yycolumn+1, yytext());}
    {PR_HACER}                  {return new Symbol(PR_HACER, yyline+1, yycolumn+1, yytext());}
    {PR_RETORNA}                {return new Symbol(PR_RETORNA, yyline+1, yycolumn+1, yytext());}

    //FUNCIONES Y PROCEDIMIENTOS NATIVOS DEL LENGUAJE//
    {PR_REPRODUCIR}             {return new Symbol(PR_REPRODUCIR, yyline+1, yycolumn+1, yytext());}
    {PR_ESPERAR}                {return new Symbol(PR_ESPERAR, yyline+1, yycolumn+1, yytext());}
    {PR_ORDENAR}                {return new Symbol(PR_ORDENAR, yyline+1, yycolumn+1, yytext());}
    {PR_SUMARIZAR}              {return new Symbol(PR_SUMARIZAR, yyline+1, yycolumn+1, yytext());}
    {PR_LONGITUD}               {return new Symbol(PR_LONGITUD, yyline+1, yycolumn+1, yytext());}
    {PR_MENSAJE}                {return new Symbol(PR_MENSAJE, yyline+1, yycolumn+1, yytext());}
    {PR_PRINCIPAL}              {return new Symbol(PR_PRINCIPAL, yyline+1, yycolumn+1, yytext());}

    //LENGUAJE DE DEFINICIÓN DE LISTAS DE REPRODUCCIÓN//
    {PR_LISTA}                  {return new Symbol(PR_LISTA, yyline+1, yycolumn+1, yytext());}
    {PR_RANDOM}                 {return new Symbol(PR_RANDOM, yyline+1, yycolumn+1, yytext());}
    {PR_CIRCULAR}               {return new Symbol(PR_CIRCULAR, yyline+1, yycolumn+1, yytext());}
    {PR_PISTAS}                 {return new Symbol(PR_PISTAS, yyline+1, yycolumn+1, yytext());}

    //SIMBOLOS//
    {CORA}                      {return new Symbol(CORA, yyline+1, yycolumn+1, yytext());}
    {CORC}                      {return new Symbol(CORC, yyline+1, yycolumn+1, yytext());}
    {PARA}                      {return new Symbol(PARA, yyline+1, yycolumn+1, yytext());}
    {PARC}                      {return new Symbol(PARC, yyline+1, yycolumn+1, yytext());}
    {COMA}                      {return new Symbol(COMA, yyline+1, yycolumn+1, yytext());}
    {PUNTO_COMA}                {return new Symbol(PUNTO_COMOA, yyline+1, yycolumn+1, yytext());}

    //OPERADORES RELACIONALES//
    {IGUALACION}                {return new Symbol(IGUALACION, yyline+1, yycolumn+1, yytext());}
    {DIFERENCIACION}            {return new Symbol(DIFERENCIACION, yyline+1, yycolumn+1, yytext());}
    {MAYOR_QUE}                 {return new Symbol(MAYOR_QUE, yyline+1, yycolumn+1, yytext());}
    {MENOR_QUE}                 {return new Symbol(MENOR_QUE, yyline+1, yycolumn+1, yytext());}
    {MAYOR_IGUAL}               {return new Symbol(MAYOR_IGUAL, yyline+1, yycolumn+1, yytext());}
    {MENOR_IGUAL}               {return new Symbol(MENOR_IGUAL, yyline+1, yycolumn+1, yytext());}
    {NULO}                      {return new Symbol(NULO, yyline+1, yycolumn+1, yytext());}

    //OPERADORES LOGICOS//
    {AND}                       {return new Symbol(AND, yyline+1, yycolumn+1, yytext());}
    {NAND}                      {return new Symbol(NAND, yyline+1, yycolumn+1, yytext());}
    {NOR}                       {return new Symbol(NOR, yyline+1, yycolumn+1, yytext());}
    {XOR}                       {return new Symbol(XOR, yyline+1, yycolumn+1, yytext());}
    {NOT}                       {return new Symbol(NOT, yyline+1, yycolumn+1, yytext());}

    //OPERADORES ARITMETICOS//
    {SUMA}                      {return new Symbol(SUMA, yyline+1, yycolumn+1, yytext());}
    {RESTA}                     {return new Symbol(RESTA, yyline+1, yycolumn+1, yytext());}
    {MULTIPLICACION}            {return new Symbol(MULTIPLICACION, yyline+1, yycolumn+1, yytext());}
    {DIVISION}                  {return new Symbol(DIVISION, yyline+1, yycolumn+1, yytext());}
    {MODULO}                    {return new Symbol(MODULO, yyline+1, yycolumn+1, yytext());}
    {POTENCIA}                  {return new Symbol(POTENCIA, yyline+1, yycolumn+1, yytext());}

    //OPERADORES DE INCREMNTO-DECREMENTO//
    {SUMA_SIMPLIFICADA}         {return new Symbol(SUMA_SIMPLIFICADA, yyline+1, yycolumn+1, yytext());}
    {SUMA_EN_UNO}               {return new Symbol(SUMA_EN_UNO, yyline+1, yycolumn+1, yytext());}
    {RESTA_EN_UNO}              {return new Symbol(RESTA_EN_UNO, yyline+1, yycolumn+1, yytext());}

    //ASIGNACION DE VALORES//
    {TRUE}                      {return new Symbol(TRUE, yyline+1, yycolumn+1, yytext());}
    {FALSE}                     {return new Symbol(FALSE, yyline+1, yycolumn+1, yytext());}

    //SALTOS DE LINEA//
    {TerminacionLinea}          {return new Symbol(SALTO, yyline+1, yycolumn+1, yytext());}

    //COMENTARIOS//
    {COMENTARIO}                {/*IGNORE*/}

    //IGNORE//
    {Ignore}                    {/*IGNORE*/}

}


[^] {
    /*Se ejecuta al encontrar un error léxico*/
}