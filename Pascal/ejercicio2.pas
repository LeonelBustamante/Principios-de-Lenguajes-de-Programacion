
Program ejercicio2;

Var 
    x,y,resSuma,resResta,resProducto,resDivision:   real;

Function suma(x,y: real):   real;
Begin
    suma := x+y;
End;

Function resta(x,y: real):   real;
Begin
    resta := x-y;
End;

Procedure producto(x,y: real);
Begin
    resProducto := x*y;
End;

Procedure division(x,y: real);
Begin
    If y=0 Then
        resDivision =   0
                        Else
                            resDivision =   x/y;

End;

Begin
    write('Ingrese un numero: ');
    readln(x);
    write('Ingrese el otro numero: ');
    readln(y);
    resSuma := suma(x,y);
    writeln('Suma: ', resSuma:12:2);
    resResta := resta(x,y);
    writeln('Resta: ', resResta:12:2);
    producto(x,y);
    division(x,y);
    writeln('producto: ', resProducto:8:2);
    writeln('division: ', resDivision:8:2);
End.
