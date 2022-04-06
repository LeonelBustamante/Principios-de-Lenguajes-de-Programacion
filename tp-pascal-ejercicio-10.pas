
Program ejercicio10;

Var 
    x,y,res:   integer;

Begin
    res := 0;
    write('Ingrese un numero: ');
    readln(x);
    write('Ingrese otro numero: ');
    readln(y);
    writeln('x: ',x);
    writeln('y: ',y);
    Repeat
        res := res+y;
        writeln('resultado parcial: ', res);
    Until res=x*y;
End.
