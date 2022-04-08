
Program ejercicio16;

Var a, b, c, x1, x2 :   real;

Function baskara(a, b, c : real; raiz1 : boolean):   real;
Begin
    If (sqr(b)-(4*a*c)) > 0 Then
        Begin
            If raiz1 Then
                baskara := ((-b) + sqrt((b*b)-(4*a*c)))/(2*a)
            Else
                baskara := ((-b) - sqrt((b*b)-(4*a*c)))/(2*a);
        End
    Else
        baskara := -111111; { representando como que no tiene raices reales }
End;

Begin
    writeln('Ingrese el valor de a:');
    read(a);
    writeln('Ingrese el valor de b:');
    read(b);
    writeln('Ingrese el valor de c:');
    read(c);

    x1 := baskara(a,b,c,true);
    x2 := baskara(a,b,c,false);
    writeln('Raiz x1 = ', trunc(x1));
    writeln('Raiz x2 = ', trunc(x2));
    writeln('p(x) = (x - ', x1,')(x - ', x2,')');
End.
