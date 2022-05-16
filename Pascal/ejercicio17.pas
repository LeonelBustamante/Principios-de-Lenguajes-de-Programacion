
Program ejercicio17;

Const max =   200;

Var arrPrimos:   array [1 .. max] Of integer;

Function esPrimo(numero: integer):   boolean;

Var i:   integer;
    p:   boolean;
Begin
    p := true;
    i := 2;
    While (i < numero) And (p = true) Do
        Begin
            p := numero Mod i <> 0;
            i := i + 1;
        End;
    esPrimo := p;
End;

Procedure primos();

Var i, posUltimo:   integer;
Begin
    posUltimo := 0;
    For i := 2 To max Do
        Begin
            If esPrimo(i) Then
                Begin
                    posUltimo := posUltimo + 1;
                    arrPrimos[posUltimo] := i;
                End;
        End;
End;

Procedure mostrarPrimos();

Var i:   integer;
Begin
    i := 1;
    While (i < max) And (arrPrimos[i] <> 0) Do
        Begin
            write(arrPrimos[i], ', ');
            i := i + 1;
        End;

End;

Begin
    primos();
    mostrarPrimos();
End.
