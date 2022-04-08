
Program ejercicio9;

Var 
    x,res:   integer;

Begin
    res := 0;
    Repeat
        write('Ingrese un numero o cero para terminar: ');
        readln(x);
        res := res + x;
        writeln('Se ingreso: ',x, ' contador= ', res);
    Until x=0;
End.
