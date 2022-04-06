
Program ejercicio3;

Const 
    PI =   3.141592;

Var 
    radio, superficie, volumen:   real;

Procedure calcularSuperficieYVolumen(r : real);
Begin
    superficie := 4*PI*sqr(r);
    volumen := ((4/3)*PI)*(sqr(r)*r);
End;



Begin
    write('Ingrese el radio de la esfera: ');
    readln(radio);
    calcularSuperficieYVolumen(radio);
    writeln('El radio es: ', radio:8:4);
    writeln('La superficie de la esfera es: ', superficie:8:4);
    writeln('El volumen de la esfera es: ', volumen:8:4);

(*En este caso se realiza en un procedimiento para que este pueda asignarse a 2 variables*)
End.
