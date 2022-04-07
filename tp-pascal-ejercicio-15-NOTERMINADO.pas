
Program ejercicio15;

Var 
    cadena:   String;

Function masVocales(c : String):   char;

Var 
    contadorA, contadorE, contadorI, contadorO, contadorU, i,res :   integer;
Begin
    i :=   1;
    contadorA := 0;
    contadorE := 0;
    contadorI := 0;
    contadorO := 0;
    contadorU := 0;
    While c[i]<>'.' Do
        Begin
            Case c[i] Of 
                'a':   contadorA := contadorA + 1;
                'e':   contadorE := contadorE + 1;
                'i':   contadorI := contadorI + 1;
                'o':   contadorO := contadorO + 1;
                'u':   contadorU := contadorU + 1;
                'A':   contadorA := contadorA + 1;
                'E':   contadorE := contadorE + 1;
                'I':   contadorI := contadorI + 1;
                'O':   contadorO := contadorO + 1;
                'U':   contadorU := contadorU + 1;
            End;
        End;

    masVocales := mayor(contadorA,contadorE,contadorI,contadorO,contadorU);
End;

Function mayor(a,e,i,o,u:integer):   char;

Var aux1, aux2:   integer;
Begin
    aux1 := max(a,e);
    aux2 := max(i,o);
    aux1 := max(aux1,aux2);
    mayor := max(aux1,u);
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

            writeln('Predomina la: ', contarLetras(cadena));
        End
    Else
        writeln('El telegrama no termina en putno');
End.
