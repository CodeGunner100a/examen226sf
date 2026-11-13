{ EJERCICIO 1 COPIAR ABAJO }

       function Factorial(x: Integer): Real;
var
  i: Integer;
  f: Real;
begin
  f := 1;

  for i := 1 to x do
    f := f * i;

  Result := f;
end;

function Ejercicio1(n: Integer): Real;
var
  i, num, den: Integer;
  suma, term: Real;
  sw: Boolean;
begin
  suma := 0;
  num := 1;
  den := 2;
  sw := True;

  for i := 1 to n do
  begin
    term := Factorial(num) / (den * den);

    if sw = True then
    begin
      suma := suma + term;
      sw := False;
    end
    else
    begin
      suma := suma - term;
      sw := True;
    end;

    num := num + 2;
    den := den + 1;
  end;

  Result := suma;
end;


  { LLAMADA 1 COPIAR ABAJO }

    Edit2.Text := FloatToStr(Ejercicio1(n));


    

