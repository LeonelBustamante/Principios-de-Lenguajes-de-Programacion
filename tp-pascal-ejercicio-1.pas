
Program Traza;

Var a, b, c, d, s:   integer;
Function alfa(e:integer; Var f:integer):   integer;
Begin
    e := 1;
    f := 2;
    alfa := e+f;
End;

Begin
    b := 10;
    c := 20;
    d := b+c;
    a := alfa(b,c);
    s := b+c;
    writeln(a);
    writeln(s);
    readln();
End.
