var a: file of real;
    b, i: integer;
    c, m: real;
begin
  randomize;
  assign(a, 'filef');
  rewrite(a);
  write('Введите количество чисел исходного файла: ');
  readln(b);
  for i:= 1 to b do
    begin
      c:= 10*random;
      write(a, c);
    end;
  reset(a);
  writeln('Содержание исходного файла:');
  m:= 0;
  for i:= 0 to filesize(a)-1 do
    begin
      read(a, c);
      write(c:0:2,' ');
  if i mod 2 = 1 then 
    m:= m+c;
    end;
writeln;
writeln(m:0:2);
end.