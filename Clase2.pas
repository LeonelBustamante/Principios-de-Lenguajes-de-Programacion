
Program clase2;
{Aqui definimos las variables}

Var 
    numeroentero:   integer;
    numeroreal :   real;
    caracter:   char;
    cadena:   String;
    booleano:   boolean;
Begin
    {Aqui asignamos valor}
    numeroentero := 189*2;
    numeroreal := 1.2E6;
    caracter := '*';
    cadena := 'cadena simple';
    booleano := TRUE;
    {Aqui lo utilizamos}
    writeln ('numero entero ',numeroentero);
    writeln('numero real ', numeroreal:6:3);
    writeln ('caracter ',caracter);
    writeln('cadena ', cadena);
    writeln('Boolean ',booleano);
End.
