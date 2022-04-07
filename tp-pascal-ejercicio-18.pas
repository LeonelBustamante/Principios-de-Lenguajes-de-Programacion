
Program ejercicio18;

Const 
    max =   4;

Type 
    TipoIndiceConjuntos =   1 .. 256 ;
    Conj =   array [TipoIndiceConjuntos] Of boolean;

Var 
    A, B, R :   Conj;

Procedure llenarArreglos();

Var 
    i, j, valor:   integer;
Begin
    writeln('Llenando A');
    For i := 1 To max Do
        Begin
            write('Ingrese un valor (1/0):');
            readln(valor);
            Case valor Of 
                1:   A[i] := true;
                0:   A[i] := false;
                Else
                    A[i] := false;
            End;
        End;

    writeln('Llenando B');
    For j := 1 To max Do
        Begin
            write('Ingrese un valor (1/0):');
            readln(valor);
            Case valor Of 
                1:   B[j] := true;
                0:   B[j] := false;
                Else
                    B[j] := false;
            End;
        End;
End;

Procedure mostrarArreglo(Var arr: Conj; nombreArr : String);

Var 
    i :   integer;
Begin
    write(nombreArr, ' = [');
    For i := 1 To max Do
        Begin
            If i <> max Then
                write(arr[i], ', ')
            Else
                write(arr[i]);
        End;
    writeln(']');
End;

Function union(A, B : Conj):   Conj;

Var 
    i :   integer;
    arrResul :   Conj;
Begin
    For i In TipoIndiceConjuntos Do
        Begin
            arrResul[i] := A[i] Or B[i];
        End;
    union := arrResul;
End;

Function interseccion(A, B : Conj):   Conj;

Var 
    i :   integer;
    arrResul :   Conj;
Begin
    For i In TipoIndiceConjuntos Do
        Begin
            arrResul[i] := A[i] And B[i];
        End;
    interseccion := arrResul;
End;

Function diferencia(A, B : Conj):   Conj;

Var 
    i :   integer;
    arrResul :   Conj;
Begin
    For i In TipoIndiceConjuntos Do
        Begin
            If B[i] = true Then
                arrResul[i] := false
            Else
                arrResul[i] := A[i];
        End;
    diferencia := arrResul;
End;

Begin
    llenarArreglos();
    mostrarArreglo(A, 'A');
    mostrarArreglo(B, 'B');

    write('A U B = ');
    R := union(A, B);
    mostrarArreglo(R, 'R');

    write('A * B = ');
    R := interseccion(A, B);
    mostrarArreglo(R, 'R');

    write('A - B = ');
    R := diferencia(A, B);
    mostrarArreglo(R, 'R');
End.
