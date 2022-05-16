
Program parcial;

Var 
    a,b,c:   Integer;
(* conjunto de caracteres *)
    a:   SET Of Char;
Procedure intercambio (Var x,y:integer);

Type 
    TipoComplejo =   Record
        ParteReal:   real;
        ParteImaginaria:   real;
    End;

Var 
    aux :   integer;
Begin
    aux := x;
    x := y;
    y := aux;
End;

Function factorial (n:integer) :   integer ;

Var 
    i, auxiliar :   integer;
Begin
    auxiliar := 1;
    For i:= 1 To n Do
        auxiliar := i * auxiliar;
    factorial := auxiliar;
End;

Begin
    a := ['a'];
    write('Ingrese');
    readln(a);
    write('Ingrese');
    readln(b);
    write('Ingrese');
    readln(c);
    Numero1.ParteReal := 5.5;




(* IF *)
    If a<b Then
        Begin
            a =   3;
        End
    Else
        Begin
            b =   4;
        End;

(* CASE *)
    Case a Of 
        2:   a =   3;
        Else
            c =   3;
    End;

(* WHILE *)
    While a<b Do
        Begin
            a =   3;
        End;

(* REPEAT *)
    Repeat
        a =   3;
    Until a<b;

(* FOR *)
    For a := 1 To b Do
        Begin
            a =   3;
        End;

    For c := ’Z’ Downto ’A’ Do
        write(' ', c);

End.
