
Program esMayorQueCero;

Var 
    x:   real;

Function mayor(x:real):   String;

Var 
    res:   String;
Begin
    If x<0 Then res := 'Menor que 0'
    Else
        If x>0 Then res := 'Mayor que 0'
    Else res := 'cero';
    mayor := res;
End;

Begin
    write('Escriba un valor: ');
    readln(x);
    writeln('El valor es: ', mayor(x));
End.
