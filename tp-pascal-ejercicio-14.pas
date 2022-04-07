
Program ejercicio14;

Var 
    cadena:   String;

Function contarLetras(c : String):   integer;

Var 
    contador, i :   integer;
Begin
    i := 1;
    contador := 0;
    While c[i]<>'.' Do
        Begin
            If c[i]<>' ' Then
                Begin
                    contador := contador+1;
                End;
            i := i+1;
        End;
    contarLetras := contador;
End;

Function contarPalabras(c : String):   integer;

Var 
    contador,i:   integer;
Begin
    i := 1;
    contador := 0;
    While c[i]<>'.' Do
        Begin
            If c[i]=' ' Then contador := contador+1;
            i := i+1;
        End;
    contador := contador+1;{La palabra que se cierra con un .}
    contarPalabras := contador;
End;

Function terminaConPunto(Var telegrama : String):   boolean;

Begin
    terminaConPunto := telegrama[length(telegrama)] = '.';
End;

Begin
    write('Ingrese un telegrama terminado en puntoesfera: ');
    readln(cadena);
    If terminaConPunto(cadena) Then
        Begin

            writeln('Cantidad de letras: ', contarLetras(cadena));
            writeln('Cantidad de palabras: ', contarPalabras(cadena));
        End
    Else
        writeln('El telegrama no termina en putno');
End.
