
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

//Palabras reservadas//


//Simbolos//


/*-----FINAL DE EXPRESIONES REGULARES------*/


%%

<YYINITIAL> {

}


[^] {
    /*Se ejecuta al encontrar un error léxico*/
}