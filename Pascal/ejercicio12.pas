
Program ejercicio12;

Var 
    x:   integer;
Procedure factores(numero: integer);

Var 
    factor:   integer;
Begin
    factor := 2;
    While numero <> 1 Do
        Begin
            If (numero Mod  factor) = 0 Then
                Begin
                    numero := numero Div factor;
                    If numero < factor Then
                        write(factor)
                    Else
                        write(factor, '.');
                End
            Else
                factor := factor+1;
        End;
End;

Begin
    write('Ingrese un numero a descomponer: ');
    readln(x);
    write('Sus factores primos son: ')    ;
    factores(x)
End.
