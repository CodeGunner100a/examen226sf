
function Ejercicio3(cad: String): String;
var
  i, j: Integer;
  palabra, invertida, salida: String;
begin
  salida := '';
  palabra := '';

  cad := cad + ' ';

  for i := 1 to Length(cad) do
  begin
    if cad[i] <> ' ' then
      palabra := palabra + cad[i]
    else
    begin
      if UpCase(palabra[1]) in ['A', 'E', 'I', 'O', 'U'] then
      begin
        invertida := '';

        for j := Length(palabra) downto 1 do
          invertida := invertida + palabra[j];

        salida := salida + invertida + ' ';
      end
      else
        salida := salida + palabra + ' ';

      palabra := '';
    end;
  end;

  Result := (salida);
end;

  { COPIAR ABAJO LA LLAMADA DEL EJERCICIO DE CADENAS }
      Edit2.Text := Ejercicio3(cad);


