
Program ejercicio8;

Var 
    x,y:   integer;
Procedure intercambio(val1,val2: integer);
Begin
    x := val2;
    y := val1;
End;

Begin
    write('Ingrese el primer numero: ');
    readln(x);
    write('Ingrese el segundo numero: ');
    readln(y);
    writeln('x antes: ',x);
    writeln('y antes: ',y);
    intercambio(x,y);
    writeln('x despues: ',x);
    writeln('y despues: ',y);
End.
