
Program ejercicio13;
Procedure temperaturas();

Var 
    i:   integer;
    cel:   real;
Begin
    i := 0;
    While i<=200 Do
        Begin
            cel := 5/9 * (i-32);
            writeln('Fahrenehit: ', round(i), ' - Celsius: ',round(cel));
            i := i+10;
        End;
End;

Begin
    writeln('Equivalencia de temperaturas entre Fahrenehit y Celsius');
    temperaturas();
End.
