
Program prog1; {Cabecera}
{CONST Constantes}

Var {Variables del programa principal}
    nombre:   String;
    numeroSuerte:   integer;
Begin{Empiezan las sentencias a ejecutar}
    writeln('***EMPIEZA PROGRAMA***');
    write('Escribe tu nombre:');
    readln(nombre);
    numeroSuerte := random(10);
    writeln('Hola ',nombre, ' tu numero de la suerte es ', numeroSuerte);
    readln();
End.{Se finaliza la ejecución del programa}
