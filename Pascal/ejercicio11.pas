
Program ejercicio11;

Var 
    a:   real;
    b:   integer;
Function expo(x: real; n:integer):   real;

Var 
    i:   integer;
    res    :   real;
Begin
    res := x;
    For i := 0 To n Do
        If i=0 Then
            res := 1
        Else
            res := res*x;
    expo := res;
End;

Begin
    write('Ingrese la base: ');
    readln(a);
    write('Ingrese el exponente: ');
    readln(b);
    writeln('El resultado es= ', expo(a,b):   2:   2)    ;
End.
