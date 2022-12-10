var a: file of real;
    b, i: integer;
    c, max: real;
var mas: array of real;
begin
  randomize;
  assign(a, 'maximum');
  rewrite(a);
  write('Введите количество чисел исходного файла: ');
  readln(b);
  SetLength (mas, b);
  for i:= 1 to b do
    begin
      c:= 10*random;
      write(a, c);
      mas[i-1]:= trunc(c * 100 + 0.5)/100; 
    end;
  max:= mas[0];
  for i:= 0 to b-1 do 
    begin
      if i = 0 then
      if mas[1] > max then
        max:= mas[1];
      if (i > 0) and (i < b-1) then
        begin
        if (mas[i] > mas[i-1]) and (mas[i] > mas[i+1]) then
          begin
            max:= mas[i];
          end;
         end;
      if mas[b-1] > mas[b-2] then 
        max:= mas[b-1];
end;
print(mas);
print(max);
end.