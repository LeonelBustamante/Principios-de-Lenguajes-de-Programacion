
Program  operaciones;

Var 
    x,y:   real;
    tipo:   char;

Function division(x,y: real):   real;

Var 
    res:   real;
Begin
    If y=0 Then
        res :=   0
    Else
        res :=   x/y;
    division := res;
End;

Function operaciones(x,y: real; tipo: char):   real;

Var res:   real;
Begin
    Case tipo Of 
        's':   res := x+y;
        'r':   res := x-y;
        'm':   res := x*y;
        'd':   res := division(x,y);
        Else
            res := 0;
    End;
    operaciones := res;
End;

Begin
    write('Escriba un valor: ');
    readln(x);
    write('Escriba el otro valor: ');
    readln(y);
    writeln('********************************');
    writeln('"s" Suma');
    writeln('"r" Resta');
    writeln('"m" Multiplicacion');
    writeln('"d" Division');
    write('Seleccione un tipo de operacion: ');
    readln(tipo);
    write('El resultado de su operacion es: ');
    writeln(operaciones(x,y,tipo):   8:   2);
End.
