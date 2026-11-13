// ejercicio 2
 function Ejercicio2(n: Integer): String;
var
  dig, i, mayor, suma, cant: Integer;
  prom: Real;
begin
  i := 1;
  mayor := -1;
  suma := 0;
  cant := 0;

  while n > 0 do
  begin
    dig := n mod 10;

    if i mod 2 <> 0 then
    begin
      if dig > mayor then
        mayor := dig;
    end
    else
    begin
      suma := suma + dig;
      cant := cant + 1;
    end;

    n := n div 10;
    i := i + 1;
  end;

  prom := suma / cant;

  Result := 'Mayor = ' + IntToStr(mayor) +
            ' Prom = ' + FloatToStr(prom);
end;

  { LLAMADA 2  COPIAR ABAJO }

   Edit2.Text := Ejercicio2(n);


