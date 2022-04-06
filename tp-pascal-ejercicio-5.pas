
Program ejercicio5;

Var 
    x,y:   integer;
Function esDivisible(x,y:integer):   boolean;

Var 
    res:   boolean;
Begin
    If (x Mod y)=0 Then
        res := true
    Else
        res := false;
    esDivisible := res;
End;

Begin
    write('Escriba un valor: ');
    readln(x);
    write('Escriba el divisor: ');
    readln(y);
    writeln('El valor es divisible: ', esDivisible(x,y));
End.
